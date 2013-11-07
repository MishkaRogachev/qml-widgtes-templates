import QtQuick 2.0
import "../"
import "../Misk"

BasicItem {
    id: bar

    property alias model: repeater.model
    //model item must contain string "text" or url "icon"
    property variant activeItem: repeater.model[activeItemIndex]
    property int activeItemIndex: -1

    anchors.left: parent.left
    anchors.right: parent.right
    height: row.height

    Bordered {
        id: background
        anchors.fill: parent

        Item {
            id: leftClipItem
            clip: true
            anchors.fill: parent
            anchors.leftMargin: repeater.activeItem ? repeater.activeItem.x : 1

            Item {
                id: rightClipItem
                clip: true
                anchors.fill: parent
                anchors.rightMargin: repeater.activeItem ?
                                         row.width - repeater.activeItem.x -
                                         repeater.activeItem.width : 1

                Rectangle {
                    id: highlight
                    anchors.fill: parent
                    anchors.topMargin: 1
                    anchors.bottomMargin: 1
                    anchors.leftMargin: -leftClipItem.anchors.leftMargin + 1
                    anchors.rightMargin: -rightClipItem.anchors.rightMargin + 1
                    color: palette.colorActive
                    antialiasing: true
                    radius: height / 2
                }
            }
        }

        Row {
            id: row
            anchors.centerIn: parent
            width: parent.width

            Repeater {
                id: repeater

                property variant activeItem: repeater.itemAt(activeItemIndex)

                Clickable {
                    id: label
                    width: row.width / repeater.count
                    text: modelData.text ? modelData.text : ""
                    icon: modelData.icon ? modelData.icon : ""
                    onClicked: activeItemIndex = index
                }
            }
        }
    }
    Component.onCompleted: activeItemIndex = 0
}
