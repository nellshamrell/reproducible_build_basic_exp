# reproducible_build_basic_exp

Simplified experiment based on https://github.com/kpcyrd/i-probably-didnt-backdoor-this, attempts to adapt it to Windows from demonstration purposes.

## Run build

**Requirements**
* Must be run on Windows
* Docker installed
* Rust installed

In PowerShell:

```
git clone git@github.com:nellshamrell/reproducible-build-basic-exp.git

# If you want to use a Docker container image I have uploaded to Docker Hub with a Windows Rust build environment
docker run --rm -v ${PWD}:C:\app -w /app nellshamrell/windows_rust_exp:0.0.1 rustc --remap-path-prefix=\app=app -Clink-arg=/Brepro src\main.rs --target=x86_64-pc-windows-msvc

# If you want to build this Docker image yourself
docker build . # This build will take awhile
docker image ls # Note the image ID of the image you just built
docker run --rm -v ${PWD}:C:\app -w /app <IMAGE ID> rustc --remap-path-prefix=\app=app -Clink-arg=/Brepro src\main.rs --target=x86_64-pc-windows-msvc
```

## Check hash of produced binary

In PowerShell:

```
Get-FileHash -Path .\main.exe
```
