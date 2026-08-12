set_source_files_properties(styles/Colors.qml PROPERTIES QT_QML_SINGLETON_TYPE TRUE)
set_source_files_properties(styles/Typography.qml PROPERTIES QT_QML_SINGLETON_TYPE TRUE)
set_source_files_properties(styles/Layouts.qml PROPERTIES QT_QML_SINGLETON_TYPE TRUE)

qt_add_qml_module(frontend_app
    URI PromptOptimizer
    VERSION 1.0
    QML_FILES
        main.qml
        pages/BasicPage.qml
        pages/AdvancedPage.qml
        pages/SettingsPage.qml
        components/AgentCard.qml
        components/BottomNav.qml
        components/TechniqueRow.qml
        components/ActionButtons.qml
        components/ToggleSwitch.qml
        components/CheckOption.qml
        components/FocusOption.qml
        models/AgentModel.qml
        models/TechniqueModel.qml
        models/PromptModel.qml
        styles/Colors.qml
        styles/Typography.qml
        styles/Layouts.qml
    RESOURCES
        utils/Helpers.js
        resources.qrc
    # OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/PromptOptimizer
)


# # Install qmldir to the output directory
# install(FILES ${CMAKE_CURRENT_BINARY_DIR}/qmldir
#     DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/PromptOptimizer)
