
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ja
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#を使ってPOWERPOINTからプライベートテキストを削除する"
head_description: "GroupDocs.Redaction for .NETとC#を使って、POWERPOINTプレゼンテーション内のプライベートコンテンツを迅速に隠します。素早い赤act、シンプルなセットアップ。"

############################# Header ############################
title: ".NETを使用してPOWERPOINT文書内の敏感なテキストを編集または隠す" 
description: "プレゼンテーションをクリーンかつプライベートに保つ。GroupDocs.Redaction for .NETとC#を使用して、共有したくないものを削除します。"
subtitle: "GroupDocs.Redaction for .NETでできること" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETとは？"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NETは、C#開発者にPOWERPOINTファイルからセンシティブな情報を削除するために必要なツールを提供します。テキスト、画像、コメント、メタデータを管理します。

############################# Steps ############################
steps:
    enable: true
    title: "Powerpointプレゼンテーションのクリーンアップ手順"
    content: |
      GroupDocs.Redaction for .NETをあなたの.NETアプリ内で使用して、敏感なコンテンツをわずか数ステップで削除または隠します。
      
      1. 新しいRedactorを始めて、Powerpointファイルを読み込みます。
      2. 適用したい赤actルールを選択します。
      3. 検索するテキストと置き換える内容を設定します。
      4. 赤actを実行し、ファイルを保存します。
   
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
        // POWERPOINTプレゼンテーションを赤actする

        // Redactorでファイルを開きます
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // 赤act設定を選択します
            // 検索内容を選び、置き換えるテキストを決定します
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // 変更を適用し、更新されたファイルを保存します
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "使用可能な赤act機能"
  description: "GroupDocs.Redaction for .NETは、多くのファイルタイプ内で敏感なテキスト、画像、隠れたデータを見つけて隠すのに役立ちます。ファイルを安全に共有するのに最適です。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "利用可能な赤actオプション"
  features:
    # feature loop
    - title: "隠れたテキストを置き換える"
      content: "ファイル内の任意の場所でプライベートな単語やフレーズを検索して置き換えます。正規表現もサポートされています。"

    # feature loop
    - title: "画像を隠す"
      content: "形やサイズ、色を調整して、隠すべき写真や領域をマスクします。"

    # feature loop
    - title: "隠れた詳細を削除する"
      content: "著者名、最終編集日、コメントなどのメタデータを削除して、ファイルをクリーンにします。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正規表現パターンを使用して赤act"
      content: |
        メールアドレスやIDのようなデータを見つけてクリーニング。繰り返し利用可能な赤actに最適。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  ファイルを開きます
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // EMAILの正規表現パターンを記述し、置き換えを設定します
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // 赤act設定を適用します
              redactor.Apply(redaction);

              // 赤actされたバージョンを保存します
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
    title: ".NETを使用してPOWERPOINTを赤actする方法"
    exclude: "POWERPOINT"
    description: ".NETを使用してPOWERPOINTファイルをクリーンにしましょう。プライベートなコンテンツを安全に保護します。"
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