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
    gallery_example.cpp

OTHER_FILES += \
    qml/Tabs/Controls.qml \
    qml/gallery_example.qml

RESOURCES += \
    gallery_example.qrc
