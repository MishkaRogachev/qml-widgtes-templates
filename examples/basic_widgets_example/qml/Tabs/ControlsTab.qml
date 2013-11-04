import QtQuick 2.0
import "../Basic/Widgets"
import "../Basic/Controls"

Item {
    id: controlsTab

    Column {
        id: column
        anchors.centerIn: parent

        Clickable {
            text: "Push Me!"
        }
    }
}
