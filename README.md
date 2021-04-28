# mzpm

mzpm is a minimal plugin manager for zsh.

## Usage

First, add the following lines to your `zshrc`:

```zsh
plugins=(
    ...
)
```

The `...` section should contain entries of the form
`'GitHub_username/repository'` (each entry should be a single string).

Keep in mind that you have to source this plugin *at the end* of your zshrc.
For starters, it looks something like this:

```zsh
source /path/to/plugin/manager/mzpm.zsh
```

When you add a new plugin to the list, mzpm will fetch them for you from GitHub.
It may take a bit of time to install them all, but it only has to do this once.

## Configuration

You optionally can set a `PLUGIN_DIR` global variable in your zshrc, which tells
mzpm where to install plugins. By default, it would create a `plugins/`
directory in the same folder it is located and install them there.

For example, if `mzpm.zsh` is in some `$HOME/foo` directory and is ran there, it
would, by default, create a `$HOME/foo/plugins` directory and install everything
there.
