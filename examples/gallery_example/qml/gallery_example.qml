import QtQuick 2.0
import "Basic/Containers"
import "Basic/Widgets"

Rectangle {
    id: root
    color: "black"

    Item {
        id: animatedBackground
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
