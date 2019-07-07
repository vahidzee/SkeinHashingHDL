cmake_minimum_required(VERSION 3.12)
project(project)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(project
compat.h
        miner.h
        skein.c
        skeinhash.c
        sph_skein.h
        sph_types.h
        main.c
        skeinhash.h)
