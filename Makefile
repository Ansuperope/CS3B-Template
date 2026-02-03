AS = as
LD = ld

# Objects
OBJS = LOREM.s
TARGET = LOREM

# Commands
all: $(TARGET)

run:
	./$(TARGET).out

save:
	git add .

# Compile
$(TARGET): $(OBJS)
	$(AS) -g -o $(TARGET).o $(OBJS)
	$(LD) -o  $(TARGET).out $(TARGET).o
