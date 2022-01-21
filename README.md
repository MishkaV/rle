# Реализация задачи RLE

## Условия задачи 
> Реализовать функцию сжатия и функцию распаковки текста на языке Kotlin.
> Функция сжатия, принимает на вход строку и возвращает сжатую строку.
> Сжатие производится по принципу: AABBBCADD - > 2A3BCA2D

> Функция распаковки, принимает на вход сжатую строку и возращает распакованную строку. Распаковка производится по принципу: 2A3BCA2D -> AABBBCADD

## Quick start
- Заходим в `ITerm` (или любой другой терминал) и по порядку:
```
cd ./rle
make
```
- Для того, чтобы почистить от `.jar` файлов:
```
make clean
```
## Проблемки начались...
- Если до этого не устанавливали `kotlinc`, то стоит сделать следующие шаги:
```
curl -s https://get.sdkman.io | bash
sdk install kotlin
```
- После можно проверить установку следующим спопсобом
```
kotlinc -help
```
- Должно вывести примерно следующее
```
Usage: kotlinc-jvm <options> <source files>
where possible options include:
  -classpath (-cp) <path>    List of directories and JAR/ZIP archives to search for user class files
  -d <directory|jar>         Destination for generated class files
  -expression (-e)           Evaluate the given string as a Kotlin script
  -include-runtime           Include Kotlin runtime into the resulting JAR
  -java-parameters           Generate metadata for Java 1.8 reflection on method parameters
  -jdk-home <path>           Include a custom JDK from the specified location into the classpath instead of the default JAVA_HOME
  -jvm-target <version>      Target version of the generated JVM bytecode (1.6 (DEPRECATED), 1.8, 9, 10, 11, 12, 13, 14, 15, 16 or 17), default is 1.8...
```

