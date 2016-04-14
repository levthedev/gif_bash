# gifs in iTerm

## usage
copy and paste the function in `gif.sh` into your `.bash_profile` (located at `~/.bash_profile`)

next, install `imgcat-cli` by running `npm install -g imgcat-cli`

now either restart your terminal, or run `source ~/.bash_profile`

that's it! run `gif [search_term]` to watch gifs in iTerm.

## dependencies
you need **NPM**, **imgcat-cli**, and a newish version of **iTerm** (>=2.9)

I built this as a more lightweight alternative to <a href="https://github.com/levthedev/gif_term">this Gem</a> I wrote that does the same thing but with more features (it works on less modern iTerm versions, it has more options, it can be installed via RubyGems, etc)
