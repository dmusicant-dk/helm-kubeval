#! /bin/bash -e

if [[ $1 == "--version" || $1 == "--help" ]]; then
    $HELM_PLUGIN_DIR/bin/kubeval $1
    exit
fi

render=$(helm template .)

echo "$render" | $HELM_PLUGIN_DIR/bin/kubeval ${@}
