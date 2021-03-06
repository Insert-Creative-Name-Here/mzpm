[[ -z "${PLUGIN_DIR}" ]] && export PLUGIN_DIR="$(dirname ${0})/plugins"

[[ -d "${PLUGIN_DIR}" ]] || mkdir "${PLUGIN_DIR}"

# Download not already downloaded plugins and source them
load_zsh_plugins() {
    for plugin in ${plugins}; do
        local plug_name="$(basename ${plugin})"
        local plug_location="${PLUGIN_DIR}/${plug_name}"

        if [[ ! -d "${plug_location}" ]]; then
            local plug_link="https://github.com/${plugin}"
            git clone "${plug_link}" "${plug_location}"
        fi

        if [[ -f "${plug_location}/${plug_name}.plugin.zsh" ]]; then
            source "${plug_location}/${plug_name}.plugin.zsh"
        elif [[ -f "${plug_location}/${plug_name}.zsh" ]]; then
            source "${plug_location}/${plug_name}.zsh"
        fi
    done

    return 0;
}

load_zsh_plugins
