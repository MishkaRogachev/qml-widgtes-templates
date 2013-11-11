import QtQuick 2.0

Rectangle {
    id: shadow
    color: palette.colorTransparent
    border.width: 3
    border.color: palette.colorShadow
    anchors.fill: parent
    anchors.rightMargin: -2
    anchors.bottomMargin: -2
    radius: height / 2
    antialiasing: true
}
