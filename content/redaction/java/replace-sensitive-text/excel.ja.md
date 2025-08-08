
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ja
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用してEXCELからプライベートテキストを削除する"
head_description: "GroupDocs.Redaction for JavaとJavaを使用して、EXCELスプレッドシートを安全に保ちます。機密データの迅速でシンプルな赤除。"

############################# Header ############################
title: "Javaを使用してEXCELファイル内のテキストを編集または削除する" 
description: "GroupDocs.Redaction for Javaを使用してEXCELファイルをクリーンにし、ビジネスや個人データを保護します。"
subtitle: "GroupDocs.Redaction for Javaでできること" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaを紹介します"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for JavaはJava開発者がEXCELファイルをクリーンアップするために必要なすべてを提供します。テキストや画像、メタデータ、ノートを正確に編集または隠すことができます。

############################# Steps ############################
steps:
    enable: true
    title: "Excelファイルのコンテンツを赤除する方法"
    content: |
      GroupDocs.Redaction for Javaを使用して、Javaプロジェクトで共有したくないテキストを削除または覆います。
      
      1. Redactorを作成し、Excelファイルを読み込みます。
      2. あなたの赤除設定を選択します。
      3. 検索したいテキストとそれに置き換えるものを定義します。
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
        // EXCELファイルのテキストを赤除する方法

        // ファイルをRedactorで読み込みます。
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // 赤除ルールを設定します。
            // ターゲットテキストと置き換えを入力します。
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 適用して、クリーンファイルを保存します。
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "より多くの赤除ツール"
  description: "GroupDocs.Redaction for Javaはいくつかの文書タイプのプライベートコンテンツのクリーンアップを支援します。共有前のプライバシーに最適です。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "テキスト、画像、メタデータの赤除機能"
  features:
    # feature loop
    - title: "プライベートテキストを置換"
      content: "マッチする単語や数字をファイル全体で見つけて、変更します。検索パターンや正確な一致を使用できます。"

    # feature loop
    - title: "画像の一部を隠す"
      content: "画像やセルを隠すためにオーバーレイボックスを加えます。色、サイズ、位置を選択できます。"

    # feature loop
    - title: "背景情報を削除"
      content: "著作権、タイムスタンプ、またはドキュメントコメントのような隠れたデータをクリアします。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regexによるパターンの赤除"
      content: |
        正規表現を使用して、メールアドレスやアカウント番号のようなパターンを見つけて隠します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  クリーンにしたいファイルを開きます。
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // EMAIL regexパターンを作成し、置き換えテキストを設定します。
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // 赤除プロセスを実行します。
              redactor.apply(redaction);

              // 更新されたバージョンを保存します。
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
    title: "Javaを使用してEXCEL内のコンテンツを赤除する"
    exclude: "EXCEL"
    description: "Javaを使用してEXCELファイルからプライベートデータをクリーンアップします。安全に保管するための賢い方法。"
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