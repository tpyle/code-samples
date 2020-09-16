public class reverse {
    public static void main(String[] args) {
        if (args.length == 0) {
            System.err.println("Error: Usage java reverse <arg> [<arg> ...].");
            System.exit(1);
        }
        for (int i = args.length - 1; i >= 0; i--) {
            System.out.print(args[i]);
            if (i > 0) {
                System.out.print(" ");
            }
        }
        System.out.println();
    }
}
