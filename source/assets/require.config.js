var components = {
    "packages": [
        {
            "name": "highlightjs",
            "main": "highlightjs-built.js"
        }
    ],
    "shim": {
        "highlightjs": {
            "exports": "hljs"
        }
    },
    "baseUrl": "components"
};
if (typeof require !== "undefined" && require.config) {
    require.config(components);
} else {
    var require = components;
}
if (typeof exports !== "undefined" && typeof module !== "undefined") {
    module.exports = components;
}