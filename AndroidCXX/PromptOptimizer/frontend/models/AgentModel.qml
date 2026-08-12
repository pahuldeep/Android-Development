// QML Component: AgentModel.qml
import QtQuick

// ListModel {
//     ListElement { name: "Clarity"; icon: "🔍"; description: "Simplifies complex ideas" }
//     ListElement { name: "Structure"; icon: "🏗️"; description: "Organizes thoughts logically" }
//     ListElement { name: "Context"; icon: "🌐"; description: "Adds relevant background info" }
//     ListElement { name: "Creative"; icon: "💡"; description: "Enhances creativity and brainstorming" }
// }

ListModel {

    ListElement {
        key: "clarity"
        name: "Clarity Agent"
        shortName: "Clarity"
        description: "Improves clarity and specificity"
        icon: "●"
        colorType: "green"
    }

    ListElement {
        key: "structure"
        name: "Structure Agent"
        shortName: "Structure"
        description: "Organizes prompt format and flow"
        icon: "☷"
        colorType: "orange"
    }

    ListElement {
        key: "context"
        name: "Context Agent"
        shortName: "Context"
        description: "Adds relevant context and details"
        icon: "★"
        colorType: "yellow"
    }

    ListElement {
        key: "creative"
        name: "Creative Agent"
        shortName: "Creative"
        description: "Enhances creativity and uniqueness"
        icon: "✣"
        colorType: "purple"
    }
}