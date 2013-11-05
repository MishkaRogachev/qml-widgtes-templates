import QtQuick 2.0
import "../Misk"

Clickable {
    id: button

    Rectangle {
        id: shadow
        color: "#00000000"
        border.width: 3
        border.color: "#66000000"
        anchors.fill: background
        anchors.rightMargin: -2
        anchors.bottomMargin: -2
        radius: height / 2
        antialiasing: true
        z: -1
    }

    Rectangle {
        id: background
        anchors.fill: parent
        radius: height / 2
        antialiasing: true
        color: button.pressed ? palette.colorActive : "#00000000"
        border.width: 1
        border.color: button.textColor
        opacity: button.enabled ? 1.00 : 0.35
        z: -1
        Behavior on color { ColorAnimation { duration: 50 } }
    }
}
