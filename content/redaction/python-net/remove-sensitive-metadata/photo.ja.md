
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: ja
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用したPHOTOのメタデータ削除"
head_description: "GroupDocs.Redaction for Python via .NETを使用すれば、PHOTOファイルから隠れたデータを消去し、プライベート情報の漏洩を避けることができます。"

############################# Header ############################
title: "Pythonを使用したPHOTOのメタデータクリーンアップ" 
description: "簡単に使用できるPythonツールで隠れた情報をクリアし、PHOTOドキュメントを保護してください。"
subtitle: "GroupDocs.Redaction for Python via .NETの主要機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETについて"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redactionは、テキスト、画像、メタデータをPHOTOドキュメントから削除するためのツールをPythonユーザーに提供します。

############################# Steps ############################
steps:
    enable: true
    title: "Photoからメタデータを削除する手順"
    content: |
      GroupDocs.Redactionを使用すれば、数ステップで文書のメタデータをクリーンにできます。
      
      1. Redactorをセットアップし、Photoファイルを開きます。
      2. 削除するメタデータフィールドを選択します。
      3. ファイルを消去するために修正を実行します。
      4. 最終バージョンを保存します。
   
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

        # PHOTOドキュメントのメタデータを消去する

        # 削除するメタデータを選択する
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Redactorを使用してファイルを開く
        with gr.Redactor("input.jpeg") as redactor:

            # 修正を実行して保存する
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "共有前にファイルをクリーンアップする"
  description: "GroupDocs.Redaction for Python via .NETは、見られてはいけないデータを削除します。テキスト、画像、隠れた詳細を数回のクリックで消去します。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "便利な修正機能"
  features:
    # feature loop
    - title: "テキスト削除"
      content: "敏感な単語や数値、パターンを見つけて削除します。"

    # feature loop
    - title: "画像をマスクする"
      content: "プライベートデータを含む画像の一部を隠します。"

    # feature loop
    - title: "メタデータのクリーンアップ"
      content: "著者、タイトル、コメントなどのファイル詳細を削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "特定のメタデータを削除する"
      content: |
        この例では、PHOTOドキュメントにおける著者およびタイトルフィールドを削除する方法を示します。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 著者フィールドをターゲットとする
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # タイトルフィールドをターゲットとする
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # ファイルをリダクターに読み込む
          with gr.Redactor("source.jpeg") as redactor:

              # 選択したメタデータを修正する
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # 更新されたファイルを保存する
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
    title: "Pythonを使用したPHOTOのメタデータの削除"
    exclude: "PHOTO"
    description: "Pythonを使用してPHOTOファイルから隠れたメタデータを迅速かつ簡単に除去します。"
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