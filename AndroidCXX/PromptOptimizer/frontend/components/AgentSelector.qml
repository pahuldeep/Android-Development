// QML Component: AgentSelector.qml
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "../styles"
import "../models"

Rectangle {
    id: root
    color: Colors.bgSecondary
    radius: 8
    border.color: Colors.borderPrimary

    property string selectedAgent: "Clarity"

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 12
        spacing: 10

        Text { text: "Select Agent"; font: Typography.h2; color: Colors.textPrimary }

        Flow {
            Layout.fillWidth: true
            spacing: 10

            Repeater {
                model: AgentModel {}
                delegate: Rectangle {
                    width: agentText.implicitWidth + 24
                    height: 36
                    radius: 6
                    color: root.selectedAgent === model.name ? Colors.accentPrimary : Colors.bgTertiary
                    border.color: root.selectedAgent === model.name ? Colors.accentPrimary : Colors.borderPrimary

                    Text {
                        id: agentText
                        anchors.centerIn: parent
                        text: model.icon + " " + model.name
                        font: Typography.body
                        color: root.selectedAgent === model.name ? Colors.bgPrimary : Colors.textSecondary
                    }

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: root.selectedAgent = model.name
                    }
                }
            }
        }
    }
}