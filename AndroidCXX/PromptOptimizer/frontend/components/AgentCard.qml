import QtQuick
import QtQuick.Layouts

import "../styles"

Rectangle {
    id: root

    property string agentName: ""
    property string description: ""
    property string icon: ""
    property string colorType: "green"
    property bool selected: false

    signal clicked()

    radius: 16

    color: Colors.surface

    border.width: selected ? 2 : 1
    border.color: selected ? Colors.borderPrimary : Colors.borderFocus

    Behavior on border.color {
        ColorAnimation {
            duration: 150
        }
    }

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 24

        spacing: 12

        Rectangle {
            Layout.preferredWidth: 72
            Layout.preferredHeight: 72

            radius: 36

            color: {
                switch (root.colorType) {
                case "orange": return Colors.structure
                case "yellow": return Colors.context
                case "purple": return Colors.creative
                default: return Colors.clarity
                }
            }

            Text {
                anchors.centerIn: parent

                text: root.icon

                color: Colors.white

                font.pixelSize: 32
                font.bold: true
            }
        }

        Text {
            Layout.fillWidth: true

            text: root.agentName

            font: Typography.cardTitle
            color: Colors.textPrimary

            elide: Text.ElideRight
        }

        Text {
            Layout.fillWidth: true

            text: root.description

            font: Typography.body
            color: Colors.textSecondary

            wrapMode: Text.WordWrap

            maximumLineCount: 2
        }
    }

    MouseArea {
        anchors.fill: parent

        cursorShape: Qt.PointingHandCursor

        onClicked: root.clicked()
    }
}