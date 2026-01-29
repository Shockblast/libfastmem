# libfastmem for KallistiOS (KOSAIO Integrated)
# 
# Makefile

TARGET = libfastmem.a
OBJS = memcpy_fast.o memset_fast.o memmove_fast.o

# Using standard KOS Makefile rules directly if possible, or minimal definitions
include $(KOS_BASE)/Makefile.rules

clean:
	-rm -f $(TARGET) $(OBJS)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(KOS_AR) rcs $(TARGET) $(OBJS)
