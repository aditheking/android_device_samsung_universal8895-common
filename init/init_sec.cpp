#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include "log.h"
#include "property_service.h"
#include "util.h"
#include "vendor_init.h"

#include "init_sec.h"


static std::string bootloader;

static void property_override(char const prop[], char const value[]) {
    prop_info *pi;

    pi = (prop_info*) __system_property_find(prop);
    if (pi)
        __system_property_update(pi, value, strlen(value));
    else
        __system_property_add(prop, strlen(prop), value, strlen(value));
}

static device_variant parse_variant(std::string bl) {
    device_variant ret = VARIANT_MAX;

    if (bl.find("G930F") != std::string::npos)
        ret = VARIANT_G930F;
    else if (bl.find("G930S") != std::string::npos)
        ret = VARIANT_G930S;
    else if (bl.find("G930K") != std::string::npos)
        ret = VARIANT_G930K;
    else if (bl.find("G930L") != std::string::npos)
        ret = VARIANT_G930L;
    else if (bl.find("G930W8") != std::string::npos)
        ret = VARIANT_G930W8;
    else if (bl.find("G935F") != std::string::npos)
        ret = VARIANT_G935F;
    else if (bl.find("G935S") != std::string::npos)
        ret = VARIANT_G935S;
    else if (bl.find("G935K") != std::string::npos)
        ret = VARIANT_G935K;
    else if (bl.find("G935L") != std::string::npos)
        ret = VARIANT_G935L;
    else if (bl.find("G935W8") != std::string::npos)
        ret = VARIANT_G935W8;

    return ret;
}

static device_variant get_variant_from_cmdline()
{
    bootloader = property_get("ro.bootloader");
    device_variant ret = parse_variant(bootloader);

    if (ret >= VARIANT_MAX) {
        INFO("Unknown bootloader id: %s, forcing international (F) variant\n", bootloader.c_str());
        if (bootloader.find("G930") != std::string::npos)
            ret = VARIANT_G930F;
        else
            ret = VARIANT_G935F;
    }

    return ret;
}

void vendor_load_properties()
{
    const device_variant variant = get_variant_from_cmdline();

    std::string fingerprint, description, model, device;

    switch (variant) {
    case VARIANT_G930F:
        /* heroltexx */
        fingerprint = "samsung/heroltexx/herolte:7.0/NRD90M/G930FXXU1ZPLH:user/release-keys";
        description = "heroltexx-user 7.0 NRD90M G930FXXU1ZPLH release-keys";
        model = "SM-G930F";
        device = "heroltexx";
        break;
    case VARIANT_G930S:
        /* herolteskt */
        fingerprint = "samsung/herolteskt/herolte:7.0/NRD90M/G930SXXU1ZPLH:user/release-keys";
        description = "herolteskt-user 7.0 NRD90M G930SXXU1ZPLH release-keys";
        model = "SM-G930S";
        device = "herolteskt";
        break;
    case VARIANT_G930K:
        /* heroltektt */
        fingerprint = "samsung/heroltektt/herolte:7.0/NRD90M/G930KXXU1ZPLH:user/release-keys";
        description = "heroltektt-user 7.0 NRD90M G930KXXU1ZPLH release-keys";
        model = "SM-G930K";
        device = "heroltektt";
        break;
    case VARIANT_G930L:
        /* heroltelgt */
        fingerprint = "samsung/heroltelgt/herolte:7.0/NRD90M/G930LXXU1ZPLH:user/release-keys";
        description = "heroltelgt-user 7.0 NRD90M G930LXXU1ZPLH release-keys";
        model = "SM-G930L";
        device = "heroltelgt";
        break;
    case VARIANT_G930W8:
        /* heroltebmc */
        fingerprint = "samsung/heroltebmc/herolte:7.0/NRD90M/G930W8XXU1ZPLH:user/release-keys";
        description = "heroltebmc-user 7.0 NRD90M G930W8XXU1ZPLH release-keys";
        model = "SM-G930W8";
        device = "heroltebmc";
        break;
    case VARIANT_G935F:
        /* hero2ltexx */
        fingerprint = "samsung/hero2ltexx/hero2lte:7.0/NRD90M/G935FXXU1ZPLH:user/release-keys";
        description = "hero2ltexx-user 7.0 NRD90M G935FXXU1ZPLH release-keys";
        model = "SM-G935F";
        device = "hero2ltexx";
        break;
    case VARIANT_G935S:
        /* hero2lteskt */
        fingerprint = "samsung/hero2lteskt/hero2lte:7.0/NRD90M/G935SXXU1ZPLH:user/release-keys";
        description = "hero2lteskt-user 7.0 NRD90M G935SXXU1ZPLH release-keys";
        model = "SM-G935S";
        device = "hero2lteskt";
        break;
    case VARIANT_G935K:
        /* hero2ltektt */
        fingerprint = "samsung/hero2ltektt/hero2lte:7.0/NRD90M/G935KXXU1ZPLH:user/release-keys";
        description = "hero2ltektt-user 7.0 NRD90M G935KXXU1ZPLH release-keys";
        model = "SM-G935K";
        device = "hero2ltektt";
        break;
    case VARIANT_G935L:
        /* hero2ltelgt */
        fingerprint = "samsung/hero2ltelgt/hero2lte:7.0/NRD90M/G935LXXU1ZPLH:user/release-keys";
        description = "hero2ltelgt-user 7.0 NRD90M G935LXXU1ZPLH release-keys";
        model = "SM-G935L";
        device = "hero2ltelgt";
        break;
    case VARIANT_G935W8:
        /* hero2ltebmc */
        fingerprint = "samsung/hero2ltebmc/hero2lte:7.0/NRD90M/G935W8XXU1ZPLH:user/release-keys";
        description = "hero2ltebmc-user 7.0 NRD90M G935W8XXU1ZPLH release-keys";
        model = "SM-G935W8";
        device = "hero2ltebmc";
        break;
    default:
        break;
    }

    INFO("Found bootloader id: %s setting build properties for: %s device\n", bootloader.c_str(), device.c_str());

    property_override("ro.build.fingerprint", fingerprint.c_str());
    property_override("ro.build.description", description.c_str());
    property_override("ro.build.product", device.c_str());
    property_override("ro.product.model", model.c_str());
    property_override("ro.product.device", device.c_str());
}
