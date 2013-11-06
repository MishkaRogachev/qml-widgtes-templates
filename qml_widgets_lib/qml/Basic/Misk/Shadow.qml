import QtQuick 2.0
import QtGraphicalEffects 1.0

RectangularGlow {
    id: shadow
    anchors.fill: parent
    anchors.topMargin: 3
    anchors.leftMargin: 3
    anchors.rightMargin: 2
    anchors.bottomMargin: 2
    glowRadius: 4
    spread: 0.50
    antialiasing: true
    color: palette.colorShadow
}
