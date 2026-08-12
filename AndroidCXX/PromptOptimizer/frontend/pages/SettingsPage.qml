import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import "../styles"
import "../components"

Item {
    id: root

    property bool advancedEnabled: true
    property real optimizationLevel: 0.5

    ColumnLayout {
        anchors.fill: parent

        spacing: 0


        // HEADER

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 146

            color: Colors.header

            Column {
                anchors.centerIn: parent

                spacing: 12

                Text {
                    anchors.horizontalCenter: parent.horizontalCenter

                    text: "Advanced Prompt Optimizer"

                    font: Typography.title

                    color: Colors.primary
                }

                Text {
                    anchors.horizontalCenter: parent.horizontalCenter

                    text: "Craft perfect prompts with AI agents"

                    font: Typography.subtitle

                    color: Colors.textSecondary
                }
            }
        }


        Flickable {
            Layout.fillWidth: true
            Layout.fillHeight: true

            clip: true

            contentWidth: width
            contentHeight: settingsContent.implicitHeight + 64

            ColumnLayout {
                id: settingsContent

                width: parent.width

                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top

                anchors.leftMargin: 32
                anchors.rightMargin: 32
                anchors.topMargin: 32

                spacing: 24


                // =================================================
                // ADVANCED MODE
                // =================================================

                Rectangle {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 132

                    radius: 16

                    color: Colors.surface

                    border.color: Colors.border
                    border.width: 2

                    Column {
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter

                        anchors.leftMargin: 24

                        spacing: 8

                        Text {
                            text: "Advanced Mode"

                            font: Typography.cardTitle

                            color: Colors.textPrimary
                        }

                        Text {
                            text: "Unlock all optimization features"

                            font: Typography.bodyLarge

                            color: Colors.textSecondary
                        }
                    }

                    ToggleSwitch {
                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter

                        anchors.rightMargin: 24

                        checked: root.advancedEnabled

                        onCheckedChanged: {
                            root.advancedEnabled = checked
                        }
                    }
                }


                // =================================================
                // MODEL
                // =================================================

                Rectangle {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 176

                    radius: 16

                    color: Colors.surface

                    border.color: Colors.border
                    border.width: 2

                    ColumnLayout {
                        anchors.fill: parent
                        anchors.margins: 24

                        spacing: 14

                        Text {
                            text: "Target LLM Model"

                            font: Typography.bodyLarge

                            color: Colors.textSecondary
                        }

                        Rectangle {
                            Layout.fillWidth: true
                            Layout.fillHeight: true

                            radius: 8

                            color: Colors.surfaceLight

                            Text {
                                anchors.left: parent.left
                                anchors.verticalCenter: parent.verticalCenter

                                anchors.leftMargin: 24

                                text: "GPT-4"

                                font: Typography.cardTitle

                                color: Colors.textPrimary
                            }

                            Text {
                                anchors.right: parent.right
                                anchors.verticalCenter: parent.verticalCenter

                                anchors.rightMargin: 20

                                text: "⌄"

                                font.pixelSize: 30

                                color: Colors.white
                            }

                            MouseArea {
                                anchors.fill: parent

                                onClicked: console.log("Model selector")
                            }
                        }
                    }
                }


                // =================================================
                // OPTIMIZATION LEVEL
                // =================================================

                Rectangle {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 176

                    radius: 16

                    color: Colors.surface

                    border.color: Colors.border
                    border.width: 2

                    ColumnLayout {
                        anchors.fill: parent

                        anchors.margins: 24

                        spacing: 12

                        Text {
                            text: "Optimization Level"

                            font: Typography.bodyLarge

                            color: Colors.textSecondary
                        }

                        Slider {
                            id: optimizationSlider

                            Layout.fillWidth: true

                            from: 1
                            to: 5

                            value: 3

                            background: Rectangle {
                                x: optimizationSlider.leftPadding

                                y: optimizationSlider.topPadding +
                                   optimizationSlider.availableHeight / 2 -
                                   height / 2

                                width: optimizationSlider.availableWidth

                                height: 10

                                radius: 5

                                color: Colors.surfaceLight

                                Rectangle {
                                    width: optimizationSlider.visualPosition *
                                           parent.width

                                    height: parent.height

                                    radius: 5

                                    color: Colors.primary
                                }
                            }

                            handle: Rectangle {
                                x: optimizationSlider.leftPadding +
                                   optimizationSlider.visualPosition *
                                   (optimizationSlider.availableWidth - width)

                                y: optimizationSlider.topPadding +
                                   optimizationSlider.availableHeight / 2 -
                                   height / 2

                                width: 40
                                height: 40

                                radius: 20

                                color: Colors.primary
                            }
                        }

                        RowLayout {
                            Layout.fillWidth: true

                            Text {
                                text: "Basic"

                                font: Typography.body

                                color: Colors.textSecondary

                                Layout.fillWidth: true
                            }

                            Text {
                                text: Math.round(optimizationSlider.value)

                                font: Typography.cardTitle

                                color: Colors.textPrimary
                            }

                            Text {
                                text: "Maximum"

                                font: Typography.body

                                color: Colors.textSecondary
                            }
                        }
                    }
                }


                // =================================================
                // OPTIMIZATION FOCUS
                // =================================================

                Rectangle {
                    Layout.fillWidth: true

                    Layout.preferredHeight: 430

                    radius: 16

                    color: Colors.surface

                    border.color: Colors.border
                    border.width: 2

                    ColumnLayout {
                        anchors.fill: parent

                        anchors.margins: 24

                        spacing: 0

                        Text {
                            text: "Optimization Focus"

                            font: Typography.bodyLarge

                            color: Colors.textSecondary

                            Layout.bottomMargin: 20
                        }

                        FocusOption {
                            label: "Precision"
                        }

                        FocusOption {
                            label: "Creativity"
                        }

                        FocusOption {
                            label: "Brevity"
                        }

                        FocusOption {
                            label: "Detail"
                        }
                    }
                }


                // =================================================
                // CUSTOM INSTRUCTIONS
                // =================================================

                Rectangle {
                    Layout.fillWidth: true

                    Layout.preferredHeight: 260

                    radius: 16

                    color: Colors.surface

                    border.color: Colors.border
                    border.width: 2

                    ColumnLayout {
                        anchors.fill: parent

                        anchors.margins: 24

                        spacing: 14

                        Text {
                            text: "Custom Instructions"

                            font: Typography.bodyLarge

                            color: Colors.textSecondary
                        }

                        TextArea {
                            Layout.fillWidth: true
                            Layout.fillHeight: true

                            placeholderText:
                                "Add custom optimization instructions..."

                            placeholderTextColor:
                                Colors.textSecondary

                            font.pixelSize: 20

                            color: Colors.textPrimary

                            wrapMode: TextArea.Wrap

                            background: Rectangle {
                                radius: 8

                                color: Colors.surfaceLight

                                border.color: Colors.borderLight
                            }

                            leftPadding: 24
                            rightPadding: 24
                            topPadding: 20
                            bottomPadding: 20
                        }
                    }
                }
            }
        }
    }
}