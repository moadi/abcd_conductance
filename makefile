BIN=research-abcd
SRC=$(wildcard *.cpp)
OBJ=$(SRC:.cpp=.o)

CXXFLAGS=-O3 -std=c++11
CPPFLAGS=-I/usr/local/opt/llvm/include
LDFLAGS=-L/usr/local/opt/llvm/lib

$(BIN): $(OBJ)
	$(CXX) $(LDFLAGS) -o $(BIN) $(OBJ)

%.o: %.cpp
	$(CXX) $(CPPFLAGS) -c $(CXXFLAGS) $< -o $@

.PHONY: clean

clean:
	rm -f $(OBJ)
	rm -f $(BIN)
