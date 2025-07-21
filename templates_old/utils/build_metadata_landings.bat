del /Q "..\..\content\redaction\net\metadata\*.*"

del /Q "..\..\content\redaction\net\metadata\author\*.*"
del /Q "..\..\content\redaction\net\metadata\category\*.*"
del /Q "..\..\content\redaction\net\metadata\company\*.*"
del /Q "..\..\content\redaction\net\metadata\createdtime\*.*"
del /Q "..\..\content\redaction\net\metadata\description\*.*"
del /Q "..\..\content\redaction\net\metadata\subject\*.*"
del /Q "..\..\content\redaction\net\metadata\title\*.*"
del /Q "..\..\content\redaction\net\metadata\version\*.*"

del /Q "..\..\content\redaction\java\metadata\author\*.*"
del /Q "..\..\content\redaction\java\metadata\category\*.*"
del /Q "..\..\content\redaction\java\metadata\company\*.*"
del /Q "..\..\content\redaction\java\metadata\createdtime\*.*"
del /Q "..\..\content\redaction\java\metadata\description\*.*"
del /Q "..\..\content\redaction\java\metadata\subject\*.*"
del /Q "..\..\content\redaction\java\metadata\title\*.*"
del /Q "..\..\content\redaction\java\metadata\version\*.*"

HugoMarkupGenerator\Bin\net6.0\MarkupGenerator.Shell.exe -s ..\src\metadata -o ..\..\content\redaction

ren "..\..\content\redaction\net\metadata\*.en*" "*."
ren "..\..\content\redaction\net\metadata\*.en" *.md

ren "..\..\content\redaction\net\metadata\author\*.en*" "*."
ren "..\..\content\redaction\net\metadata\author\*.en" *.md
ren "..\..\content\redaction\java\metadata\author\*.en*" "*."
ren "..\..\content\redaction\java\metadata\author\*.en" *.md

ren "..\..\content\redaction\net\metadata\category\*.en*" "*."
ren "..\..\content\redaction\net\metadata\category\*.en" *.md
ren "..\..\content\redaction\java\metadata\category\*.en*" "*."
ren "..\..\content\redaction\java\metadata\category\*.en" *.md

ren "..\..\content\redaction\net\metadata\company\*.en*" "*."
ren "..\..\content\redaction\net\metadata\company\*.en" *.md
ren "..\..\content\redaction\java\metadata\company\*.en*" "*."
ren "..\..\content\redaction\java\metadata\company\*.en" *.md

ren "..\..\content\redaction\net\metadata\createdtime\*.en*" "*."
ren "..\..\content\redaction\net\metadata\createdtime\*.en" *.md
ren "..\..\content\redaction\java\metadata\createdtime\*.en*" "*."
ren "..\..\content\redaction\java\metadata\createdtime\*.en" *.md

ren "..\..\content\redaction\net\metadata\description\*.en*" "*."
ren "..\..\content\redaction\net\metadata\description\*.en" *.md
ren "..\..\content\redaction\java\metadata\description\*.en*" "*."
ren "..\..\content\redaction\java\metadata\description\*.en" *.md

ren "..\..\content\redaction\net\metadata\subject\*.en*" "*."
ren "..\..\content\redaction\net\metadata\subject\*.en" *.md
ren "..\..\content\redaction\java\metadata\subject\*.en*" "*."
ren "..\..\content\redaction\java\metadata\subject\*.en" *.md

ren "..\..\content\redaction\net\metadata\title\*.en*" "*."
ren "..\..\content\redaction\net\metadata\title\*.en" *.md
ren "..\..\content\redaction\java\metadata\title\*.en*" "*."
ren "..\..\content\redaction\java\metadata\title\*.en" *.md

ren "..\..\content\redaction\net\metadata\version\*.en*" "*."
ren "..\..\content\redaction\net\metadata\version\*.en" *.md
ren "..\..\content\redaction\java\metadata\version\*.en*" "*."
ren "..\..\content\redaction\java\metadata\version\*.en" *.md
