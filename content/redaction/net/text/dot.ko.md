---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "ko/redaction/net/text/dot"
otherformats: PDF DOC DOCX DOCM DOTX DOTM RTF XLSX XLSM XLTX XLTM XLS XLT CSV PPT PPTX  PPS POT PPSX PPTM PPSM POTM 

############################# Head ############################
head_title: ".NET Core를 통해 문서에서 민감한 정보 수정"
head_description: "다양한 형식의 문서에 정확한 구문 또는 정규 표현식을 사용하여 텍스트 교정 적용"

############################# Header ############################
title: ".NET Core 앱에서 C#을 통해 DOT 파일 수정"
description: "Office 및 OpenOffice 문서, 스프레드시트 및 프레젠테이션의 텍스트 검색 및 바꾸기 및 Windows, Linux 및 macOS에서 dot_ UPPER"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: ".NET API용 문서 수정"
    content: |
        메타데이터를 변경하고 주석을 제거하는 기능을 포함하여 PDF, Word, Excel, PowerPoint 문서 및 이미지에서 중요하고 분류된 정보를 수정하기 위한 단일 형식 독립 인터페이스입니다. GroupDocs.Redaction 도구를 사용하면 텍스트를 수정하고 수정된 문서를 PDF로 저장하여 모든 페이지를 래스터 이미지로 변환하거나 추가 편집을 위해 문서를 원래 형식으로 유지할 수 있습니다.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "C#을 통해 DOT에서 정확한 텍스트 수정"
      content_left: |
        [GroupDocs.Redaction](/redaction/net/)을 사용하면 .NET 개발자가 몇 가지 간단한 단계를 통해 DOT 파일 수정 기능을 쉽게 추가할 수 있습니다.

        * [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) 클래스의 인스턴스 생성 및 DOT 파일 로드
        * [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction) 클래스의 인스턴스를 생성하여 텍스트 찾기 및 바꾸기
        * ExactPhraseRedaction 객체로 [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) 메소드 호출

      title_right: "수정 API 시작하기"
      content_right: |
        명령줄에서 ```nuget install GroupDocs.Redaction```으로 설치하거나 Visual Studio의 패키지 관리자 콘솔을 통해 ```Install-Package GroupDocs.Redaction```으로 설치합니다.
        또는 [downloads](https://downloads.groupdocs.com/redaction/net)에서 오프라인 MSI 설치 프로그램 또는 DLL을 ZIP 파일로 다운로드하고 프로젝트에서 수동으로 참조하십시오.  
        
      code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.csv"))
        {
        	redactor.Apply(new ExactPhraseRedaction("John Doe", new ReplacementOptions("[personal]")));
        	redactor.Save();
        }
        ```
        

    - title_left: "시스템 요구 사항"
      content_left: |
       .NET API용 GroupDocs.Redaction은 모든 주요 플랫폼 및 운영 체제에서 지원됩니다. 전체 시스템 요구 사항 가이드를 보려면 [시스템 요구 사항](https://docs.groupdocs.com/redaction/net/system-requirements/)을 방문하십시오. 아래 코드를 실행하기 전에 다음 전제 조건이 컴퓨터에 설치되어 있는지 확인하십시오. 체계:
        * 운영 체제: 마이크로소프트 윈도우, 리눅스, 맥OS
        * 개발 환경: Visual Studio, Xamarin, MonoDevelop 등
        * 프레임워크: .NET Framework, .NET Standard, .NET Core, Mono
        * [NuGet](https://www.nuget.org/packages/GroupDocs.Redaction/)에서 최신 버전의 GroupDocs.Assembly .NET API 다운로드
        
      title_right: "GroupDocs.Redaction을 사용하는 이유"
      content_right: |
        * 사용자가 사용자 정의 문서 형식 및 수정 유형을 추가할 수 있도록 허용
        * 민감한 정보를 제거하기 위해 추가 소프트웨어가 필요하지 않습니다.
        * 페이지 범위 렌더링 문서를 PDF로 설정하는 기능
        * 다양한 유형의 메타데이터를 수정하는 쉬운 방법: 저자 이름, 버전, 제목, 주제, 설명 등
        * 문서 정보 추출 - 파일 형식, 페이지 수 등
        * 여러 데이터 형식에 대한 완벽한 지원

demos:
    enable: true
        

more_formats:
    enable: true


back_to_top:
    enable: true
---