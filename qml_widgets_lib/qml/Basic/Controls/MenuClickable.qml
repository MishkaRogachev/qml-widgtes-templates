import QtQuick 2.0
import "../Widgets"

Clickable {
    id: menuClickable

    property alias menuVisible: menu.visible

    Item {
        id: clipper
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 2
        width: 11
        height: 11
        clip: true

        Rectangle {
            anchors.fill: parent
            anchors.topMargin: -2
            anchors.leftMargin: -2
            color: palette.colorTransparent
            border.width: 2
            border.color: palette.colorBackgroundItem
        }
    }

    property Menu menu: Menu {
        id: menu
        parent: root
        anchors.left: parent.left
        anchors.leftMargin: menuClickable.absoluteX
        anchors.top: parent.top
        anchors.topMargin: menuClickable.absoluteY + menuClickable.height
        visible: false
    }

    onClicked: menuVisible = !menuVisible
}
