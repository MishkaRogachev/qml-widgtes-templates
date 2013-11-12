import QtQuick 2.0
import "../"
import "../Misk"

BasicItem {
    id: lineEdit

    property TextInput textItem: TextInput {
        parent: lineEdit
        width: lineEdit.width
        anchors.centerIn: parent
        horizontalAlignment: Text.AlignHCenter
        antialiasing: true
        font.pointSize: 21
        readOnly: !parent.enabled
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
