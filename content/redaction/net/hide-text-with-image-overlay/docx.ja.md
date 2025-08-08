
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ja
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#を使用してDOCX内の機密テキストを覆う"
head_description: "GroupDocs.Redaction for .NETを使用して、シンプルな四角いオーバーレイでDOCXファイル内のプライベートテキストを保護します。ドキュメントのレイアウトを変更せずに、データを隠してください。"

############################# Header ############################
title: ".NETを使用してDOCXでテキストを覆う" 
description: "C#コードを使用してDOCX文書内の機密内容を隠します。法的、ビジネス、または個人文書の保護に最適です。"
subtitle: "GroupDocs.Redaction for .NETの特徴" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETとは何か？"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NETはC#開発者がDOCXファイルでプライベートなコンテンツを隠したり消去したりするのを助けます。異なるファイル形式でテキスト、画像、メタデータをブロックするために使用します。

############################# Steps ############################
steps:
    enable: true
    title: "Docx文書からのプライベートデータを削除する"
    content: |
      GroupDocs.Redaction for .NETは.NET開発者が数行のコードで文書をクリーンアップするのを助けます。
      
      1. Redactorを作成し、ファイルパスを指定します。
      2. 赤色処理の方法を定義します。
      3. 隠すテキストを入力し、オーバーレイの色を選択します。
      4. ファイルを赤色処理し、保存します。
   
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
        // オーバーレイブロックを使用してDOCX内のテキストを隠す

        // Redactorを作成し、ファイルを読み込みます
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // 赤色処理の好みを設定します
            // 隠すテキストを入力し、ブロックの色を設定します
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 赤色処理を行い、更新された文書を保存します
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "文書をクリーンアップする他の方法"
  description: "GroupDocs.Redaction for .NETを使用して、さまざまなファイルタイプを赤色処理し、コンテンツを安全かつプロフェッショナルに保ちます。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "内蔵されたスマート赤色処理"
  features:
    # feature loop
    - title: "テキストを編集または削除"
      content: "特定のフレーズを見つけて隠すか、置き換えます。"

    # feature loop
    - title: "画像エリアを隠す"
      content: "写真またはスキャンしたページのセンシティブな場所をカバーします。"

    # feature loop
    - title: "隠れたメタデータを消去"
      content: "ユーザーやシステムデータが暴露される可能性のある不可視情報を削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "コンテンツの赤色処理にregexを使用"
      content: |
        正規表現が機密の単語を見つけ、隠す方法を確認してください
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  対象ファイルを開きます
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // パターンと色を設定します
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // 赤色処理ロジックを適用します
              redactor.Apply(redaction);

              // 赤色処理された文書をエクスポートします
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
    title: ".NETを使用してDOCXのコンテンツを隠す"
    exclude: "DOCX"
    description: ".NETを使用してDOCX文書内の機密データをオーバーレイで覆うか、完全に削除します。"
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