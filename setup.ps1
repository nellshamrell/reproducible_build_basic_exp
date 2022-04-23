# Install Build Tools with the Microsoft.VisualStudio.Workload.AzureBuildTools workload, excluding workloads and components with known issues.
C:/vs_buildtools.exe --quiet --wait --norestart --nocache --installPath C:\BuildTools --add Microsoft.Component.MSBuild --add Microsoft.VisualStudio.Component.Windows10SDK.18362 --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64;
Invoke-WebRequest https://static.rust-lang.org/rustup/dist/x86_64-pc-windows-msvc/rustup-init.exe -OutFile C:/rustup-init.exe;
C:/rustup-init.exe