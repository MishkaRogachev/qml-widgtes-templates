import QtQuick 2.0
import "../Misk"

Clickable {
    id: button

    Bordered {
        id: borderedButton
        anchors.fill: parent
        z: -1
        selected: button.pressed
    }
}
