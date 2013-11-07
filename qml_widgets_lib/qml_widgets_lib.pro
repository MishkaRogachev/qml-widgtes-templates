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
    qml/Basic/Containers/TabWidget.qml \
    qml/Basic/Controls/Switch.qml \
    qml/Basic/Controls/Slider.qml \
    qml/Basic/Display/ProgressBar.qml \
    qml/Basic/Controls/Button.qml \
    qml/Basic/Misk/Circle.qml \
    qml/Basic/Misk/Label.qml \
    qml/Basic/Controls/Bar.qml \
    qml/Basic/Misk/Bordered.qml

