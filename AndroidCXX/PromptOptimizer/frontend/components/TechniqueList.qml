// QML Component: TechniqueList.qml
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "../styles"
import "../models"

Rectangle {
    id: root
    height: 50
    color: Colors.bgSecondary
    radius: 8
    border.color: Colors.borderPrimary
    border.width: 1

    // Expose the currently selected technique to main.qml
    property string selectedTechnique: "RSIP"

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 12
        anchors.rightMargin: 12
        spacing: 10

        Text {
            text: "Technique:"
            font: Typography.body
            color: Colors.textSecondary
            Layout.rightMargin: 6
        }

        Repeater {
            model: TechniqueModel {}

            delegate: Rectangle {
                width: techText.implicitWidth + 20
                height: 32
                radius: 6
                color: root.selectedTechnique === model.name ? Colors.accentSecondary : "transparent"
                border.color: root.selectedTechnique === model.name ? Colors.accentSecondary : Colors.borderPrimary
                border.width: 1

                Text {
                    id: techText
                    anchors.centerIn: parent
                    text: model.name
                    font.family: Typography.small.family
                    font.pixelSize: Typography.small.pixelSize
                    font.weight: root.selectedTechnique === model.name
                                  ? Font.Bold
                                  : Font.Normal
                    color: root.selectedTechnique === model.name
                           ? Colors.bgPrimary
                           : Colors.textSecondary
                }

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onClicked: root.selectedTechnique = model.name
                }

                // Tooltip on hover
                ToolTip {
                    visible: parent.containsMouse
                    text: model.fullName + "\n" + model.description
                    delay: 500
                }
            }
        }

        Item { Layout.fillWidth: true } // Spacer to push items left
    }
}