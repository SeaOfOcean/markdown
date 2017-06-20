## MultiLabelSoftMarginCriterion ##

**Scala:**
```scala
Scala code, how to new an instance
```
**Python:**
```python
Python cod, how to new an instance
```

MultiLabelSoftMarginCriterion is a multiLabel multiclass criterion based on sigmoid:
l(x,y) = - sum_i y[i] * log(p[i]) + (1 - y[i]) * log (1 - p[i])
 where p[i] = exp(x[i]) / (1 + exp(x[i]))

 * and with weights:
 * l(x,y) = - sum_i weights[i] (y[i] * log(p[i]) + (1 - y[i]) * log (1 - p[i]))

**Scala example:**
```scala
Scala code
```

**Python example:**
```python
Python Code
```
