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
export PATH_TO_CORE=$PATH_TO_COBRA2'src/core/'
export PATH_TO_DEV_LAUNCHER=$PATH_TO_COBRA2'src/dev_launcher'

#alias startc='title cobra && cd '$PATH_TO_COBRA2' && COBRA_LOG_LEVEL=debug npm run start' #Use for Cobra before Node 16
#alias startc='title cobra && cd '$PATH_TO_DEV_LAUNCHER' && COBRA_LOG_LEVEL=debug SERVER_PORT=3037 builder run lp:start' #Use for Node 16+
alias startc='title cobra && cd '$PATH_TO_DEV_LAUNCHER' && COBRA_LOG_LEVEL=debug SERVER_PORT=3037 yarn run lp:start' #Use for Node 20+
alias buildIOS='title build iOS && cd '$PATH_TO_NEXT_ENTRY' && sh ./buildIOSProd.sh'
alias buildAndroid='title build Android && cd '$PATH_TO_NEXT_ENTRY' && sh ./buildAndroidProd.sh'

# Tests through /client or archetypes/mocha_webpack
alias tci='yarn run lp:test' # previously this was lp:test_ci but tests were no longer running after the Node 20 upgrade and code coverage reports were broken anyway
alias tw='yarn run lp:test_watch'
alias tl='yarn run lp:lint'

alias generateModule='cdc && sh ./tools/generate_new_cobra_module.sh'
alias generateGame='cdc && sh ./tools/generate_new_cobra_game.sh'
alias generateArcadeGame='cdc && sh ./tools/generate_new_cobra_arcade_game.sh'
alias generateJMSLocation='cdc && sh ./tools/generate_new_cobra_jms_location.sh'
alias generateLDTheme='cdc && sh ./tools/generate_new_cobra_ld_theme.sh'

alias cdc='cd '$PATH_TO_COBRA2 
alias cdm='cd '$PATH_TO_MONO_REPO
alias cdsx='cd '$PATH_TO_SX
alias cdne='cd '$PATH_TO_NEXT_ENTRY
alias cdmorph='cd '$PATH_TO_MORPH
alias cdcore='cd '$PATH_TO_CORE
alias cddl='cd '$PATH_TO_DEV_LAUNCHER

alias cdui='cd '$PATH_TO_COBRA2'src/ui/'
alias cdwm='cd '$PATH_TO_COBRA2'src/word_mania/'
alias cdjwt='cd '$PATH_TO_COBRA2'src/journey/welcome_tutorial'
alias cdjms='cd '$PATH_TO_COBRA2'src/journey/mission_select'
alias cdjas='cd '$PATH_TO_COBRA2'src/journey/activity_select'
alias cdav='cd '$PATH_TO_COBRA2'src/characters/src/avatar'

alias cdhm='cd '$PATH_TO_COBRA2'src/arcade/hangman'
alias cdshop='cd '$PATH_TO_COBRA2'src/shop'
alias cdmail='cd '$PATH_TO_COBRA2'src/mail'

alias cdld='cd '$PATH_TO_COBRA2'src/games/letter_drop'
alias cdsc='cd '$PATH_TO_COBRA2'src/games/sound_card'
alias cdlh='cd '$PATH_TO_COBRA2'src/games/letter_hunt'
alias cdsh='cd '$PATH_TO_COBRA2'src/games/sound_hunt'
alias cdwh='cd '$PATH_TO_COBRA2'src/games/word_hunt'
alias cdph='cd '$PATH_TO_COBRA2'src/games/picture_hunt'

alias supPD='title services/prod-sx && cdm && lpdc2 up sx_prod'
alias supAssets='title services/assets && cdm && lpdc2 up reverse_proxy assets' # Now need reverse_proxy so local independent  works when process.env.ASSETS_URL === https://assets.lp.test/assets
alias startPD='title client/prod-dev && cdne && yarn run lp:start_prod_dev'

# start min services needed for student experience, missions and avatar
# alias sup='cdm && lpdc -c services/sx -c services/students -c services/avatar -c services/authz -c services/authn -c services/reverse_proxy -c services/assets -c services/missions -c services/student_missions up'

# start the bare services needed for client/avatar dev
# alias sup='title services && cdm && lpdc  -c services/sx -c services/students -c services/avatar -c services/authz -c services/authn -c services/reverse_proxy -c services/assets up'

# alias sup='title services && cdm && lpdc  -c services/sx -c services/students -c services/avatar -c services/authz -c services/authn -c services/reverse_proxy -c services/assets -c services/student_missions -c services/missions up'
# alias sup='title services && cdm && lpdc -c services/missions -c services/mesh -c services/sx -c services/reverse_proxy -c services/students -c services/student_missions -c services/authn -c services/authz -c services/avatar -c services/assignments -c services/assets -c client/backend/entry -c services/collections -c services/superman up'

services=(dnsmasq sx reverse_proxy student_missions avatar assets superman collections word_temple unleash)
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

# Start local services in tilt
function tupl {
	command='tilt up sx services consumers frontend lp_webapp'
	completeCommand='title local tilt && cdm && '$command''
	echo 'About to run: '$command
	echo 'Launch from http://spa.lp.test:3005/sx/home'
	eval ${completeCommand}
}

coreModules=(
	cobra
	core
	core_extended
	preloader
	popups
	student
	ui	
)

currentModules=(
	games/sound_card
	games/letter_hunt
	games/sount_hunt
	games/word_hunt
	games/picture_hunt
)

arcadeModules=(
	physics
	arcade/common
	arcade/sheep_bounce
	arcade/block_stack
	arcade/word_morph
	arcade/penpen
	arcade/turtle_knock
	arcade/hangman
)
		
studentExperienceModules=(
	avatar_container
	characters
	chests
	chest_open
	collections
	results_paper
	# tiles
	word_mania
	gems
	tokens
	scrollers
	shop
	mail
)	

gameModules01=(
	games/code_phrase 
	games/common
	games/feed_word_monster
	games/flash_card
	games/flash_card_upper
	games/floating_words
	games/floating_words_alphabetical
	games/jigsaw
	games/memory_game
	games/monster_chef
	games/sentence_jumble
	games/sound_train
	games/spell_this_word
)	

gameModules02=(
	# games/spelling_diag
	games/snap
	games/static_words
	games/stubmunk_multiple_choice
	games/stubmunk_sentence
	games/whack_a_munk
	games/word_builder
	games/word_builder_card
	games/word_builder_waterfall
	games/word_finder
	games/word_sort
	landscapes
)	

# New Phonics games for 2023/2024
gameModules03=(
	games/letter_drop	
	games/sound_card
	games/letter_hunt
	games/sount_hunt
	games/word_hunt
	games/picture_hunt
)

journeyModules=(
	journey/activity_select
	journey/mission_select
	journey/welcome_tutorial
)
	
# wordTempleModules=(
# 	word_temple/common
# 	word_temple/modes/free_play
# 	word_temple/themes/forest
# )	

miniGameModules=(
	mini_games/common
	mini_games/breakout_penguin
	mini_games/treasure_crab
	mini_games/whack_a_pirate
)

# Save time and only test the core stuff and your most recent modules
currentModules=("${coreModules[@]}" "${currentModules[@]}")

# Be thorough and test every module
allCobraModules=("${coreModules[@]}" "${arcadeModules[@]}" "${studentExperienceModules[@]}" "${gameModules01[@]}" "${gameModules02[@]}" "${gameModules03[@]}" "${journeyModules[@]}" "${miniGameModules[@]}")

function testcore {
	testCoverage "${coreModules[@]}"
}

function testarcade {
	testCoverage "${arcadeModules[@]}"
}

function teststudentexperience {
	testCoverage "${studentExperienceModules[@]}"
}

function testjourney {
	testCoverage "${journeyModules[@]}"
}

function testgames01 {
	testCoverage "${gameModules01[@]}"
}

function testgames02 {
	testCoverage "${gameModules02[@]}"
}

function testgames03 {
	testCoverage "${gameModules03[@]}"
}

# an alias/another way of writing testgames03
function testphonics {
	testCoverage "${gameModules03[@]}"
}

function testminigames {
	testCoverage "${miniGameModules[@]}"
}

# Test coverage just the core and current modules
function tcc {
	testCoverage "${currentModules[@]}"
}

# Test coverage ALL Cobra modules at once
function tcall {
	testCoverage "${allCobraModules[@]}"
}

# Lint just the core and current modules
function lc {
	lintCobra "${currentModules[@]}"
}

# Lint ALL Cobra modules at once
function lall {
	lintCobra "${allCobraModules[@]}"
}

# Updates test coverage for all given modules
function testCoverage() {
	modules=("$@")
	
	completeCommand=''
	for moduleName in "${modules[@]}"
	do
		#completeCommand=$completeCommand' ttab -d '$PATH_TO_COBRA2'src/'$moduleName' -t '$moduleName' builder run lp:test_ci;'
		completeCommand=$completeCommand' ttab -d '$PATH_TO_COBRA2'src/'$moduleName' -t '$moduleName' yarn run lp:test;'  # previously this was lp:test_ci but tests were no longer running after the Node 20 upgrade and code coverage reports were broken anyway
	done
    
	echo 'About to run: '$completeCommand
	eval ${completeCommand}
}

# Lints the given modules
function lintCobra () {
	modules=("$@")
	completeCommand=''
	for moduleName in "${modules[@]}"
	do
		#completeCommand=$completeCommand' ttab -d '$PATH_TO_COBRA2'src/'$moduleName' -t '$moduleName' builder run lp:lint;'
		completeCommand=$completeCommand' ttab -d '$PATH_TO_COBRA2'src/'$moduleName' -t '$moduleName' yarn run lp:lint;'
	done

	echo 'About to run: '$completeCommand
	eval ${completeCommand}
}

# start contiki avatar/shop dev mounted independently
#alias cdav='cd '$PATH_TO_MONO_REPO'client/sx/avatar'
#alias startav='title client/avatar && cdav && builder run lp:start' # make sure you you have also started the min services for avatar - sx, students, avatar, authz, authn, reverse_proxy, assets

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
alias startne='title client/next_entry && cdne && COBRA_LOG_LEVEL=debug yarn run lp:start'
alias upsx='title up client/sx && cdm && lpdc -c client/sx/entry up'
alias downsx='title down client/sx && cdm && lpdc -c client/sx/entry down'
alias bashsx='title bash client/sx && cdm && lpdc -c client/sx/entry exec client_sx_entry bash'

alias bsbtx='cdm && cd client/tx/app && bsb -clean-world && bsb -make-world'
alias bsbne='cdm && cd client/next_entry && bsb -clean-world -make-world'

#alias startMorph='title morph && cdmorph && builder run lp:start'

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
# LiteracyPlanet Student App tablet release tagging helper functions
# Use these to quickly tag releases without having to think about the consistent naming convention
function tagAndroid {
	echo "What is the version number? e.g. 1.23.0";
	read versionNum;	
	
	completeCommand='git tag lpsx-v'$versionNum'-android'
	echo 'About to run: '$completeCommand
	eval ${completeCommand}
}

function tagIOS {
	echo "What is the version number? e.g. 1.23.0";
	read versionNum;	
	
	completeCommand='git tag lpsx-v'$versionNum'-ios'
	echo 'About to run: '$completeCommand
	eval ${completeCommand}
}

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
# . /Users/brentmcivor/Intrepica/contiki/lp-git/tools/configs/lpconfig_git_p4 (Deprecated 27 Feb 2022)
. /Users/brentmcivor/Intrepica/contiki/lp-git/tools/configs/lpconfig # (Introduced 27 Feb 2022)
export PATH="/Users/brentmcivor/Intrepica/contiki/lp-git/tools/bin:${PATH}" # (Introduced 27 Feb 2022)
export PATH="$HOME/.yarn/bin:$PATH"

# Needed for client/sx/avatar builder run lp:start
export PATH="./node_modules/.bin:${PATH}"

# Needed to allow TextMate in MacOS Catalina+
export EDITOR="/usr/local/bin/mate -w"

# Needed for FontAwesome after we upgraded our security
export FONT_AWESOME_AUTH_TOKEN="A1A457CD-5D8D-46D0-B1F6-AFE99325FD27"
export NPM_FA_AUTH_TOKEN="A1A457CD-5D8D-46D0-B1F6-AFE99325FD27"

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
