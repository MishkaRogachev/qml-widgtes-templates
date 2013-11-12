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

    Bordered {
        id: fill
        anchors.fill: parent
        anchors.margins: parent.width / 4
        selected: true
        visible: false
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: radioButton.clicked()
    }
}
