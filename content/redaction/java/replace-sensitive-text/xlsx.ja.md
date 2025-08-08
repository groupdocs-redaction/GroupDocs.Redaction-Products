
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ja
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用してXLSXからプライベートテキストを削除する"
head_description: "GroupDocs.Redaction for Javaを使用して、XLSXデータを安全に保ちます。テキストとメタデータを赤除するための迅速で効果的な保護。"

############################# Header ############################
title: "Javaを使用してXLSXファイルをクリーンアップする" 
description: "JavaとGroupDocs.Redaction for Javaを使用してXLSXファイルから機密コンテンツを削除します。スプレッドシートを安全に保ちます。"
subtitle: "GroupDocs.Redaction for Javaでできること" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaの利点は？"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for JavaはJava開発者に、XLSXファイルをクリーンアップするためのツールを提供します。テキスト、メタデータ、画像を簡単に赤除します。

############################# Steps ############################
steps:
    enable: true
    title: "Xlsxファイルのデータを赤除する"
    content: |
      GroupDocs.Redaction for Javaを使用して、Javaアプリでファイルを共有する前にテキストや隠れたコンテンツを削除します。
      
      1. Redactorインスタンスを作成し、ファイルを読み込みます。
      2. 希望する赤除オプションを選択します。
      3. 見つけるテキストとその置き換えを選択します。
      4. 赤除を適用し、ドキュメントを保存します。
   
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
        // XLSXスプレッドシートを赤除する方法

        // Redactorを作成し、ファイルを読み込みます。
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // 赤除設定を選択します。
            // 検索と置換のテキストを入力します。
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 変更を適用し、保存します。
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "役立つ赤除ツール"
  description: "GroupDocs.Redaction for Javaはさまざまなファイルからプライベートコンテンツを削除します。フォーマットを失わずにドキュメントをクリーンアップします。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "テキスト、画像、メタデータの赤除機能"
  features:
    # feature loop
    - title: "テキストを検索して置換"
      content: "セル内の敏感なデータを見つけて更新または非表示にします。"

    # feature loop
    - title: "ビジュアルを隠す"
      content: "カラフルなオーバーレイを使用して、チャートや画像、範囲を隠します。"

    # feature loop
    - title: "メタデータをクリア"
      content: "著者情報、作成日、その他のバックグラウンドデータを削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regexを使用した赤除"
      content: |
        アカウント番号やパターンを検出するために正規表現を使用して赤除します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  処理するファイルを開きます。
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // EMAILのregexルールと置き換えを追加します。
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // 赤除ルールを適用します。
              redactor.apply(redaction);

              // 更新されたファイルを保存します。
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
    title: "Javaを使用してXLSXのコンテンツを赤除する"
    exclude: "XLSX"
    description: "Javaの赤除およびコンテンツ削除機能を使用して、XLSXファイルをクリーンアップし、データを保護します。"
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