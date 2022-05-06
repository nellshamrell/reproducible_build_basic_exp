# reproducible_build_basic_exp

Simplified experiment based on https://github.com/kpcyrd/i-probably-didnt-backdoor-this, attempts to adapt it to Windows from demonstration purposes.

NOTE - this does not currently work, likely due to [this open issue](https://github.com/rust-lang/rust/issues/88982)

## Run build

**Requirements**
* Must be run on Windows
* Docker installed
* Rust installed

In PowerShell:

```
git clone git@github.com:nellshamrell/reproducible-build-basic-exp.git
docker build . # This build will take awhile
docker image ls # Note the image ID of the image you just built
docker run --rm -v ${PWD}:C:\app -w /app <DOCKER IMAGE ID> rustc --remap-path-prefix=\app=app src\main.rs --target=x86_64-pc-windows-msvc
```

## Check hash of produced binary

In PowerShell:

```
Get-FileHash -Path .\main.exe
```