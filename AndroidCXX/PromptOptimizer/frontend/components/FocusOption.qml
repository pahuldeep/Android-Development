import QtQuick
import QtQuick.Layouts

import "../styles"

RowLayout {
    id: root

    property string label: ""
    property bool checked: false

    Layout.fillWidth: true
    Layout.preferredHeight: 88

    spacing: 12

    Text {
        Layout.fillWidth: true

        text: root.label

        font: Typography.cardTitle

        color: Colors.textPrimary
    }

    Rectangle {
        Layout.preferredWidth: 30
        Layout.preferredHeight: 30

        radius: 5

        color: root.checked ? Colors.primary : Colors.white

        border.color: Colors.borderLight

        Text {
            anchors.centerIn: parent

            text: "✓"

            font.pixelSize: 20
            font.bold: true

            color: Colors.white

            visible: root.checked
        }

        MouseArea {
            anchors.fill: parent

            onClicked: root.checked = !root.checked
        }
    }

    Rectangle {
        Layout.fillWidth: true
        Layout.preferredHeight: 1

        color: Colors.border

        visible: false
    }
}