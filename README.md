# 由于 BMCLAPI 被攻击，默认情况下本脚本无法正常运行。如有需要，请手动替换脚本中的 Vanilla 下载地址，或者直接启动服务器，等候 Spigot 自动下载。

# 🔌 Testserver

![](https://img.shields.io/badge/poweredby-sotapmc-blue)
![](https://img.shields.io/badge/paper-1.16.1-brightgreen)
![](https://img.shields.io/badge/recommended-11-brown?logo=java)

**Testserver** 是用来快速部署 Bukkit 插件测试服务器的脚手架，大部分情况下属于自用。需要注意的是，Testserver 中包含的大部分内容均来自于互联网，这些内容不代表 sotapmc 的任何观点亦不属于 sotapmc 的著作范围。

## 使用

默认情况下，Testserver 不会包含任何预先下载好的 Paper 构建，因此你可能需要自己下载构建并安装。幸运的是，我们提供了下面这些十分方便的方式来解决这一问题。

`linux` 目录下为适用于 Linux 操作系统的脚本，使用方式与 bat 脚本完全相同

### 自动部署

如果你希望如众多脚手架那样，仅需指定一个路径即可完成一切事物，那么就运行 `init.bat` 吧。

运行以后，在命令提示符的窗口内输入你所要部署的位置。该位置的路径可以是绝对路径也可以是相对路径。如果位置的格式不正确或者不存在，将无法继续进行。

输入后，程序会自动执行在下方「手动部署」中列出的所有事项并将 `boot.bat` 复制到指定的目录中。理论上在这个时候直接执行 `boot.bat` 即可开启服务器。

### 手动部署

若有需要进行手动部署，可运行 `start.bat`。该脚本会依次进行以下操作：

- 调用 Powershell 从 `papermc.io` 所提供的 API 下载最新的 Paper 构建，并写入至 `./paper-latest.jar`。
- 调用 Powershell 从 [BMCLAPI](//bmclapidoc.bangbang93.com) 下载 Mojang 的最新原版服务器核心文件，并写入至 `/cache/mojang_A.B.C.jar`。

下载完毕后，运行 `boot.bat` 即可启动服务器并初始化服务器文件。

**注：** 根据相关规定，本脚本不提供自动同意 EULA 的功能。

## 协议

无协议。
