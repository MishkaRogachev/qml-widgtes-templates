import QtQuick 2.0
import "../"

BasicItem {
    id: circle

    width: 40
    height: width

    Shadow {
        cornerRadius: item.radius
        anchors.fill: item
    }

    Rectangle {
        id: item
        anchors.fill: parent
        radius: width / 2
        antialiasing: true
        color: palette.colorBackgroundItem
        border.width: 1
        border.color: palette.colorBackgroundItem
    }
}
