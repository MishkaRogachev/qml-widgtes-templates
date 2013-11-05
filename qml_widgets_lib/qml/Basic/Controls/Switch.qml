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
        color: palette.colorBackgroundSunken
    }

    Shadow {
        cornerRadius: switchStateIndicator.radius
        anchors.fill: switchStateIndicator
    }

    Rectangle {
        id: switchStateIndicator
        width: switched ? onItem.width : offItem.width
        height: parent.height - 2
        radius: height / 2
        anchors.verticalCenter: parent.verticalCenter
        x: switched ? offItem.width - 1 : 1
        antialiasing: true
        color: switchEnabled ?
                   palette.colorActive :
                   palette.colorBackgroundRaised
        border.width: 1
        border.color: palette.colorBackgroundRaised
        opacity: switcher.enabled ? 1.00 : 0.35
        Behavior on x { NumberAnimation { duration: 50 } }
        Behavior on color { ColorAnimation { duration: 100 } }
    }

    Row {
        id: switchRow
        anchors.centerIn: parent

        Clickable {
            id: offItem
            text: "Off"
            anchors.verticalCenter: parent.verticalCenter
            onClicked: switched = !switched
            enabled: switcher.enabled
        }

        Clickable {
            id: onItem
            text: "On"
            anchors.verticalCenter: parent.verticalCenter
            onClicked: switched = !switched
            enabled: switcher.enabled
        }
    }
}
