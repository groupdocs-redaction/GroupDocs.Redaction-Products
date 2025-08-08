
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: th
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ลบข้อความส่วนตัวจาก EXCEL โดยใช้ C#"
head_description: "เก็บไฟล์ EXCEL ของคุณให้เป็นส่วนตัวด้วย GroupDocs.Redaction for .NET และ C# โดยวิธีที่รวดเร็ว"

############################# Header ############################
title: "ค้นหาและลบข้อความที่ละเอียดอ่อนในไฟล์ EXCEL ด้วย .NET" 
description: "ใช้ C# และ GroupDocs.Redaction for .NET เพื่อปกป้องไฟล์ส่วนตัวหรืออย่างเป็นทางการ ข้อมูลส่วนตัวของคุณจะถูกเก็บไว้"
subtitle: "" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET คืออะไร?"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET ให้นักพัฒนา C# มีเครื่องมือในการทำความสะอาดเนื้อหาในไฟล์ EXCEL ได้ แยกข้อความ รูปภาพ หมายเหตุ และข้อมูลอื่นๆ

############################# Steps ############################
steps:
    enable: true
    title: "วิธีการลบไฟล์ Excel"
    content: |
      ด้วย GroupDocs.Redaction for .NET ง่ายต่อการค้นหาและแทนที่เนื้อหาส่วนตัวในแอพ .NET
      
      1. สร้าง Redactor และเปิดไฟล์ Excel
      2. เลือกรูปแบบการลบของคุณ
      3. บอกระบบให้ค้นหาอะไรและใช้อะไรแทน
      4. เริ่มการลบและบันทึกไฟล์ที่อัปเดต
   
    code:
      platform: "net"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // ขั้นตอนในการลบเนื้อหาในเอกสาร EXCEL

        // เปิดไฟล์ด้วย Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // ปรับการตั้งค่าการลบของคุณ
            // เลือกสิ่งที่จะค้นหาและอะไรที่จะใช้แทน
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // นำไปสู่การลบและบันทึกไฟล์EXCELใหม่
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือสำหรับการลบเพิ่มเติม"
  description: "GroupDocs.Redaction for .NET มอบวิธีการที่แข็งแกร่งสำหรับการซ่อนหรือรียูซข้อมูลส่วนตัวในหลายประเภทไฟล์"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "เครื่องมือการลบที่แสดง"
  features:
    # feature loop
    - title: "แทนที่ข้อมูลส่วนตัว"
      content: "ค้นหาข้อความในไฟล์และแทนที่ด้วยการกล่าวรวมทั้งรองรับการจัดการข้อความ"

    # feature loop
    - title: "ซ่อนภาพ"
      content: "ซ่อนไฟล์ภาพส่วนตัวหรือบางส่วนของจอ คุณสามารถควบคุมสีและขนาดได้"

    # feature loop
    - title: "ลบข้อมูลเมตาที่ซ่อนอยู่"
      content: "ลบข้อมูลชนิดอื่นๆ เช่น ชื่อผู้เขียน วันและเวลาม็อต หรือความคิดเห็นที่ทำให้คุณปลอดภัย"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ใช้ Regex เพื่อการลบที่ชาญฉลาด"
      content: |
        ค้นหาและลบรูปแบบข้อมูลเช่นอีเมลหรือถูกประจำตัวด้วยการใช้ regex
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  เปิดไฟล์ที่คุณต้องการทำความสะอาด
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // ตั้งค่ารูปแบบ REGEX สำหรับ EMAIL และเลือกการแทนที่
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // ดำเนินกระบวนการลบ
              redactor.Apply(redaction);

              // บันทึกไฟล์สุดท้าย
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
          }
          ```
        platform: "net"
        copy_title: "คัดลอก"
        install:
          command: "dotnet add package GroupDocs.Redaction"
          copy_tip: "คลิ๊กเพื่อคัดลอก"
          copy_done: "คัดลอกแล้ว"
        top_links:
          #  loop
          - title: "ดาวน์โหลดผลลัพธ์"
            icon: "download"
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
        links:
          #  loop
          - title: "ตัวอย่างเพิ่มเติม"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "วิธีการลบ EXCEL ด้วย .NET"
    exclude: "EXCEL"
    description: "ใช้ .NET เพื่อทำความสะอาดไฟล์ EXCEL ปกป้องข้อมูลของคุณจากการเข้าถึงที่ไม่ต้องการ"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/net/replace-sensitive-text//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/net/replace-sensitive-text//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/net/replace-sensitive-text//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/replace-sensitive-text//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/net/replace-sensitive-text//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 6
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/net/replace-sensitive-text//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 7
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/net/replace-sensitive-text//pptx/"
          description: "การเสนอ PowerPoint Open XML"


---