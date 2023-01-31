EXE = entt_demo
SOURCES = main.cpp
SOURCES += entity.cpp scene.cpp
OBJS = $(addsuffix .o, $(basename $(notdir $(SOURCES))))
UNAME_S := $(shell uname -s)
CXXFLAGS = -std=c++17 
CXXFLAGS += -I. -I./include
CXXFLAGS += -g -Wall -Wformat
LIBS =

%.o:%.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

all: $(EXE)
	@echo Build complete.

$(EXE): $(OBJS)
	$(CXX) -o $@ $^ $(CXXFLAGS) $(LIBS)

clean:
	rm -f $(EXE) $(OBJS)