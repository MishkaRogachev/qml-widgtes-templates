import QtQuick 2.0
import "../Misk"

Clickable {
    id: button

    Rectangle {
        id: shadow
        color: palette.colorTransparent
        border.width: 3
        border.color: palette.colorShadow
        opacity: 0.75
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
        //Qt-bag with 0 alpha color: foreground is black, if "#00000000" color returns from palette
        border.width: 1
        border.color: palette.colorBackgroundItem
        z: -1
        Behavior on color { ColorAnimation { duration: 50 } }
    }
}
