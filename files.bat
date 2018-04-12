@Echo OFF

FOR /D /R %%# in (*) DO (
    PUSHD "%%#"
    FOR %%@ in ("*") DO (
        Ren: ".\%%~n#\%%@" "%%~n#%%~x@"
        Ren "%%@" "%%~n#%%~x@"
        Move "%%~n#%%~x@*" "C:\path\to\dest\"
    )
    POPD
)

Pause&Exit