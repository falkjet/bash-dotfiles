list-modules() {
    while read fn
    do
        basename -s .sh "$fn"
    done < <(ls -1 "$BASH_CONFIG_DIR"/modules/)
}

list-enabled-modules() {
    [ -f "$BASH_CONFIG_DIR/enabled-modules" ] && cat "$BASH_CONFIG_DIR/enabled-modules"
    return 0
}

list-disabled-modules() {
    comm -32 <(list-modules | sort) <(list-enabled-modules | sort)
}

enable-modules() {
    list-disabled-modules | fzf -m >> "$BASH_CONFIG_DIR/enabled-modules"
}

disable-modules() {
    enabled_modules="$(list-enabled-modules)"
    disable_modules="$(echo "${enabled_modules}" | fzf -m)"
    comm -32 <(echo "$enabled_modules" | sort) <(echo "$disable_modules" | sort) > "$BASH_CONFIG_DIR/enabled-modules"
}