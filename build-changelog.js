// build-changelog.js
const fs = require("fs");
const path = require("path");

const frontMatter = `---
title: "Changelog"
description: "Record of all notable changes to Siphon."
---

# Changelog
`;

const tmpChangelogPath = path.join(__dirname, "CHANGELOG.tmp");
const changelogPath = path.join(__dirname, "docs", "changelog.md");

fs.readFile(tmpChangelogPath, "utf8", function (err, data) {
  if (err) throw err;

  const newChangelog = frontMatter + "\n\n" + data;

  fs.writeFile(changelogPath, newChangelog, "utf8", function (err) {
    if (err) throw err;
    console.log("Changelog generated with front matter.");
    // Optionally delete the temporary file
    fs.unlink(tmpChangelogPath, function (err) {
      if (err) throw err;
      console.log("Temporary changelog file deleted.");
    });
  });
});
