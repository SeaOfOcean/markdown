## PReLU ##

**Scala:**
```scala
val module = PReLU(nOutputPlane)
```
**Python:**
```python
module = PReLU(nOutputPlane)
```

Applies parametric ReLU, which parameter varies the slope of the negative part.

```
PReLU: f(x) = max(0, x) + a * min(0, x)
```
nOutputPlane's default value is 0, that means using PReLU in shared version and has
only one parameters. nOutputPlane is the input map number(Default is 0).

Notice: Please don't use weight decay on this.

**Scala example:**
```scala
Scala code
```

**Python example:**
```python
Python Code
```
