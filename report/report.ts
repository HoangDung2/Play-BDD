const report = require("multiple-cucumber-html-reporter");
report.generate({
  jsonDir: "test-results",
  reportPath: "./",
  reportName:"Real-Word Report",
  displayDuration:false,
  pageTitle:"Report Real-Word",
  metadata: {
    browser: {
      name: "chrome",
      version: "99",
    },
    device: "PC-Desktop",
    platform: {
      name: "Windows",
      version: "10",
    },
  },
});