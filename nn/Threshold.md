## Threshold ##

**Scala:**
```scala
val module = Threshold(threshold, value, ip)
```
**Python:**
```python
module = Threshold(threshold, value, ip)
```

Description
Thresholds each element of the input Tensor.
Threshold is defined as:
```
         y =  x        if x >= threshold
              value    if x <  threshold
```

- threshold: The value to threshold at
- value: The value to replace with
- ip: can optionally do the operation in-place

**Scala example:**
```scala
> val module = Threshold[Double](1, 0.8)
> val input = Tensor[Double](2, 2, 2).randn()
(1,.,.) =
-0.434537336599261	-0.6828445288964555
-0.35512836122326524	-0.8929415402541729

(2,.,.) =
-1.7305306749849203	1.2890098173738842
0.3670954060449931	-0.14960101290137673

[com.intel.analytics.bigdl.tensor.DenseTensor of size 2x2x2]

> module.forward(input)
(1,.,.) =
0.8	0.8
0.8	0.8

(2,.,.) =
0.8	1.2890098173738842
0.8	0.8

[com.intel.analytics.bigdl.tensor.DenseTensor of size 2x2x2]

```

**Python example:**
```python
Python Code
```
