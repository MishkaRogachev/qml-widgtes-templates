import QtQuick 2.0
import "../"
import "../Controls"

BasicItem {
    id: scrollArea

    property alias source: loader.source
    property alias sourceComponent: loader.sourceComponent

    Item {
        id: scrollable
        anchors.margins: 2
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.bottom: /*horizontalScrollBar.visible ?
                            horizontalScrollBar.top :*/
                            parent.bottom

        anchors.right: verticalScrollBar.visible ?
                           verticalScrollBar.left :
                           parent.right
        clip: true

        Loader {
            id: loader
        }
    }

    ScrollBar {
        id: verticalScrollBar
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        onPositionChanged: loader.y = -position
        contentsHeight: loader.height
        visible: loader.height > scrollArea.height
    }

//    ScrollBar {
//        id: horizontalScrollBar
//        anchors.left: parent.left
//        anchors.right: parent.right
//        anchors.bottom: parent.bottom
//        onPositionChanged: loader.x = -position
//        contentsHeight: loader.width
//        visible: loader.width > scrollArea.width
//    }
}
