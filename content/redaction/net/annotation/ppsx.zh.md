---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "zh/redaction/net/annotation/ppsx"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "通过 .NET Core 使用正则表达式编辑 PPSX 文档中的注释"
head_description: "使用正则表达式从不同格式的文档中删除注释中的敏感信息"

############################# Header ############################
title: "通过 .NET 核心应用中的 C# 和正则表达式编辑 PPSX 文件注释"
description: "查找并删除 Office 和 OpenOffice 文档、电子表格和演示文稿以及 Windows、Linux 和 macOS 上的 PPSX 中的敏感信息"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: ".NET API 的文档注释修订"
    content: |
        独立于格式的单一界面，用于清理 PDF、Word、Excel、PowerPoint 文档和图像中的敏感和机密信息，包括更改元数据和删除注释的功能。使用 GroupDocs.Redaction for .NET 工具，您可以编辑机密信息并将编辑后的文档保存在 PDF 中，将所有页面转换为光栅图像或保留文档的原始格式以供进一步编辑。

############################# Steps ############################
steps:
    enable: true
    title_left: "通过 C# 使用正则表达式编辑来自 PPSX 的注释"
    content_left: |
        [GroupDocs.Redaction](zh//redaction/net/) 允许 .NET 开发者通过几个简单的步骤使用完整的正则表达式来编辑 PPSX 文件。

        *   创建 [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) 类的实例并加载 PPSX 文件
        *   创建 [AnnotationRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/annotationredaction) 类的实例来查找和替换注释
        *   使用 AnnotationRedaction 对象调用 [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) 方法
        
    title_right: "如何使用 GroupDocs 密文 API"
    content_right: |
        通过命令行“nuget install GroupDocs.Redaction”安装包，或通过 Visual Studio 的包管理器控制台使用“Install-Package GroupDocs.Redaction”安装包。 
        或者，从 [下载](https://downloads.groupdocs.com/redaction/net) 获取 ZIP 文件中的离线 MSI 安装程序或 DLL，并在项目中手动引用它。  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.ppsx"))
        {
        	redactor.Apply(new AnnotationRedaction("(?im:john)", "[redacted]"));
        	redactor.Save();
        }
        ```

############################# Demos ############################
demos:
    enable: true
############################# About Formats ############################
about_formats:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---