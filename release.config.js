module.exports = {
  branches: ["main", "release"],
  repositoryUrl: "https://github.com/atxtechbro/siphon",
  plugins: [
    "@semantic-release/commit-analyzer",
    "@semantic-release/release-notes-generator",
    "@semantic-release/changelog",
    "@semantic-release/github",
    "@semantic-release/git",
  ],
};
