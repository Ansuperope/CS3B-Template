AS = as
LD = ld

# Objects
OBJS = main.s
TARGET = main

# Commands
all: $(TARGET)
gdb:
	gdb ./$(TARGET).out

run:
	./$(TARGET).out

save:
	git add .

# Compile
$(TARGET): $(OBJS)
	$(AS) -g -o $(TARGET).o $(OBJS)
	$(LD) -o  $(TARGET).out $(TARGET).o
