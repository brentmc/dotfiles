##################################################################
# Brent personal
export PATH_TO_BRENT_PROJECTS="~/Documents/Projects/brentmcivor/"
alias cdbr="cd "$PATH_TO_BRENT_PROJECTS"brentmc"
alias cdba="cd "$PATH_TO_BRENT_PROJECTS"bamfusion"
alias cdc="cd "$PATH_TO_BRENT_PROJECTS"common-resources"

##################################################################
# 1.7 Flash and legacy
export PATH_TO_INTREPICA='~/Intrepica/'
alias cdi='cd '$PATH_TO_INTREPICA
alias cdl='cd '$PATH_TO_INTREPICA'literacyplanet/src'
alias cda='cd '$PATH_TO_INTREPICA'intrepica-assets'

##################################################################
# Cobra1
export PATH_TO_COBRA=$PATH_TO_INTREPICA'cobra/'
alias cdc1='cd '$PATH_TO_COBRA
alias cdap='cd '$PATH_TO_COBRA'cobra-app'
alias cdaps='cd '$PATH_TO_COBRA'cobra-apps'
alias cden='cd '$PATH_TO_COBRA'cobra-engine'
alias cdex='cd '$PATH_TO_COBRA'cobra-exercise'
alias cdga='cd '$PATH_TO_COBRA'cobra-games'
alias cdapi='cd'$PATH_TO_COBRA'cobra-lp-api'
alias cdto='cd '$PATH_TO_COBRA'cobra-tools'
alias cdui='cd '$PATH_TO_COBRA'cobra-ui'

export PATH_TO_BRENT_SCRIPTS="~/Intrepica/brents_scripts/cobra-bash-scripts/"
alias startlp="cd "$PATH_TO_BRENT_SCRIPTS" && ./start-lp.sh -startVagrant"
alias stoplp="cd "$PATH_TO_BRENT_SCRIPTS" && ./start-lp.sh -stopVagrant"
alias startcobra1="cd "$PATH_TO_BRENT_SCRIPTS" && ./start-lp.sh -startJustCobra"
alias startcobralp="cd "$PATH_TO_BRENT_SCRIPTS" && ./start-lp.sh -startCobraAndVagrant"

# Cobra1 tools
alias opencobra="cd "$PATH_TO_BRENT_SCRIPTS" && ./open-all-cobra-gits.sh -open"
alias pullcobra="cd "$PATH_TO_BRENT_SCRIPTS" && ./open-all-cobra-gits.sh -pull"
alias pushcobra="cd "$PATH_TO_BRENT_SCRIPTS" && ./open-all-cobra-gits.sh -push"
alias lintcobra="cd "$PATH_TO_BRENT_SCRIPTS" && ./open-all-cobra-gits.sh -eslint"
alias branchcobra="cd "$PATH_TO_BRENT_SCRIPTS" && ./open-all-cobra-gits.sh -branch"
alias deletebranchcobra="cd "$PATH_TO_BRENT_SCRIPTS" && ./open-all-cobra-gits.sh -deleteBranch"
alias tagcobra="cd "$PATH_TO_BRENT_SCRIPTS" && ./open-all-cobra-gits.sh -tag"
alias deletetagcobra="cd "$PATH_TO_BRENT_SCRIPTS" && ./open-all-cobra-gits.sh -deleteTag"
alias checkoutcobra="cd "$PATH_TO_BRENT_SCRIPTS" && ./open-all-cobra-gits.sh -checkout"
alias npminstallcobra="cd "$PATH_TO_BRENT_SCRIPTS" && ./open-all-cobra-gits.sh -npmInstall"

# Cobra1 builds
alias bd="npm run browserDev"
alias bp="npm run browserProd"
alias ad="npm run androidDev"
alias ap="npm run androidProd"
alias id="npm run iosDev"
alias ip="npm run iosProd"

##################################################################
# Noxml
alias cdn='cd '$PATH_TO_INTREPICA'noxml'

##################################################################
# Cobra 2
export PATH_TO_MONO_REPO=$PATH_TO_INTREPICA'/perforce/lp/monorepo/lp/'
export PATH_TO_COBRA2=$PATH_TO_MONO_REPO'/client/cobra2/'
export PATH_TO_SX=$PATH_TO_MONO_REPO'/client/sx/entry/'

alias cdc='cd '$PATH_TO_COBRA2
alias startc='cd '$PATH_TO_COBRA2' && npm start'
alias twc='cd '$PATH_TO_COBRA2' && npm run test_watch'

##################################################################
# Contiki
alias cdm='cd '$PATH_TO_MONO_REPO
alias cdsx='cd '$PATH_TO_SX

# start min services needed for student experience, missions and avatar
# alias sup='cdm && lpdc -c services/sx -c services/students -c services/avatar -c services/authz -c services/authn -c services/reverse_proxy -c services/assets -c services/missions -c services/student_missions up'

# start the bare services needed for client/avatar dev
alias sup='cdm && lpdc  -c services/sx -c services/students -c services/avatar -c services/authz -c services/authn -c services/reverse_proxy -c services/assets up'

# safely docker down all services
alias sdown='cdm && lpdc -c services/missions -c services/sx -c services/students -c services/student_missions -c services/avatar -c services/authz -c services/authn -c services/reverse_proxy -c services/assets -c client/sx/entry -c client/backend/entry/ down'

# start contiki avatar/shop dev mounted independently
alias cdav='cd '$PATH_TO_MONO_REPO'client/sx/avatar'
alias startav='cdav && builder run lp:start' # make sure you you have also started the min services for avatar - sx, students, avatar, authz, authn, reverse_proxy, assets

# docker ps (shows all remaining docker containers)
# docker kill fooContainerID

# clear all node modules in children directories
alias cnm='find . -name "node_modules" -type d -exec rm -r "{}" \;'


#########################################################################################################
# refresh bash/terminal with updated .bash_profile changes - no need to open new tab
alias sourcebash='source ~/.bash_profile'
# alias test='echo foo'

#########################################################################################################
# Git shortcuts
#########################################################################################################
alias gs='git status'

#########################################################################################################
##Show and hide hidden files 
alias showHiddenFiles='defaults write com.apple.finder AppleShowAllFiles YES; sudo killall Finder'
alias hideHiddenFiles='defaults write com.apple.finder AppleShowAllFiles NO; sudo killall Finder'
#########################################################################################################

#########################################################################################################
# When you run a command from a UNIX or UNIX-like shell, the shell looks for the executable file using the directories listed in your PATH variable as a map. 
# For convenience, adding directories to this environment variable means you dont have to go hunting for a file each time you run it. 
# For more info go here:
# http://www.tech-recipes.com/rx/2621/os_x_change_path_environment_variable/
#########################################################################################################
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

#########################################################################################################
# Flash Browser Traces in Terminal
alias trace='open -a /Volumes/Macintosh\ HD/Applications/Utilities/Console.app/ ~/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt'
alias cleartrace='cat /dev/null > ~/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt'
#########################################################################################################

alias compileBulkLoader='compc -output ~/Intrepica/literacyplanet/swc/thirdparty/bulk_loader_literacy_planet.swc -source-path ~/Intrepica/literacyplanet/src/thirdparty/as/bulk\ loader/ -include-classes br.com.stimuli.loading.BulkLoader br.com.stimuli.loading.loadingtypes.LoadingItem br.com.stimuli.loading.loadingtypes.VideoItem br.com.stimuli.loading.loadingtypes.ImageItem br.com.stimuli.loading.loadingtypes.JSONItem br.com.stimuli.loading.loadingtypes.XMLItem br.com.stimuli.loading.loadingtypes.SoundItem br.com.stimuli.loading.loadingtypes.BinaryItem br.com.stimuli.loading.loadingtypes.URLItem br.com.stimuli.loading.lazyloaders.LazyXMLLoader br.com.stimuli.loading.lazyloaders.LazyJSONLoader br.com.stimuli.loading.lazyloaders.LazyBulkLoader br.com.stimuli.loading.BulkProgressEvent br.com.stimuli.loading.utils.SmartURL'
#N.B. for MovieMonitor, the package in the .as is package com.emanueleferonato.moviemonitor, this is why -source-path stops at /as/ here but for bulkloader we go into /bulk\ loader/
alias compileMovieMonitor='compc -output ~/Intrepica/literacyplanet/swc/thirdparty/MovieMonitor.swc -source-path ~/Intrepica/literacyplanet/src/thirdparty/as/ -include-classes com.emanueleferonato.moviemonitor.MovieMonitor'
alias compileURLVars='compc -output ~/Intrepica/literacyplanet/swc/thirdparty/URLVars.swc -source-path ~/Intrepica/literacyplanet/src/thirdparty/as/ -include-classes info.davidwipperfurth.URLVars'


#########################################################################################################
# Git Flow stuff
#########################################################################################################
# Set git auto'tion and PS1 integration
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
  . /usr/local/git/contrib/completion/git-completion.bash
fi
GIT_PS1_SHOWDIRTYSTATE=true
 
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi
source ~/.git-flow-completion.sh


if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi



#########################################################################################################
# The PS1 is where we add colours to terminal and tell it to add the branch name etc
# More details can be found here:
# http://stackoverflow.com/questions/4133904/ps1-line-with-git-current-branch-and-colors
# #########################################################################################################
function color_my_prompt {
    local __user_and_host="\[\033[01;32m\]\u@\h"
    local __cur_location="\[\033[01;34m\]\w"
    local __git_branch_color="\[\033[31m\]"
    #local __git_branch="\`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    local __prompt_tail="\[\033[35m\]$"
    local __last_color="\[\033[00m\]"
    # export PS1="$__user_and_host $__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color " 
	# UPDATE 20 Jan 2017 - Today I removed the user and host from the start of the log to save horizontal real estate
	export PS1="$__cur_location $__git_branch_color $__git_branch $__prompt_tail $__last_color "
}
color_my_prompt


#########################################################################################################
# Needed for Android/Cordova builds
# Whenever you update the Android SDK you will need to update the version number at the end of:
# ":/Users/brentmcivor/Library/Android/sdk/build-tools/24.0.3" 
# We do this so .../build-tools/{version}/zipalign can be found
#########################################################################################################
PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:${PATH}"
PATH="${PATH}:/Users/brentmcivor/Library/Android/sdk/platform-tools:/Users/brentmcivor/Library/Android/sdk/tools:/Users/brentmcivor/Library/Android/sdk/build-tools/24.0.3"
export ANDROID_HOME=/Users/brentmcivor/Library/Android/sdk/

#########################################################################################################
# Needed for nodenv to ensure we all have the same version of node installed
#########################################################################################################
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

# Needed for monorepo - instructions in intial_setup
. /Users/brentmcivor/Intrepica/perforce/lp/monorepo/lp/tools/configs/lpconfig
export PATH="$HOME/.yarn/bin:$PATH"

# Needed for client/sx/avatar builder run lp:start
export PATH="./node_modules/.bin:${PATH}"
