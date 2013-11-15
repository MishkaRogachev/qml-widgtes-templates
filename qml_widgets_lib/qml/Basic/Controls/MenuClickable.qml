import QtQuick 2.0
import "../Widgets"
import "../Misk"

Clickable {
    id: menuClickable

    property alias menuVisible: menu.visible

    width: contentWidth + dropArrowLabel.contentWidth + 10

    Rectangle {
        id: background
        anchors.fill: parent
        visible: menu.visible
        color: palette.colorActive
        z:-1
    }

    Label {
        id: dropArrowLabel
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        width: contentWidth
        text: "▼"
        color: palette.colorBackgroundText
    }

    property Menu menu: Menu {
        id: menu
        parent: root
        width: menuClickable.width
        anchors.left: parent.left
        anchors.leftMargin: menuClickable.absoluteX
        anchors.top: parent.top
        anchors.topMargin: menuClickable.absoluteY + menuClickable.height + 1
        visible: false
        onAccepted: menuVisible = !menuVisible
    }

    onClicked: menuVisible = !menuVisible
}
