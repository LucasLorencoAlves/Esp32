@echo off
cd /D "C:\Users\Lucas Alves\Documents\Github_Conta_Outlook\Programas com Esp32\Hello World com Led\HelloWorld com led\build\esp-idf\esp_system" || (set FAIL_LINE=2& goto :ABORT)
C:\Espressif\python_env\idf5.3_py3.11_env\Scripts\python.exe C:/Espressif/frameworks/esp-idf-v5.3.1/tools/ldgen/ldgen.py --config "C:/Users/Lucas Alves/Documents/Github_Conta_Outlook/Programas com Esp32/Hello World com Led/HelloWorld com led/sdkconfig" --fragments-list C:/Espressif/frameworks/esp-idf-v5.3.1/components/xtensa/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_driver_gpio/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_pm/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_mm/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/spi_flash/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_system/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_system/app.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_common/common.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_common/soc.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_rom/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/hal/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/log/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/heap/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/soc/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_hw_support/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_hw_support/dma/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_hw_support/ldo/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/freertos/linker_common.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/freertos/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/newlib/newlib.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/newlib/system_libs.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_driver_gptimer/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_ringbuf/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_driver_uart/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/app_trace/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_event/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_driver_pcnt/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_driver_spi/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_driver_mcpwm/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_driver_ana_cmpr/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_driver_dac/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_driver_rmt/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_driver_sdm/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_driver_i2c/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_driver_ledc/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/driver/twai/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_phy/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/vfs/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/lwip/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_netif/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/wpa_supplicant/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_wifi/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_adc/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_eth/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_gdbstub/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_psram/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/esp_lcd/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/espcoredump/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/ieee802154/linker.lf;C:/Espressif/frameworks/esp-idf-v5.3.1/components/openthread/linker.lf --input "C:/Users/Lucas Alves/Documents/Github_Conta_Outlook/Programas com Esp32/Hello World com Led/HelloWorld com led/build/esp-idf/esp_system/ld/sections.ld.in" --output "C:/Users/Lucas Alves/Documents/Github_Conta_Outlook/Programas com Esp32/Hello World com Led/HelloWorld com led/build/esp-idf/esp_system/ld/sections.ld" --kconfig C:/Espressif/frameworks/esp-idf-v5.3.1/Kconfig --env-file "C:/Users/Lucas Alves/Documents/Github_Conta_Outlook/Programas com Esp32/Hello World com Led/HelloWorld com led/build/config.env" --libraries-file "C:/Users/Lucas Alves/Documents/Github_Conta_Outlook/Programas com Esp32/Hello World com Led/HelloWorld com led/build/ldgen_libraries" --objdump C:/Espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-objdump.exe || (set FAIL_LINE=3& goto :ABORT)
goto :EOF

:ABORT
set ERROR_CODE=%ERRORLEVEL%
echo Batch file failed at line %FAIL_LINE% with errorcode %ERRORLEVEL%
exit /b %ERROR_CODE%