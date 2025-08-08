
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ja
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#を使用してEXCELからプライベートテキストを削除する"
head_description: "GroupDocs.Redaction for .NETとC#を使用して、EXCELファイル内のプライベートコンテンツを迅速にクリーンアップします。迅速かつ簡単な赤act方法。"

############################# Header ############################
title: ".NETを使用してEXCEL文書内の敏感なテキストを見つけて削除する" 
description: "C#とGroupDocs.Redaction for .NETを使用して、個人または仕事のファイルを保護します。あなたのプライベート情報は隠れています。"
subtitle: "GroupDocs.Redaction for .NETの主要機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETとは？"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NETは、C#ユーザーにEXCEL文書をクリーンにするためのツールを提供します。テキスト、画像、ノート、ファイルデータなどを赤actします。

############################# Steps ############################
steps:
    enable: true
    title: "Excelファイルの赤act方法"
    content: |
      GroupDocs.Redaction for .NETを使用すれば、.NETアプリ内のプライベートコンテンツを見つけて置き換えるのが簡単です。
      
      1. Redactorを作成し、Excelファイルを開きます。
      2. 赤act設定を選択します。
      3. 検索する内容と何に置き換えるかを指定します。
      4. 赤actを開始し、更新されたファイルを保存します。
   
    code:
      platform: "net"
      copy_title: "コピー"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "サンプルのマスキング"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "クリックしてコピー"
        copy_done: "コピーしました"
      links:
        #  loop
        - title: "さらに多くの例"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "ドキュメンテーション"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // EXCEL文書内のコンテンツを赤actする手順

        // Redactorでファイルを開きます
        using (Redactor redactor  = new Redactor("input.xlsx"))
        {
            // 赤act設定を調整します
            // 検索したい内容と置き換える内容を選択します
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // 赤actを実行し、新しいEXCELファイルを保存します
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "赤actのためのさらなるツール"
  description: "GroupDocs.Redaction for .NETは、さまざまなファイルタイプにわたるプライベート情報を隠す、または消去するのに強力な方法を提供します。安全に共有するのに適しています。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "利用可能な赤actツールと設定"
  features:
    # feature loop
    - title: "プライベートテキストを入れ替える"
      content: "正確な一致を検索し、スマートテキストオプション、正規表現サポートを使用して置き換えます。"

    # feature loop
    - title: "プライベート画像を隠す"
      content: "フル画像またはページの一部を隠すためのオーバーレイを使用します。色、サイズ、および位置を調整できます。"

    # feature loop
    - title: "隠しメタデータを消去する"
      content: "著者名、タイムスタンプ、コメント等の情報を削除して、情報漏洩を防ぎます。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "スマートな赤actのために正規表現を使用"
      content: |
        メールアドレスやIDのようなデータパターンを見つけて削除します。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  クリーンにしたいファイルを開きます
          using (Redactor redactor  = new Redactor("source.xlsx"))
          {
              // EMAILの正規表現パターンをセットして、置き換えテキストを選択します
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // 赤actプロセスを実行します
              redactor.Apply(redaction);

              // 最終的な赤actされたファイルを保存します
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
          }
          ```
        platform: "net"
        copy_title: "コピー"
        install:
          command: "dotnet add package GroupDocs.Redaction"
          copy_tip: "クリックしてコピー"
          copy_done: "コピーしました"
        top_links:
          #  loop
          - title: "結果をダウンロード"
            icon: "download"
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
        links:
          #  loop
          - title: "さらに多くの例"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "ドキュメンテーション"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "始める準備はできましたか？"
  description: "GroupDocs.Redactionの機能を無料で試すか、ライセンスをリクエストしてください"
  items:
    #  loop
    - title: "Nugetをダウンロード"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "ライセンス"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: ".NETを使用してEXCELを赤actする方法"
    exclude: "EXCEL"
    description: ".NETを使用してEXCELファイルをクリーンにしましょう。プライベートなコンテンツを安全に保護します。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/net/replace-sensitive-text//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/net/replace-sensitive-text//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/net/replace-sensitive-text//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/net/replace-sensitive-text//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/net/replace-sensitive-text//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 6
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/net/replace-sensitive-text//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 7
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/net/replace-sensitive-text//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"


---