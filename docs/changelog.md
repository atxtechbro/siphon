# [1.2.0](https://github.com/atxtechbro/siphon/compare/v1.1.0...v1.2.0) (2024-09-18)


### Bug Fixes

* address contributing.md path and SEO meta descriptions ([7ec3814](https://github.com/atxtechbro/siphon/commit/7ec3814950b4458845c9df63fc0a1ed4bf59619a))
* **changelog:** ensure front matter stays at the top of changelog.md ([a303c10](https://github.com/atxtechbro/siphon/commit/a303c108121a5d05b2f421c253de03dec0060b1c))
* **ci:** add write permissions to gh-pages workflow for GitHub Pages deployment ([fba9b5b](https://github.com/atxtechbro/siphon/commit/fba9b5b1e952bb96c1419025a037d3c90bfd4281))
* deploy documentation to main branch instead of gh-pages ([625ecf6](https://github.com/atxtechbro/siphon/commit/625ecf61fa0c8c4e89bbfc422b659706a2f542b2))
* **deploy:** change deploy branch to 'gh-pages' and enable orphan commits ([456d650](https://github.com/atxtechbro/siphon/commit/456d6502f0322302ddea1b53c21ba125e37b6221))
* **deployment:** preserve CNAME for custom domain during deployment ([de228a9](https://github.com/atxtechbro/siphon/commit/de228a914b2ccabb9d94372b42d38d85e1270f5d))
* **deployment:** simplify CNAME handling by using cname field in GitHub Pages action ([3f45c8f](https://github.com/atxtechbro/siphon/commit/3f45c8faf71b6c6bdfbba071d791f47c0c33b59a))
* **docs:** hard-code MIT License in LICENSE.md and fix SEO issues ([8e99990](https://github.com/atxtechbro/siphon/commit/8e99990ad7714af3774d1b4219187f84d8c13175))
* **docs:** update license file reference to LICENSE.md after testing locally ([53b4453](https://github.com/atxtechbro/siphon/commit/53b4453a42d3e823c600ab18ad78bd2464ee0bbe))
* include image assets in deployment ([1ac0e5f](https://github.com/atxtechbro/siphon/commit/1ac0e5f76d69edbb667bda5f4b57f5ff4f546709))
* install missing mkdocs-meta-descriptions plugin and clean up cname comment ([b534518](https://github.com/atxtechbro/siphon/commit/b534518cef4b449ad8c7bc997015b1dc877c750b))
* move favicon.ico to docs directory for favicon loading experiment ([2b5726c](https://github.com/atxtechbro/siphon/commit/2b5726c64c2790a88754a829e3ed5ad01b608bbd))
* update deploy workflow to deploy documentation changes ([c110fe5](https://github.com/atxtechbro/siphon/commit/c110fe5b6a9fe21f119b4dfa3a34adec3935004e))
* update paths for logo and favicon in mkdocs.yml ([6380fad](https://github.com/atxtechbro/siphon/commit/6380fad97073fa7506d2ba7bf455ea4f51c63091))
* **workflow:** add pycryptodome to resolve pycrypto installation issue ([3b656ab](https://github.com/atxtechbro/siphon/commit/3b656ab9281630cc6577f09a19eacb7b08312407))
* **workflow:** trigger deploy on all pushes to main by removing path filters ([764d5e2](https://github.com/atxtechbro/siphon/commit/764d5e21e26059dbd099d332c63988b60ecb5c35))


### Features

* **#4:** Add CI/CD Workflow for Documentation Deployment and Initial MkDocs Setup ([38880b1](https://github.com/atxtechbro/siphon/commit/38880b1affdb560c34981ca322962cae53c70359)), closes [#4](https://github.com/atxtechbro/siphon/issues/4) [#4](https://github.com/atxtechbro/siphon/issues/4)
* add deployment step to GitHub Pages in deploy.yml ([239f622](https://github.com/atxtechbro/siphon/commit/239f62267d61005e74f11aca234bbacf2a8e8e28))
* add favicon and logo images for branding ([fff3727](https://github.com/atxtechbro/siphon/commit/fff372742002eaec7166c152c8d3bfd57f9898e5)), closes [#5](https://github.com/atxtechbro/siphon/issues/5)
* **docs:** initialize documentation structure for Siphon website ([7648cc1](https://github.com/atxtechbro/siphon/commit/7648cc12316dd7c93329ab4de14e3bd7d4d1a55f)), closes [#4](https://github.com/atxtechbro/siphon/issues/4)
* **images:** add favicon.ico and logo.png ([bb47d10](https://github.com/atxtechbro/siphon/commit/bb47d109ab71aec9d8545fca05a6d919714cf11c))
* trigger semantic release to update changelog ([c526227](https://github.com/atxtechbro/siphon/commit/c526227022208c942c2879c53645460aec3b2260))
* update semantic-release config to move changelog to docs directory ([1a5d16c](https://github.com/atxtechbro/siphon/commit/1a5d16c4a889e15c033e5142c1128a70894a3ce7))
* **workflow:** add manual trigger using workflow_dispatch ([5955092](https://github.com/atxtechbro/siphon/commit/59550923ab402050aaa14de68a79a116e7579578))

# [1.2.0](https://github.com/atxtechbro/siphon/compare/v1.1.0...v1.2.0) (2024-09-16)

### Bug Fixes

- deploy documentation to main branch instead of gh-pages ([625ecf6](https://github.com/atxtechbro/siphon/commit/625ecf61fa0c8c4e89bbfc422b659706a2f542b2))
- **deploy:** change deploy branch to 'gh-pages' and enable orphan commits ([456d650](https://github.com/atxtechbro/siphon/commit/456d6502f0322302ddea1b53c21ba125e37b6221))
- include image assets in deployment ([1ac0e5f](https://github.com/atxtechbro/siphon/commit/1ac0e5f76d69edbb667bda5f4b57f5ff4f546709))
- install missing mkdocs-meta-descriptions plugin and clean up cname comment ([b534518](https://github.com/atxtechbro/siphon/commit/b534518cef4b449ad8c7bc997015b1dc877c750b))
- move favicon.ico to docs directory for favicon loading experiment ([2b5726c](https://github.com/atxtechbro/siphon/commit/2b5726c64c2790a88754a829e3ed5ad01b608bbd))
- update deploy workflow to deploy documentation changes ([c110fe5](https://github.com/atxtechbro/siphon/commit/c110fe5b6a9fe21f119b4dfa3a34adec3935004e))
- update paths for logo and favicon in mkdocs.yml ([6380fad](https://github.com/atxtechbro/siphon/commit/6380fad97073fa7506d2ba7bf455ea4f51c63091))
- **workflow:** trigger deploy on all pushes to main by removing path filters ([764d5e2](https://github.com/atxtechbro/siphon/commit/764d5e21e26059dbd099d332c63988b60ecb5c35))

### Features

- **#4:** Add CI/CD Workflow for Documentation Deployment and Initial MkDocs Setup ([38880b1](https://github.com/atxtechbro/siphon/commit/38880b1affdb560c34981ca322962cae53c70359)), closes [#4](https://github.com/atxtechbro/siphon/issues/4) [#4](https://github.com/atxtechbro/siphon/issues/4)
- add deployment step to GitHub Pages in deploy.yml ([239f622](https://github.com/atxtechbro/siphon/commit/239f62267d61005e74f11aca234bbacf2a8e8e28))
- add favicon and logo images for branding ([fff3727](https://github.com/atxtechbro/siphon/commit/fff372742002eaec7166c152c8d3bfd57f9898e5)), closes [#5](https://github.com/atxtechbro/siphon/issues/5)
- **docs:** initialize documentation structure for Siphon website ([7648cc1](https://github.com/atxtechbro/siphon/commit/7648cc12316dd7c93329ab4de14e3bd7d4d1a55f)), closes [#4](https://github.com/atxtechbro/siphon/issues/4)
- **images:** add favicon.ico and logo.png ([bb47d10](https://github.com/atxtechbro/siphon/commit/bb47d109ab71aec9d8545fca05a6d919714cf11c))
- trigger semantic release to update changelog ([c526227](https://github.com/atxtechbro/siphon/commit/c526227022208c942c2879c53645460aec3b2260))
- update semantic-release config to move changelog to docs directory ([1a5d16c](https://github.com/atxtechbro/siphon/commit/1a5d16c4a889e15c033e5142c1128a70894a3ce7))
- **workflow:** add manual trigger using workflow_dispatch ([5955092](https://github.com/atxtechbro/siphon/commit/59550923ab402050aaa14de68a79a116e7579578))

---

title: "Changelog"
description: "Record of all notable changes to Siphon."

---

# Changelog

[Full Changelog](changelog.md)
