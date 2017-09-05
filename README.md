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

Rehearsal ------------------------------------------------------  

| algorithm | user | system | total | real |
| :--- | ---: | ---: | ---: | ---: |
| Sorting::Bubble | 3.200000 | 0.030000 | 3.230000 | (3.397270) |  
| Sorting::Insertion | 0.330000 | 0.000000 | 0.330000 | (0.334340) |  
| Sorting::Merge | 0.330000 | 0.010000 | 0.340000 | (0.339856) |  
| Sorting::Quick | 0.030000 | 0.000000 | 0.030000 | (0.032423) |  
| Sorting::Selection | 1.040000 | 0.000000 | 1.040000 | (1.043512) |
  
--------------------------------------------- total: 4.970000sec  

| algorithm | user | system | total | real |
| :--- | ---: | ---: | ---: | ---: |
| Sorting::Bubble | 2.700000 | 0.030000 | 2.730000 | (  2.751345) |
| Sorting::Insertion | 0.310000 | 0.010000 | 0.320000 | (  0.323272) |
| Sorting::Merge | 0.330000 | 0.000000| 0.330000 | (  0.334680) |
| Sorting::Quick | 0.030000 | 0.000000 | 0.030000 | (  0.027656) |
| Sorting::Selection | 1.080000 | 0.010000 | 1.090000 | (  1.091762) |

#### 100 iterations

Rehearsal ------------------------------------------------------  

| algorithm | user | system | total | real |
| :--- | ---: | ---: | ---: | ---: |
| Sorting::Bubble | 27.210000 | 0.180000 | 27.390000 | (28.078686) |
| Sorting::Insertion | 3.200000 | 0.020000 | 3.220000 | (3.320342) |
| Sorting::Merge | 3.710000| 0.050000 | 3.760000 | (4.282239) |
| Sorting::Quick | 0.390000  | 0.010000 | 0.400000 | (0.422151) |
| Sorting::Selection | 11.280000 | 0.080000 | 11.360000 | (11.577202) |

-------------------------------------------- total: 46.130000sec

| algorithm | user | system | total | real |
| :--- | ---: | ---: | ---: | ---: |
| Sorting::Bubble | 26.420000 | 0.120000 | 26.540000 | (26.947886) |
| Sorting::Insertion| 3.160000 | 0.010000 | 3.170000 | (3.182545) |
| Sorting::Merge | 3.360000 | 0.020000 | 3.380000 | (3.407699) |
| Sorting::Quick | 0.310000 | 0.000000 | 0.310000 | (0.311379) |
| Sorting::Selection | 10.520000 | 0.040000 | 10.560000 | (10.709383) |