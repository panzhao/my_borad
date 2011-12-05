#############################################################################
# Makefile for building: my_borad
# Generated by qmake (2.01a) (Qt 4.7.4) on: Sun Nov 6 17:15:31 2011
# Project:  my_borad.pro
# Template: app
# Command: /home/zhaopan/QtSDK/Desktop/Qt/474/gcc/bin/qmake -spec ../QtSDK/Desktop/Qt/474/gcc/mkspecs/linux-g++-32 -o Makefile my_borad.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_CORE_LIB
CFLAGS        = -m32 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -m32 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I../QtSDK/Desktop/Qt/474/gcc/mkspecs/linux-g++-32 -I. -I../QtSDK/Desktop/Qt/474/gcc/include/QtCore -I../QtSDK/Desktop/Qt/474/gcc/include/QtGui -I../QtSDK/Desktop/Qt/474/gcc/include -I. -I.
LINK          = g++
LFLAGS        = -m32 -Wl,-O1 -Wl,-rpath,/home/zhaopan/QtSDK/Desktop/Qt/474/gcc/lib
LIBS          = $(SUBLIBS)  -L/home/zhaopan/QtSDK/Desktop/Qt/474/gcc/lib -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /home/zhaopan/QtSDK/Desktop/Qt/474/gcc/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = clock.cpp \
		main.cpp \
		logo.cpp \
		mainform.cpp \
		show_message.cpp \
		disp_picture.cpp \
		videoplayer.cpp moc_clock.cpp \
		moc_mainform.cpp \
		moc_show_message.cpp \
		moc_disp_picture.cpp \
		moc_videoplayer.cpp
OBJECTS       = clock.o \
		main.o \
		logo.o \
		mainform.o \
		show_message.o \
		disp_picture.o \
		videoplayer.o \
		moc_clock.o \
		moc_mainform.o \
		moc_show_message.o \
		moc_disp_picture.o \
		moc_videoplayer.o
DIST          = ../QtSDK/Desktop/Qt/474/gcc/mkspecs/common/g++.conf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/common/unix.conf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/common/linux.conf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/qconfig.pri \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/modules/qt_webkit_version.pri \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt_functions.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt_config.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/exclusive_builds.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/default_pre.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/release.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/default_post.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/warn_on.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/unix/thread.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/moc.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/resources.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/uic.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/yacc.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/lex.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/include_source_dir.prf \
		my_borad.pro
QMAKE_TARGET  = my_borad
DESTDIR       = 
TARGET        = my_borad

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: my_borad.pro  ../QtSDK/Desktop/Qt/474/gcc/mkspecs/linux-g++-32/qmake.conf ../QtSDK/Desktop/Qt/474/gcc/mkspecs/common/g++.conf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/common/unix.conf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/common/linux.conf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/qconfig.pri \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/modules/qt_webkit_version.pri \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt_functions.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt_config.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/exclusive_builds.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/default_pre.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/release.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/default_post.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/warn_on.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/unix/thread.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/moc.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/resources.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/uic.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/yacc.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/lex.prf \
		../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/include_source_dir.prf
	$(QMAKE) -spec ../QtSDK/Desktop/Qt/474/gcc/mkspecs/linux-g++-32 -o Makefile my_borad.pro
../QtSDK/Desktop/Qt/474/gcc/mkspecs/common/g++.conf:
../QtSDK/Desktop/Qt/474/gcc/mkspecs/common/unix.conf:
../QtSDK/Desktop/Qt/474/gcc/mkspecs/common/linux.conf:
../QtSDK/Desktop/Qt/474/gcc/mkspecs/qconfig.pri:
../QtSDK/Desktop/Qt/474/gcc/mkspecs/modules/qt_webkit_version.pri:
../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt_functions.prf:
../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt_config.prf:
../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/exclusive_builds.prf:
../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/default_pre.prf:
../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/release.prf:
../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/default_post.prf:
../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/warn_on.prf:
../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt.prf:
../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/unix/thread.prf:
../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/moc.prf:
../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/resources.prf:
../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/uic.prf:
../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/yacc.prf:
../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/lex.prf:
../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/include_source_dir.prf:
qmake:  FORCE
	@$(QMAKE) -spec ../QtSDK/Desktop/Qt/474/gcc/mkspecs/linux-g++-32 -o Makefile my_borad.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/my_borad1.0.0 || $(MKDIR) .tmp/my_borad1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/my_borad1.0.0/ && $(COPY_FILE) --parents clock.h logo.h mainform.h show_message.h disp_picture.h videoplayer.h .tmp/my_borad1.0.0/ && $(COPY_FILE) --parents clock.cpp main.cpp logo.cpp mainform.cpp show_message.cpp disp_picture.cpp videoplayer.cpp .tmp/my_borad1.0.0/ && (cd `dirname .tmp/my_borad1.0.0` && $(TAR) my_borad1.0.0.tar my_borad1.0.0 && $(COMPRESS) my_borad1.0.0.tar) && $(MOVE) `dirname .tmp/my_borad1.0.0`/my_borad1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/my_borad1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_clock.cpp moc_mainform.cpp moc_show_message.cpp moc_disp_picture.cpp moc_videoplayer.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_clock.cpp moc_mainform.cpp moc_show_message.cpp moc_disp_picture.cpp moc_videoplayer.cpp
moc_clock.cpp: clock.h
	/home/zhaopan/QtSDK/Desktop/Qt/474/gcc/bin/moc $(DEFINES) $(INCPATH) clock.h -o moc_clock.cpp

moc_mainform.cpp: logo.h \
		show_message.h \
		mainform.h
	/home/zhaopan/QtSDK/Desktop/Qt/474/gcc/bin/moc $(DEFINES) $(INCPATH) mainform.h -o moc_mainform.cpp

moc_show_message.cpp: show_message.h
	/home/zhaopan/QtSDK/Desktop/Qt/474/gcc/bin/moc $(DEFINES) $(INCPATH) show_message.h -o moc_show_message.cpp

moc_disp_picture.cpp: disp_picture.h
	/home/zhaopan/QtSDK/Desktop/Qt/474/gcc/bin/moc $(DEFINES) $(INCPATH) disp_picture.h -o moc_disp_picture.cpp

moc_videoplayer.cpp: videoplayer.h
	/home/zhaopan/QtSDK/Desktop/Qt/474/gcc/bin/moc $(DEFINES) $(INCPATH) videoplayer.h -o moc_videoplayer.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean 

####### Compile

clock.o: clock.cpp clock.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o clock.o clock.cpp

main.o: main.cpp clock.h \
		logo.h \
		mainform.h \
		show_message.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

logo.o: logo.cpp logo.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o logo.o logo.cpp

mainform.o: mainform.cpp mainform.h \
		logo.h \
		show_message.h \
		disp_picture.h \
		clock.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainform.o mainform.cpp

show_message.o: show_message.cpp show_message.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o show_message.o show_message.cpp

disp_picture.o: disp_picture.cpp disp_picture.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o disp_picture.o disp_picture.cpp

videoplayer.o: videoplayer.cpp videoplayer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o videoplayer.o videoplayer.cpp

moc_clock.o: moc_clock.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_clock.o moc_clock.cpp

moc_mainform.o: moc_mainform.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainform.o moc_mainform.cpp

moc_show_message.o: moc_show_message.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_show_message.o moc_show_message.cpp

moc_disp_picture.o: moc_disp_picture.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_disp_picture.o moc_disp_picture.cpp

moc_videoplayer.o: moc_videoplayer.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_videoplayer.o moc_videoplayer.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:
