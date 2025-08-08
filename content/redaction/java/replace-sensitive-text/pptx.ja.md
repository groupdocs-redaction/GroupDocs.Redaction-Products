
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ja
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用してPPTXからプライベートテキストを削除する"
head_description: "GroupDocs.Redaction for JavaとJavaを使用して、PPTXプレゼンテーション内の機密詳細を保護します。迅速な赤除で簡単に結果を得ることができます。"

############################# Header ############################
title: "Javaを使用してPPTXファイル内のテキストをクリーンアップする" 
description: "GroupDocs.Redaction for JavaとJavaを使用して、PPTXスライド内のコンテンツを隠したり削除したりします。ビジネス、法的、市販用途に最適です。"
subtitle: "GroupDocs.Redaction for Javaでできること" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaを紹介します"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for JavaはJava開発者に、PPTXファイルのコンテンツを編集または隠すための堅実な方法を提供します。テキスト、画像、メタデータ、コメントを完全にコントロールできます。

############################# Steps ############################
steps:
    enable: true
    title: "Pptxプレゼンテーションのコンテンツを赤除する方法"
    content: |
      GroupDocs.Redaction for Javaを使用すれば、Javaプレゼンテーションを迅速なステップでクリーンアップできます。
      
      1. Redactorを作成し、Pptxファイルを読み込みます。
      2. ニーズに合った赤除設定を選択します。
      3. 検索するテキストと置き換えコンテンツを設定します。
      4. 変更を適用して、更新されたファイルを保存します。
   
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
        // PPTXプレゼンテーションのテキストを赤除する

        // Redactorを使用してドキュメントを読み込みます。
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // 赤除オプションを設定します。
            // 検索するテキストと置き換え内容を選択します。
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 赤除を実行し、ファイルを保存します。
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "さらなる赤除ツール"
  description: "GroupDocs.Redaction for Javaは、さまざまなファイルから機密コンテンツを隠すまたは削除するのを簡単にします。データを共有する前に安全に保つために最適です。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "テキスト、画像、メタデータを削除するオプション"
  features:
    # feature loop
    - title: "どこでもテキストを置換"
      content: "スライド全体で単語やフレーズを検索して置換します。正確なテキストまたはパターンに対応します。"

    # feature loop
    - title: "視覚コンテンツを隠す"
      content: "スライドや画像の一部を、選択した色のオーバーレイを使用して覆います。"

    # feature loop
    - title: "メタデータを削除"
      content: "著者情報、作成日、プライベート情報を含むかもしれないメモなど、バックグラウンドデータを削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regexを使った赤除"
      content: |
        正規表現を使用して、メールや電話番号、コードなどのパターンを見つけて削除します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  ファイルを開きます。
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // EMAILのregexパターンと置き換え内容を追加します。
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // パターンに基づいて赤除を適用します。
              redactor.apply(redaction);

              // クリーンバージョンを保存します。
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
    title: "Javaを使用してPPTXのコンテンツを赤除する"
    exclude: "PPTX"
    description: "Javaを使用してPPTXファイルからプライベートまたは機密の詳細を削除します。ファイルを安全に維持するための信頼できる方法。"
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