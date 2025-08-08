
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: ja
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用したDOCXのメタデータ削除"
head_description: "GroupDocs.Redaction for Python via .NETを使用して、DOCXファイル内の隠れた詳細を消去します。機密メタデータ項目を削除することでデータを保護します。"

############################# Header ############################
title: "Pythonを使用したDOCXファイルの隠れたメタデータ削除" 
description: "Pythonを使用して、GroupDocs.Redaction for Python via .NETでDOCXファイルから隠れたメタデータを削除できます。ファイルをクリーンでプライベートに保ちましょう。"
subtitle: "GroupDocs.Redaction for Python via .NETの主な機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETとは？"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redactionを使用すると、Python開発者はDOCXファイル内の隠れたデータを消去する能力を得ることができます。テキスト、ビジュアル、メタデータをドキュメントからクリーンに保つことができます。

############################# Steps ############################
steps:
    enable: true
    title: "Docxファイルのメタデータ削除"
    content: |
      GroupDocs.Redactionは、あなたのPython via .NETアプリに迅速にメタデータを削除するためのツールを提供します。
      
      1. Redactorを開始し、Docxドキュメントをロードします。
      2. 削除するメタデータフィールドを設定します。
      3. 隠れたコンテンツをクリーンにするために修正を適用します。
      4. ファイルの最終バージョンを保存します。
   
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

        # DOCXファイルでのメタデータのクリーンアップ

        # 削除するメタデータ項目を選択する
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Redactorを使用してドキュメントを開く
        with gr.Redactor("input.docx") as redactor:

            # 修正を適用してファイルを保存する
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "文書のすべての部分を安全に保護する"
  description: "GroupDocs.Redaction for Python via .NETを使用すれば、複数のファイル形式でテキスト、画像、メタデータをクリーンにできます。プライバシーとセキュリティに最適です。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "文書修正ツールのアクション"
  features:
    # feature loop
    - title: "テキストクリーナー"
      content: "名前、用語、または個人情報を含む単語を見つけて削除します。"

    # feature loop
    - title: "画像を覆う"
      content: "色のオーバーレイを使って画像の部分を隠します。"

    # feature loop
    - title: "メタデータ削除"
      content: "著者やソフトウェアの詳細など、隠れたドキュメント情報を削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "例：隠れたメタデータを削除"
      content: |
        ここでは、修正を使用してDOCXドキュメントから作者およびタイトルフィールドを削除する方法を示します。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 作者フィールドを削除することを選択する
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # タイトルフィールドを削除することを選択する
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # DOCXファイルを開く
          with gr.Redactor("source.docx") as redactor:

              # メタデータの修正を実行する
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
    title: "Pythonを使用したDOCXのメタデータ削除"
    exclude: "DOCX"
    description: "Pythonを使用してDOCXファイルの隠れたメタデータを削除します。共有またはアーカイブ前にファイルを保護するための優れた方法です。"
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