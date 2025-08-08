
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: ja
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用したJPEGのメタデータ編集"
head_description: "GroupDocs.Redaction for Python via .NETは、JPEGドキュメントのメタデータをクリアまたは更新するのに役立ちます。プライベートな詳細が露呈する可能性のあるフィールドを削除します。"

############################# Header ############################
title: "JPEGのメタデータをPythonでクリーンにする" 
description: "Pythonのためのシンプルなツールを使用して、隠れたメタデータを削除することですべてのJPEGファイルを保護します。"
subtitle: "GroupDocs.Redaction for Python via .NETのコア機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETについて"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redactionは、Python開発者にテキスト、画像、メタデータを削除するためのシンプルなツールを提供します。JPEGドキュメントから。

############################# Steps ############################
steps:
    enable: true
    title: "Jpegのメタデータをクリーンにするステップ"
    content: |
      GroupDocs.Redactionは、あなたのPython via .NETアプリでメタデータを迅速かつ簡単に削除します。
      
      1. Redactorをセットアップし、Jpegドキュメントを開きます。
      2. 削除するメタデータフィールドを選択します。
      3. ファイルをクリーンアップするために修正を実行します。
      4. 隠れたデータなしの新しいバージョンを保存します。
   
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

        # JPEGのメタデータをクリーンにする

        # クリーンにするメタデータフィールドを選択する
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Redactorを使用してファイルを開く
        with gr.Redactor("input.jpg") as redactor:

            # 修正を適用してファイルを保存する
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "すべてのファイルでプライバシーを保護する"
  description: "GroupDocs.Redaction for Python via .NETは、テキスト、画像、メタデータなどの敏感なデータを削除します。多くの形式で動作します。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "メタデータ修正機能"
  features:
    # feature loop
    - title: "テキストを見つけて削除する"
      content: "キーワードやプライベート情報をスキャンしてドキュメントから削除します。"

    # feature loop
    - title: "画像の詳細を隠す"
      content: "他の人に見られないように画像のエリアをカバーします。"

    # feature loop
    - title: "ファイルメタデータを編集する"
      content: "文書情報を保護するためにメタデータフィールドを変更または削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "メタデータフィールドの編集"
      content: |
        この例では、JPEGドキュメントの著者やタイトルなどのフィールドを削除または変更する方法を示します。
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

          # JPEGファイルを開く
          with gr.Redactor("source.jpg") as redactor:

              # クリーンアッププロセスを実行する
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # 新しいバージョンを保存します
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
    title: "Pythonを使用したJPEGメタデータのクリーンアップ"
    exclude: "JPEG"
    description: "Pythonを使用してJPEGドキュメントから隠れたプライベートデータを迅速かつ簡単に削除します。"
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