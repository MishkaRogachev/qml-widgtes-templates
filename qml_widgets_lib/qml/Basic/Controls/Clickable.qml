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

    width: Math.max(contentsRow.width, contentsRow.height)
    height: contentsRow.height

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
            color: palette.colorBackgroundText
            font.pointSize: 21
        }

    }

    Glow {
        anchors.fill: contentsRow
        radius: 8
        samples: 16
        color: palette.colorBackgroundText
        source: contentsRow
        visible: mouseArea.pressed
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: clickable.clicked()
    }
}
