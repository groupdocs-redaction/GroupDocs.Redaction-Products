HugoMarkupGenerator\Bin\net6.0\MarkupGenerator.Shell.exe -s ..\src\annotation -o ..\..\content\redaction

ren "..\..\content\redaction\net\annotation\*.en*" "*."
copy "..\..\content\redaction\net\annotation\*.en" "..\..\content\redaction\net\annotation\*.md"
del  "..\..\content\redaction\net\annotation\*.en"

ren "..\..\content\redaction\java\annotation\*.en*" "*."
copy "..\..\content\redaction\java\annotation\*.en" "..\..\content\redaction\java\annotation\*.md"
del "..\..\content\redaction\java\annotation\*.en"