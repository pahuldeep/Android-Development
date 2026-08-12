import QtQuick
import QtQuick.Layouts

import "../styles"

Rectangle {
    id: root

    property int currentIndex: 0

    signal pageSelected(int index)

    color: Colors.header
    border.color: Colors.border
    border.width: 1

    RowLayout {
        anchors.fill: parent

        spacing: 0

        NavItem {
            Layout.fillWidth: true
            Layout.fillHeight: true

            icon: "✎"
            label: "Basic"

            selected: root.currentIndex === 0

            onClicked: root.pageSelected(0)
        }

        NavItem {
            Layout.fillWidth: true
            Layout.fillHeight: true

            icon: "☷"
            label: "Advanced"

            selected: root.currentIndex === 1

            onClicked: root.pageSelected(1)
        }

        NavItem {
            Layout.fillWidth: true
            Layout.fillHeight: true

            icon: "⚙"
            label: "Settings"

            selected: root.currentIndex === 2

            onClicked: root.pageSelected(2)
        }
    }


    component NavItem: Rectangle {
        id: item

        property string icon: ""
        property string label: ""
        property bool selected: false

        signal clicked()

        color: selected ? Colors.primary : Colors.header

        Column {
            anchors.centerIn: parent

            spacing: 8

            Text {
                anchors.horizontalCenter: parent.horizontalCenter

                text: item.icon

                font.pixelSize: 38

                color: Colors.white
            }

            Text {
                anchors.horizontalCenter: parent.horizontalCenter

                text: item.label

                font: Typography.nav

                color: Colors.white
            }
        }

        MouseArea {
            anchors.fill: parent

            onClicked: item.clicked()
        }
    }
}