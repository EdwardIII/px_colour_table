# Generate maps for Pixaboom

## Install (Mac OSX)

Requires homebrew to be installed

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

```sh
brew install pkg-config imagemagick
bundle install
```

## Usage

1. Pop your image in with the filename source.png

2. Run `ruby pxmaker.rb > map.rb`

3. Pop map.rb in your project next to all your other classes

4. See example.rb for how to consume it
