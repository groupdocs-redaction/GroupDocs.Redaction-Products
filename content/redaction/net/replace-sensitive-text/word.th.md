
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: th
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ลบข้อความส่วนตัวจาก WORD โดยใช้ C#"
head_description: "เก็บไฟล์ WORD ของคุณให้เป็นส่วนตัวด้วย GroupDocs.Redaction for .NET และ C# โดยใช้วิธีที่รวดเร็วง่ายในการลบข้อความ"

############################# Header ############################
title: "ค้นหาและลบข้อความที่ละเอียดอ่อนในไฟล์ WORD ด้วย .NET" 
description: "ใช้ C# และ GroupDocs.Redaction for .NET เพื่อปกป้องไฟล์ส่วนตัวหรือไฟล์งานของคุณ ข้อมูลส่วนตัวของคุณจะถูกเก็บไว้ในที่ลับ"
subtitle: "คุณสมบัติหลักของ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET คืออะไร?"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET มอบเครื่องมือให้ผู้ใช้ C# ในการทำความสะอาดเอกสาร WORD สามารถลบข้อความ รูปภาพ หมายเหตุ และข้อมูลพื้นหลังได้

############################# Steps ############################
steps:
    enable: true
    title: "วิธีการลบไฟล์ Word"
    content: |
      ด้วย GroupDocs.Redaction for .NET ง่ายมากที่จะค้นหาและแทนที่เนื้อหาส่วนตัวในแอพ .NET
      
      1. สร้าง Redactor และเปิดไฟล์ Word ของคุณ
      2. เลือกการตั้งค่าการลบของคุณ
      3. บอกมันว่าจะค้นหาอะไรและจะใช้ข้อความอะไรแทน
      4. เริ่มลบและบันทึกไฟล์ของคุณที่ปรับปรุงแล้ว
   
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
        // ขั้นตอนในการลบเนื้อหาในเอกสาร WORD

        // เปิดไฟล์ด้วย Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // ปรับการตั้งค่าการลบของคุณ
            // เลือกสิ่งที่จะค้นหาและสิ่งที่จะใช้แทน
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // ดำเนินการลบแล้วบันทึกไฟล์ WORD ใหม่
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือในการลบเพิ่มเติม"
  description: "GroupDocs.Redaction for .NET มอบวิธีการที่เข้มแข็งในการซ่อนหรือเปลี่ยนข้อมูลส่วนตัวในหลายประเภทไฟล์ เหมาะสำหรับการแชร์ข้อมูลอย่างปลอดภัย"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "เครื่องมือและการตั้งค่าการลบที่มีให้"
  features:
    # feature loop
    - title: "แทนที่ข้อความส่วนตัว"
      content: "ค้นหาและแทนที่การจับคู่ที่แท้จริงด้วยตัวเลือกข้อความอัจฉริยะ รวมถึงการสนับสนุน regex"

    # feature loop
    - title: "ซ่อนภาพส่วนตัว"
      content: "ซ่อนภาพทั้งภาพหรือเพียงบางส่วนของหน้า คุณสามารถปรับสีและขนาดของการปิดบังได้"

    # feature loop
    - title: "ลบข้อมูลเมตาที่ซ่อนอยู่"
      content: "ลบข้อมูลเช่นชื่อผู้แต่ง ประวัติการแก้ไข และความคิดเห็นเพื่อปกป้องตัวตนของคุณ"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ใช้ Regex สำหรับการลบที่ชาญฉลาด"
      content: |
        ค้นหาและลบรูปแบบข้อมูลเช่นอีเมลหรือหมายเลขด้วยการใช้ regex
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  เปิดไฟล์ที่คุณต้องการลบ
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // ตั้งค่ารูปแบบ REGEX สำหรับ EMAIL และเลือกรายการแทนที่
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // ดำเนินกระบวนการลบ
              redactor.Apply(redaction);

              // บันทึกไฟล์ของคุณที่ลบแล้ว
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
    title: "วิธีการลบ WORD ด้วย .NET"
    exclude: "WORD"
    description: "ใช้ .NET เพื่อทำความสะอาดไฟล์ WORD รักษาเนื้อหาให้เป็นส่วนตัวและปลอดภัยจากการรั่วไหล"
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