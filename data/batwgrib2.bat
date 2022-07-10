@echo off
set PATH=C:\wgrid2;%PATH%

for /D %%p in (*) do (
    echo %%p
    for %%f in ("%%p/*.bin") do (
    @REM echo %%p/%%~nxf
    echo %%~nf.nc
    wgrib2 %%p/%%~nxf -netcdf %%~nf.nc
    )
)