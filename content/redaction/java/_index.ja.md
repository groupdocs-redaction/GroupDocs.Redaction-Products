---
############################# Static ############################
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java リダクション API | PDF Word Excel 画像から機密データを非表示にする"
head_description: "Java 文書編集 API — さまざまな編集タイプを使用して、PDF、Word、Excel、PowerPoint のプレゼンテーションやラスター画像から個人データを非表示にします。"

############################# Header ############################
title: "Java API を使用して個人情報を編集する"
description: "Java redaction APIを使用して、ドキュメント、ワークシート、プレゼンテーション、PDF、およびラスターイメージファイルから個人情報とメタデータを除外または非表示にします。"
button:
    enable: true

############################# SubMenu ############################
submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for Java"
        image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-java.png"
        product: "GroupDocs.Redaction"
        platform: "Java"

    middle:
        button:
            # button loop
            - link: "#overview"
              text: "概要"

            # button loop
            - link: "#features"
              text: "機能"

            # button loop
            - link: "#support"
              text: "サポート"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "ライブデモ"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/java"
              text: "価格設定"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/java/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction for Java API を使用すると、開発者は Microsoft Word、Excel、PowerPoint、PDF などの一般的なファイル形式や画像から機密データを削除して、使用および配布できるようにすると同時に、機密情報も保護できます。編集ライブラリは、形式に依存しない単一のインターフェースを備えており、社会保障番号、医療情報、財務、財務、財務、財務、法務、さらには取引の詳細など、あらゆる種類の機密情報をテキスト、メタデータ、注釈の編集タイプを通じて編集できます。文書を元の形式で保存し、元のページのラスター画像を含むサニタイズされた PDF 文書を作成できます。
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          Java の GroupDocs.Redaction の概要は次のとおりです。
      
        right:
          enable: true
          icon: "fab fa-html5"
          title: "概要"
          content: |
            * テキストを編集
            * メタデータを編集
            * 注釈を編集
            * 表形式文書の編集
            * 保護対象ファイルの編集
            * カスタマイズ
      
      ## TAB TWO ##
      tab_two:
        description: |
          Java の GroupDocs.Redaction は次の [ドキュメントファイル形式](https://docs.groupdocs.com/redaction//supported-document-formats/java) をサポートしています。

        right:
          enable: true
          table:
            # table loop
            - title: "テキスト、メタデータ、コメントの編集"
              content: |
                * **Word**: DOC、DOCX、DOT、ODT、DOTX、DOCM、DOTM、RTF
                * **Excel**: XLS、XLSX、XLT、XLTX、XLSM、XLTM、CSV
                * **PowerPoint**: PPT、PPTX、PPS、PPSX、POTX、PPTM、PPSM、POTM
                * **固定レイアウト**: PDF
                * **ラスターイメージ**: JPG、BMP、PNG、GIF、TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction for Java は、以下のオペレーティングシステム、フレームワーク、パッケージマネージャーをサポートしています。
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "オペレーティングシステム"
              content: |
                * マイクロソフト Windows Desktop
                * マイクロソフト Windows Server
                * Linux
                * Mac は

            # table loop
            - icon: "fas fa-code"
              title: "サポート対象フレームワーク"
              content: |
                * Java 7 (1.7) 以上

        right:
          enable: true
          table:
            # table loop
            - icon: "ファストファンコグ"
              title: "開発環境"
              content: |
                * NetBeans
                * IntelliJ アイディア
                * エクリプス

            # table loop
            - icon: "高速ファンツール"
              title: "ビルド・オートメーション・ツール"
              content: |
                * メイヴン

############################# Features ############################
features:
    enable: true
    title: "Java 機能の場合は GroupDocs.Redaction"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "検索文字列と完全に一致するものを検索して編集"

      # feature loop
      - icon: "fas fa-eye"
        content: "編集プロセスを制御し、特定のマッチをスキップできます"

      # feature loop
      - icon: "fas fa-bolt"
        content: "正規表現による検索と編集"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "オフィスフォーマットと PDF の組み込みサポート"

      # feature loop
      - icon: "fas fa-code"
        content: "メタデータを消去するか、メタデータ値を編集する"

      # feature loop
      - icon: "fas fa-cloud"
        content: "編集対象を特定のワークシートと列に限定する"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "注釈を削除するか、テキストを編集する"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "テキスト (免除コード) またはグラフィック (色付きの長方形) による編集を使用する"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "文書を元の形式で、または元のページのラスターイメージと一緒に PDF として保存します"

      # feature loop
      - icon: "fas fa-border-all"
        content: "ラスター画像形式と画像領域編集のサポート"

      # feature loop
      - icon: "fas fa-wrench"
        content: "カスタム編集とフォーマットを実装するための統合インターフェイス"

      # feature loop
      - icon: "fas fa-columns"
        content: "EXIF メタデータの編集または画像ファイルからの削除"

      # feature loop
      - icon: "fas fa-file-word"
        content: "PDF、Word、およびプレゼンテーションドキュメント内の埋め込み画像を編集"

    more_feature:
      # more_feature_loop
      - title: "機密データを編集してプライバシーを確保する"
        content: |
          GroupDocs.Redaction for Java ライブラリを使用すると、開発者はさまざまな編集タイプを使用して、サポートされているドキュメントのテキストや画像を編集できます。当社のリダクション API の使い方はシンプルで分かりやすいです。  

          次のコード例では、Microsoft Excel スプレッドシートなどの表形式の文書を使用しています。この文書では、編集の範囲を特定のワークシートや列に限定できます。フィルターを使用して、ワークシート「Customers」の電子メールを含む 2 番目の列を絞り込み、文書内の他のすべての電子メールはそのままにします。

          ```java
          // Redactor クラスのインスタンスを作成する
          final Redactor redactor  = new Redactor("sample.xlsx");
          try
          {
              CellFilter filter = new CellFilter();
              filter.setColumnIndex(1);
              filter.setWorkSheetName("Customers");
              Pattern expression = Pattern.compile("^\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$");
              // 編集を適用
              RedactorChangeLog result = redactor.apply(new CellColumnRedaction(filter, expression, new ReplacementOptions("[customer email]")));
              if (result.getStatus() != RedactionStatus.Failed)
              {
                  SaveOptions so = new SaveOptions();
                  so.setAddSuffix(true);
                  so.setRasterizeToPDF(false);
                  redactor.save(so);
              };
          }
          finally { redactor.close(); }
          ```

############################# Support ############################
support:
    enable: true

############################# Solutions ############################
solutions:
    enable: true
    title: "GroupDocs.Redaction は、他の一般的な開発環境向けのドキュメント表示 API を提供しています"

    solution:
        # solution loop
        - img_alt: "GroupDocs.Redaction for .NET"
          image: "/border/groupdocs-redaction-net.svg"
          product: "GroupDocs.Redaction"
          platform: ".NET"
          link: "/redaction/net/"

        # solution loop
        - img_alt: "GroupDocs.Redaction for Python via .NET"
          image: "/border/groupdocs-redaction-python-net.svg"
          product: "GroupDocs.Redaction"
          platform: "Python via .NET"
          link: "/redaction/python-net/"

############################# Back to top ###############################
back_to_top:
  enable: true
---