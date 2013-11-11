import QtQuick 2.0
import "../"

Text {
    id: label
    verticalAlignment: Text.AlignVCenter
    horizontalAlignment: Text.AlignHCenter
    anchors.verticalCenter: parent.verticalCenter
    width: Math.max(contentWidth, contentHeight) + 15
    height: contentHeight + 15
    antialiasing: true
    font.pointSize: 21
    color: palette.colorBackgroundTextSecondary
}
