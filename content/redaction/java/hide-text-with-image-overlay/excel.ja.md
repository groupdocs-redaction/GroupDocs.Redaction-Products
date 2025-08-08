
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ja
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用してEXCELのテキストをオーバーレイで隠す"
head_description: "GroupDocs.Redaction for Javaを使用して、色付きのオーバーレイを適用することでEXCELファイル内の機密コンテンツを保護します。ドキュメントのレイアウトをそのままにします。"

############################# Header ############################
title: "Java内のオーバーレイを使用してEXCELデータを修正する" 
description: "Javaコードを使用してEXCELスプレッドシート内の機密情報をマスクします。データを安全に保持するための効果的な方法です。"
subtitle: "GroupDocs.Redaction for Javaの主要機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaを選ぶ理由"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Javaは、Java開発者がEXCELスプレッドシート内のコンテンツを迅速に隠したり清掃したりできるように設計されています。

############################# Steps ############################
steps:
    enable: true
    title: "Excelスプレッドシートの情報を隠す"
    content: |
      GroupDocs.Redaction for Javaは、プライベート情報を隠してファイルを保護する簡単な方法をJavaの開発者に提供します。
      
      1. Redactorを起動し、スプレッドシートを読み込みます。
      2. 必要に応じて修正ルールを設定します。
      3. テキストとオーバーレイ色を選択します。
      4. 適用してファイルを保存します。
   
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
        // EXCEL内でテキストを隠すためにオーバーレイを使用する

        // Redactorを作成し、ファイルを読み込みます
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // 修正ルールを選択します
            // 隠したい内容を入力し、色を選択します
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 修正を適用して、ファイルを保存します
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "必須のデータ保護ツール"
  description: "GroupDocs.Redaction for Javaを使用して、レイアウトや意味を壊さずにスプレッドシートから機密情報を隠したり削除したりします。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "安全なデータクリーニングを目的とした設計"
  features:
    # feature loop
    - title: "テキストを編集または隠す"
      content: "保護が必要なテキストを見つけてブロックします。"

    # feature loop
    - title: "機密ビジュアルを覆う"
      content: "チャート領域や画像に色付きのブロックを適用します。"

    # feature loop
    - title: "メタデータを削除する"
      content: "文書の履歴、著者名、またはタイムスタンプをクリアします。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regexによる修正"
      content: |
        Regexを使用してテキストを自動的に見つけて隠します
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  スプレッドシートを開く
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // パターンとオーバーレイの詳細を設定します
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // 修正を適用します
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
    title: "Javaを使用してEXCELシートを修正する"
    exclude: "EXCEL"
    description: "Javaのオーバーレイとツールを使用して、EXCEL内の機密データを隠したりクリーンアップしたりします。"
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