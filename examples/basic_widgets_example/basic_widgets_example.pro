QT += core qml quick
TARGET = basic_widgets_example
TEMPLATE = app

DESTDIR = ../../result
OBJECTS_DIR = ../../build
MOC_DIR = ../../build/moc

SOURCES += \
    basic_widgets_example.cpp

OTHER_FILES += \
    qml/basic_widgets_example.qml

RESOURCES += \
    basic_widgets_example.qrc
