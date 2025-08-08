
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ja
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用してPDFの機密テキストを削除する"
head_description: "GroupDocs.Redaction for Javaを使用して、PDFファイルからプライベートデータを検索し、削除します。シンプルで迅速、信頼性の高いテキストの赤除。"

############################# Header ############################
title: "Javaを使ってPDFファイルから機密データを削除する" 
description: "JavaとGroupDocs.Redaction for Javaを使用してPDFファイルをクリーンアップします。個人、法的、またはビジネスコンテンツを削除します。"
subtitle: "GroupDocs.Redaction for Javaでできること" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaについて"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for JavaはJava開発者に、PDFファイルをクリーンアップするシンプルな方法を提供します。テキスト、画像、コメント、隠れたデータを削除または置換します。

############################# Steps ############################
steps:
    enable: true
    title: "Pdfファイルのテキストを赤除する方法"
    content: |
      Javaの開発者は、GroupDocs.Redaction for Javaを使って機密コンテンツを数ステップで削除できます。
      
      1. Redactorを作成し、Pdfファイルを読み込みます。
      2. 希望する赤除設定を選択します。
      3. 検索したいテキストとその置き換えを入力します。
      4. 赤除を適用してファイルを保存します。
   
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
        // PDFファイルのクリーンアップ方法

        // Redactorを作成し、ドキュメントを読み込みます。
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // 赤除ルールを設定します。
            // 削除するテキストと置き換え内容を追加します。
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 赤除を適用し、新しいファイルを保存します。
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "さらなる赤除機能"
  description: "GroupDocs.Redaction for Javaは多くの形式で機密情報を削除します。テキスト、画像、およびメタデータを赤除しながら、ファイルを読みやすく保ちます。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "テキストおよび画像の赤除ツール"
  features:
    # feature loop
    - title: "テキストの検索と置換"
      content: "任意の単語やフレーズを検索し、置換します。プレーンテキストまたはregexと連携します。"

    # feature loop
    - title: "画像コンテンツを覆う"
      content: "カラフルなオーバーレイを使用して、画像や画像の一部を隠します。"

    # feature loop
    - title: "メタデータをクリーンアップ"
      content: "共有する前に、著者名、日付、その他の隠れた詳細を削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regexを使ったテキストの赤除"
      content: |
        Regexを使用して、メールアドレスやID、カスタムフォーマットなどのパターンを見つけて隠します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  編集したいドキュメントを開きます。
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // EMAILのregexパターンと置き換えテキストを追加します。
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // 一致するコンテンツに赤除を適用します。
              redactor.apply(redaction);

              // 赤除されたバージョンを保存します。
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Javaを使用してPDFファイルを赤除する"
    exclude: "PDF"
    description: "ツールを使用してJavaでPDFの内容を赤除し、個人またはビジネス情報を保護します。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/java/replace-sensitive-text//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/java/replace-sensitive-text//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/java/replace-sensitive-text//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/java/replace-sensitive-text//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/java/replace-sensitive-text//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 6
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/java/replace-sensitive-text//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 7
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/java/replace-sensitive-text//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"


---