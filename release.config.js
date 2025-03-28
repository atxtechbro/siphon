module.exports = {
  branches: ["main", "release"],
  repositoryUrl: "https://github.com/atxtechbro/siphon",
  plugins: [
    "@semantic-release/commit-analyzer",
    "@semantic-release/release-notes-generator",
    [
      "@semantic-release/changelog",
      {
        changelogFile: "docs/changelog.md", // Ensure changelog updates in docs
      },
    ],
    "@semantic-release/github",
    [
      "@semantic-release/git",
      {
        assets: ["docs/changelog.md", "VERSION"],
        message:
          "chore(release): update changelog and version to ${nextRelease.version}",
      },
    ],
  ],
};
