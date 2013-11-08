import QtQuick 2.0
import "../"
import "../Misk"

BasicItem {
    id: clickable

    property alias text: textItem.text
    property alias icon: iconItem.source
    property alias pressed: mouseArea.pressed
    signal clicked()

    width: Math.max(contentsRow.width, contentsRow.height)
    height: contentsRow.height

    Row {
        id: contentsRow
        spacing: 10
        anchors.centerIn: parent

        Image {
            id: iconItem
            anchors.verticalCenter: parent.verticalCenter
            smooth: true
        }

        Label {
            id: textItem
            text: qsTr( "Ok" )
            color: palette.colorBackgroundTextPrimary
        }
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: clickable.clicked()
    }
}
