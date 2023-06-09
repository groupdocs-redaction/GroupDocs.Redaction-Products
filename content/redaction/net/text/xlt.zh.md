













---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "zh/redaction/net/text/xlt"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLTM XLTX  

############################# Head ############################
head_title: "通过 .NET Core 编辑文档中的敏感信息"
head_description: "使用精确的短语或正则表达式对不同格式的文档应用文本编辑"

############################# Header ############################
title: "在 .NET Core 应用程序中通过 C# 编辑 XLT 文件"
description: "在 Windows、Linux 和 macOS 上搜索和替换 Office 和 OpenOffice 文档、电子表格和演示文稿以及 CSV 中的文本"

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: ".NET API 的文档编辑"
    content: |
        一个独立于格式的界面，用于编辑 PDF、Word、Excel、PowerPoint 文档和图像中的敏感和分类信息，包括更改元数据和删除评论的能力。 使用 GroupDocs.Redaction 工具，您可以编辑文本并将编辑后的文档保存为 PDF，将所有页面转换为光栅图像或将文档保留为原始格式以供进一步编辑。

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "通过 C# 从 XLT 编辑精确文本"
      content_left: |
        [GroupDocs.Redaction](/redaction/net/) 使 .NET 开发人员可以通过几个简单的步骤轻松添加 XLT 文件编辑功能。 

        * 创建 [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) 类的实例并加载 XLT 文件 
        * 创建一个 [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction) 类的实例来查找和替换文本
        * 使用 ExactPhraseRedaction 的对象调用 [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) 方法

      title_right: "开始使用密文 API"
      content_right: |
        从命令行安装为 ```nuget install GroupDocs.Redaction``` 或通过 Visual Studio 的包管理器控制台使用 ```Install-Package GroupDocs.Redaction```。
        或者，从 [下载](https://downloads.groupdocs.com/redaction/net) 获取 ZIP 文件中的离线 MSI 安装程序或 DLL，并在您的项目中手动引用它。

      code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.xlt"))
        {
        	redactor.Apply(new ExactPhraseRedaction("John Doe", new ReplacementOptions("[personal]")));
        	redactor.Save();
        }
        ```
      
    - title_left: "系统要求"
      content_left: |
        所有主要平台和操作系统都支持用于 .NET API 的 GroupDocs.Redaction。 如需完整的系统要求指南，请访问 [系统要求](https://docs.groupdocs.com/redaction/net/system-requirements/) 在执行以下代码之前，请确保您已安装以下先决条件 系统：
        * 操作系统：Microsoft Windows、Linux、MacOS
        * 开发环境：Visual Studio、Xamarin、MonoDevelop 等
        * 框架：.NET Framework、.NET Standard、.NET Core、Mono
        * 从 [NuGet](https://www.nuget.org/packages/GroupDocs.Redaction/) 获取最新版本的 GroupDocs.Assembly .NET APIs
        
      title_right: "为什么使用 GroupDocs.Redaction"
      content_right: |
        * 允许用户添加自定义文档格式和编辑类型
        * 删除敏感信息不需要额外的软件
        * 能够将页面范围渲染文档设置为 PDF
        * 编辑不同类型元数据的简便方法：作者姓名、版本、标题、主题、描述等等
        * 文件信息提取——文件类型、页数等。
        * 全面支持多种数据格式

############################# Demos ############################
demos:
    enable: true

############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---