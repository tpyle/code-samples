fun main() {
    val env: MutableMap<String, String> = System.getenv()
    for ((k, v) in env.toList().sortedBy { (key, _) -> key}.toMap()) {
        println(String.format("%s=%s", k, v))
    }
}