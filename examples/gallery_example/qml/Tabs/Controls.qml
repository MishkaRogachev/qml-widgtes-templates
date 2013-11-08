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
                anchors.horizontalCenter: parent.horizontalCenter

                Clickable {
                    text: "Push Me!"
                }
            }

            Row {
                spacing: 25
                anchors.horizontalCenter: parent.horizontalCenter

                Switch {}

                Switch {
                    offText: "NO"
                    onText: "YES"
                    switchEnabled: false
                }

                Switch {
                    offText: "Off"
                    onText: "On"
                }
            }

            Slider {
                id: slider
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Grid {
                rows: 4
                columns: 3
                spacing: 15
                anchors.horizontalCenter: parent.horizontalCenter

                Repeater {
                    model: [
                        { text: "1" },
                        { text: "2" },
                        { text: "3" },
                        { text: "4" },
                        { text: "5" },
                        { text: "6" },
                        { text: "7" },
                        { text: "8" },
                        { text: "9" },
                        { text: "*" },
                        { text: "0" },
                        { text: "#" },
                    ]

                    Button {
                        text: modelData.text
                    }
                }
            }
        }
    }
}
