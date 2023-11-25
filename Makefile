DIR = /usr/local/bin
BIN = $(DIR)/autopac

install: autopac
	cp $^ $(BIN)
	chmod 555 $(BIN)
