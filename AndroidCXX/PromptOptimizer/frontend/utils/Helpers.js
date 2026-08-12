// JavaScript Utility: Helpers.js
.pragma library

function generateId() {
    return Math.random().toString(36).substring(2, 9);
}

function truncateText(text, maxLen) {
    return text.length > maxLen ? text.substring(0, maxLen) + "..." : text;
}
