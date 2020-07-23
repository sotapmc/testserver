# 🔌 Testserver

![](https://img.shields.io/badge/poweredby-sotapmc-blue)
![](https://img.shields.io/badge/paper-1.16.1-brightgreen)
![](https://img.shields.io/badge/recommended-11-brown?logo=java)

**Testserver** 是用来快速部署 Bukkit 插件测试服务器的脚手架，大部分情况下属于自用。需要注意的是，Testserver 中包含的大部分内容均来自于互联网，这些内容不代表 sotapmc 的任何观点亦不属于 sotapmc 的著作范围。

## 使用

默认情况下，Testserver 不会包含任何预先下载好的 Paper 构建。

因此，如果你希望立即获取到最新的 Paper 构建，请运行根目录下的 `start.bat`。该脚本会依次进行以下操作：

- 调用 Powershell 从 `papermc.io` 所提供的 API 下载最新的 Paper 构建，并写入至 `./paper-latest.jar`。
- 调用 Powershell 从 [BMCLAPI](//bmclapidoc.bangbang93.com) 下载 Mojang 的最新原版服务器核心文件，并写入至 `/cache/mojang_A.B.C.jar`。
- 在 `/` 生成一个内包含内容 `eula=TRUE` 名为 `eula.txt` 的文件。

下载完毕后，运行 `boot.bat` 即可启动服务器并初始化服务器文件。

## 协议

无协议。


