
TEMPLATE = app
TARGET = NirvanaQt
DEPENDPATH  += .
INCLUDEPATH += .
QT += xml

include(qmake/clean-objects.pri)
include(qmake/c++11.pri)
include(qmake/qt5-gui.pri)

linux-g++ {
    QMAKE_CXXFLAGS += -W -Wall -pedantic #-Wuseless-cast #-Wold-style-cast 
}

*msvc* {
    DEFINES += _CRT_SECURE_NO_WARNINGS _SCL_SECURE_NO_WARNINGS
}



HEADERS += \
    NirvanaQt.h   \
    TextBuffer.h \
    Selection.h     \
    ICursorMoveHandler.h \
    IHighlightHandler.h \
    IBufferModifiedHandler.h \
    SyntaxHighlighter.h \
    IPreDeleteHandler.h \
    X11Colors.h \
    Types.h \
    regex/Regex.h \
    regex/RegexMatch.h \
    regex/RegexException.h \
    regex/RegexCommon.h
	
SOURCES += \
    main.cpp          \
    NirvanaQt.cpp   \
    TextBuffer.cpp \
    Selection.cpp \
    SyntaxHighlighter.cpp \
    X11Colors.cpp \
    regex/Regex.cpp \
    regex/RegexMatch.cpp \
    regex/RegexCommon.cpp

RESOURCES += \
    NirvanaQt.qrc
