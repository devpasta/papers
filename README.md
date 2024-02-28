# Developer Experience Tech Papers

[![DX Tech Papers Syntax Status](https://github.com/devpasta/papers/actions/workflows/syntax.yml/badge.svg)](https://github.com/devpasta/papers/actions)

The DX Tech Papers in this repository are automatically published on the web at [https://devpasta.github.io/papates/](https://devpasta.github.io/papates/). 
To learn more about the purpose of DX Tech Papers and how to write one, please start reading at [DX Tech Paper 1](https://devpasta.github.io/papers/dx-001/). 
Note that the DX Tech Paper Index ([DX Tech Paper 0](https://devpasta.github.io/papers/dx-000/)) is automatically generated based on the metadata headers in other DX Tech Papers.

## Canonical Links

The canonical form of DX Tech Paper links are zero-padded, such as `https://devpasta.github.io/papers/dx-0008/`. Shortcut redirects are also available. For example, `https://devpasta.github.io/papers/8` redirects to the canonical link.

## Contributing to DX Tech Papers

See the [Contributing Guidelines](./CONTRIBUTING.md).

## Checking DX Tech Paper Formatting and Rendering

Please don't commit changes with reStructuredText syntax errors that cause DX Tech Paper generation to fail or result in major rendering defects relative to what you intend.

### Browse the ReadTheDocs Preview

For every PR, we automatically create a preview of the rendered DX Tech Papers using [ReadTheDocs](https://readthedocs.org/). You can find it in the merge box at the bottom of the PR page:

1. Click "Show all checks" to expand the checks section.
2. Find the line for `docs/readthedocs.org:dx-paper-previews`.
3. Click on "Details" to the right.

### Render DX Tech Papers Locally

To render the DX Tech Papers locally, you need Docker 20 or later. Then, run the following command:

```bash
# Build and run the Docker container
make serve
```

The output HTML is found under the `_site` directory.

### Check and Lint DX Tech Papers

You can check for and fix common linting and spelling issues, either on-demand or automatically as you commit, with our pre-commit suite. See the Contributing Guide for details.
