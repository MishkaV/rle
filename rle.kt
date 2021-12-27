import asserts.*

fun pack(ch: Char, count: Int): String = if (count < 2) ch.toString() else count.toString() + ch.toString()
fun unpack(ch: Char, count: Int): String = if (count < 2) ch.toString() else ch.toString().repeat(count)

fun toRle(str: String): String {
	if (str.isEmpty())
        return str
    
    var rleStr = ""
    var lastChar = str[0]
    var count = 0
    
    str.forEach { currChar ->
        if (currChar != lastChar) {
            rleStr += pack(lastChar, count)
            lastChar = currChar
            count = 1
        }
        else
            count++
    }
    return rleStr + pack(lastChar, count)
}

fun fromRle(str: String): String {
    if (str.isEmpty())
        return str

    var fromRleSting = ""

    var i = 0
    while (i < str.length) {
        var count = 0
        
        while (i < str.length && str[i].isDigit()) {
            count = count * 10 + str[i].digitToInt()
            i++;
        }
        
        if (i != str.length) {
            fromRleSting += unpack(str[i], count)
        }
        i++;
    }
    return fromRleSting
}

fun main() {
    //Asserts toRle
    assertEqual(
        expected = "",
        actual = toRle("")
    )
    
    assertEqual(
        expected = "2A3BCA2D",
        actual = toRle("AABBBCADD")
    )
    
    //Asserts fromRle
    assertEqual(
        expected = "",
        actual = fromRle("")
    )

    assertEqual(
        expected = "AABBBCADD",
        actual = fromRle("2A3BCA2D")
    )
}