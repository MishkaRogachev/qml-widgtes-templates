import QtQuick 2.0
import QtGraphicalEffects 1.0

RectangularGlow {
    id: shadow
    anchors.fill: parent
    anchors.topMargin: 0
    anchors.leftMargin: 0
    anchors.rightMargin: -1
    anchors.bottomMargin: -1
    cornerRadius: 3
    glowRadius: 2
    spread: 0.00
    smooth: true
}
