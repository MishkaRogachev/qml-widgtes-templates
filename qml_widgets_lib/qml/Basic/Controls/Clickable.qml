import QtQuick 2.0
import QtGraphicalEffects 1.0
import "../"
import "../Misk"

BasicItem {
    id: clickable

    property alias text: textItem.text
    property alias icon: iconItem.source
    property alias pressed: mouseArea.pressed
    signal clicked()

    width: Math.max(contentsRow.width, contentsRow.height) + 18
    height: contentsRow.height + 20

    Row {
        id: contentsRow
        spacing: 10
        anchors.centerIn: parent
        visible: !mouseArea.pressed

        Image {
            id: iconItem
            anchors.verticalCenter: parent.verticalCenter
            smooth: true
        }

        Label {
            id: textItem
            text: qsTr( "Ok" )
            color: clickable.enabled ?
                       palette.colorBackgroundText :
                       palette.colorBackgroundTextUnavalible
        }
    }

    Glow {
        anchors.fill: contentsRow
        radius: 8
        samples: 16
        color: palette.colorActive
        source: contentsRow
        visible: mouseArea.pressed
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: clickable.clicked()
    }
}
