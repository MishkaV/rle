package asserts 

fun assertEqual(actual : String, expected : String) = when (actual == expected) {
    true -> {
        println("\n|$actual| is equal |$expected|")
        println("TEST PASS :)\n")
    }
    false -> {
        println("\n|$actual| is NOT equal |$expected|")
        println("TEST FAILD :(\n")
    }
}