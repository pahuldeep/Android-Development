// QML Component: SavedPrompts.qml
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "../styles"
import "../models"
import "../utils/Helpers.js" as Helpers

Rectangle {
    id: root
    color: Colors.bgPrimary
    radius: 8
    border.color: Colors.borderPrimary

    // Signal to send data back to main.qml
    signal loadPrompt(string promptText)

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        // Search Bar
        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 36
            Layout.margins: 8
            Layout.bottomMargin: 4
            radius: 6
            color: Colors.bgTertiary

            Text {
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.verticalCenter: parent.verticalCenter
                text: "🔍 Search prompts..."
                font: Typography.small
                color: Colors.textDisabled
            }
        }

        // List View
        ListView {
            id: promptListView
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.margins: 4
            clip: true
            model: PromptModel
            spacing: 4

            // Scrollbar
            ScrollBar.vertical: ScrollBar {
                policy: promptListView.contentHeight > promptListView.height ? ScrollBar.AlwaysOn : ScrollBar.AsNeeded
                width: 6
                contentItem: Rectangle {
                    radius: 3
                    color: Colors.borderPrimary
                }
            }

            delegate: Rectangle {
                width: promptListView.width - 8
                height: 60
                radius: 6
                color: mouseArea.containsMouse ? Colors.bgTertiary : "transparent"

                ColumnLayout {
                    anchors.fill: parent
                    anchors.leftMargin: 10
                    anchors.rightMargin: 10
                    spacing: 2

                    RowLayout {
                        Layout.fillWidth: true
                        Text {
                            text: Helpers.truncateText(model.text, 25)
                            font: Typography.body
                            color: Colors.textPrimary
                            Layout.fillWidth: true
                            elide: Text.ElideRight
                        }
                        Text {
                            text: model.technique
                            font: Typography.small
                            color: Colors.accentWarning
                        }
                    }

                    RowLayout {
                        Text { text: "Agent: " + model.agent; font: Typography.small; color: Colors.textDisabled }
                        Item { Layout.fillWidth: true }
                        Text { text: model.timestamp; font: Typography.small; color: Colors.textDisabled }
                    }
                }

                MouseArea {
                    id: mouseArea
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onClicked: root.loadPrompt(model.text)
                }
            }

            // Empty State
            Text {
                anchors.fill: parent
                anchors.margins: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                text: "No saved prompts yet.\nOptimize a prompt to see it here."
                font: Typography.small
                color: Colors.textDisabled
                wrapMode: Text.WordWrap
                visible: promptListView.count === 0
            }
        }
    }
}