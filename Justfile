test:
    rm -rf project/
    cargo run -- new miso project
    cd project/
    ./shake.hs
    cd ../
    rm -rf project/
    cargo run -- new haskell project
    cd project/
    stack build --test --bench
    hlint .
    cd ../
    rm -rf project/
    cargo run -- new idris project
    cd project/
    idris --testpkg test.ipkg
    cd ../
    rm -rf project/
    cargo run -- new elm project
    cd project/
    elm-make --yes src/main.elm
    cd ../
    rm -rf project/
    cargo run -- new rust project
    cd project/
    cargo build
    cd ../
    rm -rf project/
