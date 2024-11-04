if status is-interactive
    # Commands to run in interactive sessions can go here
    # set nvim as editor
    set -gx EDITOR nvim
    # set vim keybinds
    fish_vi_key_bindings

    ## alias vim -> nivm
    function vim --description "vim -> nvim"
        nvim $argv
    end

    # launch ranger
    bind -M insert \cr ranger
end


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/anton/.opam/opam-init/init.fish' && source '/home/anton/.opam/opam-init/init.fish' >/dev/null 2>/dev/null; or true
# END opam configuration
