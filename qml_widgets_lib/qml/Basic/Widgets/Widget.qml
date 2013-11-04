import QtQuick 2.0
import "../"
import "../Misk"

BasicItem {
    id: widget

    Shadow {
        color: palette.shadowColor
    }

    Rectangle {
        id: background
        color: palette.colorBackgroundNormal
        anchors.fill: parent
        radius: 3
        smooth: true
    }
}
