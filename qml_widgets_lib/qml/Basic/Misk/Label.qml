import QtQuick 2.0
import "../"

Text {
    id: label
    verticalAlignment: Text.AlignVCenter
    horizontalAlignment: Text.AlignHCenter
    anchors.verticalCenter: parent.verticalCenter
    width: Math.max(contentWidth, contentHeight) + 18
    height: contentHeight + 20
    styleColor: "#75000000"
    style: Text.Raised
    antialiasing: true
    font.pointSize: 21
    color: palette.colorBackgroundTextSecondary
}
