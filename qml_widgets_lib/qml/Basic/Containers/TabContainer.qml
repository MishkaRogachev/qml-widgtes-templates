import QtQuick 2.0
import "../"
import "../Controls"

BasicItem {
    id: tabWidget

    property alias tabsModel: tabBar.model
    // model item: url "source" and (string "text" or/and url "icon")

    Bar {
        id: tabBar
        anchors.top: parent.top
        anchors.margins: 10
        palette: tabWidget.palette
    }

    Loader {
        id: tabContents
        source: tabBar.activeItem.source ? tabBar.activeItem.source : ""
        anchors.top: tabBar.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }
}
