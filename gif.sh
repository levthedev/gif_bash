function curl_argv() {
  URL="https://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag="
  URL+="$@"
  curl -s "$URL"
}

function parse_json() {
  python -c "import json,sys;obj=json.load(sys.stdin);print obj['data']['image_original_url'];"
}

function display_gif() {
  xargs curl -s -o .download.gif
  imgcat .download.gif
  rm .download.gif
}

curl_argv | parse_json | display_gif
