export ANDROID_SDK="/Users/dummy/Library/Android/sdk"
export ANDROID_NDK="$ANDROID_SDK/ndk-bundle"
export PATH="$PATH:$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools:$ANDROID_NDK"
export CUDA_HOME=/usr/local/cuda
export DYLD_LIBRARY_PATH="$CUDA_HOME/lib"
export PATH="$PATH:$CUDA_HOME/bin"
#export PATH=/Developer/NVIDIA/CUDA-8.0/bin${PATH:+:${PATH}}
#export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-8.0/lib\
#                         ${DYLD_LIBRARY_PATH:+:${DYLD_LIBRARY_PATH}}
export FONTCONFIG_PATH=/opt/X11/lib/X11/fontconfig
export HISTCONTROL=ignoreboth:erasedup

#tensorflow
tensorflow () {
    cd /Users/dummy/Develop/TensorFlow
    source ./bin/activate
}

export PATH="/usr/local/include:/usr/local/lib:$PATH"
#alias
alias py="python3"
alias ll="ls -la"
alias la="ls -a"
alias xcode7="sudo xcode-select --switch /Applications/Xcode7.app/Contents/Developer"
alias xcode8="sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer"
alias xcodecuda="sudo xcode-select --switch /Library/Developer/CommandLineTools7"
alias remoteres="cscreen -s 1 -d 32 -x 1440 -y 900 -r 60"
alias localres="cscreen -s 1 -d 32 -x 1920 -y 1080 -r 60"
alias syncplay="~/Develop/syncplay/.syncplayClient.py"
mkcd () {
  case "$1" in
    */..|*/../) cd -- "$1";; # that doesn't make any sense unless the directory already exists
    /*/../*) (cd "${1%/../*}/.." && mkdir -p "./${1##*/../}") && cd -- "$1";;
    /*) mkdir -p "$1" && cd "$1";;
    */../*) (cd "./${1%/../*}/.." && mkdir -p "./${1##*/../}") && cd "./$1";;
    ../*) (cd .. && mkdir -p "${1#.}") && cd "$1";;
    *) mkdir -p "./$1" && cd "./$1";;
  esac
}

export PATH="$HOME/.bin:$HOME/.cargo/bin:$PATH"
