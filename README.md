# XSLT Idempotence

In case you want to start XSLT from scratch, in most cases it's a good idea to recreate the origin xml file(s) at first.

Here you can find the XSLT file that does nothing but copying all nodes found. That's why it is called [idempotence](https://en.wikipedia.org/wiki/Idempotence).

Note: In opposite to the built-in rules of XSLT v1.0, this idempotence also copys comments and processing instructions.
Nevertheless, the output might differ because of formatting/indentions.

## Usage

### Shell (via [xsltproc](https://linux.die.net/man/1/xsltproc))

```bash
xsltproc idempotence.xslt example.xml
```
