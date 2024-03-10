
# CMake

**Embedded System Project for STM32 Microcontrollers**

*This project is developed for STM32F401xC microcontrollers  using the ARM GCC toolchain and CMake build system.But it can be customized for any STM32 by handling parsed flags . It is designed to provide a starting point for embedded systems development, with an emphasis on customization and flexibility.*

## Table of Contents

- [Introduction](#introduction)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installing Prerequisites](#InstallingPrerequisites)
  - [Building](#building)
  - [Flashing](#flashing)
- [Customization](#customization)
- [Contributing](#contributing)
- [License](#license)

## Introduction

*The project aims to facilitate the development of embedded systems by offering a well-organized directory structure, CMake build configuration, and custom targets for flashing and erasing STM32 microcontrollers using ST-Link.*

## Getting Started

### Prerequisites

- [CMake](https://cmake.org/) (version 3.16 or higher)
- [ARM GCC Toolchain](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm)
- [ST-Link](https://github.com/texane/stlink) for flashing (optional)

### Installing Prerequisites

#### Installing CMake

Install CMake using your system's package manager or download it from the [official CMake website](https://cmake.org/download/).

**On Ubuntu:**

```bash
sudo apt-get update
sudo apt-get install cmake
```

#### Installing st-flash (optional)

`st-flash` is a versatile tool that supports various STMicroelectronics STM32 microcontrollers.

This guide provides instructions on installing `st-flash`, a utility for flashing STM32 microcontrollers.

**On Ubuntu:**

```bash
sudo apt-get update
sudo apt-get install stlink-tools
```

**On Windows:**

- Step 1: Download st-flash

1. Visit the [ST-Link GitHub repository](https://github.com/texane/stlink/releases).
2. Download the Windows version of `st-flash`.

- Step 2: Extract and Add to System PATH

1. Extract the downloaded archive.
2. Add the directory containing `st-flash` to your system's PATH.

- Step 3: Verify Installation

    Open a new Command Prompt or PowerShell window and run:

    ```bash
    st-flash --version
    ```

## Building the Project

Follow these steps to build the project from the source code:

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/Mohamed-Hawas/CMake.git
   ```

2. **Navigate to the Project Directory:**

   ```bash
   cd yourproject
   ```

3. **Ensure CMake Files are Beside the Project Directory:**

   Make sure that the three CMake files (`CMakeLists.txt`, `toolchain.cmake`, and `st-link.cmake`) are located beside the project directory.

    ```
    ├── yourproject/                 # Main project directory
    │   ├── CMakeLists.txt           # CMake configuration file
    │   ├── toolchain.cmake          # Toolchain configuration file
    │   ├── st-link.cmake            # ST-Link configuration file
    │   ├── startup/                 # Startup code directory
    │   │   ├── linker.ld            # Linker script
    │   │   └── startup.s            # Startup assembly code
    │   ├── Your Project/            # Source code directory
    │   │   ├── Inc/                 # Include files
    │   │   ├── Src/                 # Source code
    │   └── build/                   # Build directory (created during the build process)
    │       ├── yourproject          # Compiled executable
    │       └── yourproject.bin      # Binary file generated during build
    ```

4. **Create a Build Directory and Navigate to It:**

   ```bash
   mkdir build
   cd build
   ```

5. **Configure and Build the Project:**

- *For Linux*

   ```bash
   cmake -G "Unix Makefiles" ..
   make
   ```

- *For Windows*

   ```bash
   cmake -G "MinGW Makefiles" ..
   make
   ```

Ensure the proper placement of the CMake files for a smooth configuration process. Adjust the repository URL and project name according to your specific project.


## Flashing

(Optional) Flash the compiled binary to your STM32 microcontroller using [ST-Link](https://github.com/texane/stlink):

- **Flash the Binary to the Microcontroller:**

  This command uploads the compiled binary to the STM32 microcontroller's flash memory.

  ```bash
  make flash
  ```

- **Erase the Microcontroller's Flash Memory:**

  This command clears the STM32 microcontroller's flash memory, preparing it for a fresh upload.

  ```bash
  make erase
  ```

- **Check the Connected STM32 Microcontroller Information:**

  This command retrieves information about the connected STM32 microcontroller, providing details such as device ID and flash memory size.

  ```bash
  make check-stlink
  ```


## Contributing

We welcome contributions! Whether it's reporting bugs, suggesting features, or submitting code changes, your involvement is appreciated.

- **Report Issues:** [Open an issue](https://github.com/Mohamed-Hawas/CMake/issues) to report bugs or suggest improvements.

- **Feature Requests:** [Open an issue](https://github.com/Mohamed-Hawas/CMake/issues) and label it as a feature request.

- **Pull Requests:** Contribute by forking, creating a branch, making changes, and opening a pull request on GitHub. 

Thank you for contributing to our project!


## License

This project is licensed under the [MIT License](LICENSE) - see the [LICENSE](LICENSE) file for details.
