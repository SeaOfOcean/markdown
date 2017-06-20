## Transpose ##

**Scala:**
```scala
val module = Transpose(permutations)
```
**Python:**
```python
module = Transpose(permutations)
```

Concat is a layer who transpose input along specified dimensions.
permutations are dimension pairs that need to swap.

**Scala example:**
```scala
val input = Tensor(2, 3).rand()
val layer = Transpose(Array((1, 2)))
var output = layer.forward(input)

> print(input)
0.6653826	0.25350887	0.33434764	
0.9618287	0.5484164	0.64844745	
[com.intel.analytics.bigdl.tensor.DenseTensor$mcF$sp of size 2x3]

> print(layer.forward(input))
0.6653826	0.9618287	
0.25350887	0.5484164	
0.33434764	0.64844745	
[com.intel.analytics.bigdl.tensor.DenseTensor of size 3x2]

```

**Python example:**
```python
mlp = Concat(2)
mlp.add(Linear(3,2))
mlp.add(Linear(3,4))
> mlp.forward(np.array([[0.6653826, 0.25350887, 0.33434764], [0.9618287, 0.5484164, 0.64844745]]))
out: [array([
[-0.71994132,  2.17439198, -1.46522939,  0.64588934,  2.61534023, -2.39528942],
[-0.89125222,  5.49583197, -2.8865242 ,  1.44914722,  5.26639175, -6.26586771]]
      dtype=float32)]

```
