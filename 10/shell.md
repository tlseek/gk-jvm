```
curl -L -O http://central.maven.org/maven2/org/openjdk/jol/jol-cli/0.9/jol-cli-0.9-full.jar
// 查看String的内存分布
java -cp ../jol-cli-0.9-full.jar org.openjdk.jol.Main internals java.lang.String
```