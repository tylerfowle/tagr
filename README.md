# tagr

A cli middleman for tag and fzf.

### Install
`./install`

###### Optional:
add alias for faster usage:

`alias t='. tagr'`

### Dependancies
Since this is a middleman between `tag` and `fzf`, they are required.  `tagr` wont do much without them.

[jdberry/tag](https://github.com/jdberry/tag)

[junegunn/fzf](https://github.com/junegunn/fzf)

### Usage

#### Indexing
`tagr index` - will make `tagr` index the current directory

#### Searching
`. tagr` - will use `fzf` to search through the `tagr` index
