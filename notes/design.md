# Bugmark GitHub (bmg)

## Overview

Key Features:

- README Badge that links to gh.bugmark.net/user/repo.svg

- Callback on Issue Open -> Issue Comment

- gh.bugmark.net/bugmark/bmx_cl_ruby
-- when badge present: trading UI
-- when no badge: tutorial for project maintainer (with petition and thumbs up emoticon)

## bmg

- elixir umbrella app
-- webpack4
-- bootstrap4
-- phoenix webui
-- restful api (maru)
-- graphql api (absinthe)
- hosted on gh.bugmark.net
- authentication
-- github auth
-- direct login
- tooling
-- postgres / ecto     # database
-- bmx_api_elixir      # bugmark bindings
-- edgurgel/tentacat   # github api bindings
-- ueberauth/ueberauth_github OR chrislaskey/oauth2_github

-- dedicated exchange server: ghx.bugmark.net

## bmg umbrella components

- web_ui
- authenticator
- bmx_interactor
- elixir_interactor
 
## bmx requirements

- restful UI (maru)
- graphql interface (absinthe)
- webhooks
- websockets
- oauth(?)
- NO email address - only the UUID and the callback 
- NO email sending - done by app
- record the application in the call
- change user -> agent

## Maintainer Use Cases

### Notes
- bmg knows you are a maintainer

### Welcome Page (first time)

### Setup Page

## Agent Use Cases

## TODO

- Rename bugmark/bugmark to bugmark/exchange
