
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: th
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ลบข้อความที่ละเอียดอ่อนใน PDF ด้วย C#"
head_description: "ปกป้องข้อมูลส่วนตัวในไฟล์ PDF ของคุณโดยใช้ GroupDocs.Redaction for .NET สามารถค้นหาและลบข้อมูลที่ละเอียดอ่อนได้อย่างรวดเร็ว"

############################# Header ############################
title: "ลบข้อความที่ละเอียดอ่อนจากเอกสาร PDF โดยใช้ .NET" 
description: "ใช้ C# และ GroupDocs.Redaction for .NET เพื่อควบคุมเนื้อหาในไฟล์ PDF ของคุณได้อย่างเต็มที่ ลบข้อมูลส่วนตัว ข้อมูลทางกฎหมาย หรือข้อมูลที่เป็นความลับ"
subtitle: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET คืออะไร?"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET ให้เครื่องมือที่จำเป็นกับนักพัฒนา C# ในการลบเนื้อหาในไฟล์ PDF ทำความสะอาดข้อความ รูปภาพ หมายเหตุ คำอธิบาย และข้อมูลส่วนติดต่อในประเภทไฟล์ยอดนิยม

############################# Steps ############################
steps:
    enable: true
    title: "วิธีการลบเนื้อหาในไฟล์ Pdf"
    content: |
      ปกป้องเอกสารของคุณในแอพ .NET ใด ๆ โดยใช้ GroupDocs.Redaction for .NET ลบข้อความที่ละเอียดอ่อนได้อย่างรวดเร็วและแม่นยำ
      
      1. สร้าง Redactor และโหลดไฟล์ Pdf ของคุณ
      2. ตั้งค่าตัวเลือกการลบที่คุณต้องการ
      3. ระบุข้อความที่ต้องค้นหาและข้อความที่จะใช้แทน
      4. ดำเนินการลบและบันทึกไฟล์
   
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
        // วิธีการลบข้อความในไฟล์ PDF

        // โหลดไฟล์ของคุณโดยใช้คอนสตรัคเตอร์ Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // ตั้งค่าการลบของคุณ
            // เลือกข้อความที่ต้องค้นหาและข้อความที่จะแทนที่
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // ใช้การลบและบันทึกไฟล์ PDF ใหม่
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "วิธีเพิ่มเติมในการลบเอกสาร"
  description: "GroupDocs.Redaction for .NET ช่วยลบหรือซ่อนเนื้อหาที่ละเอียดอ่อนในหลายรูปแบบไฟล์ รักษาเอกสารให้สะอาดและปลอดภัยต่อการแชร์"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "เครื่องมือและตัวเลือกการลบ"
  features:
    # feature loop
    - title: "แทนที่ข้อความที่เป็นความลับ"
      content: "ค้นหาและแทนที่ข้อความที่ตรงกันในไฟล์ของคุณ รองรับการค้นหาด้วย regex และตัวเลือกการค้นหาที่ชาญฉลาด"

    # feature loop
    - title: "ซ่อนภาพที่ละเอียดอ่อน"
      content: "ปิดบังภาพหรือพื้นที่เฉพาะด้วยสสารปิดบัง ปรับการตั้งค่าหน้า สี และอื่น ๆ"

    # feature loop
    - title: "ลบข้อมูลเมตาที่ซ่อนอยู่"
      content: "ลบข้อมูลที่ซ่อนอยู่ เช่น ผู้เขียน เวลา หรือความคิดเห็นเพื่อป้องกันความเป็นส่วนตัว"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบข้อความด้วย Regex"
      content: |
        ใช้การแสดงออกปกติในการค้นหาและลบรูปแบบข้อความที่ละเอียดอ่อน เช่น อีเมลหรือรหัสประจำตัว
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  เปิดเอกสารที่คุณต้องการลบ
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // กำหนดรูปแบบ REGEX สำหรับ EMAIL และข้อความที่จะใช้แทน
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // ใช้กฎการลบ
              redactor.Apply(redaction);

              // บันทึกไฟล์ที่ถูกลบ
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
    title: "ลบเนื้อหาใน PDF โดยใช้ .NET"
    exclude: "PDF"
    description: "ปกป้องข้อมูลอย่างเป็นทางการและส่วนบุคคลโดยการลบข้อความในไฟล์ PDF ด้วยเครื่องมือ .NET รักษาเอกสารให้ปลอดภัยและเป็นส่วนตัว"
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