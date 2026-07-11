# alises for shorter commands
alias ll='ls -alF'
alias la='ls -A'

alias grep='grep --color=auto'
alias myip='curl ifconfig.me; echo'

# various cd shortcuts
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cd-='cd ~-'

# mkdir and cd into it
mkcd() { mkdir -p "$1" && cd "$1"; }

# cd into dir and ls
cdls() { cd "$1" && ls; }

# Universal extract function
extract() {
    if [ -z "$1" ]; then
        echo "Usage: extract <archive>"
        return 1
    fi

    file="$1"

    if [ ! -f "$file" ]; then
        echo "Error: '$file' is not a valid file."
        return 1
    fi

    # Extract base name without extensions (handles multiple extensions like .tar.gz, .tgz)
    dir="${file%.*}"
    case "$file" in
    *.tar.gz | *.tgz)
        dir="${file%.tar.gz}"
        dir="${dir%.tgz}"
        ;;
    *.tar.bz2 | *.tbz2)
        dir="${file%.tar.bz2}"
        dir="${dir%.tbz2}"
        ;;
    *.tar.xz | *.txz)
        dir="${file%.tar.xz}"
        dir="${dir%.txz}"
        ;;
    *.tar.zst | *.tzst)
        dir="${file%.tar.zst}"
        dir="${dir%.tzst}"
        ;;
    *.tar.*) dir="${file%.tar.*}" ;;
    *.zip) dir="${file%.zip}" ;;
    *.gz) dir="${file%.gz}" ;;
    *.bz2) dir="${file%.bz2}" ;;
    *.xz) dir="${file%.xz}" ;;
    *.Z) dir="${file%.Z}" ;;
    *.7z) dir="${file%.7z}" ;;
    esac

    mkdir -p "$dir"

    case "$file" in
    *.tar.gz | *.tgz) tar -xzf "$file" -C "$dir" ;;
    *.tar.bz2 | *.tbz2) tar -xjf "$file" -C "$dir" ;;
    *.tar.xz | *.txz) tar -xJf "$file" -C "$dir" ;;
    *.tar.zst | *.tzst) tar --zstd -xf "$file" -C "$dir" ;;
    *.tar) tar -xf "$file" -C "$dir" ;;
    *.zip) unzip -d "$dir" "$file" ;;
    *.gz) gunzip -c "$file" >"$dir/$(basename "${dir}")" ;;
    *.bz2) bunzip2 -c "$file" >"$dir/$(basename "${dir}")" ;;
    *.xz) unxz -c "$file" >"$dir/$(basename "${dir}")" ;;
    *.Z) uncompress -c "$file" >"$dir/$(basename "${dir}")" ;;
    *.7z) 7z x "$file" -o"$dir" ;;
    *)
        echo "Error: '$file' cannot be extracted via extract()"
        return 1
        ;;
    esac

    echo "Extracted to: $dir"
}
# view system resources
alias meminfo='free -m -l -t'

# nav to windows mount
alias windows='cd /mnt/c/Users/thoma'
