## CosineDistance ##

**Scala:**
```scala
val module = CosineDistance()
```
**Python:**
```python
module = CosineDistance()
```

CosineDistance creates a module that takes a table of two vectors (or matrices if in batch mode) as input and outputs the cosine distance between them.

**Scala example:**
```scala
val module = CosineDistance()
val input1 = Tensor(3).randn()
val input2 = Tensor(3).randn()
val input = T(input1, input2)

> input
{
	2: -1.178431998847704
	   -0.835195590415135
	   1.4361724069581836
	   [com.intel.analytics.bigdl.tensor.DenseTensor$mcD$sp of size 3]
	1: 0.1229851310257113
	   2.081862365910659
	   0.33761222385799744
	   [com.intel.analytics.bigdl.tensor.DenseTensor$mcD$sp of size 3]
 }

> module.forward(input)
-0.325067095423888
[com.intel.analytics.bigdl.tensor.DenseTensor of size 1]
```

**Python example:**
```python
Python Code
```
