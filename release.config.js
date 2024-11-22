module.exports = {
  branches: ["main", "release"],
  repositoryUrl: "https://github.com/atxtechbro/siphon",
  plugins: [
    "@semantic-release/commit-analyzer",
    "@semantic-release/release-notes-generator",
    [
      "@semantic-release/changelog",
      {
        changelogFile: "docs/changelog.md", // Ensure Semantic Release updates the correct file
      },
    ],
    "@semantic-release/github",
    [
      "@semantic-release/git",
      {
        assets: ["docs/changelog.md", "package.json"],
        message:
          "chore(release): update changelog and bump version to ${nextRelease.version}",
      },
    ],
  ],
};
