import QtQuick 2.0
import "../"
import "../Misk"

BasicItem {
    id: led

    property bool active: false

    width: 12
    height: width

    Bordered {
        anchors.fill: parent
    }

    Rectangle {
        anchors.fill: parent
        radius: height / 2
        color: palette.colorActive
        antialiasing: true
        visible: led.active
    }
}
