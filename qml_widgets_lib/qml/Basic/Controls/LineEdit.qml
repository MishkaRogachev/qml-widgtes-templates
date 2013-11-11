import QtQuick 2.0
import "../"
import "../Misk"

BasicItem {
    id: lineEdit

    property TextInput textInput: TextInput {
        parent: lineEdit
        width: lineEdit.width
        anchors.centerIn: parent
        horizontalAlignment: Text.AlignHCenter
        antialiasing: true
        font.pointSize: 21
    }

    width: textInput.contentWidth + 15
    height: textInput.height + 15
    clip: true

    ForegroundItem {
        anchors.fill: parent
        border.color: textInput.activeFocus ?
                          palette.colorActive :
                          palette.colorForeground
        border.width: 1
    }


}
