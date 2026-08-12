import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import "../styles"
import "../components"
import "../models"

Item {
    id: root

    property string selectedAgent: "Clarity"

    ColumnLayout {
        anchors.fill: parent

        spacing: 0

        // ========================================================
        // HEADER
        // ========================================================

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 146

            color: Colors.header

            Column {
                anchors.centerIn: parent

                spacing: 12

                Text {
                    anchors.horizontalCenter: parent.horizontalCenter

                    text: "Advanced Prompt Engineering"

                    font: Typography.h1

                    color: Colors.textPrimary
                }

                Text {
                    anchors.horizontalCenter: parent.horizontalCenter

                    text: "Craft perfect prompts with AI agents"

                    font: Typography.h2

                    color: Colors.textSecondary
                }
            }
        }


        // ========================================================
        // CONTENT
        // ========================================================

        Flickable {
            Layout.fillWidth: true
            Layout.fillHeight: true

            clip: true

            contentWidth: width
            contentHeight: contentColumn.implicitHeight + 64

            ColumnLayout {
                id: contentColumn

                width: parent.width

                anchors.top: parent.top

                anchors.left: parent.left
                anchors.right: parent.right

                anchors.topMargin: 36
                anchors.leftMargin: 32
                anchors.rightMargin: 32

                spacing: 28


                // ------------------------------------------------
                // PROMPT
                // ------------------------------------------------

                Text {
                    text: "Your Initial Prompt"

                    font: Typography.body

                    color: Colors.textPrimary
                }

                Rectangle {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 226

                    radius: 16

                    color: Colors.surface

                    border.color: Colors.borderPrimary
                    border.width: 2

                    TextArea {
                        id: promptInput

                        anchors.fill: parent
                        anchors.margins: 24

                        placeholderText: "Enter your prompt here..."

                        placeholderTextColor: Colors.textSecondary

                        font.pixelSize: 28

                        color: Colors.textPrimary

                        wrapMode: TextArea.Wrap

                        background: null
                    }
                }


                // ------------------------------------------------
                // AGENTS
                // ------------------------------------------------

                Text {
                    text: "Select Optimization Agents"

                    font: Typography.sectionTitle

                    color: Colors.textPrimary

                    Layout.topMargin: 20
                }


                GridLayout {
                    Layout.fillWidth: true

                    columns: 2

                    rowSpacing: 24
                    columnSpacing: 24

                    AgentCard {
                        Layout.fillWidth: true
                        Layout.preferredHeight: 246

                        agentName: "Clarity Agent"
                        description: "Improves clarity and specificity"
                        icon: "●"
                        colorType: "green"

                        selected: root.selectedAgent === "Clarity"

                        onClicked: root.selectedAgent = "Clarity"
                    }

                    AgentCard {
                        Layout.fillWidth: true
                        Layout.preferredHeight: 246

                        agentName: "Structure Agent"
                        description: "Organizes prompt format and flow"
                        icon: "☷"
                        colorType: "orange"

                        selected: root.selectedAgent === "Structure"

                        onClicked: root.selectedAgent = "Structure"
                    }

                    AgentCard {
                        Layout.fillWidth: true
                        Layout.preferredHeight: 246

                        agentName: "Context Agent"
                        description: "Adds relevant context and details"
                        icon: "★"
                        colorType: "yellow"

                        selected: root.selectedAgent === "Context"

                        onClicked: root.selectedAgent = "Context"
                    }

                    AgentCard {
                        Layout.fillWidth: true
                        Layout.preferredHeight: 246

                        agentName: "Creative Agent"
                        description: "Enhances creativity and uniqueness"
                        icon: "✣"
                        colorType: "purple"

                        selected: root.selectedAgent === "Creative"

                        onClicked: root.selectedAgent = "Creative"
                    }
                }


                // ------------------------------------------------
                // BUTTONS
                // ------------------------------------------------

                RowLayout {
                    Layout.fillWidth: true

                    Layout.topMargin: 8

                    spacing: 24

                    Rectangle {
                        Layout.fillWidth: true
                        Layout.preferredHeight: 88

                        radius: 16

                        color: Colors.primary

                        Text {
                            anchors.centerIn: parent

                            text: "✎  Optimize Prompt"

                            font: Typography.cardTitle

                            color: Colors.white
                        }

                        MouseArea {
                            anchors.fill: parent

                            cursorShape: Qt.PointingHandCursor

                            onClicked: {
                                console.log(
                                    "Optimize:",
                                    promptInput.text,
                                    root.selectedAgent
                                )
                            }
                        }
                    }

                    Rectangle {
                        Layout.fillWidth: true
                        Layout.preferredHeight: 88

                        radius: 16

                        color: Colors.surfaceLight

                        Text {
                            anchors.centerIn: parent

                            text: "Reset"

                            font: Typography.cardTitle

                            color: Colors.textPrimary
                        }

                        MouseArea {
                            anchors.fill: parent

                            cursorShape: Qt.PointingHandCursor

                            onClicked: {
                                promptInput.text = ""
                                root.selectedAgent = "Clarity"
                            }
                        }
                    }
                }
            }
        }
    }
}