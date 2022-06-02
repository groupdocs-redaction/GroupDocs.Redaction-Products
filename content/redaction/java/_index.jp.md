---
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

head_title: "Java Redaction API | PDFWordExcel画像から機密データを非表示にする"
head_description: "Javaドキュメント編集API–さまざまな編集タイプを通じて、PDF、Word、Excel、PowerPointプレゼンテーション、ラスター画像から個人データを非表示にします."

title: "JavaAPIを介して個人情報を編集する"
description: "Java redaction APIを使用して、ドキュメント、ワークシート、プレゼンテーション、PDF、およびラスターイメージファイルから個人情報とメタデータを除外または非表示にします."
button:
    enable: true

submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for Java"
        image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-java.png"
        product: "GroupDocs.Redaction"
        platform: "Java"

    middle:
        button:
            - link: "#overview"
              text: "概要"

            - link: "#features"
              text: "特徴"

            - link: "#support"
              text: "サポート"

            - link: "https://products.groupdocs.app/redaction"
              text: "ライブデモ"

            - link: "https://purchase.groupdocs.com/pricing/redaction/java"
              text: "価格設定"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/java/"
        link_buy: "https://purchase.groupdocs.com"

overview:
    enable: true
    content: |
      GroupDocs.Redaction for Java APIを使用すると、開発者はMicrosoft Word、Excel、PowerPoint、PDF、画像などの一般的なファイル形式から機密データを削除して、使用および配布できるようにすると同時に、機密情報も保護できます。改訂ライブラリは、社会保障番号、医療情報、財務情報、専有情報、法律情報、さらには取引の詳細など、あらゆる種類の機密情報をテキスト、メタデータ、注釈編集タイプで編集するための単一のフォーマットに依存しないインターフェースを提供します。ドキュメントを元の形式で保存し、元のページのラスターイメージを使用してサニタイズされたPDFドキュメントを作成できます。
    tabs:
      enable: true     
      
      tab_one:
        description: |
          以下は、Java用のGroupDocs.Redactionの概要です。

        right:
          enable: true
          icon: "fab fa-html5"
          title: "概要"
          content: |
            *テキストを編集
            *メタデータを編集
            *注釈を編集
            *表形式のドキュメントを編集
            *保護されたファイルを編集する
            *カスタマイズ
      
      tab_two:
        description: |
          GroupDocs.Redaction for Javaは、次の[ドキュメントファイル形式]（https://docs.groupdocs.com/redaction/java/supported-document-formats/）をサポートしています。

        right:
          enable: true
          table:
            - title: "テキスト、メタデータ、コメントを編集する"
              content: |
                * ** Word **：DOC、DOCX、DOT、ODT、DOTX、DOCM、DOTM、RTF
                * ** Excel **：XLS、XLSX、XLT、XLTX、XLSM、XLTM、CSV
                * ** PowerPoint **：PPT、PPTX、PPS、PPSX、POTX、PPTM、PPSM、POTM
                * **固定レイアウト**：PDF
                * **ラスター画像**：JPG、BMP、PNG、GIF、TIFF

      tab_three:
        description: |
          GroupDocs.Redaction for Javaは、次のオペレーティングシステム、フレームワーク、パッケージマネージャーをサポートしています。
        
        left:
          enable: true
          table:
            - icon: "fab fa-windows"
              title: "オペレーティングシステム"
              content: |
                *MicrosoftWindowsデスクトップ
                * Microsoft Windows Server
                * Linux
                * マックOS

            - icon: "fas fa-code"
              title: "サポートされているフレームワーク"
              content: |
                * Java 7（1.7）以降

        right:
          enable: true
          table:
            - icon: "fas fa-cogs"
              title: "開発環境"
              content: |
                * NetBeans
                * IntelliJ IDEA
                *Eclipse
            - icon: "fas fa-tools"
              title: "ビルド自動化ツール"
              content: |
                * Maven

features:
    enable: true
    title: "GroupDocs.Redaction for Java Features"

    feature:
      - icon: "fas fa-copy"
        content: "検索文字列の完全一致を検索して編集します"

      - icon: "fas fa-eye"
        content: "墨消しプロセスを制御し、特定の一致をスキップします"

      - icon: "fas fa-bolt"
        content: "正規表現を使用して検索および編集する"
      
      - icon: "fas fa-file-powerpoint"
        content: "オフィスフォーマットとPDFの組み込みサポート"

      - icon: "fas fa-code"
        content: "メタデータを消去するか、メタデータ値を編集します"

      - icon: "fas fa-cloud"
        content: "墨消しを特定のワークシートと列に制限する"

      - icon: "fas fa-remove-format"
        content: "注釈を削除するか、テキストを編集します"

      - icon: "fas fa-comment-slash"
        content: "テキスト（免除コード）またはグラフィック（色付きの長方形）の編集を使用する"

      - icon: "fas fa-location-arrow"
        content: "ドキュメントを元の形式で、または元のページのラスター画像を含むPDFとして保存します"

      - icon: "fas fa-border-all"
        content: "ラスター画像形式と画像領域の編集のサポート"

      - icon: "fas fa-wrench"
        content: "カスタム編集とフォーマットを実装するための統合インターフェース"

      - icon: "fas fa-columns"
        content: "画像ファイルからEXIFメタデータを編集または削除する"

      - icon: "fas fa-file-word"
        content: "PDF、Word、プレゼンテーションドキュメント内の埋め込み画像を編集する"

    more_feature:
      - title: "分類されたデータを編集してプライバシーを確保する"
        content: |
          GroupDocs.Redaction for Javaライブラリを使用すると、開発者はさまざまな種類の編集を使用して、サポートされているドキュメントからテキストや画像を編集できます。 Redaction APIを使用するのは、簡単で簡単です。  

          次のコード例では、編集の範囲を特定のワークシートや列に制限できるMicrosoftExcelスプレッドシートなどの表形式のドキュメントを使用しています。フィルタを使用して、ワークシート「顧客」の電子メールで2番目の列を編集し、ドキュメント内の他のすべての電子メールはそのままにします。
          
          ```java
          final Redactor redactor  = new Redactor("sample.xlsx");
          try
          {
              CellFilter filter = new CellFilter();
              filter.setColumnIndex(1);
              filter.setWorkSheetName("Customers");
              Pattern expression = Pattern.compile("^\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$");
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

support:
    enable: true

solutions:
    enable: true
    title: "GroupDocs.Redactionは、他の一般的な開発環境向けのドキュメント表示APIを提供します"

    solution:
        - img_alt: "GroupDocs.Redaction for .NET"
          image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-net.png"
          product: "GroupDocs.Redaction"
          platform: ".NET"
          link: "/redaction/net/"

back_to_top:
  enable: true
---
