#!/usr/bin/env bash

usage() {
  echo "Missing path to stream-chat-css directory"
  echo "Usage: $(basename $0) <path_to_stream-chat-css_directory>"
}

main() {
  if [ $# -eq 0 ]; then
      usage
      exit 0
  fi

  STREAM_CHAT_CSS_DOCS_PATH=$1;
  cp -r "$STREAM_CHAT_CSS_DOCS_PATH"/* ./docusaurus/docs/Angular;
}


main $*
exit 0
