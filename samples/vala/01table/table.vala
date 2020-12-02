const int TABLE_SIZE = 5;

void main() {
    for (int a = 0; a <= TABLE_SIZE; a++) {
        if (a == 0) {
            print("   ");
        } else {
            print("%-3d".printf(a));
        }
        for (int b = 0; b <= TABLE_SIZE; b++) {
            if (a == 0) {
                print("%-3d".printf(b));
            } else {
                print("%-3d".printf(a*b));
            }
        }
        print("\n");
    }
}
