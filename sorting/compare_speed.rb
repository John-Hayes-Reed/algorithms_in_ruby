require 'benchmark'
require './sorting/bubble'
require './sorting/insertion'
require './sorting/merge'
require './sorting/quick'
module Sorting
  # A Service class for comparing the speeds of different sorting algorithms
  #   available in the Sorting module.
  class CompareSpeed
    # Compares different sorting algorithms by benchmarking each algorithm using
    #   the same unsorted list.
    # @note the algorithms list elements must correspond to an available class
    #   in the Sorting module. Allowed elements are:
    #   - :bubble (Sorting::Bubble)
    #   - :insertion (Sorting::Insertion)
    #   - :merge (Sorting::Merge)
    # @param algorithms [Array<Symbol>] An array dictating the algorithms to
    #   compare.
    # @param iterations [Fixnum] the number of iterations to run for each
    #   algorithm's benchmark.
    # @param unsorted_list [Array, nil] The list to use for the Benchmark test.
    #   if nothing given, uses ::DEFAULT_UNSORTED_LIST which is a list
    #   containing 1000 unsorted integers.
    # @return [Array<Benchmark::Tms>]
    def self.call(algorithms = [],
                  iterations = 10,
                  unsorted_list = nil)
      return if algorithms.empty?

      Benchmark.bmbm do |bm|
        algorithms.each do |alg|
          bm.report("Sorting::#{alg.to_s.capitalize}") do
            iterations.times do
              Sorting.const_get(:"#{alg.to_s.capitalize}")
                     .call unsorted_list || DEFAULT_UNSORTED_LIST.dup
            end
          end
        end
      end
    end

    # unsorted array of integers, contains 1000 elements
    DEFAULT_UNSORTED_LIST = [
      115,
      854,
      498,
      841,
      417,
      337,
      80,
      993,
      245,
      892,
      906,
      581,
      46,
      116,
      86,
      7,
      112,
      878,
      129,
      869,
      580,
      961,
      285,
      104,
      481,
      957,
      827,
      646,
      440,
      510,
      177,
      903,
      612,
      548,
      828,
      716,
      118,
      850,
      478,
      981,
      416,
      269,
      468,
      969,
      390,
      636,
      84,
      85,
      101,
      411,
      68,
      192,
      951,
      972,
      483,
      728,
      701,
      607,
      62,
      907,
      832,
      178,
      975,
      227,
      778,
      296,
      16,
      427,
      484,
      179,
      893,
      432,
      8,
      991,
      304,
      12,
      732,
      131,
      797,
      437,
      613,
      351,
      937,
      1,
      67,
      429,
      761,
      428,
      664,
      525,
      355,
      843,
      714,
      260,
      493,
      210,
      549,
      171,
      632,
      884,
      238,
      627,
      141,
      760,
      927,
      208,
      341,
      541,
      880,
      685,
      312,
      862,
      585,
      461,
      336,
      409,
      249,
      412,
      229,
      253,
      631,
      804,
      219,
      150,
      184,
      810,
      452,
      419,
      817,
      138,
      144,
      679,
      902,
      278,
      789,
      345,
      912,
      588,
      283,
      888,
      983,
      593,
      660,
      881,
      999,
      749,
      362,
      66,
      651,
      426,
      237,
      415,
      242,
      551,
      88,
      566,
      726,
      604,
      625,
      6,
      244,
      450,
      825,
      160,
      42,
      404,
      298,
      505,
      188,
      228,
      70,
      451,
      309,
      410,
      370,
      757,
      442,
      605,
      930,
      350,
      430,
      94,
      172,
      755,
      174,
      629,
      137,
      74,
      822,
      289,
      715,
      962,
      183,
      241,
      648,
      422,
      533,
      135,
      790,
      189,
      596,
      853,
      369,
      388,
      952,
      87,
      187,
      754,
      379,
      628,
      61,
      831,
      682,
      100,
      479,
      338,
      319,
      781,
      262,
      220,
      909,
      504,
      703,
      378,
      842,
      579,
      926,
      913,
      212,
      58,
      153,
      658,
      326,
      441,
      47,
      456,
      424,
      984,
      860,
      23,
      689,
      357,
      470,
      485,
      180,
      233,
      739,
      26,
      614,
      501,
      207,
      506,
      21,
      444,
      519,
      532,
      458,
      471,
      294,
      54,
      38,
      389,
      523,
      406,
      4,
      786,
      334,
      704,
      586,
      376,
      705,
      486,
      511,
      752,
      769,
      694,
      663,
      895,
      600,
      641,
      35,
      717,
      254,
      435,
      730,
      33,
      750,
      107,
      234,
      169,
      538,
      562,
      738,
      630,
      867,
      589,
      213,
      206,
      514,
      148,
      49,
      638,
      584,
      837,
      874,
      571,
      291,
      799,
      554,
      96,
      916,
      509,
      99,
      267,
      668,
      110,
      173,
      813,
      883,
      1000,
      894,
      985,
      640,
      839,
      622,
      257,
      637,
      736,
      779,
      175,
      765,
      203,
      653,
      746,
      103,
      270,
      119,
      807,
      960,
      955,
      348,
      69,
      966,
      466,
      200,
      659,
      380,
      945,
      599,
      263,
      30,
      356,
      672,
      616,
      657,
      735,
      885,
      772,
      143,
      904,
      508,
      332,
      964,
      308,
      303,
      375,
      335,
      922,
      764,
      871,
      980,
      147,
      824,
      574,
      320,
      57,
      967,
      583,
      942,
      476,
      302,
      222,
      502,
      819,
      56,
      487,
      645,
      723,
      31,
      132,
      570,
      994,
      83,
      333,
      459,
      870,
      855,
      553,
      420,
      29,
      733,
      771,
      864,
      801,
      453,
      982,
      838,
      146,
      762,
      526,
      649,
      573,
      809,
      695,
      845,
      384,
      515,
      366,
      968,
      529,
      418,
      413,
      998,
      282,
      575,
      559,
      861,
      823,
      987,
      256,
      989,
      36,
      43,
      306,
      381,
      48,
      113,
      401,
      295,
      405,
      887,
      794,
      546,
      624,
      898,
      821,
      397,
      421,
      783,
      202,
      753,
      647,
      323,
      793,
      908,
      72,
      102,
      811,
      221,
      488,
      696,
      925,
      198,
      934,
      32,
      537,
      877,
      168,
      767,
      661,
      402,
      469,
      734,
      796,
      140,
      780,
      683,
      953,
      698,
      851,
      891,
      516,
      561,
      297,
      868,
      98,
      327,
      439,
      354,
      19,
      239,
      197,
      15,
      803,
      669,
      156,
      480,
      120,
      292,
      246,
      268,
      512,
      17,
      688,
      265,
      39,
      606,
      139,
      656,
      489,
      82,
      759,
      863,
      382,
      51,
      816,
      802,
      154,
      699,
      697,
      603,
      633,
      314,
      815,
      963,
      690,
      830,
      522,
      940,
      10,
      347,
      609,
      959,
      365,
      652,
      503,
      215,
      744,
      259,
      889,
      623,
      255,
      806,
      130,
      798,
      725,
      145,
      620,
      686,
      158,
      386,
      22,
      301,
      240,
      325,
      655,
      287,
      598,
      555,
      654,
      924,
      747,
      251,
      563,
      708,
      231,
      826,
      919,
      496,
      368,
      217,
      2,
      915,
      358,
      13,
      236,
      840,
      740,
      634,
      364,
      763,
      123,
      751,
      271,
      181,
      398,
      328,
      44,
      833,
      443,
      387,
      635,
      670,
      209,
      556,
      829,
      745,
      28,
      917,
      565,
      543,
      524,
      676,
      946,
      136,
      572,
      848,
      834,
      808,
      474,
      918,
      214,
      729,
      954,
      162,
      392,
      544,
      393,
      199,
      499,
      722,
      996,
      274,
      151,
      465,
      299,
      621,
      165,
      933,
      50,
      719,
      346,
      438,
      666,
      75,
      721,
      528,
      407,
      567,
      288,
      275,
      643,
      45,
      425,
      193,
      322,
      702,
      785,
      399,
      396,
      527,
      507,
      293,
      617,
      882,
      423,
      205,
      95,
      707,
      329,
      372,
      76,
      920,
      727,
      60,
      276,
      311,
      974,
      720,
      928,
      277,
      201,
      307,
      9,
      910,
      155,
      530,
      564,
      436,
      247,
      976,
      163,
      318,
      194,
      243,
      367,
      41,
      383,
      218,
      568,
      226,
      557,
      901,
      773,
      342,
      973,
      577,
      859,
      713,
      792,
      286,
      400,
      800,
      576,
      958,
      371,
      671,
      434,
      460,
      230,
      539,
      497,
      558,
      667,
      639,
      464,
      674,
      743,
      700,
      111,
      597,
      248,
      787,
      161,
      152,
      948,
      935,
      710,
      965,
      321,
      185,
      272,
      775,
      788,
      990,
      59,
      890,
      431,
      166,
      149,
      223,
      24,
      542,
      872,
      856,
      678,
      467,
      34,
      463,
      758,
      79,
      795,
      477,
      359,
      344,
      852,
      979,
      446,
      186,
      520,
      626,
      11,
      25,
      536,
      492,
      791,
      681,
      932,
      818,
      78,
      300,
      261,
      125,
      3,
      782,
      849,
      929,
      266,
      748,
      363,
      711,
      190,
      997,
      339,
      117,
      971,
      644,
      90,
      876,
      601,
      776,
      73,
      886,
      494,
      712,
      490,
      93,
      391,
      896,
      121,
      235,
      191,
      587,
      97,
      53,
      592,
      950,
      552,
      724,
      353,
      92,
      560,
      500,
      673,
      128,
      211,
      812,
      280,
      65,
      195,
      545,
      774,
      313,
      970,
      445,
      403,
      535,
      250,
      865,
      611,
      133,
      448,
      475,
      578,
      352,
      216,
      225,
      756,
      582,
      595,
      279,
      394,
      176,
      677,
      408,
      63,
      517,
      349,
      610,
      77,
      331,
      14,
      252,
      433,
      109,
      662,
      385,
      977,
      122,
      911,
      619,
      847,
      449,
      602,
      770,
      814,
      858,
      905,
      108,
      992,
      820,
      71,
      846,
      873,
      949,
      264,
      805,
      473,
      986,
      105,
      547,
      37,
      374,
      777,
      680,
      741,
      718,
      591,
      258,
      91,
      766,
      995,
      224,
      40,
      55,
      615,
      939,
      531,
      305,
      709,
      414,
      18,
      170,
      944,
      513,
      157,
      340,
      941,
      857,
      284,
      687,
      947,
      462,
      731,
      938,
      5,
      114,
      20,
      978,
      691,
      64,
      182,
      923,
      914,
      768,
      89,
      457,
      281,
      447,
      921,
      836,
      204,
      377,
      844,
      159,
      472,
      134,
      742,
      875,
      142,
      675,
      196,
      988,
      27,
      518,
      550,
      737,
      126,
      665,
      879,
      943,
      650,
      167,
      692,
      124,
      569,
      534,
      866,
      290,
      316,
      590,
      608,
      784,
      900,
      642,
      127,
      540,
      81,
      273,
      897,
      936,
      52,
      618,
      317,
      491,
      521,
      684,
      164,
      956,
      455,
      454,
      594,
      360,
      931,
      361,
      343,
      310,
      706,
      495,
      899,
      315,
      693,
      373,
      330,
      232,
      482,
      324,
      106,
      835,
      395
    ].freeze
  end
end