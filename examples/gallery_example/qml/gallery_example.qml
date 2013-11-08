import QtQuick 2.0
import "Basic/Containers"
import "Basic/Widgets"

Rectangle {
    id: root
    color: "black"

    Rectangle {
        id: animatedBackground
        gradient: Gradient {
            GradientStop {
                position: 0.00;
                color: "#afafe9ee";
            }
            GradientStop {
                position: 0.50;
                color: "#00aaff";

                SequentialAnimation on position {
                    running: true
                    loops: Animation.Infinite

                    PropertyAnimation { to: 0.25; duration: 2555 }
                    PropertyAnimation { to: 0.75; duration: 4575 }
                }
            }
            GradientStop {
                position: 1.00;
                color: "#0d537c";
            }
        }
        anchors.fill: parent
    }

    Widget {
        anchors.fill: parent
        anchors.margins: 25

        TabContainer {
            anchors.fill: parent

            tabsModel: [ {
                    source: "qrc:/qml/Tabs/Controls.qml",
                    text: qsTr("Controls")
                }, {
                    source: "qrc:/qml/Tabs/Itemviews.qml",
                    text: qsTr("Itemviews")
                }, {
                    source: "qrc:/qml/Tabs/Styles.qml",
                    text: qsTr("Styles")
                }, {
                    source: "qrc:/qml/Tabs/Layouts.qml",
                    text: qsTr("Layouts")
                }
            ]
        }
    }
}
