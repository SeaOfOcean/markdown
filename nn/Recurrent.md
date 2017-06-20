## Recurrent ##

**Scala:**
```scala
val module = Recurrent()
```
**Python:**
```python
module = Recurrent()
```

Recurrent module is a container of rnn cells. Different types of rnn cells can be added using add() function.

**Scala example:**
```scala
val hiddenSize = 4
val inputSize = 5
val module = Recurrent().add(RnnCell(inputSize, hiddenSize, Tanh()))
val input = Tensor(Array(1, 5, inputSize))
for (i <- 1 to 5) {
  val rdmInput = Math.ceil(RNG.uniform(0.0, 1.0)*inputSize).toInt
  input.setValue(1, i, rdmInput, 1.0)
}

> println(input)
(1,.,.) =
0.0	0.0	0.0	0.0	1.0
1.0	0.0	0.0	0.0	0.0
0.0	0.0	0.0	0.0	1.0
0.0	0.0	0.0	1.0	0.0
1.0	0.0	0.0	0.0	0.0

[com.intel.analytics.bigdl.tensor.DenseTensor$mcD$sp of size 1x5x5]

> module.forward(input)
(1,.,.) =
0.10226295303128596	-0.43567883708825395	-0.033399659962837426	0.32833409681802717
-0.01870846466991851	0.057665379700306454	0.47425303013686954	0.0767218304897101
0.18271574194672333	-0.2966927770463621	0.09941498264638175	0.5322285899549288
0.06866567023106811	-0.1500855579951187	0.12970184870169252	0.7074263452022179
0.13436141442319888	0.01611326977077796	0.3959061031798656	0.2517894887859813

[com.intel.analytics.bigdl.tensor.DenseTensor of size 1x5x4]
```

**Python example:**
```python
Python Code
```
