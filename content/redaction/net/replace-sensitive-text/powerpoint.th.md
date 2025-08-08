
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: th
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ลบข้อความส่วนตัวจาก POWERPOINT โดยใช้ C#"
head_description: "เก็บไฟล์ POWERPOINT ของคุณให้เป็นส่วนตัวด้วย GroupDocs.Redaction for .NET และ C#"

############################# Header ############################
title: "ค้นหาและลบข้อความที่ละเอียดอ่อนในไฟล์ POWERPOINT ด้วย .NET" 
description: "ใช้ C# และ GroupDocs.Redaction for .NET เพื่อปกป้องไฟล์ภาคเอกชนและบริษัท ข้อมูลส่วนตัวของคุณจะไม่ถูกเปิดเผย"
subtitle: "คุณสมบัติเด่นของ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET คืออะไร?"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET แก่ผู้ใช้ C# ในการทำความสะอาดเอกสาร POWERPOINT

############################# Steps ############################
steps:
    enable: true
    title: "วิธีการลบในไฟล์ Powerpoint"
    content: |
      ด้วย GroupDocs.Redaction for .NET ง่ายที่จะค้นหาและแทนที่เนื้อหาส่วนตัวในโปรแกรม .NET
      
      1. สร้าง Redactor และเปิดไฟล์ Powerpoint
      2. เลือกการตั้งค่าการลบของคุณ
      3. กำหนดข้อความที่จะค้นหาและข้อความที่จะใช้แทน
      4. เริ่มต้นการลบและบันทึกไฟล์ใหม่
   
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
        // ขั้นตอนในการลบข้อมูลในเอกสาร POWERPOINT

        // เปิดไฟล์ด้วย Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // ปรับการตั้งค่าการลบของคุณ
            // เลือกเนื้อหาที่จะค้นหาและแทนที่
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // ทำการลบและบันทึกไฟล์ใหม่
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ฟีเจอร์ในการลบที่คุณสามารถใช้งาน"
  description: "GroupDocs.Redaction for .NET ช่วยให้คุณค้นหาและซ่อนข้อมูลที่ละเอียดอ่อน รูปภาพ และข้อมูลที่ซ่อนอยู่ในประเภทดีมีมากมาย เหมาะสำหรับการแชร์ได้อย่างปลอดภัย"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ตัวเลือกการลบที่มีให้"
  features:
    # feature loop
    - title: "แทนที่ข้อมูลที่ซ่อน"
      content: "ค้นหาและแทนที่ข้อความที่เป็นความลับทุกที่ในไฟล์ ได้"

    # feature loop
    - title: "ซ่อนภาพ"
      content: "ใช้รูปแบบการซ่อนเพื่อปิดสัณฐานหรือตำแหน่งที่คุณต้องการ คนกำหนดสี ขนาด และรูปร่างของซ็อกเก็ต"

    # feature loop
    - title: "ลบข้อมูลที่ซ่อนอยู่"
      content: "ทำความสะอาดข้อมูลเมตา เช่น ชื่อผู้แต่ง วันที่แก้ไข หรือความคิดเห็น"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบโดยใช้รูปแบบ Regex"
      content: |
        ค้นหาและทำความสะอาดข้อมูล เช่น ที่อยู่อีเมลหรือหมายเลขโดยใช้ regex
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  เปิดไฟล์ที่คุณอยากทำความสะอาด
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // ตั้งค่า REGEX สำหรับ EMAIL และเลือกรายการที่จะใช้แทน
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // ทำการลบ
              redactor.Apply(redaction);

              // บันทึกเวอร์ชันที่ถูกลบ
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
    title: "ล้างไฟล์ POWERPOINT ด้วย .NET"
    exclude: "POWERPOINT"
    description: "รับใช้และทำให้เอกสาร POWERPOINT ของคุณปลอดภัยโดยการซ่อนข้อมูลส่วนตัวให้ไม่ปิดบัง"
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