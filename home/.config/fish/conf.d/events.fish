function updateLastCommand -e fish_preexec
  set -g lastCommand $argv
end
