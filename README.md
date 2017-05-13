# tagr

A cli middleman for tag and fzf.




## Getting Started

### Requirements
Since this is a middleman between `tag` and `fzf`, they are required.  `tagr` wont do much without them.

[jdberry/tag](https://github.com/jdberry/tag)

[junegunn/fzf](https://github.com/junegunn/fzf)

### Install
```
./install
```

#### Optional:
add an alias for less keystrokes and faster usage:
```
alias t='. tagr'
```



## Usage

#### Searching
`. tagr` - will use `fzf` to search through the `tagr` index

#### Add and Remove tags
`tagr` can add and remove tags via `tag`. By using tagr's `add` and `remove` will also keep the index up-to-date by auto reindexing after adding or removing a tag.  You can still use vanilla `tag` to add and remove tags if you would like, but this will require a manual index afterward.

To add a tag to the current directory and reindex
```
tagr add 'tagname'
```

To remove a tag from the current directory and reindex
```
tagr remove 'tagname'
```

#### Manual indexing
`tagr index` - will make `tagr` index the `$indexing_dir`

#### Listing tags
To list all the tags within the `$indexing_dir`
```
tagr list
```
