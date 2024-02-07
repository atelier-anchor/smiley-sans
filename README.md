<h1 align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="docs/images/smiley-sans.dark.svg">
    <img src="docs/images/smiley-sans.light.svg" alt="Smiley Sans" title="Smiley Sans">
  </picture>
</h1>

[![Build Status](https://github.com/atelier-anchor/smiley-sans/workflows/build/badge.svg)](https://github.com/atelier-anchor/smiley-sans/actions)
[![GitHub release](https://img.shields.io/github/release/atelier-anchor/smiley-sans/all.svg)](https://github.com/atelier-anchor/smiley-sans/releases/latest)

得意黑是一款在人文观感和几何特征中寻找平衡的中文黑体。整体字身窄而斜，细节融入了取法手绘美术字的特殊造型。字体支持简体中文常用字（覆盖 [GB/T 2312-1980](https://openstd.samr.gov.cn/bzgk/gb/newGbInfo?hcno=5664A728BD9D523DE3B99BC37AC7A2CC) 编码字符集和[《通用规范汉字表》](http://www.moe.gov.cn/jyb_sjzl/ziliao/A19/201306/t20130601_186002.html)）、拉丁字母、西里尔字母、希腊字母、日文假名、阿拉伯数字和各类标点符号。

## 下载安装

- 点击 [Releases](https://github.com/atelier-anchor/smiley-sans/releases) 可直接下载安装文件包，其中包含 4 个字体文件：
  - `.otf` 和 `.ttf` 文件可用于桌面端安装，双击打开文件，按照系统提示安装文件即可；
  - `.woff2` 为网页字体格式，供网站开发人员使用。
- 本字体的开发版本使用 [GitHub Actions](https://github.com/atelier-anchor/smiley-sans/actions) 构建，可在其中选择最新成功的构建结果，并下载对应的 Artifacts。
- 字体的安装方式取决于具体的系统或软件，请按照对应的说明操作，例如：
  - [Windows](https://support.microsoft.com/zh-cn/windows/如何在-windows-中安装或删除字体-f12d0657-2fc8-7613-c76f-88d043b334b8)
  - [macOS](https://support.apple.com/zh-cn/HT201749)
    - 也可使用 [Homebrew](https://brew.sh/index_zh-cn) 进行安装，在命令行中输入以下指令（这要求已经安装好 Homebrew）：
      ```bash
      brew tap homebrew/cask-fonts  # 只需要在第一次安装时执行
      brew install font-smiley-sans
      ```
  - Linux
    - Arch Linux 可以从 [AUR](https://aur.archlinux.org) 获取并安装：
      ```bash
      yay -S ttf-smiley-sans  # 从源码编译安装发行版
      yay -S ttf-smiley-sans-bin  # 从二进制发行版安装
      yay -S ttf-smiley-sans-git  # 从源码编译安装开发版
      ```
  - [Adobe](https://glyphsapp.com/zh/learn/testing-your-fonts-in-adobe-apps)
  - [Office](https://support.microsoft.com/zh-cn/office/下载和安装自定义字体以便在-office-中使用-0ee09e74-edc1-480c-81c2-5cf9537c70ce)
  - [Procreate](https://procreate.art/cn/handbook/procreate/text/text-fonts/)
- 如需预览得意黑的设计，可在 [docs](docs/) 文件夹中查看样张。

## 字符支持

| 文字 | 支持情况 |
|:-:|:-:|
| 汉字       | 字体覆盖 [GB/T 2312-1980](https://openstd.samr.gov.cn/bzgk/gb/newGbInfo?hcno=5664A728BD9D523DE3B99BC37AC7A2CC) 编码字符集中的全部 6763 个汉字和[《通用规范汉字表》](http://www.moe.gov.cn/jyb_sjzl/ziliao/A19/201306/t20130601_186002.html)中的全部 8105 个汉字，并额外进行了补充，共计支持汉字 8335 个 |
| 拉丁字母   | 除基础拉丁字母外，覆盖欧洲、美洲、南亚各种语言所需的字符共 415 个，另加入必要的变体和本地化字形，可支持 100 余种语言，包括英语、法语、德语、西班牙语、芬兰语、越南语等 |
| 西里尔字母 | 支持基础西里尔字母共 80 个 |
| 希腊字母   | 支持基础希腊字母共 71 个 |
| 日文假名   | 支持平假名、片假名字符共 174 个 |
| 数字       | 支持阿拉伯数字、大小写罗马数字，以及其他 4 种样式的序数字 `㈠`、`②`、`⑶` 和 `⒋` |
| 标点符号   | 包含标点和其他各类符号共 200 余个 |

## OpenType 特性

| 特性 | 说明 |
|:-:|:-:|
| `ordn`         | 序数词形式：`1ª`、`2º` 等 |
| `frac`         | 分数：`½`、`¼`、`¾` |
| `sups`         | 上标：`¹`、`²`、`³` |
| `pnum`         | 比例数字（默认开启） |
| `tnum`         | 等宽数字 |
| `case`         | 与大写字母匹配的数字 |
| `fwid`         | 全宽数字和符号 |
| `vert`、`vrt2` | 竖排标点 |
| `locl`         | 地区变体：罗马尼亚语 `Ş` → `Ș`、荷兰语 `íj` → `íȷ́` 等（默认开启） |
| `ss01`         | 变体形式：`J`、`K`、`Q`、`a`、`f`、`l`、`r`、`&`、`№` |
| `ss02`         | 变体形式：`f` |
| `calt`         | 上下文替换：`1+2`、`9:41`、`fi`、`tj` 等（默认开启） |
| `ccmp`         | 字符拼合：破折号 `⸺`（默认开启） |

## 注意事项

- 本字体部分笔画和结构采用了美术字风格的形态处理方式，并未严格遵循中国大陆规范汉字写法，敬请注意。
- 使用场景：
  - 推荐：平面海报、电商文案、视频标题及字幕、书报标题、游戏嵌入等；
  - 不推荐：正文排版、编程代码、手机界面等。

## 关于

- 设计：[oooooohmygosh](https://space.bilibili.com/38053181)、[陈渚](https://github.com/Na9isa)、[佳宁](https://github.com/janine-sui)、[史贺达](https://github.com/HedaShi313)、李健
- 中文设计顾问：[陶帝](https://github.com/TaoDi1032805)
- 字体工程：[曾祥东](https://github.com/stone-zeng)
- 鸣谢：[土井辽太](https://www.monotype.com/cn/工作室/字体设计师/土井辽太)、[刘育黎](https://github.com/willie4624)、[美和园字社](https://www.instagram.com/mhytypeclub)

## 许可证

本字体的发布遵守 [SIL Open Font License v1.1](LICENSE)。

---

Copyright © 2022–2024 [atelierAnchor](https://atelier-anchor.com). All rights reserved.
