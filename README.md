# reproducible-build-basic-exp

Simplified experiment based on https://github.com/kpcyrd/i-probably-didnt-backdoor-this, attempts to adapt it to Windows from demonstration purposes.

(WORK IN PROGRESS)

**Requirements**
* Must be run on Windows
* Docker installed
* Rust installed

```
git clone git@github.com:nellshamrell/reproducible-build-basic-exp.git
docker build .
docker image ls # Note the image ID of the image you just built
docker run --rm -v ${PWD}:C:\app -w /app <DOCKER IMAGE ID> cargo build --release --locked --target=x86_64-pc-windows-msvc
```
