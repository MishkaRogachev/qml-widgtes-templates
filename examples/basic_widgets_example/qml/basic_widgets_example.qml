import QtQuick 2.0
import "Basic/Containers"

TabWidget {
    width: 1024
    height: 768

    tabsModel: [
        { file: "qrc:/qml/Tabs/ControlsTab.qml", text: qsTr("Controls") },
        { file: "qrc:/qml/Tabs/AboutTab.qml", text: qsTr("About") },
    ]
}
