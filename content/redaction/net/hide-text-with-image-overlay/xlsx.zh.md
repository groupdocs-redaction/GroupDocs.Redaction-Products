
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: zh
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 覆盖层隐藏 XLSX 中的文本"
head_description: "GroupDocs.Redaction for .NET 通过彩色框隐藏 XLSX 文件中的文本。在不改变文档格式的情况下保护信息安全。"

############################# Header ############################
title: "使用覆盖层和 .NET 在 XLSX 文件中遮盖文本" 
description: "使用 C# 和 GroupDocs.Redaction for .NET 添加简单的覆盖层，阻止您 XLSX 文件中的敏感文本。"
subtitle: "GroupDocs.Redaction for .NET 的特点" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET 如何帮助"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET 让使用 C# 的开发人员能够在 XLSX 文件中隐藏不需要的内容。从文本到图片，跨不同文件类型屏蔽任何内容。

############################# Steps ############################
steps:
    enable: true
    title: "确保 Xlsx 文档中的敏感信息安全"
    content: |
      GroupDocs.Redaction for .NET 帮助 .NET 开发人员保护文件。只需几行代码即可隐藏私人内容。
      
      1. 创建一个新的 Redactor 对象，带上您的 Xlsx 文件路径。
      2. 根据需要调整编辑设置。
      3. 添加搜索模式并选择覆盖块的颜色。
      4. 运行编辑并保存您的文件。
   
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
        // 使用覆盖层隐藏 XLSX 中的私人文本

        // 使用 Redactor 加载文件
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // 选择编辑如何工作
            // 输入要隐藏的文本并选择覆盖颜色
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 处理文件并保存更改
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "智能编辑功能"
  description: "使用 GroupDocs.Redaction for .NET 删除或隐藏各种文件类型中的内容。确保私人信息不被公开。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "实用的编辑工具"
  features:
    # feature loop
    - title: "更改任何文本"
      content: "搜索并更新文档中的任意字符串以保护数据。"

    # feature loop
    - title: "隐藏图像内容"
      content: "添加方块或矩形以覆盖图片中敏感部分。"

    # feature loop
    - title: "清理元数据"
      content: "在分享之前删除或重写背景文件详细信息。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式匹配和隐藏"
      content: |
        学习如何使用正则表达式检测和编辑内容
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  打开目标文档
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // 设置模式和覆盖颜色
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // 应用编辑规则
              redactor.Apply(redaction);

              // 导出编辑后的版本
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
    title: "使用 .NET 在 XLSX 文件中隐藏信息"
    exclude: "XLSX"
    description: "使用 .NET 帮助隐藏或删除您 XLSX 文档中的内容。"
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