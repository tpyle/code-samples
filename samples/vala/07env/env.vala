void main() {
    string[] args = Environment.list_variables();
    foreach(string arg in args) {
        print("%s=%s\n", arg, Environment.get_variable(arg));
    }
}