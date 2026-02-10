AS = as
LD = ld

# Objects
OBJS = driver4-1.o # other output files
TARGET = driver4-1

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
