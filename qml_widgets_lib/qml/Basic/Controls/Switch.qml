import QtQuick 2.0
import "../"
import "../Misk"

BasicItem {
    id: switcher

    property bool switched: false
    property bool switchEnabled: switched
    property alias onText: onItem.text
    property alias offText: offItem.text

    width: switchRow.width
    height: switchRow.height

    Rectangle {
        id: background
        anchors.fill: parent
        radius: width / 2
        antialiasing: true
        color: switchEnabled ? palette.colorActive : "#00000000"
        border.width: 1
        border.color: palette.colorBackgroundItem
        Behavior on color { ColorAnimation { duration: 150 } }
    }

    Circle {
        id: switchStateIndicator
        width: switched ? onItem.width : offItem.width
        height: parent.height - 4
        anchors.verticalCenter: parent.verticalCenter
        x: switched ? offItem.width - 2 : 2
        Behavior on x { NumberAnimation { duration: 50 } }
    }

    Row {
        id: switchRow
        anchors.centerIn: parent

        Label {
            id: offItem
            anchors.verticalCenter: parent.verticalCenter
            color: switched ?
                       palette.colorBackgroundText :
                       palette.colorForegroundText
        }

        Label {
            id: onItem
            anchors.verticalCenter: parent.verticalCenter
            color: switched ?
                       palette.colorForegroundText :
                       palette.colorBackgroundText
        }
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onPressed: switched = !switched
    }
}
