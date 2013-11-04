import QtQuick 2.0
import "../"
import "../Misk"

BasicItem {
    id: clickable
    
    property bool checkable: false
    property bool checked: false
    property string text: qsTr( "Clickable" )
    property url icon: iconItem.source
    signal clicked()

    width: contentsRow.width + 30
    height: contentsRow.height + 10
    
    Shadow {
        color: palette.shadowColor
    }

    Rectangle {
        id: background
        color: mouseArea.pressed || clickable.checked ?
                   palette.colorBackgroundActive :
                   palette.colorBackgroundRaised
        anchors.fill: parent
        radius: 3
        smooth: true
    }

        
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
            text: clickable.text
            anchors.verticalCenter: parent.verticalCenter
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: palette.backgroundTextColor
            smooth: true
            font.pointSize: 16
        }
    }
    
    MouseArea {
        id: mouseArea
        anchors.fill: parent

        onClicked: {
            clickable.clicked()
            
            if( clickable.checkable ) {
                clickable.checked = !clickable.checked
            }
        }
    }
}
