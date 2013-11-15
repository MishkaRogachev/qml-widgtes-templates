import QtQuick 2.0
import "../"
import "../Controls"
import "../Misk"

BasicItem {
    id: radioGroup

    property alias radioGroupModel: repeater.model
    property int selectedItemIndex: -1
    property variant selectedItem: radioGroupModel[selectedItemIndex]
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

                property alias checked: radioButon.checked

                RadioButton {
                    id: radioButon
                    anchors.verticalCenter: parent.verticalCenter
                    checked: modelData.checked
                    Component.onCompleted: {
                        if (checked) selectedItemIndex = index;
                    }
                    onClicked: {
                        if (!checked && selectedItemIndex !== index) {
                            repeater.itemAt(selectedItemIndex).checked = false
                            selectedItemIndex = index;
                            checked = true;
                        }
                    }
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
