import QtQuick 2.0
import "../Controls"
import "../Misk"

Widget {
    id: menu

    property alias model: repeater.model
    signal accepted(string id)
    // model item:
    // string "type"("simple", "separator")
    // string "text" or/and url "icon"
    // string id

    width: column.width
    height: column.height

    Column {
        id: column
        anchors.centerIn: parent

        Repeater {
            id: repeater

            Loader {
                id: loader
                sourceComponent: {
                    switch(modelData.type) {
                    case "simple":
                        return simpleComponent
                    case "separator":
                        return separatorComponent
                    }
                }
                onLoaded: {
                    if (modelData.text) {
                        loader.item.text = modelData.text;
                    }
                    loader.item.palette = palette;
                    if (loader.item.clicked) {
                        loader.item.clicked.connect(loader.clicked);
                    }
                }
                function clicked() {
                    menu.accepted(modelData.id)
                }
            }
        }
    }

    Component {
        id: simpleComponent

        Clickable { }
    }

    Component {
        id: separatorComponent

        HorizontalSeparator {
            width: column.width
        }
    }
}
