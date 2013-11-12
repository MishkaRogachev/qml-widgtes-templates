import QtQuick 2.0
import "../"
import "../Misk"

BasicItem {
    id: bar

    property alias barModel: repeater.model
    property variant selectedItem: repeater.model[selectedItemIndex]
    property int selectedItemIndex: -1

    anchors.left: parent.left
    anchors.right: parent.right
    height: row.height

    Bordered {
        id: background
        anchors.fill: parent
        palette: bar.palette

        Item {
            id: leftClipItem
            clip: true
            antialiasing: true
            anchors.fill: parent
            anchors.leftMargin: repeater.activeItem ? repeater.activeItem.x : 1

            Item {
                id: rightClipItem
                clip: true
                antialiasing: true
                anchors.fill: parent
                anchors.rightMargin: repeater.activeItem ?
                                         row.width - repeater.activeItem.x -
                                         repeater.activeItem.width : 1

                Rectangle {
                    id: highlight
                    anchors.fill: parent
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: -leftClipItem.anchors.leftMargin + 0
                    anchors.rightMargin: -rightClipItem.anchors.rightMargin + 0
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

                property variant activeItem: repeater.itemAt(selectedItemIndex)

                Clickable {
                    id: label
                    width: row.width / repeater.count
                    text: modelData.text ? modelData.text : ""
                    icon: modelData.icon ? modelData.icon : ""
                    onClicked: selectedItemIndex = index
                    palette: bar.palette
                }
            }
        }
    }
    Component.onCompleted: selectedItemIndex = 0
}
