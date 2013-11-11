import QtQuick 2.0
import QtGraphicalEffects 1.0
import "../"
import "../Misk"

BasicItem {
    id: led

    property bool active: false

    width: 12
    height: 12

    Bordered {
        anchors.fill: parent
    }

    RectangularGlow {
        anchors.fill: parent
        cornerRadius: height / 2
        color: palette.colorActive
        antialiasing: true
        visible: led.active
        glowRadius: 3
        spread: 0.1
    }


}
