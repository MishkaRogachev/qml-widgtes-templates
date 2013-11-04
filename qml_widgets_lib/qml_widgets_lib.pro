QT += core qml quick
TARGET = qmlwidgets
TEMPLATE = lib

DESTDIR = ../result
OBJECTS_DIR = ../build
MOC_DIR = ../build/moc
UI_DIR = ../build/ui

QMAKE_CXXFLAGS += -std=c++0x

RESOURCES += \
    qml_widgets.qrc

OTHER_FILES += \
    qml/Basic/BasicItem.qml \
    qml/Basic/Controls/Clickable.qml \
    qml/Basic/Misk/Palette.qml \
    qml/Basic/Widgets/Widget.qml \
    qml/Basic/Misk/Shadow.qml \
    qml/Basic/Containers/TabWidget.qml

