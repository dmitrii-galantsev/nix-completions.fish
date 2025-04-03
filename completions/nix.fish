complete nix --exclusive

# Common options
complete nix -l debug -d "enable debug output"
complete nix -l help -d "show usage information"
complete nix -l help-config -d "show configuration options"
complete nix -l no-net -d "disable substituters and consider all previously downloaded files up-to-date"
complete nix -l option -d "set a Nix configuration option (overriding nix.conf)"
complete nix -l print-build-logs -s L -d "print full build logs on stderr"
complete nix -l quiet -d "decrease verbosity level"
complete nix -l verbose -s v -d "increase verbosity level"
complete nix -l version -d "show version information"

# Subcommands

# My ~/.config/nix/nix.conf contains:
#   extra-experimental-features = nix-command flakes
# Generated from `nix` help text with:
#   NOCOLOR=1 nix help | grep -Po '(?<=· nix )([a-zA-Z_-]+) - .*' | string trim | string replace --regex '([\w-]+) - (.+)' 'complete nix -n __fish_use_subcommand -a $1 -d "$2"' | sort
complete nix -n __fish_use_subcommand -a build -d "build a derivation or fetch a store path"
complete nix -n __fish_use_subcommand -a bundle -d "bundle an application so that it works outside of the Nix store"
complete nix -n __fish_use_subcommand -a config -d "manipulate the Nix configuration"
complete nix -n __fish_use_subcommand -a copy -d "copy paths between Nix stores"
complete nix -n __fish_use_subcommand -a daemon -d "daemon to perform store operations on behalf of non-root clients"
complete nix -n __fish_use_subcommand -a derivation -d "Work with derivations, Nix's notion of a build plan."
complete nix -n __fish_use_subcommand -a develop -d "run a bash shell that provides the build environment of a derivation"
complete nix -n __fish_use_subcommand -a edit -d "open the Nix expression of a Nix package in $EDITOR"
complete nix -n __fish_use_subcommand -a env -d "manipulate the process environment"
complete nix -n __fish_use_subcommand -a eval -d "evaluate a Nix expression"
complete nix -n __fish_use_subcommand -a flake -d "manage Nix flakes"
complete nix -n __fish_use_subcommand -a fmt -d "reformat your code in the standard style"
complete nix -n __fish_use_subcommand -a hash -d "compute and convert cryptographic hashes"
complete nix -n __fish_use_subcommand -a help -d "show help about nix or a particular subcommand"
complete nix -n __fish_use_subcommand -a help-stores -d "show help about store types and their settings"
complete nix -n __fish_use_subcommand -a key -d "generate and convert Nix signing keys"
complete nix -n __fish_use_subcommand -a log -d "show the build log of the specified packages or paths, if available"
complete nix -n __fish_use_subcommand -a nar -d "create or inspect NAR files"
complete nix -n __fish_use_subcommand -a path-info -d "query information about store paths"
complete nix -n __fish_use_subcommand -a print-dev-env -d "print shell code that can be sourced by bash to reproduce the build environment of a derivation"
complete nix -n __fish_use_subcommand -a profile -d "manage Nix profiles"
complete nix -n __fish_use_subcommand -a realisation -d "manipulate a Nix realisation"
complete nix -n __fish_use_subcommand -a registry -d "manage the flake registry"
complete nix -n __fish_use_subcommand -a repl -d "start an interactive environment for evaluating Nix expressions"
complete nix -n __fish_use_subcommand -a run -d "run a Nix application"
complete nix -n __fish_use_subcommand -a search -d "search for packages"
complete nix -n __fish_use_subcommand -a store -d "manipulate a Nix store"
complete nix -n __fish_use_subcommand -a upgrade-nix -d "upgrade Nix to the latest stable version"
complete nix -n __fish_use_subcommand -a why-depends -d "show why a package has another package in its closure"

