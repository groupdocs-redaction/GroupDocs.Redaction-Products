
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ja
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用してWORDからプライベートテキストを削除する"
head_description: "GroupDocs.Redaction for Javaを使用して、WORDファイルを安全に保ちます。機密データを赤除するための迅速でシンプルなクリーンアップ。"

############################# Header ############################
title: "Javaを使用してWORDファイル内のテキストを編集または削除する" 
description: "GroupDocs.Redaction for JavaとJavaを使用して、WORDファイル内の重要なコンテンツを保護します。自信を持ってビジネス、法的、または個人データを赤除します。"
subtitle: "GroupDocs.Redaction for Javaでできること" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaとは？"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for JavaはJava開発者に、WORDファイルを赤除するための信頼性のある方法を提供します。数行のコードでテキスト、画像、コメント、隠れた詳細をクリーンアップできます。

############################# Steps ############################
steps:
    enable: true
    title: "Wordドキュメントの赤除手順"
    content: |
      GroupDocs.Redaction for JavaをあなたのJavaプロジェクトで使用し、ファイルを共有する前にクリーンアップします。
      
      1. Redactorを作成し、Wordドキュメントを読み込みます。
      2. お気に入りの赤除オプションを設定します。
      3. 検索したいテキストと置き換えるものを選択します。
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
        // WORDドキュメントを赤除する

        // Redactorを使用してファイルを読み込みます。
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // 赤除ルールを選択します。
            // 検索するテキストと置き換え内容を入力します。
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 赤除を実行し、新しいファイルを保存します。
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "さらなる赤除機能"
  description: "GroupDocs.Redaction for Javaは異なるファイルタイプから機密情報をクリーンアップするのに役立ちます。テキスト、画像、コメント、隠れた詳細をスムーズに削除します。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "テキスト、画像、メタデータの赤除"
  features:
    # feature loop
    - title: "テキストの検索と置換"
      content: "特定のコンテンツを見つけて、全ファイルで置換または削除します。regexもサポートされます。"

    # feature loop
    - title: "ページの一部を覆う"
      content: "オーバーレイを使用して、写真や文書のセクションを隠します。"

    # feature loop
    - title: "メタデータをクリア"
      content: "著者情報、タイムスタンプ、または追跡された編集を消去します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regexパターンによる赤除"
      content: |
        テキストを検索し、電話番号、日付、またはIDなどのコンテンツを隠すために正規表現を使用します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  ドキュメントを読み込みます。
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // EMAILのregexパターンと置き換え値を設定します。
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // 赤除を適用します。
              redactor.apply(redaction);

              // 更新された文書を保存します。
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
    title: "Javaを使用してWORDのコンテンツを赤除する"
    exclude: "WORD"
    description: "Javaを使用してWORDドキュメント内の個人およびプライベートコンテンツを隠すまたは削除します。ファイルを安全に保つシンプルな方法。"
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