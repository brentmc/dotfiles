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
export PATH_TO_MONO_REPO=$PATH_TO_INTREPICA'contiki/lp-git/'
export PATH_TO_COBRA2=$PATH_TO_MONO_REPO'client/cobra2/'
export PATH_TO_SX=$PATH_TO_MONO_REPO'client/sx/entry/'
export PATH_TO_NEXT_ENTRY=$PATH_TO_MONO_REPO'client/next_entry'
export PATH_TO_MORPH=$PATH_TO_MONO_REPO'services/mocks/morph/'

alias cdc='cd '$PATH_TO_COBRA2
alias startc='title cobra && cd '$PATH_TO_COBRA2' && COBRA_LOG_LEVEL=debug npm start'
alias tc='title cobra tests && cd '$PATH_TO_COBRA2' && npm run test'
alias twc='title cobra tests && cd '$PATH_TO_COBRA2' && npm run test_watch'

# Tests through /client or archetypes/mocha_webpack
alias tci='builder run lp:test_ci'
alias tw='builder run lp:test_watch'
alias tl='builder run lp:lint'

##################################################################
# Contiki
alias cdm='cd '$PATH_TO_MONO_REPO
alias cdsx='cd '$PATH_TO_SX
alias cdne='cd '$PATH_TO_NEXT_ENTRY
alias cdmorph='cd '$PATH_TO_MORPH

# start min services needed for student experience, missions and avatar
# alias sup='cdm && lpdc -c services/sx -c services/students -c services/avatar -c services/authz -c services/authn -c services/reverse_proxy -c services/assets -c services/missions -c services/student_missions up'

# start the bare services needed for client/avatar dev
# alias sup='title services && cdm && lpdc  -c services/sx -c services/students -c services/avatar -c services/authz -c services/authn -c services/reverse_proxy -c services/assets up'

# alias sup='title services && cdm && lpdc  -c services/sx -c services/students -c services/avatar -c services/authz -c services/authn -c services/reverse_proxy -c services/assets -c services/student_missions -c services/missions up'
# alias sup='title services && cdm && lpdc -c services/missions -c services/mesh -c services/sx -c services/reverse_proxy -c services/students -c services/student_missions -c services/authn -c services/authz -c services/avatar -c services/assignments -c services/assets -c client/backend/entry -c services/collections -c services/superman up'

services=(dnsmasq sx reverse_proxy student_missions authn authz avatar assets superman collections word_temple unleash)
function sup {	
	# infrastructure/.../assignments automatically generates a new mission when one is completed
	servicesCommand='lpdc -c infrastructure/utils/contiki_temporary_tasks/assignments '
	
	for serviceName in "${services[@]}"
	do
		servicesCommand=$servicesCommand' -c services/'$serviceName
	done
	completeCommand='title services && cdm && '$servicesCommand' up'
	echo 'About to run: '$completeCommand
	eval ${completeCommand}
}

function sdown {	
	servicesCommand='lpdc -c infrastructure/utils/contiki_temporary_tasks/assignments '
	for serviceName in "${services[@]}"
	do
		servicesCommand=$servicesCommand' -c services/'$serviceName
	done
	completeCommand='cdm && '$servicesCommand' down'
	echo 'About to run: '$completeCommand
	eval ${completeCommand}
}

# rebuild all the packages that are required for an up.
function sbuild {	
	servicesCommand='lpdc'
	for serviceName in "${services[@]}"
	do
		servicesCommand=$servicesCommand' -c services/'$serviceName
	done
	completeCommand='title services && cdm && '$servicesCommand' build'
	echo 'About to run: '$completeCommand
	eval ${completeCommand}
}

# safely docker down all services
# alias sdown='cdm && lpdc -c services/missions -c services/mesh -c services/sx -c services/students -c services/student_missions -c services/avatar -c services/authz -c services/authn -c services/reverse_proxy -c services/assets -c client/sx/entry down'

cobraModules=(
    arcade/common
    arcade/sheep_bounce
	arcade/block_stack
	arcade/word_morph
	avatar_container
	characters
	chest_open
	chests
	cobra
	core
	core_extended
	games/code_phrase 
	games/common
	games/feed_word_monster
	games/flash_card
	games/flash_card_upper
	games/floating_words
	games/jigsaw
	games/memory_game
	games/monster_chef
	games/sentence_jumble
	games/sound_train
	games/spell_this_word
	games/spelling_diag
	games/static_words
	games/stubmunk_multiple_choice
	games/stubmunk_sentence
	games/whack_a_munk
	games/word_builder
	games/word_sort
	journey/activity_select
	journey/mission_select
	landscapes
	physics
	popups
	preloader
	results
	student
	tiles
	ui
	word_temple/common
	word_temple/modes/free_play
	word_temple/themes/forest
)

# Test coverage all Cobra modules at once
function tcac {
	completeCommand=''
	for moduleName in "${cobraModules[@]}"
	do
		completeCommand=$completeCommand' ttab -d '$PATH_TO_COBRA2'src/'$moduleName' -t '$moduleName' builder run lp:test_ci;'
	done

	echo 'About to run: '$completeCommand
	eval ${completeCommand}
}

# Lint all Cobra modules at once
function tlac {
	completeCommand=''
	for moduleName in "${cobraModules[@]}"
	do
		completeCommand=$completeCommand' ttab -d '$PATH_TO_COBRA2'src/'$moduleName' -t '$moduleName' builder run lp:lint;'
	done

	echo 'About to run: '$completeCommand
	eval ${completeCommand}
}

# start contiki avatar/shop dev mounted independently
alias cdav='cd '$PATH_TO_MONO_REPO'client/sx/avatar'
alias startav='title client/avatar && cdav && builder run lp:start' # make sure you you have also started the min services for avatar - sx, students, avatar, authz, authn, reverse_proxy, assets

# start contiki activity dev mounted independently
alias cdac='cd '$PATH_TO_MONO_REPO'client/sx/activity'
alias startac='title client/activity && cdac && builder run lp:start' # make sure you you have also started the min services for activity


# start contiki client
alias linkAvatar='yarn link "@literacyplanet/client_avatar"'
alias linkCobraLauncher='yarn link "@literacyplanet/cobra_launcher"'
alias linkCore='yarn link "@literacyplanet/client_core"'

alias linkActivities='yarn link "@literacyplanet/client_sx_activity"'
alias linkShop='yarn link "@literacyplanet/client_sx_avatar"'
alias linkCollections='yarn link "@literacyplanet/client_sx_collections"'
alias linkSXHome='yarn link "@literacyplanet/client_sx_home"'
alias linkSXMissions='yarn link "@literacyplanet/client_sx_missions"'

alias linkContiki='linkAvatar && linkCobraLauncher && linkActivities && linkShop && linkCore && linkCollections && linkSXHome && linkSXMissions'
# alias startsx='title client/sx && linkCobraLauncher && linkActivities && linkShop && linkCore && cdm && lpdc -c client/sx/entry/ up'
# alias startsx='title client/sx && cdsx && COBRA_LOG_LEVEL=debug builder run lp:start' # Use startne now
alias startsx='echo Hey Brent, startsx is deprecated. Use startne [next_entry] now.'
alias startne='title client/next_entry && cdne && COBRA_LOG_LEVEL=debug builder run lp:start'
alias upsx='title up client/sx && cdm && lpdc -c client/sx/entry up'
alias downsx='title down client/sx && cdm && lpdc -c client/sx/entry down'
alias bashsx='title bash client/sx && cdm && lpdc -c client/sx/entry exec client_sx_entry bash'

alias startMorph='title morph && cdmorph && builder run lp:start'

alias cdft='cd '$PATH_TO_MONO_REPO'tools/force_touch'
alias startft='title forceTouch && cdft && node src/app.js'
alias startassets='title services/assets && cdm && lpdc -c services/assets up'

# docker ps (shows all remaining docker containers)
# docker kill fooContainerID

# clear all node modules in children directories
alias cnm='find . -name "node_modules" -type d -exec rm -r "{}" \;'
alias resetcobra='cdc && cnm && npm install && startc'

#########################################################################################################
# shows a list of all the processes for the given port
function showPorts {
    if [ "$1" ]
    then
       lsof -i:$1
    else
        echo "Please re-run this function with a port number. e.g. '\$showPorts 3005'"
    fi
}

# kills the process for the given PID
function killPID {
	if [ "$1" ]
    then
       kill -9 $1
    else
        echo "Please re-run this function with a PID. e.g. '\$killPID 1383'"
    fi
}

## Kills all running docker instances (from Terry)
## You can change the `kill` to `rm` if you want to remove the container(s) instead of just stopping them.
## Or change it to `stop` if you want to try to ask them to stop themselves rather than sending a kill signal.
## And you could add `a` to the docker flags like  `docker ps -qa` to also include stopped containers.
function dockerK {
	docker kill $(docker ps -q | awk '{print $1}')
}

# searches for an active port then automatically kills it
# https://github.com/kevinSuttle/dotfiles/commit/9458141f40094d96952adc7c423cbdddeb909a81
# commented out for now - seems to kill ALL services for ALL ports
# function killPort {
# 	if [ "$1" ]
# 	then
# 		lsof -i TCP:$1 | grep LISTEN | awk '{print $2}' | xargs kill -9
# 	else
# 		echo "Please re-run with a port number. e.g. '\$killPort 3005'"
# 	fi
# }


#########################################################################################################
# refresh bash/terminal with updated .bash_profile changes - no need to open new tab
alias matebash='mate ~/.bash_profile'
alias sourcebash='source ~/.bash_profile'
# alias test='echo foo'
# recursively deletes all DS_Store files in your current directory and children
alias deleteDS='find . -name '*.DS_Store' -type f -delete -print'

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

# Needed for git p4
export PATH="/Users/brentmcivor/bin:${PATH}"
export P4PORT=ssl:scm.literacyplanet.com:1666
export P4CLIENT=brent_lp_next_work
export P4USER=brent


# Needed for monorepo - instructions in intial_setup
. /Users/brentmcivor/Intrepica/contiki/lp-git/tools/configs/lpconfig_git_p4
export PATH="$HOME/.yarn/bin:$PATH"

# Needed for client/sx/avatar builder run lp:start
export PATH="./node_modules/.bin:${PATH}"

# Needed to allow TextMate in MacOS Catalina+
export EDITOR="/usr/local/bin/mate -w"

#########################################################################################################
# setup terminal tab title to the given param
# if no param is sent through it will default to the directory's location
# usage: $title foo bar (sets tab title to "foo bar")
# More Info: https://superuser.com/questions/419775/with-bash-iterm2-how-to-name-tabs
function title {
    if [ "$1" ]
    then
        unset PROMPT_COMMAND
        echo -ne "\033]0;${*}\007"
    else
        export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
    fi
}
