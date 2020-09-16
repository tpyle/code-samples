public class table {
    public static final int LIMIT = 5;
    public static void main(String[] args) {
        System.out.print("   ");
        for (int i = 1; i <= LIMIT; i++) {
            System.out.print(String.format("%-3d", i));
        }
        System.out.println();
        
        for (int a = 1; a <= LIMIT; a++) {
            System.out.print(String.format("%-3d", a));
            for (int b = 1; b <= LIMIT; b++) {
                System.out.print(String.format("%-3d", a*b));
            }
            System.out.println();
        }
    }
}
