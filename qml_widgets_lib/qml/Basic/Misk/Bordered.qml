import QtQuick 2.0
import "../"

BasicItem {
    id: bordered

    property bool selected: false

    Shadow {}

    Rectangle {
        id: background
        anchors.fill: parent
        radius: height / 2
        antialiasing: true
        color: bordered.selected ? palette.colorActive : "#00000000"
        border.width: 1
        border.color: palette.colorBackgroundItem
    }
}
