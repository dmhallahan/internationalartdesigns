module Babosa
  module UTF8

    # A small subset of the mappings provided by Unicode.org, limited to Latin
    # characters. This is used for Babosa's default "dumb" UTF-8 support.
    module Mappings
      DOWNCASE = Hash[65, 97, 66, 98, 67, 99, 68, 100, 69, 101, 70, 102,
        71, 103, 72, 104, 73, 105, 74, 106, 75, 107, 76, 108, 77, 109, 78, 110,
        79, 111, 80, 112, 81, 113, 82, 114, 83, 115, 84, 116, 85, 117, 86, 118,
        87, 119, 88, 120, 89, 121, 90, 122, 181, 956, 192, 224, 193, 225, 194,
        226, 195, 227, 196, 228, 197, 229, 198, 230, 199, 231, 200, 232, 201,
        233, 202, 234, 203, 235, 204, 236, 205, 237, 206, 238, 207, 239, 208,
        240, 209, 241, 210, 242, 211, 243, 212, 244, 213, 245, 214, 246, 216,
        248, 217, 249, 218, 250, 219, 251, 220, 252, 221, 253, 222, 254, 223,
        [115, 115], 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267,
        268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281,
        282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295,
        296, 297, 298, 299, 300, 301, 302, 303, 304, [105, 775], 306, 307, 308,
        309, 310, 311, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323,
        324, 325, 326, 327, 328, 329, [700, 110], 330, 331, 332, 333, 334, 335,
        336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349,
        350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363,
        364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 255,
        377, 378, 379, 380, 381, 382]

      UPCASE = DOWNCASE.invert

      COMPOSITION = {
        [65,768]  => 192,
        [65,769]  => 193,
        [65,770]  => 194,
        [65,771]  => 195,
        [65,776]  => 196,
        [65,778]  => 197,
        [67,807]  => 199,
        [69,768]  => 200,
        [69,769]  => 201,
        [69,770]  => 202,
        [69,776]  => 203,
        [73,768]  => 204,
        [73,769]  => 205,
        [73,770]  => 206,
        [73,776]  => 207,
        [78,771]  => 209,
        [79,768]  => 210,
        [79,769]  => 211,
        [79,770]  => 212,
        [79,771]  => 213,
        [79,776]  => 214,
        [85,768]  => 217,
        [85,769]  => 218,
        [85,770]  => 219,
        [85,776]  => 220,
        [89,769]  => 221,
        [97,768]  => 224,
        [97,769]  => 225,
        [97,770]  => 226,
        [97,771]  => 227,
        [97,776]  => 228,
        [97,778]  => 229,
        [99,807]  => 231,
        [101,768] => 232,
        [101,769] => 233,
        [101,770] => 234,
        [101,776] => 235,
        [105,768] => 236,
        [105,769] => 237,
        [105,770] => 238,
        [105,776] => 239,
        [110,771] => 241,
        [111,768] => 242,
        [111,769] => 243,
        [111,770] => 244,
        [111,771] => 245,
        [111,776] => 246,
        [117,768] => 249,
        [117,769] => 250,
        [117,770] => 251,
        [117,776] => 252,
        [121,769] => 253,
        [121,776] => 255,
        [65,772]  => 256,
        [97,772]  => 257,
        [65,774]  => 258,
        [97,774]  => 259,
        [65,808]  => 260,
        [97,808]  => 261,
        [67,769]  => 262,
        [99,769]  => 263,
        [67,770]  => 264,
        [99,770]  => 265,
        [67,775]  => 266,
        [99,775]  => 267,
        [67,780]  => 268,
        [99,780]  => 269,
        [68,780]  => 270,
        [100,780] => 271,
        [69,772]  => 274,
        [101,772] => 275,
        [69,774]  => 276,
        [101,774] => 277,
        [69,775]  => 278,
        [101,775] => 279,
        [69,808]  => 280,
        [101,808] => 281,
        [69,780]  => 282,
        [101,780] => 283,
        [71,770]  => 284,
        [103,770] => 285,
        [71,774]  => 286,
        [103,774] => 287,
        [71,775]  => 288,
        [103,775] => 289,
        [71,807]  => 290,
        [103,807] => 291,
        [72,770]  => 292,
        [104,770] => 293,
        [73,771]  => 296,
        [105,771] => 297,
        [73,772]  => 298,
        [105,772] => 299,
        [73,774]  => 300,
        [105,774] => 301,
        [73,808]  => 302,
        [105,808] => 303,
        [73,775]  => 304,
        [74,770]  => 308,
        [106,770] => 309,
        [75,807]  => 310,
        [107,807] => 311,
        [76,769]  => 313,
        [108,769] => 314,
        [76,807]  => 315,
        [108,807] => 316,
        [76,780]  => 317,
        [108,780] => 318,
        [78,769]  => 323,
        [110,769] => 324,
        [78,807]  => 325,
        [110,807] => 326,
        [78,780]  => 327,
        [110,780] => 328,
        [79,772]  => 332,
        [111,772] => 333,
        [79,774]  => 334,
        [111,774] => 335,
        [79,779]  => 336,
        [111,779] => 337,
        [82,769]  => 340,
        [114,769] => 341,
        [82,807]  => 342,
        [114,807] => 343,
        [82,780]  => 344,
        [114,780] => 345,
        [83,769]  => 346,
        [115,769] => 347,
        [83,770]  => 348,
        [115,770] => 349,
        [83,807]  => 350,
        [115,807] => 351,
        [83,780]  => 352,
        [115,780] => 353,
        [84,807]  => 354,
        [116,807] => 355,
        [84,780]  => 356,
        [116,780] => 357,
        [85,771]  => 360,
        [117,771] => 361,
        [85,772]  => 362,
        [117,772] => 363,
        [85,774]  => 364,
        [117,774] => 365,
        [85,778]  => 366,
        [117,778] => 367,
        [85,779]  => 368,
        [117,779] => 369,
        [85,808]  => 370,
        [117,808] => 371,
        [87,770]  => 372,
        [119,770] => 373,
        [89,770]  => 374,
        [121,770] => 375,
        [89,776]  => 376,
        [90,769]  => 377,
        [122,769] => 378,
        [90,775]  => 379,
        [122,775] => 380,
        [90,780]  => 381,
        [122,780] => 382
      }
    end
  end
end
