HugoMarkupGenerator\Bin\net6.0\MarkupGenerator.Shell.exe -s ..\src\text -o ..\..\content\redaction

ren "..\..\content\redaction\net\text\*.en*" "*."
copy "..\..\content\redaction\net\text\*.en" "..\..\content\redaction\net\text\*.md"
del  "..\..\content\redaction\net\text\*.en"

ren "..\..\content\redaction\java\text\*.en*" "*."
copy "..\..\content\redaction\java\text\*.en" "..\..\content\redaction\java\text\*.md"
del "..\..\content\redaction\java\text\*.en"