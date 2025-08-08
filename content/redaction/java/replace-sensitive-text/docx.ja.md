
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ja
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用してDOCXからプライベートテキストを削除する"
head_description: "GroupDocs.Redaction for Javaを使用して、DOCXファイル内のコンテンツを保護します。テキスト、画像、メタデータの迅速で簡単な赤除。"

############################# Header ############################
title: "Javaを使ってDOCXドキュメント内のテキストを編集または削除する" 
description: "JavaとGroupDocs.Redaction for Javaを使用して、DOCXファイル内の個人またはビジネスコンテンツを保護します。"
subtitle: "GroupDocs.Redaction for Javaでできること" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaとは？"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for JavaはJava開発者がDOCXファイルをクリーンアップして赤除するのを支援します。テキスト、画像、コメント、隠れたデータを簡単に削除できます。

############################# Steps ############################
steps:
    enable: true
    title: "Docxファイルでコンテンツを赤除する方法"
    content: |
      JavaプロジェクトでGroupDocs.Redaction for Javaを使用して、ファイルを共有する前にクリーンアップします。
      
      1. Redactorを作成し、ファイルを読み込みます。
      2. 赤除オプションを選択します。
      3. 検索したいテキストとその置き換えを入力します。
      4. 赤除を適用し、ファイルを保存します。
   
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
        // DOCXファイルのコンテンツを赤除する

        // Redactorを使ってドキュメントを読み込みます。
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // 赤除オプションを設定します。
            // 検索して置換する内容を定義します。
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 赤除を適用し、保存します。
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "赤除オプション"
  description: "GroupDocs.Redaction for Javaを使用すれば、多くのファイルタイプから機密コンテンツをクリーンアップできます。構造を損なうことなくドキュメントを安全に保ちます。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "コンテンツを削除するツール"
  features:
    # feature loop
    - title: "テキストを置換する"
      content: "特定のコンテンツを見つけて、文書全体で置換します。"

    # feature loop
    - title: "画像や部分を隠す"
      content: "敏感な視覚情報をカラフルなオーバーレイで隠します。"

    # feature loop
    - title: "隠れたデータを削除"
      content: "著者名、タイムスタンプ、ドキュメントプロパティなどのメタデータをクリアします。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regexを使用した赤除"
      content: |
        正規表現を使用して、電話番号やメールアドレスのパターンを検出して赤除します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  ドキュメントを読み込みます。
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // EMAILのregexパターンと置き換えテキストを設定します。
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // 赤除を実行します。
              redactor.apply(redaction);

              // クリーンファイルを保存します。
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
    title: "Javaを使用してDOCXファイルをクリーンアップする"
    exclude: "DOCX"
    description: "Javaが提供するツールを使用して、DOCXドキュメント内の機密コンテンツを赤除または置換します。"
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