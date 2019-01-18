rm build/ -rf
mkdir build
cd build
em++ ../cpp/hello.cpp ../cpp/fib.cpp -s WASM=1 -s EXPORT_ALL=1 -s ONLY_MY_CODE=1 -O2 -o hello.html || exit 1
#em++ ../cpp/hello.cpp ../cpp/fib.cpp -s WASM=1 -s ONLY_MY_CODE=1 -s EXPORTED_FUNCTIONS="['__Z3fibi']" -O2 -o hello.html || exit 1
mv hello.wasm ../web/gen/
