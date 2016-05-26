
# Manage the SimplyRETS status page @ status.simplyrets.com
#
# This Makefile assumes there is a `.gitconfig.local` file in your
# $HOME directory
#
# $ cat ~/.gitconfig.local
# [github]
#         user = creichert
#         oauth-token = $api_token

GITHUB_API_TOKEN=$(shell git config -f ~/.gitconfig.local --get github.oauth-token)

all:
	statuspage update --token=$(GITHUB_API_TOKEN) --org=SimplyRETS --name=status.simplyrets.com
