
# To use this makefile, do the following:
# 1. Update $(SRCS) to reflect the list of files you want to compile
# 2. Set $(OBJDIR) to the directory in which you want the intermediate files to be placed (and 
#    make sure the directory exists)
# 3. Change $(EXEC) to be the name you want for your executable

OBJS = ../obj/bbr.o ../obj/best_first_bbr.o ../obj/bfs_bbr.o ../obj/bin_packing.o ../obj/hoffman.o ../obj/io.o ../obj/memory.o
TARGETS = ../bbr

# You can leave this stuff alone for the most part; it sets the right C++ standard, tells the
# compiler to print output nicely, and prints some useful warning messages

CC = g++ 
#CFLAGS = -DOUTPUT_SEARCH  #displays info
#CFLAGS = 
STD = -std=c++0x -Wall
FORMAT = -fmessage-length=100 
WARNINGS = -Wempty-body -Wall -Wno-sign-compare
DEBUGFLAGS = -g -pg
OPTFLAGS = -O2

#-DNDEBUG -> elimina asserts
#DEBUGLEVEL 0 -> no debugging information
#DEBUGLEVEL 1 -> print some debugging information

CC = g++

all: $(TARGETS) 

clean: 
	rm -f $(OBJS) $(TARGETS)

../obj/bbr.o : bbr.cpp
	$(CC) -c $(STD) $(CFLAGS) bbr.cpp -o ../obj/bbr.o

../obj/best_first_bbr.o : best_first_bbr.cpp
	$(CC) -c $(STD) $(CFLAGS) best_first_bbr.cpp -o ../obj/best_first_bbr.o 

../obj/bfs_bbr.o : bfs_bbr.cpp
	$(CC) -c $(STD) $(CFLAGS) bfs_bbr.cpp -o ../obj/bfs_bbr.o

../obj/bin_packing.o : bin_packing.cpp
	$(CC) -c $(STD) $(CFLAGS) bin_packing.cpp -o ../obj/bin_packing.o

../obj/hoffman.o : hoffman.cpp
	$(CC) -c $(STD) $(CFLAGS) hoffman.cpp -o ../obj/hoffman.o

../obj/io.o : io.cpp
	$(CC) -c $(STD) $(CFLAGS) io.cpp -o ../obj/io.o

../obj/memory.o : memory.cpp
	$(CC)  -c $(STD) $(CFLAGS)  memory.cpp -o ../obj/memory.o 

../bbr: $(OBJS)
	$(CC) $(STD) $(CFLAGS) $(OBJS) -o ../bbr  



