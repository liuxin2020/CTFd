#!/bin/bash
#CTFd
#git clone https://ghproxy.com/https://github.com/liuxin2020/CTFd

git clone https://ghproxy.com/https://github.com/liuxin2020/ctfd-plugin-choice CTFd/plugins/ctfd-plugin-choice --depth=1
git clone https://ghproxy.com/https://github.com/liuxin2020/ctfd-plugin-multichoice CTFd/plugins/ctfd-plugin-multichoice --depth=1
git clone https://ghproxy.com/https://github.com/frankli0324/ctfd-whale CTFd/plugins/ctfd-whale --depth=1

chmod +x docker-entrypoint.sh