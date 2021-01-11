import java.util.Map;

public class env {

    public static void main(String[] args) {
        Map<String, String> env = System.getenv();
        for (String var : env.keySet()) {
            System.out.format("%s=%s\n", var, env.get(var));
        }
    }
}
