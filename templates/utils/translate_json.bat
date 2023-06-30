@echo on
set lang=%2
set infile=%1.json
set outfile=%1.%lang%.json
::set tempfile=%1.en.%lang%.json
@echo translating %infile% into %lang%
::@echo %infile% -^> %tempfile% -^> %outfile%'

Translation\Bin\net6.0\Res.Translator.exe -t aws -r ..\data\%infile% -d %lang% --overwrite
::if exist "..\data\%outfile%" del "..\data\%outfile%"
::ren "..\data\%tempfile%" "%outfile%"