import QtQuick 2.0
import "../"

BasicItem {
    id: horizontalSeparator
    anchors.centerIn: parent
    width: parent.width
    height: 11

    Rectangle {
        anchors.fill: parent
        anchors.margins: 5
        color: palette.colorItem
    }
}
