---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "ja/redaction/java/regex/dotm"
otherformats: CSV DOC DOCM DOCX DOT DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Java の正規表現を使用して DOTM テキストを秘匿化します"
head_description: "GroupDocs.Redaction の Java API を使用すると、開発者は、Java の正規表現を使用して、PDF DOC DOCX RTF XLSX CSV PPT PPTX と画像のテキストを秘匿化できます。"

############################# Header ############################
title: "正規表現と Java を使用して DOTM ファイルからテキストを削除する方法"
description: "GroupDocs.Redaction の Java API を使用すると、正規表現を使用してワープロ文書、ワークシート、プレゼンテーション、PDF および画像から機密テキストを編集、非表示、または削除できます。"

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "テキストのサニタイズとは何ですか?"
    content: |
        テキストの墨消しまたは無害化は、デジタル文書から機密または不要なテキストまたは情報を削除し、それを含む文書または段落の残りの部分はそのままにするプロセスです。墨消しは、ユーザーと組織が機密情報を非表示または永久に削除することで保護するのに役立ちます。 GroupDocs.Redaction Java API を使用すると、ユーザーはワープロ文書、ワークシート、プレゼンテーション、PDF、およびラスター画像ファイルから機密テキストを編集、非表示、または削除できるようになりました。 API は、ドキュメント内の個人情報を編集するための幅広いオプションとメソッドを提供します。正規表現を使用した検索と墨消し、テキスト (免除コード) またはグラフィック (色付きの四角形) の墨消しの使用などをサポートします。 API をダウンロードしてドキュメントの編集プロセスを自動化し、その基本機能と高度な機能を試してみてはいかがでしょうか。

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Java で正規表現を使用して DOTM を秘匿化する"
      content_left: |
        GroupDocs.Redaction を使用すると、ドキュメントから機密またはプライベートな性質のデータを簡単に編集できます。最も一般的な編集ケースは、文書からテキストを削除することです。 

        次のコードを使用すると、正規表現を使用してドキュメントの特定の部分にテキストの編集を適用できます。ユーザーは、パターン「AA BB CCCCCC」を青色の長方形に一致させて、すべての数字を置き換えることができます。

      title_right: "DOTM から機密データを削除する"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) クラスのインスタンスを作成し、DOTM ファイルをアップロードします
        * [RegexRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/RegexRedaction) クラスのインスタンスを作成します。
        * RegexRedaction クラスのオブジェクトで redactor.apply メソッドを呼び出す
        * redactor.save メソッドを呼び出して変更を保存します 

      gisthash: "6dea616a14aeeff21698dc03be62a341"
      gistfile: "RegularExpressionRedaction.java"
      
    - title_left: "システム要求"
      content_left: |
        GroupDocs.Redaction for Java API は、すべての主要なプラットフォームとオペレーティング システムでサポートされています。完全なシステム要件ガイドについては、[システム要件](https://docs.groupdocs.com/redaction/java/system-requirements) を参照してください。以下のコードを実行する前に、次の前提条件がシステムにインストールされていることを確認してください。 :
        * オペレーティング システム: Microsoft Windows、Linux、MacOS
        * 開発環境: NetBeans、Intellij IDEA、Eclipse など
        * Java ランタイム環境: J2SE 6.0 以降
        * GroupDocs.Redaction for Java の最新バージョンを [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction) から入手します。
        
      title_right: "GroupDocs.Redaction を使用する理由"
      content_right: |
        * ユーザーがカスタムのドキュメント形式と編集の種類を追加できるようにする
        * 機密情報を削除するために追加のソフトウェアは必要ありません
        * ページ範囲レンダリング ドキュメントを PDF として設定する機能
        * さまざまなタイプのメタデータを簡単に編集する方法: 著者名、バージョン、タイトル、件名、説明など
        * 文書情報の抽出 - ファイルタイプ、ページ数など。

############################# Demos ############################
demos:
    enable: true
############################# About Formats ############################
about_formats:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---