import QtQuick 2.0
import "../"

Text {
    id: label
    verticalAlignment: Text.AlignVCenter
    horizontalAlignment: Text.AlignHCenter
    width: Math.max(contentWidth, contentHeight) + 15
    height: contentHeight + 15
    antialiasing: true
    font.pointSize: 18
    color: palette.colorBackgroundTextSecondary
}
