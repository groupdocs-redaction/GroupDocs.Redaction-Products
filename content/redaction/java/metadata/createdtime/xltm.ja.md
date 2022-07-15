---
layout: "auto-gen-gist"
draft: false
path: "redaction/java/metadata/createdtime/xltm"
otherformats: PDF DOC DOT DOCX DOCM RTF XLSX XLSM XLTX XLTM XLS XLT PPTX PPT PPSX POT PPS PPTM 
ad_headline: "メタデータの編集|java_Camel"
ad_description: "JavaのXLTMドキュメントからのメタデータ編集"

head_title: "JavaでのXLTMドキュメントからのメタデータ編集"
head_description: "GroupDocs.Redactions API for Javaを使用してフィルターを適用し、特定のメタデータプロパティを選択することで、さまざまなドキュメントタイプのメタデータを簡単に検索、置換、削除、または編集できます。"

title: "JavaでのXLTMドキュメントからのメタデータ編集"
description: "GroupDocs.Redactions API for Javaを使用してフィルターを適用し、特定のメタデータプロパティを選択することで、さまざまなドキュメントタイプのメタデータを簡単に検索、置換、削除、または編集できます。"

button:
    enable: true

about:
    enable: true
    title: "メタデータ編集入門"
    content: |
        不要なメタデータフィールドを完全に削除する必要がある場合や、それらの値を更新したい場合があります。さまざまなツールや手法を使用して表示できるファイルに関連付けられた隠しデータもあります。このデータに誰もがアクセスできるようにしたくない状況はたくさんあります。墨消しとは、さまざまな文書から不要な情報や機密情報を削除することを意味します。 PDF、DOC、DOCX、PPT、PPTX、XLS、XLSXなどを含むすべてのファイル形式には、特定のメタデータ構造があります。メタデータプロパティには、作成者名、カテゴリ、会社名、コメント、作成時刻、最終更新日などが含まれます。GroupDocs.RedactionAPIを使用すると、これらのメタデータフィールドのいずれかにメタデータ編集を適用できます。必要なメタデータをフィルタリングすることで、それらを変更または削除できます。このガイドでは、JavaでXLTMドキュメントからメタデータ編集を適用する方法について説明します。

steps:
    enable: true
    block:
    - title_left: "XLTMファイルのメタデータを編集する"
      content_left: |
        次のコードを使用すると、XLTMドキュメントから機密データを検索して編集できます。フィルタを設定することで、編集の範囲を設定できます。 MetadataFilter.Createdtimeに。 「Createdtime」プロパティを除くすべてのメタデータアイテムで、正規表現の一致が取り消されたままになります。
        
      title_right: "Createdtimeメタデータを編集する手順"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor)クラスのインスタンスを作成し、XLTMファイルをアップロードします
        * [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction)クラスのインスタンスを作成して、ドキュメントのメタデータから機密データを検索して置換します
        * フィルターを設定して編集の範囲を設定します。以下のコードでMetadataFilters.Createdtimeを使用します 
        * [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction)のオブジェクトを使用してsaveメソッドを呼び出します
        
      gisthash: "e773562949d4e6c0db09be86f79e4ced"
      gistfile: "RedactCreatedtimeMetadata.java"

    - title_left: "JavaでCreatedtimeメタデータを削除する"
      content_left: |
        EraseMetadataRedactionクラスを使用して、ドキュメント内のすべてまたは特定のメタデータを空の（空白または最小の）値に置き換えることができます。次のコードは、XLTMドキュメントからメタデータプロパティをフィルタリングして削除する方法を示しています。次の例では、ドキュメントのすべてのプロパティが空白になっています。
        
      title_right: "XLTMメタデータを消去する方法"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor)クラスのインスタンスを作成し、XLTMファイルをアップロードします
        * [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction)クラスのインスタンスを作成して、ドキュメントのメタデータを削除します
        * フィルターを設定して編集の範囲を設定します。以下のコードでMetadataFilter.AllをMetadataFilter.Createdtimeに置き換えます
        * [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction)のオブジェクトを使用してsaveメソッドを呼び出します
        
      gisthash: "84586804ee996134fd12f2061f989fd5"
      gistfile: "CleanMetadata.java"

    - title_left: "システム要求"
      content_left: |
        GroupDocs.Redaction for Java APIは、すべての主要なプラットフォームとオペレーティングシステムでサポートされています。完全なシステム要件ガイドについては、[システム要件](https://docs.groupdocs.com/redaction/java/system-requirements)にアクセスしてください。以下のコードを実行する前に、システムに次の前提条件がインストールされていることを確認してください。 ：
        * オペレーティングシステム：Microsoft Windows、Linux、MacOS
        * 開発環境：NetBeans、Intellij IDEA、Eclipseなど
        * Javaランタイム環境：J2SE6.0以降
        * [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)から最新バージョンのGroupDocs.RedactionforJavaを入手してください。
        
      title_right: "GroupDocs.Redactionを使用する理由"
      content_right: |
        * ユーザーがカスタムドキュメント形式と編集の種類を追加できるようにする
        * 機密情報を削除するために追加のソフトウェアは必要ありません
        * ページ範囲レンダリングドキュメントをPDFとして設定する機能
        * さまざまな種類のメタデータを編集する簡単な方法：作成者名、バージョン、タイトル、件名、説明など
        * ドキュメント情報の抽出-ファイルタイプ、ページ数など。

demos:
    enable: true
        

about_formats:
    enable: true


more_formats:
    enable: true


back_to_top:
    enable: true
---
