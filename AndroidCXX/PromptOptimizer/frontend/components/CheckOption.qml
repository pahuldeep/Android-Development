import QtQuick
import QtQuick.Layouts

import "../styles"

RowLayout {
    id: root

    property string label: ""
    property bool checked: false

    spacing: 6

    Rectangle {
        Layout.preferredWidth: 18
        Layout.preferredHeight: 18

        radius: 4

        color: root.checked
               ? Colors.accentPrimary
               : "transparent"

        border.color: root.checked
                      ? Colors.accentPrimary
                      : Colors.borderPrimary

        Text {
            anchors.centerIn: parent

            text: "✓"

            font.pixelSize: 12
            font.bold: true

            color: Colors.bgPrimary

            visible: root.checked
        }

        MouseArea {
            anchors.fill: parent

            cursorShape: Qt.PointingHandCursor

            onClicked: root.checked = !root.checked
        }
    }

    Text {
        text: root.label

        font: Typography.small
        color: Colors.textSecondary

        Layout.fillWidth: true
    }
}