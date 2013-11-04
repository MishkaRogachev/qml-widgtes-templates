QT += core qml quick
TARGET = basic_widgets_example
TEMPLATE = app

DESTDIR = ../../result
OBJECTS_DIR = ../../build
MOC_DIR = ../../build/moc

QMAKE_CXXFLAGS += -std=c++0x

unix|win32: LIBS += -L$$DESTDIR/ -lqmlwidgets

QML_INCLUDE_PATH += $$PWD/../qml_widgets_lib/qml/

INCLUDEPATH += $$PWD/../qml_widgets_lib
DEPENDPATH += $$PWD/../qml_widgets_lib


SOURCES += \
    basic_widgets_example.cpp

OTHER_FILES += \
    qml/basic_widgets_example.qml

RESOURCES += \
    basic_widgets_example.qrc
