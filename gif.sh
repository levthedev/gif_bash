function curl_argv() {
  URL="https://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag="$@
  curl -s "$URL" | python -c "import json,sys;obj=json.load(sys.stdin);print obj['data']['image_original_url'];"
}

function parse_json() {
}

function display_gif() {
  xargs curl -s -o .download.gif
  imgcat -w `tput cols` -h `tput lines` .download.gif
  rm .download.gif
}

curl_argv $@ | display_gif
