#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "esp_spi_flash.h"
#include "driver/gpio.h"

#define Pin 2

void app_main(void)
{

    esp_rom_gpio_pad_select_gpio(Pin);
    gpio_set_direction(Pin, GPIO_MODE_OUTPUT);
    bool status = 0;

    while (1)
    {
        status = !status;
        gpio_set_level(Pin, status);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
}
