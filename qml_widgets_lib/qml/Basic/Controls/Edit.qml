import QtQuick 2.0
import "../"
import "../Misk"

BasicItem {
    id: edit

    property TextEdit textItem: TextEdit {
        parent: edit
        width: edit.width - 15
        anchors.centerIn: parent
        horizontalAlignment: Text.AlignHCenter
        antialiasing: true
        font.pointSize: 21
    }

    width: textItem.contentWidth + 15
    height: textItem.height + 15
    clip: true

    ForegroundItem {
        anchors.fill: parent
        border.color: textItem.activeFocus ?
                          palette.colorActive :
                          palette.colorForeground
        border.width: 1
    }
}
