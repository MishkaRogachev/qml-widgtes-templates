import QtQuick 2.0
import "../"
import "../Display"
import "../Misk"

BasicItem {
    id: slider

    property alias value: bar.value
    property alias minValue: bar.minValue
    property alias maxValue: bar.maxValue

    width: bar.width
    height: slideable.height

    Shadow {
        cornerRadius: slideable.radius
        anchors.fill: slideable
    }

    ProgressBar {
        id: bar
        anchors.centerIn: parent
    }

    Rectangle {
        id: slideable
        anchors.verticalCenter: parent.verticalCenter
        x: 0
        width: 40
        height: width
        radius: width / 2
        antialiasing: true
        color: palette.colorBackgroundRaised
        border.width: 1
        border.color: palette.colorBackgroundNormal
        opacity: slider.enabled ? 1.00 : 0.35

        onXChanged: {
            value = (maxValue - minValue) *
                    x / (bar.width - slideable.width) + minValue;
        }

        MouseArea {
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
