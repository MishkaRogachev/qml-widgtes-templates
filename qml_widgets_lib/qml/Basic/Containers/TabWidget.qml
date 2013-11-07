import QtQuick 2.0
import "../Widgets"
import "../Controls"

Widget {
    id: tabWidget

    property alias tabsModel: tabBar.model
    //model item must contain url "file" and string "text" or url "icon"

    Bar {
        id: tabBar
        anchors.top: parent.top
        anchors.margins: 10
    }

    Loader {
        id: tabContents
        source: tabBar.activeItem.file
        anchors.top: tabBar.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }
}
