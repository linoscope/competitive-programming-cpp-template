all: a.out test

a.out: main.cpp
	g++ -std=c++11 -Wall -g3  -D_GLIBCXX_DEBUG main.cpp -o a.out

test:
	sh test.sh

.PHONY: clean
clean:
	rm -f a.out
	rm -f input-*.txt
