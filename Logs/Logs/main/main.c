#include <stdio.h>
#include "esp_log.h"



void app_main(void)
{
    ESP_LOGE("LOG1", "LOG DE ERRO");
    ESP_LOGW("LOG1", "LOG DE WARNING/AVISO");
    ESP_LOGI("LOG1", "LOG DE INFORMAÇÃO");
    ESP_LOGD("LOG1", "LOG DE DEBUG");
    ESP_LOGV("LOG1", "LOG DE TEXTO COMUM/VERBOSE");

}