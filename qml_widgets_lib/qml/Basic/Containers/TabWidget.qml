import QtQuick 2.0
import "../Widgets"
import "../Controls"

Widget {
    id: tabWidget

    property alias tabsModel: tabRepeater.model
    // modelData must contain url property called "file" and string proprty "text"

    Rectangle {
        id: verticalSeparator
        anchors.left: tabBar.left
        anchors.right: tabBar.right
        anchors.bottom: tabBar.bottom
        height: 1
        color: palette.colorBackgroundSunken
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
                height: tabClickable.height

                Clickable {
                    id: tabClickable
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    text: modelData.text
                    onClicked: tabBar.activeTabIndex = index
                }

                Rectangle {
                    id: tabItemHighlight
                    anchors.left: tabItem.left
                    anchors.right: tabItem.right
                    anchors.bottom: tabItem.bottom
                    height: 5
                    color: palette.colorActive
                    visible: tabBar.activeTabIndex === index
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
