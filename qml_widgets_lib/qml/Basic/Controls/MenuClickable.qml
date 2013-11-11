import QtQuick 2.0
import "../Widgets"
import "../Misk"

Clickable {
    id: menuClickable

    property alias menuVisible: menu.visible

    Rectangle {
        id: background
        anchors.fill: parent
        visible: menu.visible
        color: palette.colorBackground
        z:-1
    }

    property Menu menu: Menu {
        id: menu
        parent: root
        anchors.left: parent.left
        anchors.leftMargin: menuClickable.absoluteX
        anchors.top: parent.top
        anchors.topMargin: menuClickable.absoluteY + menuClickable.height + 1
        visible: false
        onAccepted: menuVisible = !menuVisible
    }

    onClicked: menuVisible = !menuVisible
}
