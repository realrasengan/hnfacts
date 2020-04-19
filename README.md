# Facts
## Automatically number your references on a Hacker News comment.

I noticed that there were many comments on Hacker News that were not backed by fact.
This *very basic* script helps to leave comments.

### How to use
```
node hnfacts.js <file>
```
OR
```
./hnfacts.sh <file>
```

### Example

See example.txt (included)

```
node hnfacts.js example.txt
```

Turns
```
This [] is a test [] of the hnfacts.js script [].

[] https://dns.live/
[] https://news.ycombinator.com/
[] https://slashdot.org/

```

To
```
This [1] is a test [2] of the hnfacts.js script [3].

[1] https://dns.live/
[2] https://news.ycombinator.com/
[3] https://slashdot.org/

```

### Future

This script would be great as an extension.

### Copyright

Copyright (c) 2020 The Community
MIT Licensed.
