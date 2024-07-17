# dotfiles
my linux config files managed by chezmoi

## getting started

initialize and pull down dotfiles from github with chezmoi:
    chezmoi init https://github.com/smartlurch/dotfiles.git

apply the dotfiles from the chezmoi repo to local machine:
    chezmoi apply

add new file to chezmoi:
    chezmoi add ~/file.txt

commit changes to git:
    chezmoi cd
    git add .
    git commit -m "message"
    git push
    exit





