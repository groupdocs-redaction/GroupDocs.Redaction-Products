
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ja
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#オーバーレイでPOWERPOINT内の機密テキストを隠す"
head_description: "GroupDocs.Redaction for .NETは、シンプルなオーバーレッド赤色処理を使用してPOWERPOINTファイルの一部を隠すことを可能にします。文書の構造を変更せずに安全に保ちます。"

############################# Header ############################
title: ".NETを使用したPOWERPOINT内のテキスト赤色処理" 
description: "C#とGroupDocs.Redaction for .NETの助けを借りて、POWERPOINTファイル内のコンテンツをオーバーレイブロックで保護します。"
subtitle: "GroupDocs.Redaction for .NETの内部ツール" 

############################# About ############################
about:
    enable: true
    title: "このツールについて"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NETはC#ユーザーが必要に応じてPOWERPOINT文書をクリーンアップできるようにします。テキスト、メタデータ、または画像をカバーまたは削除します。

############################# Steps ############################
steps:
    enable: true
    title: "Powerpoint文書内のコンテンツを安全に保つ"
    content: |
      GroupDocs.Redaction for .NETを使用して、.NETアプリアプリで一般配布前にファイルをクリーンにします。
      
      1. 新しいRedactorインスタンスにファイルパスを渡します。
      2. 何を、どのように赤色処理したいかを設定します。
      3. テキストパターンを定義し、オーバーレイの色を設定します。
      4. 赤色処理を行い、更新されたファイルを保存します。
   
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
        // POWERPOINT内のテキストを隠すためにオーバーレイを使用する

        // Redactorを使用してファイルを開きます
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // 赤色処理を調整します
            // テキストを選択し、ブロッキング色を決定します
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 実行して赤色処理されたファイルを保存します
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "機密データを簡単に隠す"
  description: "GroupDocs.Redaction for .NETを使用して、法律、ビジネス、または個人ファイル内のデータを保護するための文書タイプのコンテンツを削除するか覆い隠すことができます。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "柔軟な文書の赤色処理"
  features:
    # feature loop
    - title: "テキストを差し替える"
      content: "単語や数字を見つけて、それらを置き換えたり隠したりします。"

    # feature loop
    - title: "画像やセクションを隠す"
      content: "ページの画像や選択された箇所にオーバーレイを追加します。"

    # feature loop
    - title: "追加データを削除"
      content: "隠された情報が露出する可能性があるメタデータをクリアします。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "Find & redact with regex"
      content: |
        正規表現がテキストを識別し、隠すのに役立つ方法を示します。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  赤色処理が必要なファイルを開きます
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // regexを使用してルールを設定します
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // 赤色処理プロセスを実行します
              redactor.Apply(redaction);

              // クリーンなバージョンを保存します
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
    title: ".NETを使用してPOWERPOINTのコンテンツを隠す"
    exclude: "POWERPOINT"
    description: ".NETを使用してPOWERPOINTファイルからオーバーレイを追加したり、データをクリアして機密情報を保持します。"
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