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
val module = PReLU(2)
val input = Tensor(2, 2, 3).randn()

> println(input)
(1,.,.) =
-0.23766282164468486	0.08258852394948468	-0.804304177394607
0.3995815815850318	0.9888332241871451	0.4517745538140694

(2,.,.) =
-0.9939365711806359	1.0791891423077893	-1.3737202982964998
0.32055129748031275	-0.49188155050769183	-2.192822226186369

[com.intel.analytics.bigdl.tensor.DenseTensor$mcD$sp of size 2x2x3]

> module.forward(input)
(1,.,.) =
-0.059415705411171214	0.08258852394948468	-0.20107604434865176
0.3995815815850318	0.9888332241871451	0.4517745538140694

(2,.,.) =
-0.24848414279515899	1.0791891423077893	-0.34343007457412494
0.32055129748031275	-0.12297038762692296	-0.5482055565465922

[com.intel.analytics.bigdl.tensor.DenseTensor of size 2x2x3]
```

**Python example:**
```python
Python Code
```
