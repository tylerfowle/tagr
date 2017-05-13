# tagr

A cli middleman for tag and fzf.

### Install
`./install`

### Dependancies
Since this is a middleman between `tag` and `fzf`, they are required.  `tagr` wont do much without them.

[jdberry/tag](https://github.com/jdberry/tag)

[junegunn/fzf](https://github.com/junegunn/fzf)

### Usage

#### Indexing
`tagr index` - will make `tagr` index the current directory

#### Searching
`. tagr` - will use `fzf` to search through `tagr`s index for directories



#### notes
tag search:
tag -tgRn | fzf

tag replace:
tag -r $1 .
nohup tagr index &>/dev/null &

tag list:
tag -l .

tag find:
tag -f $1 .

tag add:
tag -a $1 .
nohup tagr index &>/dev/null &
