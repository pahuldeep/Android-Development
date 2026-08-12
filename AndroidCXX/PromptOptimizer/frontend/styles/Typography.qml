// QML Component: Typography.qml
pragma Singleton
import QtQuick 2.15

QtObject {
    readonly property font h1: Qt.font({ family: "Segoe UI", pixelSize: 24, weight: Font.Bold })
    readonly property font h2: Qt.font({ family: "Segoe UI", pixelSize: 18, weight: Font.DemiBold })
    readonly property font body: Qt.font({ family: "Segoe UI", pixelSize: 14, weight: Font.Normal })
    readonly property font small: Qt.font({ family: "Segoe UI", pixelSize: 12, weight: Font.Normal })
}