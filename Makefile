CXX = g++
CXXFLAGS = -Wall -g
_dummy := $(shell mkdir -p build)
PREFIX ?= /usr
BINDIR := $(PREFIX)/bin
TARGET := lightfetch

.PHONY: all clean install uninstall

all: $(TARGET)

$(TARGET): src/main.cpp
	$(CXX) $(CXXFLAGS) src/main.cpp -o build/$(TARGET)

clean:
	rm -rf build/

install: all
	@echo "Installing $(TARGET) to $(BINDIR)..."
	mkdir -p $(DESTDIR)$(BINDIR)
	install -m 0755 build/$(TARGET) $(DESTDIR)$(BINDIR)/$(TARGET)

uninstall:
	@echo "Uninstalling $(TARGET) from $(BINDIR)..."
	rm -f $(DESTDIR)$(BINDIR)/$(TARGET)

