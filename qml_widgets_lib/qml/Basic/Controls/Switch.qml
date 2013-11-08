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

    Bordered {
        id: background
        anchors.fill: parent
        antialiasing: true
        selected: switchEnabled
        palette: switcher.palette
    }

    Circle {
        id: switchStateIndicator
        width: switched ? onItem.width : offItem.width
        height: parent.height - 4
        anchors.verticalCenter: parent.verticalCenter
        x: switched ? offItem.width - 2 : 2
        Behavior on x { NumberAnimation { duration: 50 } }
        palette: switcher.palette
    }

    Row {
        id: switchRow
        anchors.centerIn: parent

        Label {
            id: offItem
            anchors.verticalCenter: parent.verticalCenter
            color: switched ?
                       palette.colorBackgroundTextPrimary :
                       palette.colorForegroundText
        }

        Label {
            id: onItem
            anchors.verticalCenter: parent.verticalCenter
            color: switched ?
                       palette.colorForegroundText :
                       palette.colorBackgroundTextPrimary
        }
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onPressed: switched = !switched
    }
}
