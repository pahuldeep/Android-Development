// QML Component: ActionButtons.qml
import QtQuick 2.15
import QtQuick.Layouts 1.15
import "../styles"

RowLayout {
    id: root
    spacing: 12

    signal optimizeClicked()
    signal resetClicked()

    Rectangle {
        Layout.fillWidth: true
        height: 44
        radius: 8
        color: Colors.accentPrimary

        Text {
            anchors.centerIn: parent
            text: "✨ Optimize Prompt"
            font: Typography.h2
            color: Colors.bgPrimary
        }
        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            onClicked: root.optimizeClicked()
        }
    }

    Rectangle {
        Layout.preferredWidth: 100
        height: 44
        radius: 8
        color: "transparent"
        border.color: Colors.borderPrimary

        Text {
            anchors.centerIn: parent
            text: "Reset"
            font: Typography.body
            color: Colors.textSecondary
        }
        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            onClicked: root.resetClicked()
        }
    }
}