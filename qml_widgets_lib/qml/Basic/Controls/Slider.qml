import QtQuick 2.0
import "../"
import "../Display"
import "../Misk"

BasicItem {
    id: slider

    property alias value: bar.value
    property alias minValue: bar.minValue
    property alias maxValue: bar.maxValue
    property alias preferedWidth: bar.width

    width: preferedWidth
    height: slideable.height

    ProgressBar {
        id: bar
        width: parent.width
        anchors.centerIn: parent
        palette: slider.palette
    }

    Circle {
        id: slideable
        anchors.verticalCenter: parent.verticalCenter
        x: 0
        palette: slider.palette

        onXChanged: {
            value = (maxValue - minValue) *
                    x / (bar.width - slideable.width) + minValue;
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            drag.target: slideable
            drag.axis: Drag.XAxis
            drag.minimumX: 0
            drag.maximumX: bar.width - slideable.width
        }
    }

    function updateSlideablePosition() {
        if (maxValue > minValue) {
            var pos = (value - minValue) *
                      (bar.width - slideable.width) / (maxValue - minValue);
            pos = Math.min(pos, bar.width - slideable.width);
            pos = Math.max(pos, 0);
            slideable.x = pos;
        } else {
            slideable.x = 0;
        }
    }

    Component.onCompleted: updateSlideablePosition()
    onValueChanged: updateSlideablePosition()
    onMaxValueChanged: updateSlideablePosition()
    onMinValueChanged: updateSlideablePosition()
}
