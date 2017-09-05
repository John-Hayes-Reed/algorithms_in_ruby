# algorithms_in_ruby

An exercise in implementing various well known algorithms using meta programming and the quirks of Ruby where possible, without angering rubocop.
 
## Basic info:

- Being developed using Ruby-2.4.1 (although should still be compatible with 2.x lower versions).
- Using rubocop v0.49.1
- Following a Gourmet Service Object style(ish) pattern.

## Algorithm Benchmarks

### Sorting:
- _note: run on an old 2011 macbook air, 1.6 GHz Intel Core i5, 4 GB 1333 MHz DDR3_  
- _note: run using the Sorting::CompareSpeed.call method, using an unsorted list containing 1000 numbers_  

#### Default 10 iterations

| algorithm | user | system | total | real |
| :--- | ---: | ---: | ---: | ---: |
| Sorting::Bubble | 2.700000 | 0.030000 | 2.730000 | (  2.751345) |
| Sorting::Insertion | 0.310000 | 0.010000 | 0.320000 | (  0.323272) |
| Sorting::Merge | 0.330000 | 0.000000| 0.330000 | (  0.334680) |
| Sorting::Quick | 0.030000 | 0.000000 | 0.030000 | (  0.027656) |
| Sorting::Selection | 1.080000 | 0.010000 | 1.090000 | (  1.091762) |

#### 100 iterations

| algorithm | user | system | total | real |
| :--- | ---: | ---: | ---: | ---: |
| Sorting::Bubble | 26.420000 | 0.120000 | 26.540000 | (26.947886) |
| Sorting::Insertion| 3.160000 | 0.010000 | 3.170000 | (3.182545) |
| Sorting::Merge | 3.360000 | 0.020000 | 3.380000 | (3.407699) |
| Sorting::Quick | 0.310000 | 0.000000 | 0.310000 | (0.311379) |
| Sorting::Selection | 10.520000 | 0.040000 | 10.560000 | (10.709383) |