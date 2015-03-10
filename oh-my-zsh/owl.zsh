export OWL=/Users/eric/src/twilio/owl
function owl () {
    unset -f owl
    eval "$(/Users/eric/src/twilio/owl/bin/owl init -)"
    owl "$@"
}
