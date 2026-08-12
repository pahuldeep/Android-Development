// // QML Component: SettingsPanel.qml
// import QtQuick
// import QtQuick.Controls
// import QtQuick.Layouts

// import "../styles"

// ColumnLayout {
//     id: root
//     spacing: 12

//     // Model Selector
//     RowLayout {
//         Layout.fillWidth: true
//         Text { text: "Model:"; font: Typography.body; color: Colors.textSecondary; Layout.preferredWidth: 80 }

//         Rectangle {
//             Layout.fillWidth: true
//             height: 32
//             radius: 6
//             color: Colors.bgTertiary
//             border.color: Colors.borderPrimary

//             Text {
//                 anchors.left: parent.left
//                 anchors.leftMargin: 10
//                 anchors.verticalCenter: parent.verticalCenter
//                 text: "GPT-4o"
//                 font: Typography.body
//                 color: Colors.textPrimary
//             }
//         }
//     }

//     // Temperature Slider
//     RowLayout {
//         Layout.fillWidth: true
//         Text {
//             text: "Temp:";
//             font: Typography.body;
//             color: Colors.textSecondary;
//             Layout.preferredWidth: 80
//         }

//         Slider {
//             Layout.fillWidth: true
//             from: 0.0
//             to: 2.0
//             value: 0.7

//             background: Rectangle {
//                 x: parent.leftPadding
//                 y: parent.topPadding + parent.availableHeight / 2 - height / 2
//                 width: parent.availableWidth
//                 height: 4
//                 radius: 2
//                 color: Colors.bgTertiary

//                 Rectangle {
//                     width: parent.parent.visualPosition * parent.width
//                     height: parent.height
//                     color: Colors.accentPrimary
//                     radius: 2
//                 }
//             }

//             handle: Rectangle {
//                 x: parent.leftPadding + parent.visualPosition * (parent.availableWidth - width)
//                 y: parent.topPadding + parent.availableHeight / 2 - height / 2
//                 width: 16
//                 height: 16
//                 radius: 8
//                 color: Colors.textPrimary
//                 border.color: Colors.accentPrimary
//             }
//         }

//         Text {
//             text: "0.7";
//             font: Typography.small;
//             color: Colors.textDisabled;
//             Layout.preferredWidth: 30
//         }
//     }

//     // Checkboxes
//     RowLayout {
//         Layout.fillWidth: true
//         spacing: 16

//         // Custom simple checkbox
//         Rectangle {
//             width: 18; height: 18
//             radius: 4
//             color: cbStream.checked ? Colors.accentPrimary : "transparent"
//             border.color: cbStream.checked ? Colors.accentPrimary : Colors.borderPrimary

//             Text {
//                 anchors.centerIn: parent
//                 text: "✓"
//                 color: Colors.bgPrimary
//                 font.pixelSize: 12
//                 visible: cbStream.checked
//             }

//             MouseArea {
//                 id: cbStream
//                 anchors.fill: parent
//                 cursorShape: Qt.PointingHandCursor
//                 property bool checked: true
//                 onClicked: checked = !checked
//             }
//         }
//         Text { text: "Stream Output"; font: Typography.small; color: Colors.textSecondary }

//         Item { Layout.fillWidth: true } // Spacer

//         Rectangle {
//             width: 18; height: 18
//             radius: 4
//             color: cbJson.checked ? Colors.accentPrimary : "transparent"
//             border.color: cbJson.checked ? Colors.accentPrimary : Colors.borderPrimary

//             Text {
//                 anchors.centerIn: parent
//                 text: "✓"
//                 color: Colors.bgPrimary
//                 font.pixelSize: 12
//                 visible: cbJson.checked
//             }

//             MouseArea {
//                 id: cbJson
//                 anchors.fill: parent
//                 cursorShape: Qt.PointingHandCursor
//                 property bool checked: false
//                 onClicked: checked = !checked
//             }
//         }
//         Text { text: "JSON Format"; font: Typography.small; color: Colors.textSecondary }
//     }
// }



import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import "../styles"

ColumnLayout {
    id: root

    width: parent ? parent.width : 240

    spacing: 10

    // ============================================================
    // MODEL
    // ============================================================

    RowLayout {
        Layout.fillWidth: true
        spacing: 8

        Text {
            text: "Model"

            font: Typography.small
            color: Colors.textSecondary

            Layout.preferredWidth: 55
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 32

            radius: 6

            color: Colors.bgTertiary
            border.color: Colors.borderPrimary

            Text {
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.verticalCenter: parent.verticalCenter

                text: "GPT-4o"

                font: Typography.small
                color: Colors.textPrimary
            }
        }
    }


    // ============================================================
    // TEMPERATURE
    // ============================================================

    RowLayout {
        Layout.fillWidth: true
        spacing: 8

        Text {
            text: "Temp"

            font: Typography.small
            color: Colors.textSecondary

            Layout.preferredWidth: 55
        }

        Slider {
            id: temperatureSlider

            Layout.fillWidth: true

            from: 0.0
            to: 2.0
            value: 0.7

            background: Rectangle {
                x: temperatureSlider.leftPadding

                y: temperatureSlider.topPadding +
                   temperatureSlider.availableHeight / 2 -
                   height / 2

                width: temperatureSlider.availableWidth
                height: 4

                radius: 2

                color: Colors.bgTertiary

                Rectangle {
                    width: temperatureSlider.visualPosition *
                           parent.width

                    height: parent.height

                    radius: 2

                    color: Colors.accentPrimary
                }
            }

            handle: Rectangle {
                x: temperatureSlider.leftPadding +
                   temperatureSlider.visualPosition *
                   (temperatureSlider.availableWidth - width)

                y: temperatureSlider.topPadding +
                   temperatureSlider.availableHeight / 2 -
                   height / 2

                width: 14
                height: 14

                radius: 7

                color: Colors.textPrimary
                border.color: Colors.accentPrimary
            }
        }

        Text {
            text: temperatureSlider.value.toFixed(1)

            font: Typography.small
            color: Colors.textSecondary

            Layout.preferredWidth: 28
        }
    }


    // ============================================================
    // OPTIONS
    // ============================================================

    RowLayout {
        Layout.fillWidth: true

        spacing: 12

        CheckOption {
            Layout.fillWidth: true

            label: "Stream"

            checked: true
        }

        CheckOption {
            Layout.fillWidth: true

            label: "JSON"

            checked: false
        }
    }
}