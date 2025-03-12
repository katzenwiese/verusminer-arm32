# ccminer for ARM32 (Static Build)

A custom-built version of **ccminer** for **ARM32 devices** such as Raspberry Pi and other single-board computers. This version is designed to work directly on ARM32 platforms.

## Prerequisites

Before you begin, ensure that your system is up to date and that you have all necessary build tools installed.

```
sudo apt-get update
sudo apt upgrade
sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential clang lld git
```
## Installation and Build Instructions

### 1. Check Installed Clang and LLD Versions

Make sure you know which Clang/LLVM and LLD versions are available on your system:

```
ls -C /usr/bin/clang*
```

## 2. Download Source Code or the premade binary directly

Download and extract the miner source code (or the binary):

```
git clone https://github.com/katzenwiese/verusminer-arm32.git
cd verusminer-arm32
(if you're building the binary from scratch
OR
wget https://github.com/katzenwiese/verusminer-arm32/releases/download/1.0/ccminer
(then you're already done)
```

### 3. Configure Compiler Versions (Optional)

If needed, edit `configure.sh` to set the correct compiler versions you checked in Step 1 :
You need to set the correct version for clang, clang++ and lld

```
nano configure.sh
```

### 4. Build the Miner

Run the build script:

```
./build.sh
```

### 5. Verify Build Success

Ensure that `ccminer` was built successfully:

```
ls ccminer
```

If `ccminer` is present in the directory, the build was successful.

## Usage

To run `ccminer` and check available options:

```
./ccminer -h
```

This will display the help menu and all available command-line options.

## Troubleshooting

- **Executable not running**: Make sure it is executable by running:

```
chmod +x ccminer
```

- **Build errors**: Review error messages and ensure all dependencies are installed correctly.
Check installed compiler versions with `ls /usr/bin/clang*` and adjust `configure.sh` if needed.

 
