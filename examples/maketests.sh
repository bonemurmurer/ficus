#! /bin/bash
cp ../libficus.c .
cp ../libficus.h .
cp ../rtqueue.c .
cp ../rtqueue.h .
cp ../config.h .
gcc -o ficus_test0 test0.c libficus.c rtqueue.c -lpthread -lsndfile -ljack
gcc -o ficus_test1 test1.c libficus.c rtqueue.c -lpthread -lsndfile -ljack
gcc -o ficus_playspeedtest playspeedtest.c libficus.c rtqueue.c -lpthread -lsndfile -ljack
gcc -o ficus_ramptest ramptest.c libficus.c rtqueue.c -lpthread -lsndfile -ljack
gcc -o rtqueue_test test_rtqueue.c rtqueue.c
rm libficus.c
rm libficus.h
rm rtqueue.c
rm rtqueue.h
rm config.h 
mkdir capturedwavs
