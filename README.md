# Rust and Docker using native libraries

* [rust-dev](/rust-dev) contains dev image of rust.
* [rust-base](/rust-base) contains runtime image to use for deployed applications.

`build-devel.sh` builds development (`rust-dev`) and runtime (`rust-dev`) images.

```bash
$> ./build-devel.sh
...
$> ./build.sh app1
...
Built: rust-app1
```

You can test the new image:

```bash
$> docker run -ti rust-app1 ldd /server
$> docker run -ti rust-app1 /server
```
