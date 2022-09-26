# 打算写一个通用的工具类
#
# 这个函数的作用是备份下载的安装包到指定路径。
# 软件的来源可能失效，不能保证可用性的来源最好备份一下。
# 软件安装后按需调用。
#
# TODO
# 完善函数，规范代码，增加健壮性
function BackupScoopPackage($Package) {
    $BackupDir = $Env:OneDrive + "\public\package\scoop-package-backup\"
    $BackupPath = $BackupDir + $Package
    if (Test-Path $BackupPath -eq "False") {
        New-Item -ItemType HardLink -Target $BackupPath -Path $Env:UserProfile+"\scoop\cache\"+$Package
    }
}
