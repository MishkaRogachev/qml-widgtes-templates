import QtQuick 2.0
import "../"
import "../Misk"

BasicItem {
    id: radioButton

    property alias checked: fill.visible
    signal clicked()

    width: 25
    height: width

    Bordered {
        anchors.fill: parent
    }

    Rectangle {
        id: fill
        anchors.fill: parent
        anchors.margins: parent.width / 3
        radius: height / 2
        color: palette.colorItem
        visible: false
        antialiasing: true
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: radioButton.clicked()
    }
}
