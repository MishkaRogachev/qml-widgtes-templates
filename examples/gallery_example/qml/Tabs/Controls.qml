import QtQuick 2.0
import "../Basic/Widgets"
import "../Basic/Controls"
import "../Basic/Display"
import "../Basic/Misk"
import "../Basic/Groups"

Item {
    id: controlsTab

    Row {
        anchors.centerIn: parent
        anchors.margins: 25
        spacing: 25

        Column {
            spacing: 25

            Label {
                text: qsTr("Content Buttons");
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Row {
                spacing: 10
                anchors.horizontalCenter: parent.horizontalCenter

                Clickable { text: qsTr("Button") }

                MenuClickable {
                    text: qsTr("Dropdown")

                    menu.menuModel: [
                        { text: qsTr("Entry 1"),       type: "simple" },
                        { text: qsTr("Entry 2"),       type: "simple" },
                        { text: qsTr("Another entry"), type: "simple" },
                        { type: qsTr("separator")                     },
                        { text: qsTr("Last entry"),    type: "simple" } ]
                }
            }

            Label {
                text: qsTr("Activity Buttons");
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Row {
                spacing: 25
                anchors.horizontalCenter: parent.horizontalCenter

                Row {
                    spacing: 10

                    Button { text: "◂" }

                    Button { text: "▸" }
                }

                Row {
                    spacing: 10

                    Button { text: "✉" }

                    Button { text: "✍" }
                }
            }

            Grid {
                rows: 4
                columns: 3
                spacing: 15
                anchors.horizontalCenter: parent.horizontalCenter

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
            spacing: 25

            Label {
                text: qsTr("Sliders");
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Row {
                anchors.horizontalCenter: parent.horizontalCenter

                Label {
                    text:"✲"
                    anchors.verticalCenter: parent.verticalCenter
                }

                Slider { }

                Label {
                    text:"✱"
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

            Row {
                anchors.horizontalCenter: parent.horizontalCenter

                Label {
                    text: qsTr("Low")
                    anchors.verticalCenter: parent.verticalCenter
                }

                Slider { width: 275 }

                Label {
                    text: qsTr("High")
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

            Label {
                text: qsTr("Switches");
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 25

                Switch {}

                Switch {
                    switchEnabled: false
                    switched: true
                    onText: qsTr("YES")
                    offText: qsTr("NO")
                }

                Switch {
                    switched: true
                    onText: qsTr("ON")
                    offText: qsTr("OFF")
                }
            }

            Label {
                text: qsTr("Bars");
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Bar {
                barModel: [ { text: qsTr("One") },
                            { text: qsTr("Two") },
                            { text: qsTr("Three") } ]
            }

            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 25

                    Bar {
                    width: 200
                    barModel: [ { text: qsTr("≡") },
                                { text: qsTr("⌘") },
                                { text: qsTr("⌛") } ]
                    }

                    Bar {
                    width: 200
                    barModel: [ { text: qsTr("Apps") },
                                { text: qsTr("Places") } ]
                    }
            }
        }

        Column {
            spacing: 25

            Label {
                text: qsTr("Checkboxes");
                anchors.horizontalCenter: parent.horizontalCenter
            }

            CheckGroup {
                id: checkGroup
                anchors.horizontalCenter: parent.horizontalCenter
                checkGroupModel: [
                    { text: qsTr("One"), checked: false },
                    { text: qsTr("Two"), checked: true },
                    { text: qsTr("Three"), checked: false } ]
            }

            Label {
                text: qsTr("Radio Buttons");
                anchors.horizontalCenter: parent.horizontalCenter
            }

            RadioGroup {
                id: radioGroup
                anchors.horizontalCenter: parent.horizontalCenter
                radioGroupModel: [
                    { text: qsTr("Left"), checked: false },
                    { text: qsTr("Middle"), checked: true },
                    { text: qsTr("Right"), checked: false } ]
            }

            Label {
                text: qsTr("Line Edit");
                anchors.horizontalCenter: parent.horizontalCenter
            }

            LineEdit {
                width: 350
                textItem.text: qsTr("Line edit, please!");
            }

            Label {
                text: qsTr("Text Edit");
                anchors.horizontalCenter: parent.horizontalCenter
            }

            ScrollArea {
                id: scrollArea
                width: parent.width
                height: 100

                sourceComponent: editComponent

                Component {
                    id: editComponent

                    Edit {
                        width: scrollArea.width - 15
                        anchors.horizontalCenter: parent.horizontalCenter
                        textItem.wrapMode: TextEdit.WordWrap
                        textItem.text:
                            qsTr("The quick brown fox jumps over the lazy dog.")
                    }
                }
            }
        }
    }
}
