@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto b157c4781eb94fe5bc32b69f2eb0e239 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot default_song_TB_behav xil_defaultlib.default_song_TB -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
