#! /usr/bin/env bash

set -euo pipefail

get_url() {
  neomutt -D \
    | read_field 'folder' \
    | sed -E 's|@|%40|' # we need to replace the first @ with a url-encoded version
}

get_pass() {
  neomutt -D \
    | read_field 'imap_pass'
}

get_user() {
  neomutt -D \
    | read_field 'from'
}

read_field() {
  local field="$1"

  grep -E "^set $field =" \
    | sed -E "s|^set $field = \"(.+)\"|\1|"
}

url="$( get_url )"
user="$( get_user )"
pass="$( get_pass )"

curl -n -sf -X "STATUS INBOX (UNSEEN)" --user "$user:$pass" "$url" \
  | sed -E 's|^.+UNSEEN[[:space:]]+([[:digit:]]+).*$|\1|'

