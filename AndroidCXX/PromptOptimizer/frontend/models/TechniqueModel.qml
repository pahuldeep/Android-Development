// QML Component: TechniqueModel.qml
import QtQuick

// ListModel {
//     ListElement { techniqueId: "rsip"; name: "RSIP"; fullName: "Role-Scenario-Input-Prompt"; description: "Assigns a specific role and scenario." }
//     ListElement { techniqueId: "cad"; name: "CAD"; fullName: "Context-Action-Detail"; description: "Provides context, specifies action, adds detail." }
//     ListElement { techniqueId: "chi"; name: "CHI"; fullName: "Clarify-Help-Interpret"; description: "Focuses on clarification and interpretation." }
//     ListElement { techniqueId: "mps"; name: "MPS"; fullName: "Main Point-Support-Conclusion"; description: "Structures arguments clearly." }
//     ListElement { techniqueId: "ccp"; name: "CCP"; fullName: "Criteria-Context-Parameters"; description: "Defines strict boundaries for the AI." }
// }

ListModel {

    ListElement {
        key: "rsip"
        name: "RSIP"
        fullName: "Recursive Self-Improvement"
        description: "Prompts that improve through iterations"
        category: "Iterative"
        colorType: "blue"
        icon: "↻"
    }

    ListElement {
        key: "cad"
        name: "CAD"
        fullName: "Context-Aware Decomposition"
        description: "Breaks tasks into relevant sub-tasks"
        category: "Analytical"
        colorType: "blue"
        icon: "⚯"
    }

    ListElement {
        key: "chi"
        name: "CHI"
        fullName: "Controlled Hallucination"
        description: "Creative generation within boundaries"
        category: "Creative"
        colorType: "pink"
        icon: "◐"
    }

    ListElement {
        key: "mps"
        name: "MPS"
        fullName: "Multi-Perspective Simulation"
        description: "Analyzes from multiple viewpoints"
        category: "Comprehensive"
        colorType: "green"
        icon: "◉"
    }

    ListElement {
        key: "ccp"
        name: "CCP"
        fullName: "Calibrated Confidence"
        description: "Accuracy with confidence calibration"
        category: "Accurate"
        colorType: "orange"
        icon: "⚖"
    }
}