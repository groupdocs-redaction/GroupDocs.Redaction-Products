---
############################# Static ############################
layout: "autogen"
draft: false
path: "ko/redaction/net/annotation/dot"
otherformats: CSV DOC DOCM DOCX DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: ".NET 코어를 통해 정규식을 사용하여 DOT 문서의 주석 수정"
head_description: "다양한 형식의 문서에서 정규식을 사용하여 주석의 민감한 정보를 수정합니다."

############################# Header ############################
title: "핵심 앱 .NET에서 C# 및 정규식을 통해 DOT 파일 주석 수정"
description: "Office 및 OpenOffice 문서, 스프레드시트 및 프레젠테이션은 물론 Windows, Linux 및 macOS의 DOT에서 민감한 정보를 찾아 제거합니다."

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: ".NET API에 대한 문서 주석 편집"
    content: |
        메타데이터를 변경하고 주석을 제거하는 기능을 포함하여 PDF, Word, Excel, PowerPoint 문서 및 이미지에서 민감하고 분류된 정보를 삭제하기 위한 단일 형식 독립적 인터페이스입니다. GroupDocs.Redaction for .NET 도구를 사용하면 분류된 정보를 수정하고 PDF에 수정된 문서를 저장하여 모든 페이지를 래스터 이미지로 변환하거나 추가 편집을 위해 문서를 원래 형식으로 유지할 수 있습니다.

############################# Steps ############################
steps:
    enable: true
    title_left: "C#을 통해 정규식을 사용하여 DOT에서 주석 수정"
    content_left: |
        [GroupDocs.Redaction](ko//redaction/net/)을 사용하면 .NET 개발자가 정규식의 모든 기능을 사용하여 몇 가지 간단한 단계로 DOT 파일을 수정할 수 있습니다.

        *   [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) 클래스의 인스턴스 생성 및 DOT 파일 로드
        *   [AnnotationRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/annotationredaction) 클래스의 인스턴스를 생성하여 댓글을 찾고 교체합니다.
        *   AnnotationRedaction 객체로 [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) 메서드를 호출합니다.
        
    title_right: "GroupDocs Redaction API 사용 방법"
    content_right: |
        명령줄에서 ```nuget install GroupDocs.Redaction```로 패키지를 설치하거나 ```Install-Package GroupDocs.Redaction```를 사용하여 Visual Studio의 패키지 관리자 콘솔을 통해 패키지를 설치합니다. 
        또는 [다운로드](https://downloads.groupdocs.com/redaction/net)에서 ZIP 파일의 오프라인 MSI 설치 프로그램 또는 DLL을 가져와 프로젝트에서 수동으로 참조하세요.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.dot"))
        {
        	redactor.Apply(new AnnotationRedaction("(?im:john)", "[redacted]"));
        	redactor.Save();
        }
        ```

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