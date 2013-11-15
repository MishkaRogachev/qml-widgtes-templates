import QtQuick 2.0
import "../"
import "../Controls"
import "../Misk"

BasicItem {
    id: checkGroup

    property alias checkGroupModel: repeater.model
    property int contentWidth: 0

    height: flow.height
    width: contentWidth

    Flow {
        id: flow
        width: parent.width
        spacing: 25

        Repeater {
            id: repeater

            Row {
                id: row

                property alias checked: checkBox.checked

                CheckBox {
                    id: checkBox
                    anchors.verticalCenter: parent.verticalCenter
                    checked: modelData.checked
                }

                Label {
                    id: label
                    anchors.verticalCenter: parent.verticalCenter
                    text: modelData.text
                }
                Component.onCompleted: contentWidth += width + 25
            }
        }
    }
}
