@echo off
setlocal enabledelayedexpansion

:: Prompt the user for the name of the DMA device
set /p dma_device="Please enter the name of the DMA device: "

:: Check if the user entered a device name
if not defined dma_device (
    echo You must enter a device name.
    exit /b 1
)

:: Search for the device and write the results to a file
wmic path win32_PnPEntity get Name, DeviceID | findstr /c:"%dma_device%" > dma_devices.txt

:: Check if the file is empty (i.e., no matching device was found)
if not exist dma_devices.txt (
    echo No matching device found.
    exit /b 1
)

:: If we got this far, a matching device was found
echo Matching device found. Details have been written to dma_devices.txt.
