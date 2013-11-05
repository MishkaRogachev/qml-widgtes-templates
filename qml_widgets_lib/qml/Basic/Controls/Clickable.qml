import QtQuick 2.0
import "../"

BasicItem {
    id: clickable

    property alias text: textItem.text
    property alias icon: iconItem.source
    property alias textColor: textItem.color
    property alias pressed: mouseArea.pressed
    signal clicked()

    width: Math.max(contentsRow.width, contentsRow.height) + 20
    height: contentsRow.height + 20

    Row {
        id: contentsRow
        spacing: 10
        anchors.centerIn: parent

        Image {
            id: iconItem
            anchors.verticalCenter: parent.verticalCenter
            smooth: true
        }

        Text {
            id: textItem
            text: qsTr( "Ok" )
            style: Text.Raised
            anchors.verticalCenter: parent.verticalCenter
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: clickable.enabled ?
                       palette.colorBackgroundText :
                       palette.colorBackgroundTextUnavalible
            smooth: true
            font.pointSize: 18
        }
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onPressed: clickable.clicked()
    }
}
