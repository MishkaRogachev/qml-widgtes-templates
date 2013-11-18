import QtQuick 2.0
import "../"
import "../Misk"

BasicItem {
    id: scrollBar

    property int contentsHeight: 100
    property int position: 0

    width: 8

    Bordered {
        id: background
        anchors.fill: parent
    }

    Rectangle {
        id: bar
        color: palette.colorActive
        width: parent.width
        radius: width / 2
        antialiasing: true
        height: Math.pow(scrollBar.height, 2) / contentsHeight
        onYChanged: position = y * contentsHeight / scrollBar.height

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            drag.target: bar
            drag.axis: Drag.YAxis
            drag.minimumY: 0
            drag.maximumY: scrollBar.height - bar.height
            onWheel: {
                if (wheel.angleDelta.y > 0) {
                    if (bar.y > 0) bar.y--;
                }
                else {
                    if (bar.y < (scrollBar.height - bar.height)) bar.y++;
                }
            }
        }
    }
}
