BIN=research-abcd
SRC=$(wildcard *.cpp)
OBJ=$(SRC:.cpp=.o)

CXXFLAGS=-O3 -std=c++11

$(BIN): $(OBJ)
	$(CXX) -o $(BIN) $(OBJ)

%.o: %.cpp
	$(CXX) -c $(CXXFLAGS) $< -o $@

.PHONY: clean

clean:
	rm -f $(OBJ)
	rm -f $(BIN)
