import QtQuick 2.0
import "../Basic/Widgets"
import "../Basic/Controls"
import "../Basic/Display"
import "../Basic/Misk"
import "../Basic/Groups"

Item {
    id: controlsTab

    Column {
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.margins: 50
        spacing: 25

        Row {
            spacing: 25
            anchors.right: parent.right
            anchors.rightMargin: -led.width - spacing

            Label { text: qsTr("Login") }

            LineEdit {
                id: loginEdit
                width: 200
            }

            Led {
                id: led
                active: loginEdit.textItem.length > 5
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        Row {
            spacing: 25
            anchors.right: parent.right

            Label { text: qsTr("Password") }

            LineEdit {
                id: passwordEdit
                width: 200
                textItem.echoMode: TextInput.Password
            }
        }

        ProgressBar {
            value: passwordEdit.textItem.length
            maxValue: 7
            width: passwordEdit.width
            anchors.right: parent.right
        }

        Row {
            spacing: 15
            anchors.right: parent.right

            Clickable {
                text: qsTr("Ok")
            }

            Clickable {
                text: qsTr("Cancel")
            }
        }

        Grid {
            rows: 4
            columns: 3
            spacing: 15
            anchors.right: parent.right

            Repeater {
                model: [
                    { text: "1" }, { text: "2" }, { text: "3" },
                    { text: "4" }, { text: "5" }, { text: "6" },
                    { text: "7" }, { text: "8" }, { text: "9" },
                    { text: "*" }, { text: "0" }, { text: "#" } ]

                Button {
                    text: modelData.text
                }
            }
        }
    }

    Column {
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.margins: 50
        spacing: 25

        Row {
            spacing: 25
            anchors.right: parent.right

            Label { text: qsTr("Enabled") }

            Switch { id: enableSwitch; }
        }

        Row {
            spacing: 25
            anchors.right: parent.right

            Label { text: qsTr("Make font <i>Italic</i>") }

            Switch {
                id: fontSwitch
                offText: qsTr("NO")
                onText: qsTr("YES")
            }
        }

        Slider {
            id: slider
            anchors.horizontalCenter: parent.horizontalCenter
            minValue: 11
            maxValue: 27
            value: 16
        }

        Row {
            spacing: 10
            anchors.horizontalCenter: parent.horizontalCenter

            CheckBox {
                id: capCheckBox
                anchors.verticalCenter: parent.verticalCenter
            }

            Label {
                anchors.verticalCenter: parent.verticalCenter
                text: "All Uppercase"
            }

            CheckBox {
                id: wrapCheckBox
                checked: true
                anchors.verticalCenter: parent.verticalCenter
            }

            Label {
                anchors.verticalCenter: parent.verticalCenter
                text: "Wrap"
            }
        }

        RadioGroup {
            id: radioGroup
            anchors.horizontalCenter: parent.horizontalCenter
            radioGroupModel: [
                { role: Text.AlignLeft, text: "Left", checked: false },
                { role: Text.AlignHCenter, text: "Middle", checked: true },
                { role: Text.AlignRight, text: "Right", checked: false }
            ]
        }

        Edit {
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter
            enabled: enableSwitch.switched
            textItem.font.italic: fontSwitch.switched
            textItem.font.pointSize: slider.value
            textItem.horizontalAlignment: radioGroup.selectedItem.role
            textItem.font.capitalization: capCheckBox.checked ?
                                              Font.AllUppercase :
                                              Font.MixedCase
            textItem.wrapMode: wrapCheckBox.checked ?
                                   TextEdit.WordWrap :
                                   TextEdit.WrapAnywhere
            textItem.text: "The quick brown fox jumps over the lazy dog."
        }
    }
}
