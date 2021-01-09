import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class cat {

    public static void main(String[] args) {
        if (args.length > 1) {
            System.err.println("Error: Usage 'java cat [<file>]'");
            System.exit(1);
        }
        BufferedReader br = null;
        if (args.length == 1) {
            try { 
                br = new BufferedReader(new FileReader(args[0]));
            } catch (FileNotFoundException err) {
                System.err.printf("Error: File '%s' not found.\n", args[0]);
                System.exit(2);
            }
        } else {
            br = new BufferedReader(new InputStreamReader(System.in));
        }
        try {
            String line = br.readLine();
            while (line != null) {
                System.out.println(line);
                line = br.readLine();
            }
        } catch (IOException err) {
            err.printStackTrace();
        } finally {
            try {
                if (args.length == 1) {
                    br.close();
                }
            } catch (IOException err2) {
                System.err.printf("Failed to close %s\n", args[0]);
            }
        }
    }
}
