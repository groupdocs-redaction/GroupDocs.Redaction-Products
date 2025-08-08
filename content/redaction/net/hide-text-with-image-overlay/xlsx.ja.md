
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ja
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#オーバーレイでXLSXのテキストを隠す"
head_description: "GroupDocs.Redaction for .NETはカラーボックスを使用してXLSXファイル内のテキストを隠すのを助けます。ドキュメントのフォーマットを変更せずに情報を安全に保ちます。"

############################# Header ############################
title: ".NETを使用してXLSXファイルのテキストをマスク" 
description: "C#とGroupDocs.Redaction for .NETを使用して、XLSXファイル内の機密テキストをブロックするシンプルなオーバーレイを追加します。"
subtitle: "GroupDocs.Redaction for .NETの特徴" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETがどのように役立つか"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NETはC#を使用する開発者がXLSXファイル内の不要なコンテンツを隠すことを可能にします。異なるファイルタイプで単語から画像まで、何でもブロックできます。

############################# Steps ############################
steps:
    enable: true
    title: "Xlsx文書内の機密情報を安全に保つ"
    content: |
      GroupDocs.Redaction for .NETは.NET開発者がファイルを保護するのを助けます。数行のコードでプライベートコンテンツを隠すことができます。
      
      1. Xlsxファイルパスを指定して新しいRedactorオブジェクトを作成します。
      2. 必要に応じて赤色処理設定を調整します。
      3. 検索パターンを追加し、オーバーレイブロックの色を選択します。
      4. 赤色処理を実行し、ファイルを保存します。
   
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
        // オーバーレイを使用してXLSXのプライベートテキストを覆う

        // Redactorでファイルを読み込みます
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // 赤色処理の実行方法を選択します
            // 隠すテキストを入力し、オーバーレイ色を選択します
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ファイルを処理し、変更を保存します
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "スマートな赤色処理機能"
  description: "GroupDocs.Redaction for .NETを使用してさまざまなファイルタイプのコンテンツを消去または隠します。プライベートな詳細を公共の目から遠ざけます。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "実用的な赤色処理ツール"
  features:
    # feature loop
    - title: "任意のテキストを変更"
      content: "文書内の任意の文字列を検索し、データを保護します。"

    # feature loop
    - title: "画像コンテンツを隠す"
      content: "敏感な部分を覆うために四角や長方形を追加します。"

    # feature loop
    - title: "メタデータをクリーニング"
      content: "共有する前にファイルのバックグラウンドの詳細を削除または上書きします。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "regexで一致して隠す"
      content: |
        正規表現を使用してコンテンツを検出し、赤色処理する方法を学びます
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  ターゲット文書を開きます
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // パターンとオーバーレイ色を設定します
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // 赤色処理ルールを適用します
              redactor.Apply(redaction);

              // 赤色処理されたバージョンをエクスポートします
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: ".NETを使用してXLSXファイル内の情報を隠す"
    exclude: "XLSX"
    description: ".NETの助けを借りて、XLSXの文書にオーバーレイを追加するか、部分を削除して機密の詳細を保護します。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 6
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 7
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"


---