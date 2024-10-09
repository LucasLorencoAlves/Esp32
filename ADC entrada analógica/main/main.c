#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "esp_spi_flash.h"
#include "driver/gpio.h"//entrada e saida digital
#include "driver/adc.h"//entrada e saida analógica

#define GPIO_NUM_13 13
#define GPIO_BTN_Pin_2 2

void app_main(void)
{
gpio_reset_pin(GPIO_NUM_13);
gpio_reset_pin(GPIO_BTN_Pin_2);

gpio_set_direction(GPIO_NUM_13, GPIO_MODE_DEF_INPUT); 
gpio_set_direction(GPIO_BTN_Pin_2, GPIO_MODE_DEF_OUTPUT);

bool status=0;

while (1)
{
    status= gpio_get_level(GPIO_NUM_13);  
    gpio_set_level(GPIO_BTN_Pin_2, status);
    vTaskDelay(10/portTICK_PERIOD_MS);
}

     
}