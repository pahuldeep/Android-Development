import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import "../styles"
import "../components"
import "../models"

Item {
    id: root

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
            contentHeight: advancedContent.implicitHeight + 64

            ColumnLayout {
                id: advancedContent

                width: parent.width

                anchors.top: parent.top

                anchors.left: parent.left
                anchors.right: parent.right

                anchors.topMargin: 36
                anchors.leftMargin: 32
                anchors.rightMargin: 32

                spacing: 24


                Text {
                    text: "Advanced Prompt Engineering Techniques"

                    font: Typography.sectionTitle

                    color: Colors.primary
                }


                Rectangle {
                    Layout.fillWidth: true

                    implicitHeight: 600

                    radius: 16

                    color: Colors.surface

                    border.color: Colors.border
                    border.width: 2

                    Column {
                        anchors.fill: parent

                        Repeater {
                            model: TechniqueModel {}

                            delegate: TechniqueRow {
                                width: parent.width

                                title: model.fullName + " (" + model.name + ")"
                                description: model.description
                                category: model.category
                                icon: model.icon
                                colorType: model.colorType
                            }
                        }
                    }
                }


                // INFO CARD

                Rectangle {
                    Layout.fillWidth: true

                    Layout.preferredHeight: 150

                    radius: 16

                    color: Colors.surface

                    border.color: Colors.border
                    border.width: 2

                    RowLayout {
                        anchors.fill: parent

                        anchors.margins: 24

                        spacing: 18

                        Rectangle {
                            Layout.preferredWidth: 42
                            Layout.preferredHeight: 42

                            radius: 21

                            color: Colors.primary

                            Text {
                                anchors.centerIn: parent

                                text: "i"

                                font.pixelSize: 26
                                font.bold: true

                                color: Colors.white
                            }
                        }

                        Text {
                            Layout.fillWidth: true

                            text: "Enable techniques to enhance your prompt optimization.\nEach technique focuses on different aspects of prompt engineering."

                            font: Typography.bodyLarge

                            color: Colors.textSecondary

                            wrapMode: Text.WordWrap
                        }
                    }
                }
            }
        }
    }
}