
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ja
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用してPDFのプライベートテキストをオーバーレイで隠す"
head_description: "GroupDocs.Redaction for Javaは、色付きのボックスを配置することでPDFファイル内の機密情報を隠すことができます。ファイルの見た目を変えずにデータを保護します。"

############################# Header ############################
title: "Javaのオーバーレイを使用してPDF文書のテキストをマスクする" 
description: "Javaを使用してPDFファイルの内容を完全に制御します。財務、法律、または個人情報を保護するために修正を使用します。"
subtitle: "GroupDocs.Redaction for Javaの主な機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaの提供内容"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Javaは、Javaの開発者にPDFファイルからのコンテンツの隠蔽や削除を簡単に行う手段を提供します。さまざまな文書形式でテキスト、画像、メタデータを覆います。

############################# Steps ############################
steps:
    enable: true
    title: "Pdfファイルの機密情報を保護する"
    content: |
      GroupDocs.Redaction for Javaを使用して、Javaの開発者がわずか数ステップでプライベートコンテンツを隠せるようにします。
      
      1. Redactorを起動し、Pdfファイルを読み込みます。
      2. 修正の設定を行います。
      3. 検索する内容を選択し、オーバーレイの色を決定します。
      4. 修正を適用し、ドキュメントを保存します。
   
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
        // 色付きオーバーレイを使用してPDF内のテキストを隠す

        // Redactorにファイルパスを渡す
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // 修正設定を調整する
            // ターゲットテキストと色を設定する
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 修正を適用して、赤acted PDFを保存する
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ドキュメントの可視性を制御する"
  description: "GroupDocs.Redaction for Javaは、ファイルの一部をブロックまたは削除しながら、視認性と共有を容易にします。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "強力な修正ツール"
  features:
    # feature loop
    - title: "テキストをターゲットにし隠す"
      content: "ドキュメントを検索して特定の単語やフレーズを隠し、プライベート情報を保護します。"

    # feature loop
    - title: "画像を覆う"
      content: "オーバーレイを追加して視覚要素を完全または部分的に隠します。"

    # feature loop
    - title: "メタデータを削除する"
      content: "隠れたドキュメントの詳細をクリアし、意図しない露出を避けます。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regexを使用してテキストを隠す"
      content: |
        この例では、特定のコンテンツを見つけて隠すために正規表現を使用します
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  処理したいファイルを読み込む
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // テキストパターンとオーバーレイ色を設定する
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // 修正を適用する
              redactor.apply(redaction);

              // 変更を保存する
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
    title: "Javaを使用してPDFファイルを保護する"
    exclude: "PDF"
    description: "Javaを使用してPDF文書内のコンテンツを覆ったり削除したりします。プライベート情報を安全に保持する素晴らしい方法です。"
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