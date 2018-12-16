QT       -= gui

TARGET = mylib
TEMPLATE = lib

OBJECTS_DIR += ./tmp
DESTDIR +=./bin

CONFIG +=c++11
CONFIG +=release

DEFINES += MYLIB_LIBRARY
DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += display.cpp \
    spec.cpp \
    applyfilter.cpp

INCLUDEPATH +=\
    /usr/local/include/opencv\
    /usr/local/include/opencv2

HEADERS += display.h\
        mylib_global.h \
    spec.h \
    applyfilter.h

unix {
    target.path = /home/andy/Desktop/mylib
    INSTALLS += target
}

LIBS += \
-L/usr/local/lib\
    -lopencv_core\
    -lopencv_highgui\
    -lopencv_imgcodecs\
    -lopencv_imgproc
