import QtQuick 2.0
import "Basic/Containers"

Rectangle {
    id: root
    width: 1024
    height: 768
    color: "black"

    Item {
        id: animatedBackground
        anchors.fill: parent

        Rectangle {
            anchors.fill: parent

            gradient: Gradient {

                GradientStop {
                    position: 0.00;
                    color: "black";
                }

                GradientStop {
                    position: 0.50;
                    color: "cyan";

                    SequentialAnimation on position {
                        running: true
                        loops: Animation.Infinite

                        PropertyAnimation { to: 0.25; duration: 3250 }
                        PropertyAnimation { to: 0.75; duration: 5750 }
                    }
                }

                GradientStop {
                    position: 1.00;
                    color: "#329BD8";
                }
            }
        }

        Rectangle {
            y: 0
            x: 0
            rotation: 90
            width: 1024
            height: 1024
            opacity: 0.5

            gradient: Gradient {

                GradientStop {
                    position: 0.00;
                    color: "teal";
                }

                GradientStop {
                    position: 0.50;
                    color: "#329BD8";

                    SequentialAnimation on position {
                        running: true
                        loops: Animation.Infinite

                        PropertyAnimation { to: 0.45; duration: 2555 }
                        PropertyAnimation { to: 0.65; duration: 4575 }
                    }
                }

                GradientStop {
                    position: 1.00;
                    color: "white";
                }
            }
        }
    }

    TabWidget {
        anchors.fill: parent
        anchors.margins: 25

        tabsModel: [
            { file: "qrc:/qml/Tabs/ControlsTab.qml", text: qsTr("Controls") },
            { file: "qrc:/qml/Tabs/Display.qml", text: qsTr("Display") },
            { file: "qrc:/qml/Tabs/View.qml", text: qsTr("View") },
            { file: "qrc:/qml/Tabs/AboutTab.qml", text: qsTr("About") },
        ]
    }
}
