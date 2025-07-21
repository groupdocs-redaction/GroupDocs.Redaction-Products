HugoMarkupGenerator\Bin\net6.0\MarkupGenerator.Shell.exe -s ..\src\regex -o ..\..\content\redaction

ren "..\..\content\redaction\net\regex\*.en*" "*."
copy "..\..\content\redaction\net\regex\*.en" "..\..\content\redaction\net\regex\*.md"
del  "..\..\content\redaction\net\regex\*.en"

ren "..\..\content\redaction\java\regex\*.en*" "*."
copy "..\..\content\redaction\java\regex\*.en" "..\..\content\redaction\java\regex\*.md"
del "..\..\content\redaction\java\regex\*.en"