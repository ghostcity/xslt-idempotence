# XSLT Idempotence

In case you want to start XSLT from scratch, in most cases it's a good idea to
recreate the origin xml file(s) at first. XSLT v1.0 actually does povide some
very [basic built-in template rules](https://www.w3.org/TR/1999/REC-xslt-19991116#built-in-rule),
however these do not copy all of the input nodes.

Here you can find an XSLT file that does nothing but copying all nodes found.
That's why it is called [idempotence](https://en.wikipedia.org/wiki/Idempotence).
Nevertheless, the output might differ because of formatting/indentions.

## Usage

### Linux Shell (via [xsltproc](https://linux.die.net/man/1/xsltproc))

```bash
xsltproc idempotence.xslt example.xml
```
