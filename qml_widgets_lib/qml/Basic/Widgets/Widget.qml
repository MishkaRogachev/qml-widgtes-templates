import QtQuick 2.0
import "../"
//import QtGraphicalEffects 1.0

BasicItem {
    id: widget

    Rectangle {
        id: background
        color: palette.colorBackgroundNormal
        anchors.fill: parent
        radius: 3
        antialiasing: true
        //visible: false
    }

//    FastBlur {
//        anchors.fill: background
//        source: background
//        radius: 32
//    }
}
