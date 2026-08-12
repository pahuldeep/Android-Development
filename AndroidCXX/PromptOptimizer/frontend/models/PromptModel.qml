// QML Component: PromptModel.qml
import QtQuick
import "../utils/Helpers.js" as Helpers

ListModel {
    function addNewPrompt(text, agent, technique) {
        append({
            id: Helpers.generateId(),
            text: text,
            agent: agent,
            technique: technique,
            timestamp: new Date().toLocaleString()
        });
    }

    function clearAll() { clear(); }
}