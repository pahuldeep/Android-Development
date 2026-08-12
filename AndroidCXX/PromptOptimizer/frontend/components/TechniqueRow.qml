import QtQuick
import QtQuick.Layouts

import "../styles"

Rectangle {
    id: root

    property string title: ""
    property string description: ""
    property string category: ""
    property string icon: ""
    property string colorType: "blue"

    height: 120

    color: Colors.surface

    Rectangle {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        height: 1

        color: Colors.border
    }

    RowLayout {
        anchors.fill: parent

        anchors.leftMargin: 24
        anchors.rightMargin: 24

        spacing: 24

        Rectangle {
            Layout.preferredWidth: 64
            Layout.preferredHeight: 64

            radius: 32

            color: {
                switch (root.colorType) {
                case "pink": return Colors.techniquePink
                case "green": return Colors.techniqueGreen
                case "orange": return Colors.techniqueOrange
                default: return Colors.techniqueBlue
                }
            }

            Text {
                anchors.centerIn: parent

                text: root.icon

                font.pixelSize: 28
                font.bold: true

                color: Colors.white
            }
        }

        ColumnLayout {
            Layout.fillWidth: true

            spacing: 5

            Text {
                Layout.fillWidth: true

                text: root.title

                font: Typography.cardTitle

                color: Colors.textPrimary

                wrapMode: Text.WordWrap
            }

            Text {
                Layout.fillWidth: true

                text: root.description

                font: Typography.body

                color: Colors.textSecondary

                wrapMode: Text.WordWrap
            }
        }

        Rectangle {
            Layout.preferredWidth: 150
            Layout.preferredHeight: 52

            radius: 8

            color: {
                switch (root.colorType) {
                case "pink": return Colors.techniquePink
                case "green": return Colors.techniqueGreen
                case "orange": return Colors.techniqueOrange
                default: return Colors.techniqueBlue
                }
            }

            Text {
                anchors.centerIn: parent

                text: root.category

                font: Typography.cardTitle

                color: Colors.white
            }
        }
    }
}