// QML Component: PromptInput.qml
import QtQuick 2.15
import QtQuick.Controls 2.15
import "../styles"

Rectangle {
    id: root
    color: Colors.bgSecondary
    radius: 8
    border.color: rootArea.activeFocus ? Colors.borderFocus : Colors.borderPrimary
    border.width: rootArea.activeFocus ? 2 : 1

    property alias text: rootArea.text

    Flickable {
        id: flickable
        anchors.fill: parent
        anchors.margins: 12
        contentWidth: rootArea.width
        contentHeight: rootArea.implicitHeight
        clip: true

        TextArea {
            id: rootArea
            width: flickable.width
            wrapMode: TextArea.Wrap
            font: Typography.body
            color: Colors.textPrimary
            placeholderText: "Enter your initial prompt here..."
            placeholderTextColor: Colors.textDisabled
            background: null // Background handled by parent Rectangle
        }
    }
}