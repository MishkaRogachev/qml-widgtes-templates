import QtQuick 2.0
import "../"

BasicItem {
    id: progressBar

    property real value: 50
    property real minValue: 0
    property real maxValue: 100

    width: 325
    height: background.height

    Rectangle {
        id: background
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        height: 8
        radius: 4
        antialiasing: true
        color: palette.colorTransparent
        border.width: 1
        border.color: palette.colorBackgroundItem

        Rectangle {
            id: fill
            color: palette.colorActive
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 1
            height: 6
            radius: 3
            antialiasing: true
            width: {
                if (maxValue > minValue) {
                    var pos = (value - minValue) *
                              (background.width - 2) / (maxValue - minValue);
                    pos = Math.min(pos, background.width - 2);
                    pos = Math.max(pos, 0);
                    return pos;
                } else {
                    return 0;
                }
            }
        }
    }
}
