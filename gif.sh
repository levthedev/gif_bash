function gif() {
  URL="https://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag="$@
  PARSE="import json,sys;x=json.load(sys.stdin);print x['data']['image_original_url']"
  curl -s "$URL" | python -c "$PARSE" | xargs curl -s -o .x.gif
  imgcat -w `tput cols` -h `tput lines` .x.gif
  rm .x.gif
}
