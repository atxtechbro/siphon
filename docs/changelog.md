# [1.5.0](https://github.com/atxtechbro/siphon/compare/v1.4.0...v1.5.0) (2025-02-27)


### Bug Fixes

* **apt:** Correct file path for deb package in scp command ([d1fbeb4](https://github.com/atxtechbro/siphon/commit/d1fbeb4d910ae7597e599db9bfe6e1c14d3065e6))
* **apt:** Correctly sign package for PPA upload ([e248888](https://github.com/atxtechbro/siphon/commit/e248888946195ee58e62036f4ff04f3b61036342))
* **apt:** Disable host key verification for PPA upload to resolve SSH errors ([a62fa7a](https://github.com/atxtechbro/siphon/commit/a62fa7ae63872f6f1f1c4e55511f046ac65d3069))
* **apt:** Replace scp with rsync for more robust PPA upload ([f94a274](https://github.com/atxtechbro/siphon/commit/f94a2741457db21a47f8272ea75fa3d549d9a82c))
* **apt:** Use dput for PPA uploads ([8f3e5b7](https://github.com/atxtechbro/siphon/commit/8f3e5b7cb20b410b253ce3b9850211649da01068))
* **choco:** Include LICENSE.txt and VERIFICATION.txt in package ([c3c0b70](https://github.com/atxtechbro/siphon/commit/c3c0b70ee7abb8d31e7a3e1cc5f9574ba0d3f26a))
* **debian:** Define Build Steps in debian/rules File ([#15](https://github.com/atxtechbro/siphon/issues/15)) ([c1647b7](https://github.com/atxtechbro/siphon/commit/c1647b7fbe48e00c28e964cddf084c9e118a3d5d))
* **debian:** Install dh-python package in GitHub Actions workflow ([ee9fb39](https://github.com/atxtechbro/siphon/commit/ee9fb39049dc8bc5a0f1f095875cfc96942c8bcb))
* **debian:** Use pybuild for Debian builds ([#15](https://github.com/atxtechbro/siphon/issues/15)) ([50d06e5](https://github.com/atxtechbro/siphon/commit/50d06e5766178bed9c5aaa7e5f05689128bd979c))


### Features

* **ci:** Add build steps to choco-test.yml for package creation ([b40ac56](https://github.com/atxtechbro/siphon/commit/b40ac562a2d0534d08c3a65ff031fd776b56144d))
* **ci:** Add GitHub Actions workflow for Chocolatey package testing ([748f746](https://github.com/atxtechbro/siphon/commit/748f7468d0bccda272ec933803f12121235e958c))
* **ci:** Enhance choco-test.yml with detailed logging for debugging ([ba5880a](https://github.com/atxtechbro/siphon/commit/ba5880a2a380801b0e4eb1ae625f9eb4de64031e))
* Enhance Chocolatey install script for robustness ([5cb11c5](https://github.com/atxtechbro/siphon/commit/5cb11c5971b37bfc8ba57934c0ec69c89f0e4738)), closes [#14](https://github.com/atxtechbro/siphon/issues/14)

# [1.4.0](https://github.com/atxtechbro/siphon/compare/v1.3.3...v1.4.0) (2025-02-19)


### Bug Fixes

* **apt:** fix tab indentation in debian/rules to resolve "missing separator" error ([24546c2](https://github.com/atxtechbro/siphon/commit/24546c2c79f15d13198f02856a5600150a968722))
* **apt:** generate debian/changelog to fix dpkg-buildpackage error ([1f99590](https://github.com/atxtechbro/siphon/commit/1f995906e606932379ca43d6d9232365d45cef7a))
* **apt:** generate debian/control to fix dpkg-buildpackage error ([cfb97bd](https://github.com/atxtechbro/siphon/commit/cfb97bd5d9e784f2a1f3247b164d2de88c45c7a7))
* **apt:** generate debian/rules file to resolve fakeroot error ([22a0994](https://github.com/atxtechbro/siphon/commit/22a0994db41745cdea1442d1d008197e06fc5646))
* **apt:** install build-essential to satisfy dpkg-buildpackage dependencies ([071c2c1](https://github.com/atxtechbro/siphon/commit/071c2c170325826a499310702016265862ad4657))
* **apt:** install python3-all to make pybuild available for packaging ([86ce9b5](https://github.com/atxtechbro/siphon/commit/86ce9b53df38995d50147c93a2dfb7626aa18e7a))
* **apt:** install python3-pybuild to resolve pybuild not found error ([690bbe4](https://github.com/atxtechbro/siphon/commit/690bbe455b9ae788bbf274fadd4f83e9544fe16b))
* **apt:** set GPG_TTY to prevent signing error in GitHub Actions ([56650a0](https://github.com/atxtechbro/siphon/commit/56650a0f84f26308722ff69a9a3a32e7840ab4c4))
* **apt:** switch to pybuild for packaging to resolve deprecated dh_auto_clean error ([48f0a23](https://github.com/atxtechbro/siphon/commit/48f0a23d59f03325f024257c718970bf1301f30e))
* **choco:** ensure siphon.exe is built before packaging ([#12](https://github.com/atxtechbro/siphon/issues/12)) ([0663266](https://github.com/atxtechbro/siphon/commit/066326612c2bccf08358c3ac294ef6612cedf6f7))
* **ci:** add checks for .nupkg file creation and specify .nuspec explicitly ([62a2c1e](https://github.com/atxtechbro/siphon/commit/62a2c1ee1f11485cec5f474c8add7d2dd4fd8558))
* **ci:** add dh_auto_configure override to debian/rules ([f04c116](https://github.com/atxtechbro/siphon/commit/f04c1160c9b45a8fb1dc15e093d6f0d987e85bc0))
* **ci:** correct version formatting in APT and Chocolatey workflows ([173e0a4](https://github.com/atxtechbro/siphon/commit/173e0a4c9155234d41b292de61c1a30c0affa2ec))
* **ci:** hardcode version for APT and Chocolatey package builds due to unknown version number ([9a8ccb4](https://github.com/atxtechbro/siphon/commit/9a8ccb4de701f03b543b9b757e467a21df18c0b4))
* **ci:** override dh_auto_clean in debian/rules to avoid python-distutils error ([6f5de21](https://github.com/atxtechbro/siphon/commit/6f5de2119b0e3b633c4ea0e2a1b2732aebe06606))
* **ci:** remove 'v' prefix from version in Debian changelog and update package filename ([b26515b](https://github.com/atxtechbro/siphon/commit/b26515bb3b2c27b7a56bc7cd924eee18cee3a481))
* **ci:** remove python3-pybuild from apt installation to resolve package error ([d62b48e](https://github.com/atxtechbro/siphon/commit/d62b48e25434f3a46b728ca3dc7a0f75be5e26ce))
* **ci:** update debian/rules to use dh instead of pybuild ([af83db9](https://github.com/atxtechbro/siphon/commit/af83db9783b45a1cde02a19c5a55c9f26f3fee6a))
* **ci:** update file search command to use PowerShell syntax for .nupkg files ([d0eda5d](https://github.com/atxtechbro/siphon/commit/d0eda5d5826da2c292ce33660811d596b91d41ad))


### Features

* add pyproject.toml for modern Python packaging ([49d016f](https://github.com/atxtechbro/siphon/commit/49d016fa2573bfa42a65556bba9938c0c1f0f225))

## [1.3.4](https://github.com/atxtechbro/siphon/compare/v1.3.3...v1.3.4) (2025-02-19)


### Bug Fixes

* **apt:** set GPG_TTY to prevent signing error in GitHub Actions ([56650a0](https://github.com/atxtechbro/siphon/commit/56650a0f84f26308722ff69a9a3a32e7840ab4c4))
* **choco:** ensure siphon.exe is built before packaging ([#12](https://github.com/atxtechbro/siphon/issues/12)) ([0663266](https://github.com/atxtechbro/siphon/commit/066326612c2bccf08358c3ac294ef6612cedf6f7))

## [1.3.4](https://github.com/atxtechbro/siphon/compare/v1.3.3...v1.3.4) (2025-02-19)


### Bug Fixes

* **apt:** set GPG_TTY to prevent signing error in GitHub Actions ([56650a0](https://github.com/atxtechbro/siphon/commit/56650a0f84f26308722ff69a9a3a32e7840ab4c4))
* **choco:** ensure siphon.exe is built before packaging ([#12](https://github.com/atxtechbro/siphon/issues/12)) ([0663266](https://github.com/atxtechbro/siphon/commit/066326612c2bccf08358c3ac294ef6612cedf6f7))

## [1.3.4](https://github.com/atxtechbro/siphon/compare/v1.3.3...v1.3.4) (2025-02-19)


### Bug Fixes

* **choco:** ensure siphon.exe is built before packaging ([#12](https://github.com/atxtechbro/siphon/issues/12)) ([0663266](https://github.com/atxtechbro/siphon/commit/066326612c2bccf08358c3ac294ef6612cedf6f7))

## [1.3.4](https://github.com/atxtechbro/siphon/compare/v1.3.3...v1.3.4) (2025-02-19)


### Bug Fixes

* **choco:** ensure siphon.exe is built before packaging ([#12](https://github.com/atxtechbro/siphon/issues/12)) ([0663266](https://github.com/atxtechbro/siphon/commit/066326612c2bccf08358c3ac294ef6612cedf6f7))

## [1.3.3](https://github.com/atxtechbro/siphon/compare/v1.3.2...v1.3.3) (2024-11-22)


### Bug Fixes

* **version:** remove extraneous quotes from VERSION file and sanitize dynamic version loading ([129987c](https://github.com/atxtechbro/siphon/commit/129987c31029a92bcda0774ace4fa933b1d9b78b))

## [1.3.2](https://github.com/atxtechbro/siphon/compare/v1.3.1...v1.3.2) (2024-11-22)


### Bug Fixes

* **clipboard:** improve emoji and Unicode compatibility across platforms ([c478530](https://github.com/atxtechbro/siphon/commit/c478530f8741f5eda3c47282bae06504aff35b51))

# [1.2.0](https://github.com/atxtechbro/siphon/compare/v1.1.0...v1.2.0) (2024-11-22)


### Bug Fixes

* address contributing.md path and SEO meta descriptions ([7ec3814](https://github.com/atxtechbro/siphon/commit/7ec3814950b4458845c9df63fc0a1ed4bf59619a))
* **changelog:** ensure front matter stays at the top of changelog.md ([a303c10](https://github.com/atxtechbro/siphon/commit/a303c108121a5d05b2f421c253de03dec0060b1c))
* **ci:** add write permissions to gh-pages workflow for GitHub Pages deployment ([fba9b5b](https://github.com/atxtechbro/siphon/commit/fba9b5b1e952bb96c1419025a037d3c90bfd4281))
* **clipboard:** ensure UTF-8 encoding for Windows clipboard support ([9847c30](https://github.com/atxtechbro/siphon/commit/9847c30045a556e0bf95d428f97726c549314b0c))
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

# [1.2.0](https://github.com/atxtechbro/siphon/compare/v1.1.0...v1.2.0) (2024-11-21)


### Bug Fixes

* address contributing.md path and SEO meta descriptions ([7ec3814](https://github.com/atxtechbro/siphon/commit/7ec3814950b4458845c9df63fc0a1ed4bf59619a))
* **changelog:** ensure front matter stays at the top of changelog.md ([a303c10](https://github.com/atxtechbro/siphon/commit/a303c108121a5d05b2f421c253de03dec0060b1c))
* **ci:** add write permissions to gh-pages workflow for GitHub Pages deployment ([fba9b5b](https://github.com/atxtechbro/siphon/commit/fba9b5b1e952bb96c1419025a037d3c90bfd4281))
* **clipboard:** ensure UTF-8 encoding for Windows clipboard support ([9847c30](https://github.com/atxtechbro/siphon/commit/9847c30045a556e0bf95d428f97726c549314b0c))
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

# [1.2.0](https://github.com/atxtechbro/siphon/compare/v1.1.0...v1.2.0) (2024-11-21)


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

# [1.2.0](https://github.com/atxtechbro/siphon/compare/v1.1.0...v1.2.0) (2024-10-12)


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
