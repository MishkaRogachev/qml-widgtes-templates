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
        height: 4
        radius: 3
        antialiasing: true
        color: palette.colorBackgroundSunken

        Rectangle {
            id: fill
            color: palette.colorActive
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            height: 4
            radius: 1
            antialiasing: true
            width: {
                if (maxValue > minValue) {
                    var pos = (value - minValue) *
                              (background.width) / (maxValue - minValue);
                    pos = Math.min(pos, background.width);
                    pos = Math.max(pos, 0);
                    return pos;
                } else {
                    return 0;
                }
            }
        }
    }
}
