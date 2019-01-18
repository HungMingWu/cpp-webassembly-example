rm build/ -rf
mkdir build
cd build
em++ ../cpp/hello.cpp -s WASM=1 -o hello.html
mv hello.js ../web/gen/
mv hello.wasm ../web/gen/
