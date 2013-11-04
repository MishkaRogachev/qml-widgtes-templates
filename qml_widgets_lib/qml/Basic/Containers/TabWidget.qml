import QtQuick 2.0
import "../Widgets"

Widget {
    id: tabWidget

    property alias tabsModel: tabRepeater.model
    // modelData must contain url property called "file" and string proprty "text"

    Rectangle {
        id: tabBackground
        anchors.fill: tabBar
        color: palette.colorBackgroundSunken
        radius: 3
        smooth: true
    }

    Row {
        id: tabBar // TODO: refactor in TabBar Item

        property variant activeTab: tabRepeater.model[activeTabIndex]
        property int activeTabIndex: 0

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right

        Repeater {
            id: tabRepeater

            Item {
                id: tabItem
                width: tabBar.width / tabRepeater.count
                height: tabText.height

                Rectangle {
                    anchors.fill: parent
                    anchors.bottomMargin: -3
                    color: palette.colorBackgroundNormal
                    radius: 3
                    smooth: true
                    visible: tabBar.activeTabIndex === index
                }

                Text {
                    id: tabText
                    anchors.centerIn: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    color: palette.backgroundTextColor
                    smooth: true
                    font.pointSize: 16
                    text: modelData.text
                }

                MouseArea {
                    anchors.fill: parent
                    onPressed: tabBar.activeTabIndex = index
                }
            }
        }
    }

    Loader {
        id: tabContents

        source: tabBar.activeTab.file

        anchors.top: tabBar.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }
}
