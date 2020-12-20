import "dart:io";
import "dart:async";
import "dart:convert";


void main(List<String> arguments) {
    Map<String, String> environ = Platform.environment;

    environ.forEach((k,v)=>{
        print('${k}=${v}')
    });
}
