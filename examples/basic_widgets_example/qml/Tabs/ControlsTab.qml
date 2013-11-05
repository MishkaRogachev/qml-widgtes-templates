import QtQuick 2.0
import "../Basic/Widgets"
import "../Basic/Controls"

Item {
    id: controlsTab

    Row {
        spacing: 10
        anchors.fill: parent
        anchors.margins: 25

        Column {
            spacing: 25

            Row {
                spacing: 25

                Switch {}

                Switch {
                    offText: "NO"
                    onText: "YES"
                }

                Switch {
                    offText: "0"
                    onText: "1"
                }
            }

            Slider {
                id: slider
            }
        }
    }
}
