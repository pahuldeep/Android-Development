// QML Component: ToggleSwitch.qml
import QtQuick
import QtQuick.Controls
import "../styles"

Rectangle {
    id: root
    width: 48; height: 26
    radius: 13
    color: checked ? Colors.accentPrimary : Colors.bgTertiary
    border.color: Colors.borderPrimary
    border.width: 1

    property bool checked: false

    Behavior on color { ColorAnimation { duration: 200 } }

    Rectangle {
        id: knob
        width: 20; height: 20
        radius: 10
        color: Colors.textPrimary
        x: root.checked ? parent.width - width - 3 : 3
        anchors.verticalCenter: parent.verticalCenter

        Behavior on x { NumberAnimation { duration: 200; easing.type: Easing.InOutCubic } }
    }

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        onClicked: root.checked = !root.checked
    }
}