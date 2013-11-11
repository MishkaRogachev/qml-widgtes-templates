import QtQuick 2.0
import "../"

BasicItem {
    id: widget

    Rectangle {
        id: background
        color: palette.colorBackground
        anchors.fill: parent
        antialiasing: true
        radius: 5
    }
}
