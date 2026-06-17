# How to Update a Formula

When releasing a new version of a tool (e.g. `cinder` to version `v1.0.1`):

1. Tag and release the code in the project repository (e.g., `k-wrk/cider-cli`).
2. Download the source tarball (`.tar.gz`) for that tag from GitHub.
3. Calculate the SHA256 checksum of the downloaded file:
   ```bash
   shasum -a 256 v1.0.1.tar.gz
   ```
4. Update the corresponding Ruby file in `Formula/` (e.g. `Formula/cinder.rb`):
   * Update the `url` to point to the new tag tarball.
   * Update the `sha256` value with the calculated checksum.
5. Commit and push the changes to this repository.
