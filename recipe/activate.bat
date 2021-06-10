if defined CONDA_BUILD_STATE (
    @echo on
)

:: Backup environment variables (only if the variables are set)
if defined MSMPI_BIN (
    set "MSMPI_BIN_CONDA_BACKUP=%MSMPI_BIN%"
)
if defined MSMPI_INC (
    set "MSMPI_INC_CONDA_BACKUP=%MSMPI_INC%"
)
if defined MSMPI_LIB64 (
    set "MSMPI_LIB64_CONDA_BACKUP=%MSMPI_LIB64%"
)
if defined MSMPI_LIB32 (
    set "MSMPI_LIB32_CONDA_BACKUP=%MSMPI_LIB32%"
)

set MSMPI_BIN=%PREFIX%\Library\bin
set MSMPI_INC=%PREFIX%\Library\include
set MSMPI_LIB64=%PREFIX%\Library\lib
set MSMPI_LIB32=""
