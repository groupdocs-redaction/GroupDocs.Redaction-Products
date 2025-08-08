
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ja
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaオーバーレイを使用してWORDのテキストを修正する"
head_description: "GroupDocs.Redaction for Javaを使用して、WORDファイル内の機密テキストを色付きのブロックで覆い、文書構造を変えません。"

############################# Header ############################
title: "JavaでWORDファイルにオーバーレイ修正を適用する" 
description: "JavaとGroupDocs.Redaction for Javaを使用して、色付きのオーバーレイでWORD文書の重要な詳細を隠します。"
subtitle: "GroupDocs.Redaction for Javaの機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaを知る"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Javaは、JavaのユーザーがWORDの修正を完全に制御できます。隠したいものは何でも—テキスト、視覚、またはメタデータを隠します。

############################# Steps ############################
steps:
    enable: true
    title: "Word形式のプライベート情報を保護する"
    content: |
      GroupDocs.Redaction for Javaは、Javaの開発者にファイルをクリーンアップしてコンテンツを保護するための迅速な方法を提供します。
      
      1. Redactorを起動し、Wordファイルを読み込みます。
      2. 修正オプションを選択します。
      3. テキストパターンとオーバーレイ色を追加します。
      4. 修正を実行し、ファイルを保存します。
   
    code:
      platform: "java"
      copy_title: "コピー"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "サンプルのマスキング"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "クリックしてコピー"
        copy_done: "コピーしました"
      links:
        #  loop
        - title: "さらに多くの例"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "ドキュメンテーション"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // WORD内のオーバーレイを使用してテキストを隠す

        // Redactorを使用してドキュメントを開く
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // 修正の好みを設定する
            // キーワードを追加し、色を選択する
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 修正を適用して、赤actedファイルを保存する
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "修正機能の幅を広げる"
  description: "GroupDocs.Redaction for Javaを使用して、レイアウトをそのままにしてファイルから可視および隠れたコンテンツを削除します。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "シンプルで清潔な出力"
  features:
    # feature loop
    - title: "テキストを置き換える"
      content: "見られるべきでない単語や用語を隠します。"

    # feature loop
    - title: "視覚をマスクする"
      content: "色付きのオーバーレイを使用して画像やその一部を隠します。"

    # feature loop
    - title: "メタデータを削除する"
      content: "ファイルのプロパティに隠されている詳細を削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regexを使用した修正"
      content: |
        特定のコンテンツを自動的に隠すためのRegexの利用方法を学びます
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  修正するドキュメントを読み込む
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Regexパターンとオーバーレイ色を定義する
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // 修正を適用する
              redactor.apply(redaction);

              // クリーンバージョンを保存します
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "コピー"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "ドキュメンテーション"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "始める準備はできましたか？"
  description: "GroupDocs.Redactionの機能を無料で試すか、ライセンスをリクエストしてください"
  items:
    #  loop
    - title: "Mavenをダウンロード"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "ライセンス"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Javaを使用してWORDコンテンツを修正する"
    exclude: "WORD"
    description: "Javaを使用してWORDドキュメントを非公開に保ち、機密データを隠したり削除したりします。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/java/hide-text-with-image-overlay//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/java/hide-text-with-image-overlay//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/java/hide-text-with-image-overlay//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/java/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/java/hide-text-with-image-overlay//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 6
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/java/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 7
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/java/hide-text-with-image-overlay//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"


---