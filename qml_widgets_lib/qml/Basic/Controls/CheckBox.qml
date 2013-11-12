import QtQuick 2.0
import "../"
import "../Misk"

BasicItem {
    id: checkBox

    width: 25
    height: width

    property alias checked: fill.visible

    Shadow {
        anchors.fill: background
        radius: background.radius
    }

    Rectangle {
        id: background
        anchors.fill: parent
        anchors.margins: 1
        border.color: palette.colorActive
        border.width: 1
        color: palette.colorTransparent
        radius: 2
        antialiasing: true
    }

    Label {
        id: fill
        anchors.centerIn: parent
        text: "✓"
        font.pixelSize: checkBox.width
        color: palette.colorItem
        styleColor: palette.colorShadow
        style: Text.Raised
        visible: false
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: checkBox.checked = !checkBox.checked
    }
}
