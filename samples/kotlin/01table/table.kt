fun main() {
    val LIMIT = 5;
    for (a in 0..LIMIT) {
        if (a == 0) {
            print(String.format("%-3s", ""));
        } else {
            print(String.format("%-3d", a));
        }
        for (b in 0..LIMIT) {
            if (a == 0) {
                print(String.format("%-3d", b));
            } else {
                print(String.format("%-3d", a*b));
            }
        }
        println();
    }
}
