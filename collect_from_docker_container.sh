set -ex && mkdir -p ./build/release/bin
set -ex && docker create --name saronite-gui-container saronite-gui-image
set -ex && docker cp saronite-gui-container:/src/build/release/bin/ ./build/release/
set -ex && docker rm saronite-gui-container
