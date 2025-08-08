
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ja
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用してPOWERPOINTからプライベートテキストを削除する"
head_description: "GroupDocs.Redaction for JavaとJavaを使用して、POWERPOINTファイル内の機密データを保護します。迅速かつ簡単なテキストの赤除。"

############################# Header ############################
title: "Javaを使用してPOWERPOINTドキュメント内の機密テキストを編集または隠す" 
description: "JavaとGroupDocs.Redaction for Javaを使用して、POWERPOINTファイル内の機密コンテンツを保護します。個人用でもビジネス用でも、データはプライベートのままです。"
subtitle: "GroupDocs.Redaction for Javaでできること" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaを紹介します"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for JavaはJava開発者に、POWERPOINTコンテンツを赤除するために必要なすべてを提供します。テキスト、画像、注釈、コメント、およびメタデータを人気のあるファイルタイプでクリーンアップできます。

############################# Steps ############################
steps:
    enable: true
    title: "Powerpointドキュメント内のコンテンツをクリーンアップする手順"
    content: |
      GroupDocs.Redaction for Javaを使用してJavaアプリでプライベートコンテンツを削除または隠す。シンプルで迅速な赤除。
      
      1. Redactorを初期化し、Powerpointファイルを読み込みます。
      2. 必要な赤除オプションを設定します。
      3. 検索するテキストと置き換えるテキストを指定します。
      4. 赤除を実行し、ファイルを保存します。
   
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
        // POWERPOINTファイル内のテキストを赤除する方法

        // Redactorコンストラクターを使ってファイルを読み込みます。
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // 赤除の好みを設定します。
            // 検索する内容と置き換えるものを選択します。
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 赤除を適用し、新しいPOWERPOINTファイルを保存します。
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "さらなる赤除ツール"
  description: "GroupDocs.Redaction for Javaはさまざまなファイル形式の機密コンテンツを削除または隠すのに役立ちます。ドキュメントをクリーンで安全に保つことができます。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "テキスト、画像、メタデータの赤除ツール"
  features:
    # feature loop
    - title: "機密テキストを置換"
      content: "ファイル内のどこでも一致するテキストを見つけて置き換えます。regexとスマート検索オプションをサポートしています。"

    # feature loop
    - title: "機密画像を隠す"
      content: "オーバーレイを使用して、画像や特定の領域を隠します。ページ設定や色を調整できます。"

    # feature loop
    - title: "隠れたメタデータを削除"
      content: "隠れたデータを削除します。著者名、タイムスタンプ、コメントなど、プライバシーを保護します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regexを基にした赤除"
      content: |
        正規表現を使用して、メールやIDのような敏感なテキストパターンを検索し、赤除します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  クリーンにしたいドキュメントを開きます。
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // EMAILのregexパターンと置き換えに使用するテキストを定義します。
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // 赤除ルールを適用します。
              redactor.apply(redaction);

              // 最終的な赤除ファイルを保存します。
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
    title: "Javaを使用してPOWERPOINT内のコンテンツを赤除する"
    exclude: "POWERPOINT"
    description: "Javaツールを使用して、POWERPOINTファイルのテキストを赤除し、公式および個人的なデータを保護します。ドキュメントを安全でプライベートに保つための信頼できる方法。"
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