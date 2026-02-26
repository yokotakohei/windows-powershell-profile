# Emit the OSC 7 escape sequence so WezTerm knows the current working directory.
# This allows new panes/tabs to inherit the directory of the current pane.
function Prompt {
    $ESC = [char]0x1B
    $BEL = [char]0x07
    $pwdEscaped = $PWD.Path -replace '\\', '/'
    "${ESC}]7;file://$env:COMPUTERNAME/$pwdEscaped${BEL}" + "PS $($PWD.Path)> "
}
