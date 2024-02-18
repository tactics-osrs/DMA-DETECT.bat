# DMA Device Finder

This is a simple batch script for Windows that prompts the user for the name of a Direct Memory Access (DMA) device and searches for it among the system's hardware devices.

## Usage

1. Run the script in a command prompt with administrative privileges.
2. When prompted, enter the exact name of the DMA device you're looking for (case-sensitive).
3. If a matching device is found, the details will be written to a file named `dma_devices.txt`.

## Example

```batch
Please enter the name of the DMA device: MyDMADevice
Matching device found. Details have been written to dma_devices.txt.

In this example, the script found a device named MyDMADevice and wrote the details to dma_devices.txt.
```

## Error Handling

The script includes basic error handling:

If no device name is entered, the script will display an error message and exit with a status code of 1.
If no matching device is found, the script will display an error message and exit with a status code of 1.
If "dma_devices.txt" does not exist (such as first time running), it will create the file to the home screen, and continue to log the information for you.
