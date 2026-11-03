"""Original data-representation questions. First choice is correct."""
RAW = '''
Binary uses which base?|2|8|10|16|Binary has two digits, 0 and 1, so its base is two.
Decimal uses which base?|10|2|8|16|Decimal has ten digits, 0 through 9.
Hexadecimal uses which base?|16|2|8|10|Hexadecimal is base sixteen.
Which digit is invalid in binary?|2|0|1|Neither 0 nor 1|Binary permits only 0 and 1.
Which symbol is a valid hexadecimal digit?|F|G|H|Z|Hexadecimal uses 0–9 and A–F.
Hexadecimal A represents decimal|10|2|8|16|A denotes decimal ten in hexadecimal.
Hexadecimal F represents decimal|15|6|10|16|F denotes decimal fifteen.
Binary 10 represents decimal|2|10|8|16|Binary 10 is one group of two and zero units.
Binary 11 represents decimal|3|2|4|11|The place values are two and one, which sum to three.
Binary 100 represents decimal|4|2|8|100|The single set bit has weight four.
Binary 101 represents decimal|5|3|6|10|The weights four and one sum to five.
Binary 110 represents decimal|6|4|5|12|The weights four and two sum to six.
Binary 111 represents decimal|7|5|6|14|The weights four, two and one sum to seven.
Binary 1000 represents decimal|8|4|10|16|The set bit has weight eight.
Binary 1001 represents decimal|9|7|8|11|The weights eight and one sum to nine.
Binary 1010 represents decimal|10|8|12|15|The weights eight and two sum to ten.
Binary 1011 represents decimal|11|9|10|13|The weights eight, two and one sum to eleven.
Binary 1100 represents decimal|12|6|10|14|The weights eight and four sum to twelve.
Binary 1101 represents decimal|13|11|12|15|The weights eight, four and one sum to thirteen.
Binary 1110 represents decimal|14|12|13|15|The weights eight, four and two sum to fourteen.
Decimal 7 is written in binary as|111|101|110|1000|Four plus two plus one gives seven.
Decimal 9 is written in binary as|1001|1010|1100|1111|Eight plus one gives nine.
Decimal 12 is written in binary as|1100|1001|1010|1110|Eight plus four gives twelve.
Decimal 15 is written in binary as|1111|1101|1000|10000|Eight plus four plus two plus one gives fifteen.
To convert a positive decimal integer to binary by division, divide repeatedly by|2|8|10|16|Repeated division by two gives binary remainders.
After repeated division by two, binary remainders are read|from last to first|from first to last only|without order|as decimal digits added together|Read the final remainder first, then work back to the first.
The binary sum 1 + 1 is|10|2|11|1|Write zero and carry one, producing binary 10.
The binary sum 1 + 1 + 1 is|11|10|100|2|Three in decimal is binary 11.
The binary sum 10 + 1 is|11|10|100|101|Two plus one equals three, or binary 11.
The binary sum 101 + 11 is|1000|111|110|1010|Five plus three equals eight, or binary 1000.
The binary sum 100 + 100 is|1000|100|110|1001|Four plus four equals eight, represented by 1000.
One hexadecimal digit corresponds to how many binary digits?|4|2|8|16|Sixteen equals two to the fourth power, so one hexadecimal digit corresponds to four bits.
Hexadecimal A corresponds to binary|1010|1000|1111|0010|A is decimal ten, which is binary 1010.
Hexadecimal 10 represents decimal|16|10|2|8|One group of sixteen plus zero units is sixteen.
A character encoding maps characters to|numeric codes|printer cables|chairs|sound speakers|A character encoding associates characters with numeric codes.
Which encoding provides a broad repertoire beyond ASCII?|Unicode|OMR|MICR|USB|Unicode provides a much larger character repertoire.
UTF-8 text characters|can occupy differing numbers of bytes|always occupy exactly one byte|are always pictures|cannot represent ASCII|UTF-8 uses variable-length byte sequences for different characters.
A raster image is made of|pixels|only paragraphs|network routers|sound channels|A raster image is represented as a grid of pixels.
Sampling rate in digital audio counts|samples per second|pixels per page|files per folder|keys per keyboard|Sampling rate is the number of samples taken per second.
An uncompressed 100 by 50 image at 8 bits per pixel contains how many raw pixel bytes?|5000|40000|625|500|There are 5000 pixels at 8 bits each, giving 40000 bits or 5000 bytes.
'''
ITEMS = []
for line in RAW.strip().splitlines():
    stem, correct, wrong1, wrong2, wrong3, explanation = line.split('|')
    ITEMS.append((stem, (correct, wrong1, wrong2, wrong3), explanation))
