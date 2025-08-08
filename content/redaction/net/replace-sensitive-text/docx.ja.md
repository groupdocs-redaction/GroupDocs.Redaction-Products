
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ja
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#を使用してDOCXからプライベートテキストを削除する"
head_description: "GroupDocs.Redaction for .NETとC#を使用して、DOCXファイル内のプライベートコンテンツを迅速に保護します。使用が簡単で、すぐに結果が得られます。"

############################# Header ############################
title: ".NETを使用してDOCX文書内の敏感なテキストを見つけて隠す" 
description: "個人用またはビジネス用に関わらず、GroupDocs.Redaction for .NETとC#はプライベート情報を視界から外します。"
subtitle: "GroupDocs.Redaction for .NETがあなたをどう助けるか" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETとは？"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NETは、C#開発者にDOCXファイルのセンシティブなコンテンツを見つけて掃除するためのツールを提供します。テキスト、画像、ノートなどを扱います。

############################# Steps ############################
steps:
    enable: true
    title: "Docxファイルのコンテンツを赤actする方法"
    content: |
      GroupDocs.Redaction for .NETでプライベートテキストをクリーンアップするために、.NETプロジェクト内でこれらの簡単なステップに従います。
      
      1. 新しいRedactorを開始し、Docxファイルを読み込みます。
      2. 希望する赤act設定を選択します。
      3. 見つけるテキストと何を置き換えるかを入力します。
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
        // DOCXファイルのテキストを赤actする手順

        // Redactorを使用してファイルを読み込みます
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // 必要な赤actオプションを選択します
            // 検索する内容と置き換える内容を設定します
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // ツールを実行し、赤actされたファイルを保存します
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "その他の赤act機能"
  description: "GroupDocs.Redaction for .NETを使用すると、さまざまなファイルの隠れたまたは表示されたコンテンツを簡単に削除できます。安全に共有するのに最適です。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "赤actツールの概要"
  features:
    # feature loop
    - title: "プライベートテキストを置き換える"
      content: "ファイル内の特定のテキストを検索し、置き換えます。プレーンテキストまたはパターンで動作します。"

    # feature loop
    - title: "敏感な画像を隠す"
      content: "画像の一部またはページ全体をオーバーレイでマスクします。サイズや位置を調整できます。"

    # feature loop
    - title: "隠れたデータを消去する"
      content: "名前、コメント、タイムスタンプなどのメタデータを削除し、すべてをクリアに保ちます。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正規表現を使用してパターンを見つけて赤act"
      content: |
        特定のデータタイプ（メールアドレスやID番号など）を検索し、自動的にクリーニングします。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  クリーンにしたいファイルを開きます
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // EMAILの正規表現ルールと置き換え文字列を作成します
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // 設定を使用して赤actを実行します
              redactor.Apply(redaction);

              // 更新されたファイルを保存します
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
    title: ".NETを使用してDOCX内のデータを赤actする"
    exclude: "DOCX"
    description: ".NETを使用してDOCX文書内の情報を隠し、プライベートで安全に保ちます。"
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