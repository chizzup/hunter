# Copyright (c) 2017, Pawel Bylica
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME rocksdb
    VERSION 5.12.2-hunter
    URL "https://github.com/chfast/rocksdb/archive/hunter.tar.gz"
    SHA1 "71e3e704556b428e76ae71454a4a2b7410e5ddb3"
)

hunter_add_version(
    PACKAGE_NAME rocksdb
    VERSION 5.7.2
    URL "https://github.com/facebook/rocksdb/archive/v5.7.2.tar.gz"
    SHA1 "f14feee1348bc62b733c6db620a02979477e234f"
)

hunter_add_version(
    PACKAGE_NAME rocksdb
    VERSION 5.8.6
    URL "https://github.com/facebook/rocksdb/archive/v5.8.6.tar.gz"
    SHA1 "0610c260676e78b03ba48b2d671ba92bdcff2641")

hunter_cmake_args(rocksdb CMAKE_ARGS
    WITH_TESTS=OFF
    WITH_TOOLS=OFF
    WITH_GFLAGS=OFF
    PORTABLE=ON
    FAIL_ON_WARNINGS=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(rocksdb)
hunter_download(PACKAGE_NAME rocksdb)
