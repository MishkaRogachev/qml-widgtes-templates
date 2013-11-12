import QtQuick 2.0
import "../Basic/Widgets"
import "../Basic/Controls"
import "../Basic/Display"
import "../Basic/Misk"
import "../Basic/Groups"

Item {
    id: controlsTab

    Row {
        spacing: 10
        anchors.fill: parent
        anchors.margins: 25

        Column {
            width: parent.width / 2
            anchors.verticalCenter: parent.verticalCenter
            spacing: 25

//            Row {
//                spacing: 25
//                anchors.horizontalCenter: parent.horizontalCenter

//                Clickable {
//                    text: "Push Me!"
//                }

//                MenuClickable {
//                    text: "Menu"

//                    menu.model: [
//                        { text: "Copy",     type: "simple" },
//                        { text: "Paste",    type: "simple" },
//                        { text: "Cut",      type: "simple" },
//                        { text: "Delete",   type: "simple" },
//                        { type: "separator" },
//                        { text: "Settings", type: "menu" },
//                        { text: "About",    type: "simple" },
//                    ]
//                }
//            }

            Column {
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 10

                Row {
                    spacing: 10
                    anchors.right: parent.right

                    Label {
                        text: "Login:"
                    }

                    LineEdit {
                        id: loginEdit
                        width: 200
                    }

                    Led {
                        anchors.verticalCenter: parent.verticalCenter
                        active : loginEdit.textItem.length > 5
                    }
                }

                Row {
                    spacing: 10
                    anchors.right: parent.right

                    Label {
                        text: "Password:"
                    }

                    LineEdit {
                        id: passwordEdit
                        width: 200
                        textItem.echoMode: TextInput.Password
                    }

                    Led {
                        anchors.verticalCenter: parent.verticalCenter
                        active : passwordEdit.textItem.length > 3
                    }
                }
            }

            Row {
                spacing: 25
                anchors.horizontalCenter: parent.horizontalCenter

                Switch {}

                Switch {
                    offText: "NO"
                    onText: "YES"
                    switchEnabled: false
                }

                Switch {
                    offText: "Off"
                    onText: "On"
                }
            }

            Slider {
                id: slider
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Grid {
                rows: 4
                columns: 3
                spacing: 15
                anchors.horizontalCenter: parent.horizontalCenter

                Repeater {
                    model: [
                        { text: "1" },
                        { text: "2" },
                        { text: "3" },
                        { text: "4" },
                        { text: "5" },
                        { text: "6" },
                        { text: "7" },
                        { text: "8" },
                        { text: "9" },
                        { text: "*" },
                        { text: "0" },
                        { text: "#" },
                    ]

                    Button {
                        text: modelData.text
                    }
                }
            }
        }

        Column {
            width: parent.width / 2
            anchors.verticalCenter: parent.verticalCenter
            spacing: 25

            RadioGroup {
                id: radioGroup
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                radioGroupModel: [
                    { role: Text.AlignLeft, text: "Left", checked: true },
                    { role: Text.AlignHCenter, text: "Middle", checked: false },
                    { role: Text.AlignRight, text: "Right", checked: false }
                ]
            }
            Edit {
                textItem.horizontalAlignment: radioGroup.selectedItem.role
                textItem.text: "With fainting soul athirst for Grace,
I wandered in a desert place,
And at the crossing of the ways
I saw a sixfold Seraph blaze..."
            }

            //CheckBoxes

            //RadioButtons

            //TextEdit
        }
    }
}
