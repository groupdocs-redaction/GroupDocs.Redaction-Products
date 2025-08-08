
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: zh
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 通过覆盖层隐藏 PDF 中的敏感文本"
head_description: "使用 GroupDocs.Redaction for .NET，您可以通过放置彩色方形覆盖层来隐藏 PDF 文件中的敏感文本。保持私人数据安全，而不改变原始布局。"

############################# Header ############################
title: "使用 .NET 通过覆盖层隐藏 PDF 文档中的敏感文本" 
description: "使用 C# 控制 PDF 文件内容。利用编辑保护法律、财务和个人信息。"
subtitle: "GroupDocs.Redaction for .NET 功能" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET 为 C# 开发人员提供了从 PDF 文件中隐藏或删除内容的工具。这是一种简单的方式来保持文档的安全。您可以在许多文件类型中覆盖文本、图像或元数据。

############################# Steps ############################
steps:
    enable: true
    title: "保护 Pdf 文档中的商业数据"
    content: |
      GroupDocs.Redaction for .NET：旨在帮助您的 .NET 应用程序保持文档安全。快速而有效地编辑私人信息。
      
      1. 创建一个 Redactor 实例并提供要编辑的 Pdf 文件路径。
      2. 配置编辑设置以获取所需的结果。
      3. 设置要搜索的文本模式并选择覆盖颜色。
      4. 编辑文档并保存更改。
   
    code:
      platform: "net"
      copy_title: "复制"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "样本删除内容"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "点击复制"
        copy_done: "已复制"
      links:
        #  loop
        - title: "更多示例"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "文档"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // 使用覆盖图像隐藏 PDF 中的敏感文本

        // 将文件路径传递给 Redactor 构造函数
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // 设置编辑选项
            // 定义文本模式和覆盖颜色
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 编辑并保存更新后的 PDF 文件
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "编辑文档中的内容"
  description: "使用 GroupDocs.Redaction for .NET，您可以在多种文件类型中删除或隐藏内容。在保持文档易于阅读和共享的同时，保护敏感信息。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "高级编辑选项"
  features:
    # feature loop
    - title: "随意编辑文本"
      content: "搜索并替换文档中的任何匹配文本，以帮助保护机密数据。"

    # feature loop
    - title: "覆盖图片"
      content: "在完整图像或选定区域上放置覆盖层以隐藏私人视觉内容。"

    # feature loop
    - title: "处理元数据"
      content: "擦除或更改隐藏元数据以防止不必要的数据泄露。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式隐藏文本"
      content: |
        此示例展示了如何使用正则表达式查找和隐藏文本
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  加载您要编辑的文档
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // 定义编辑设置：文本模式和颜色
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // 应用编辑到内容
              redactor.Apply(redaction);

              // 保存编辑后的版本
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
          }
          ```
        platform: "net"
        copy_title: "复制"
        install:
          command: "dotnet add package GroupDocs.Redaction"
          copy_tip: "点击复制"
          copy_done: "已复制"
        top_links:
          #  loop
          - title: "下载结果"
            icon: "download"
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
        links:
          #  loop
          - title: "更多示例"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "文档"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "准备好开始了吗？"
  description: "免费尝试 GroupDocs.Redaction 的功能或请求许可证"
  items:
    #  loop
    - title: "Nuget 下载"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "许可证"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "使用 .NET 编辑 PDF 内容"
    exclude: "PDF"
    description: "使用 .NET 覆盖或擦除 PDF 文件中的内容。这是保护敏感或正式文件的明智选择。"
    items: 
        # format loop 1
        - name: "红行动 PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Adobe 便携式文档格式"

        # format loop 2
        - name: "红行动 Word"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "MS Word 和 Open Office 文档"
          
        # format loop 3
        - name: "红行动 Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "MS Excel 和 Open Office 电子表格"

        # format loop 4
        - name: "红行动 PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPoint 和 Open Office 演示文稿"

        # format loop 5
        - name: "红行动 DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Microsoft Word 开放 XML 文档"
          
        # format loop 6
        - name: "红行动 XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft Excel 开放 XML 电子表格"
          
        # format loop 7
        - name: "红行动 PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "PowerPoint 开放 XML 演示文稿"


---