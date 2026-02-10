AS = as
LD = ld

# Objects
TARGET = main
OBJS = $(TARGET).o # other output files

# Commands
all: $(TARGET)

run:
	./$(TARGET).out

gdb:
	gdb ./$(TARGET).out

save:
	git add .

clean:
	rm -f *.o *.out

# Compile
$(TARGET): $(OBJS)
	$(LD) -o $(TARGET).out $(OBJS)

# Link
%.o: %.s
	$(AS) -g -o $@ $<
