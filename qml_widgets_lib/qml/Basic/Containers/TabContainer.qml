import QtQuick 2.0
import "../"
import "../Controls"

BasicItem {
    id: tabWidget

    property alias tabsModel: tabBar.barModel
    // model item: url "source" and (string "text" or/and url "icon")

    Bar {
        id: tabBar
        anchors.top: parent.top
        anchors.margins: 10
        palette: tabWidget.palette
    }

    Loader {
        id: tabContents
        source: tabBar.selectedItem.source ? tabBar.selectedItem.source : ""
        anchors.top: tabBar.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }
}
