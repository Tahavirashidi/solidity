$ErrorActionPreference = "Stop"

cd "$PSScriptRoot\.."

.\build\solc\Debug\solc.exe --version
if ( -not $? ) { throw "Cannot execute solc --version." }

mkdir test_results
.\build\test\Debug\soltest.exe --color_output=no --show_progress=yes --logger=JUNIT,error,test_results/result.xml -- --no-smt
if ( -not $? ) { throw "Unoptimized soltest run failed." }
.\build\test\Debug\soltest.exe --color_output=no --show_progress=yes --logger=JUNIT,error,test_results/result_opt.xml -- --optimize --no-smt
if ( -not $? ) { throw "Optimized soltest run failed." }