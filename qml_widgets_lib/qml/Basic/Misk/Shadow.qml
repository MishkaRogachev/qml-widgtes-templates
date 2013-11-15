import QtQuick 2.0

Rectangle {
    id: shadow
    color: palette.colorTransparent
    border.width: 4
    anchors.margins: -1
    border.color: palette.colorShadow
    anchors.fill: parent
    radius: height / 2
    antialiasing: true
}
