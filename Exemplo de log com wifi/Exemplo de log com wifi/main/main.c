#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_log.h"
#include "esp_wifi.h"
#include "esp_event.h"
#include "nvs_flash.h"
#include "esp_netif.h"
#include "esp_system.h"

#define WIFI_SSID "BBB"
#define WIFI_PASS "beagleboardblack"

static const char *TAG = "WiFi_Example";

void wifi_event_handler(void* arg, esp_event_base_t event_base, int32_t event_id, void* event_data) {
    if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_START) {
        ESP_LOGI(TAG, "Tentando conectar ao Wi-Fi...");
        esp_wifi_connect();
    } else if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_DISCONNECTED) {
        ESP_LOGW(TAG, "Falha ao conectar. Tentando novamente...");
        esp_wifi_connect();
    } else if (event_base == IP_EVENT && event_id == IP_EVENT_STA_GOT_IP) {
        ip_event_got_ip_t* event = (ip_event_got_ip_t*) event_data;
        ESP_LOGI(TAG, "Conectado! Endereço IP: " IPSTR, IP2STR(&event->ip_info.ip));
    } else {
        ESP_LOGE(TAG, "Evento inesperado: base=%s, id=%d", event_base, event_id);
    }
}

void wifi_init() {
    ESP_LOGI(TAG, "Inicializando Wi-Fi...");

    // Inicializa a pilha de rede
    ESP_ERROR_CHECK(esp_netif_init());  
    ESP_ERROR_CHECK(esp_event_loop_create_default());  
    esp_netif_create_default_wifi_sta();  // Cria uma interface Wi-Fi padrão em modo Station

    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));  // Inicializa o Wi-Fi com a configuração padrão

    // Registra os handlers para eventos de Wi-Fi e de IP
    ESP_ERROR_CHECK(esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID, &wifi_event_handler, NULL));
    ESP_ERROR_CHECK(esp_event_handler_register(IP_EVENT, IP_EVENT_STA_GOT_IP, &wifi_event_handler, NULL));

    wifi_config_t wifi_config = {
        .sta = {
            .ssid = WIFI_SSID,
            .password = WIFI_PASS,
            // Ajuste para permitir conexão a redes com sinal mais fraco
            .threshold.authmode = WIFI_AUTH_WPA2_PSK,  // Certifique-se de que o método de autenticação está correto
        },
    };

    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));  // Define o modo Station (STA)
    ESP_ERROR_CHECK(esp_wifi_set_config(ESP_IF_WIFI_STA, &wifi_config));  // Configura o Wi-Fi com as credenciais
    ESP_ERROR_CHECK(esp_wifi_start());  // Inicia o Wi-Fi
}

void app_main(void) {
    // Inicializa o sistema de armazenamento NVS (necessário para o Wi-Fi funcionar)
    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        ESP_ERROR_CHECK(nvs_flash_erase());
        ret = nvs_flash_init();
    }
    ESP_ERROR_CHECK(ret);

    // Inicializa o Wi-Fi e começa a tentar conectar
    wifi_init();
}
