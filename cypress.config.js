const { defineConfig } = require("cypress");

module.exports = defineConfig({
  projectId: "adhaau",
  e2e: {
    setupNodeEvents(on, config) {
      // implement node event listeners here
      projectId: "adhaau"
    },
  },
});

