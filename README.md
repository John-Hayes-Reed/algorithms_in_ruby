# algorithms_in_ruby

An exercise in implementing various well known algorithms using meta programming and the quirks of Ruby where possible, without angering rubocop.
 
## Basic info:

- Being developed using Ruby-2.4.1 (although should still be compatible with 2.x lower versions).
- Using rubocop v0.49.1
- Following a Gourmet Service Object style(ish) pattern.

## Algorithm Benchmarks
- _note: run on a 2012 Macbook Pro, 2.5 GHz Intel Core i5, 8 GB 1600 MHz DDR3 

### Sorting:
- _note: run using the Sorting::CompareSpeed.call method, using an unsorted list containing 1000 numbers_  

#### Default 10 iterations

| algorithm | user | system | total | real |
| :--- | ---: | ---: | ---: | ---: |
| Sorting::Bubble | 1.820000 | 0.010000 | 1.830000 | (1.841581) |
| Sorting::Insertion | 0.210000 | 0.000000 | 0.210000 | (0.215663) |
| Sorting::Merge | 0.160000 | 0.010000| 0.170000 | (0.160305) |
| Sorting::Quick | 0.020000 | 0.000000 | 0.020000 | (0.022410) |
| Sorting::Selection | 0.700000 | 0.000000 | 0.700000 | (1.325389) |

#### 100 iterations

| algorithm | user | system | total | real |
| :--- | ---: | ---: | ---: | ---: |
| Sorting::Bubble | 18.460000 | 0.050000 | 18.510000 | (18.556357) |
| Sorting::Insertion| 2.210000 | 0.010000 | 2.220000 | (2.229218) |
| Sorting::Merge | 1.590000 | 0.010000 | 1.600000 | (1.595574) |
| Sorting::Quick | 0.240000 | 0.000000 | 0.240000 | (0.245709) |
| Sorting::Selection | 7.370000 | 0.020000 | 7.390000 | (7.416776) |