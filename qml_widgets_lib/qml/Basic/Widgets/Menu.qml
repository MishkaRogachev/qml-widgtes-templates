import QtQuick 2.0
import "../Controls"
import "../Misk"

Widget {
    id: menu

    property alias model: repeater.model
    // model item: string "type"("simple", "check", "separator", "menu")
    // and (string "text" or/and url "icon")

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
                    case "check":
                        return checkComponent
                    case "separator":
                        return separatorComponent
                    case "menu":
                        return menuComponent
                    }
                }
                onLoaded: {
                    if (modelData.text) loader.item.text = modelData.text;
                    loader.item.palette = palette;
                }
            }
        }
    }

    Component {
        id: simpleComponent

        Clickable {

        }
    }

    Component {
        id: checkComponent

        Clickable {

        }
    }

    Component {
        id: separatorComponent

        HorizontalSeparator {
            width: column.width
        }
    }

    Component {
        id: menuComponent

        Clickable {
        }
    }
}
