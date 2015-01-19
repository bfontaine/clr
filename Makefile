# clr

TARGET = clr

PREFIX ?= /usr/local
BIN    ?= $(PREFIX)/bin
MAN1   ?= $(PREFIX)/man/man1

CP    ?= cp
RM    ?= rm -f
MKDIR ?= mkdir -p

install:
	$(MKDIR) $(BIN)
	$(MKDIR) $(MAN1)
	$(CP) $(TARGET) $(BIN)/
	$(CP) $(TARGET).1 $(MAN1)/

uninstall:
	$(RM) $(BIN)/$(TARGET)
	$(RM) $(MAN1)/$(TARGET).1

check:
	which checkbashisms >/dev/null && checkbashisms -f $(TARGET) || true
