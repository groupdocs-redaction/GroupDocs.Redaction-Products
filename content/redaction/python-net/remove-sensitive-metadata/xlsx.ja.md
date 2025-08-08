
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: ja
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用したXLSXからのメタデータ削除"
head_description: "GroupDocs.Redaction for Python via .NETを使用して、XLSXドキュメント内の隠れたメタデータを除去します。プライバシーを保護するためのクリーンな方法です。"

############################# Header ############################
title: "Pythonを使用したXLSXファイルのメタデータ削除" 
description: "Pythonを使用すると、あなたのXLSXファイルからプライベートな詳細を安全に削除できます。個人用と業務用に最適です。"
subtitle: "GroupDocs.Redaction for Python via .NETの主要機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETとは？"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redactionは、Python開発者がXLSXファイル内のテキスト、画像、メタデータを削除または隠すためのツールを提供します。

############################# Steps ############################
steps:
    enable: true
    title: "Xlsxファイルのメタデータを削除する"
    content: |
      GroupDocs.Redactionは、あなたのPython via .NETプロジェクトに不要なファイルデータを迅速に削除する機能を提供します。
      
      1. Redactorインスタンスを作成し、Xlsxファイルをロードします。
      2. 削除したいメタデータの項目を選択します。
      3. それらの項目をクリアするために修正を実行します。
      4. 更新したファイルを保存します。
   
    code:
      platform: "python-net"
      copy_title: "コピー"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "サンプルのマスキング"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "クリックしてコピー"
        copy_done: "コピーしました"
      links:
        #  loop
        - title: "さらに多くの例"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "ドキュメンテーション"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # XLSXドキュメント内の隠れたメタデータを削除する

        # 削除するメタデータを設定する
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Redactorを使用してファイルを開く
        with gr.Redactor("input.xlsx") as redactor:

            # 変更を適用してファイルを保存する
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ファイル内のどこでも機密コンテンツを隠す"
  description: "GroupDocs.Redaction for Python via .NETを使用すると、複数のファイル形式からプライベート情報をクリーンにできます。コンテンツを共有する準備を整えておきましょう。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "メタデータとコンテンツの修正"
  features:
    # feature loop
    - title: "機密テキストを削除する"
      content: "名前、メールアドレス、その他のプライベート詳細をドキュメントから見つけて削除します。"

    # feature loop
    - title: "画像エリアを覆う"
      content: "見られてはいけない画像部分を隠すためにオーバーレイを配置します。"

    # feature loop
    - title: "メタデータクリーナー"
      content: "著者、タイトル、作成日などの隠れたフィールドを削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ドキュメントからのメタデータを削除する"
      content: |
        以下は、数行のコードを使用してXLSXファイルからメタデータを削除する方法を示しています。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 著者フィールドを削除するマークを付ける
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # タイトルフィールドを削除するマークを付ける
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # ドキュメントを開く
          with gr.Redactor("source.xlsx") as redactor:

              # 修正ルールを実行する
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # クリーンなファイルを保存する
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
          ```
        platform: "python-net"
        copy_title: "コピー"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "クリックしてコピー"
          copy_done: "コピーしました"
        top_links:
          #  loop
          - title: "結果をダウンロード"
            icon: "download"
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
        links:
          #  loop
          - title: "さらに多くの例"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "ドキュメンテーション"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "始める準備はできましたか？"
  description: "GroupDocs.Redactionの機能を無料で試すか、ライセンスをリクエストしてください"
  items:
    #  loop
    - title: "PyPiをダウンロード"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "ライセンス"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Pythonを使用したXLSXでのメタデータの削除"
    exclude: "XLSX"
    description: "Pythonを使用してXLSXファイル内のプライベートメタデータを削除します。共有または公開の準備を整えるための良い手段です。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "画像のマスキング"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "一般的な画像フォーマット"

        # format loop 6
        - name: "写真のマスキング"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "写真フォーマット"

        # format loop 7
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 8
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 9
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"

        # format loop 10
        - name: "JPEGのマスキング"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "JPEG画像"


---