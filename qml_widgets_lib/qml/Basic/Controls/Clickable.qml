import QtQuick 2.0
import "../"

BasicItem {
    id: clickable
    
    property bool checkable: false
    property bool checked: false
    property string text: qsTr( "Clickable" )
    property url icon: iconItem.source
    signal clicked()

    width: contentsRow.width + 30
    height: contentsRow.height + 10
    
    Rectangle {
        id: background
        color: "#66000000"
        anchors.fill: parent
        radius: 3
        smooth: true

        Rectangle {
            id: foreground
            color: mouseArea.pressed || clickable.checked ?
                       palette.backgroundActiveColor :
                       palette.backgroundSecondaryColor
            anchors.fill: parent
            anchors.topMargin: 0
            anchors.leftMargin: 0
            anchors.rightMargin: 1
            anchors.bottomMargin: 1
            radius: 3
            smooth: true
        }
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
