// release.config.js
module.exports = {
  branches: ["main", "release"],
  repositoryUrl: "https://github.com/atxtechbro/siphon",
  plugins: [
    "@semantic-release/commit-analyzer",
    "@semantic-release/release-notes-generator",
    [
      "@semantic-release/changelog",
      {
        changelogFile: "CHANGELOG.tmp", // Write to a temporary file
        changelogTitle: "", // Exclude changelogTitle to prevent duplication
      },
    ],
    [
      "@semantic-release/exec",
      {
        prepareCmd: "node build-changelog.js", // Run script after changelog is generated
      },
    ],
    "@semantic-release/github",
    [
      "@semantic-release/git",
      {
        assets: ["docs/changelog.md", "package.json"],
      },
    ],
  ],
};
