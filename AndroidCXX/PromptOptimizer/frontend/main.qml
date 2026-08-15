// // QML Component: main.qml
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import "styles"
import "pages"
import "components"

ApplicationWindow {
    id: window
    visible: true

    width: 412
    height: 915

    minimumWidth: 360
    minimumHeight: 700

    title: "Prompt Engineering Studio"

    color: Colors.bgPrimary


    ColumnLayout {
        anchors.fill: parent

        spacing: 0


        // ========================================================
        // PAGE CONTENT
        // ========================================================

        StackLayout {
            id: pages

            Layout.fillWidth: true
            Layout.fillHeight: true

            currentIndex: bottomNav.currentIndex

            BasicPage { }

            AdvancedPage { }

            SettingsPage { }

        }


        // ========================================================
        // BOTTOM NAVIGATION
        // ========================================================

        BottomNav {
            id: bottomNav

            Layout.fillWidth: true

            Layout.preferredHeight: 146

            currentIndex: 1
        }
    }
}