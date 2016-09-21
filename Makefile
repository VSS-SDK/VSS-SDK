#
# This file is part of the VSS-GameLogger project.
#
# This Source Code Form is subject to the terms of the GNU GENERAL PUBLIC LICENSE,
# v. 3.0. If a copy of the GPL was not distributed with this
# file, You can obtain one at http://www.gnu.org/licenses/gpl-3.0/.
#


CCX = g++ -std=c++11 -w
DEBUG_FLAG = -g


INCLUDES = -Isrc

LIBRARIES_PROTO = `pkg-config --cflags --libs protobuf`
LIBRARIES_BOOST = -lboost_system -lboost_filesystem -lboost_program_options -lboost_thread
LIBRARIES_SQL = -l sqlite3 

LIBRARIES = $(LIBRARIES_PROTO) $(LIBRARIES_BOOST) $(LIBRARIES_SQL) -lzmq -pthread -lm -w



SRC := $(shell find -name '*.cpp')
FILE_NAMES_SRC = $(SRC:.cpp=.o)

PROTOS := $(shell find -name '*.cc')
FILE_NAMES_PROTOS = $(PROTOS:.cc=.o)

FILE_NAMES = $(FILE_NAMES_SRC) $(FILE_NAMES_PROTOS) 



RELEASE = VSS-GameLogger
DEBUG = VSS-GameLogger-Debug

.cpp.o:
	@$(CCX) $(INCLUDES) $(LIBRARIES) -Wall -Wformat -c -o $@ $< -w

.cc.o:
	@$(CCX) $(INCLUDES) $(LIBRARIES) -Wall -Wformat -c -o $@ $< -w

all: message_compiling release
	@echo Done ...

message_compiling:
	@echo Compiling VSS-GameLogger ...

message_cleaning:
	@echo Cleaning VSS-GameLogger ...

release: $(FILE_NAMES)
	@$(CCX) -o $(RELEASE) $(FILE_NAMES) $(LIBRARIES) $(INCLUDES)

debug: 
	$(CCX) -g $(shell find -name '*.cpp') $(shell find -name '*.cc') $(LIBRARIES) $(INCLUDES) -o $(DEBUG)

clean: message_cleaning
	@rm $(RELEASE) $(FILE_NAMES)

proto:
	cd src/VSS-Interface/protos && make -f protos.make