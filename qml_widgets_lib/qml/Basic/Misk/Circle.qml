import QtQuick 2.0
import "../"

BasicItem {
    id: circle

    width: 50
    height: width

    Shadow {}

    Rectangle {
        id: item
        anchors.fill: parent
        radius: width / 2
        antialiasing: true
        color: palette.colorItem
        border.width: 1
        border.color: palette.colorItem
    }
}
