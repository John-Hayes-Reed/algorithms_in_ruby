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
| Sorting::Bubble | 2.790000 | 0.010000 | 2.80000 | (2.816131) |
| Sorting::Insertion | 0.310000 | 0.000000 | 0.310000 | (0.313924) |
| Sorting::Merge | 0.220000 | 0.000000| 0.220000 | (0.221678) |
| Sorting::Quick | 0.040000 | 0.010000 | 0.050000 | (0.042796) |
| Sorting::Selection | 1.180000 | 0.010000 | 1.190000 | (1.325389) |

#### 100 iterations

| algorithm | user | system | total | real |
| :--- | ---: | ---: | ---: | ---: |
| Sorting::Bubble | 27.950000 | 0.290000 | 28.240000 | (28.905603) |
| Sorting::Insertion| 3.320000 | 0.050000 | 3.370000 | (3.483312) |
| Sorting::Merge | 2.630000 | 0.040000 | 2.670000 | (2.825823) |
| Sorting::Quick | 0.380000 | 0.010000 | 0.390000 | (0.409806) |
| Sorting::Selection | 11.930000 | 0.140000 | 12.070000 | (12.464465) |