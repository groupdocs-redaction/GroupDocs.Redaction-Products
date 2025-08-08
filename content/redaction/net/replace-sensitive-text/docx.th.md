
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: th
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ลบข้อความส่วนตัวจาก DOCX โดยใช้ C#"
head_description: "ปกป้องข้อมูลส่วนตัวในไฟล์ DOCX ของคุณอย่างรวดเร็วด้วย GroupDocs.Redaction for .NET และ C#"

############################# Header ############################
title: "ค้นหาและซ่อนข้อความที่ละเอียดอ่อนในเอกสาร DOCX ที่ใช้ .NET" 
description: "ไม่ว่าจะเพื่อการใช้งานส่วนบุคคลหรือธุรกิจ GroupDocs.Redaction for .NET และ C# ช่วยในการเก็บข้อมูลส่วนตัวให้พ้นจากสายตา"
subtitle: "วิธีที่ GroupDocs.Redaction for .NET จะช่วยคุณ" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET คืออะไร?"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET ให้เครื่องมือแก่นักพัฒนา C# ในการค้นหาและทำความสะอาดเนื้อหาที่ละเอียดอ่อนในไฟล์ DOCX สามารถทำงานกับข้อความ รูปภาพ หมายเหตุ และอื่น ๆ

############################# Steps ############################
steps:
    enable: true
    title: "วิธีการลบเนื้อหาในไฟล์ Docx"
    content: |
      ทำตามขั้นตอนเหล่านี้ในโปรเจกต์ .NET ของคุณเพื่อทำความสะอาดข้อความส่วนตัวด้วย GroupDocs.Redaction for .NET
      
      1. เริ่ม Redactor ใหม่และโหลดไฟล์ Docx
      2. เลือกการตั้งค่าการลบที่คุณต้องการ
      3. ใส่ข้อความที่ต้องค้นหาและสิ่งที่คุณต้องการแทนที่
      4. ดำเนินการลบและบันทึกไฟล์ของคุณ
   
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
        // การลบข้อความในไฟล์ DOCX

        // โหลดไฟล์ของคุณโดยใช้ Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // เลือกตัวเลือกการลบที่เหมาะสมกับความต้องการของคุณ
            // ตั้งสิ่งที่ต้องค้นหาและสิ่งที่จะเปลี่ยนเป็น
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // ใช้เครื่องมือและบันทึกไฟล์ที่ถูกลบ
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "คุณลักษณะการลบเพิ่มเติม"
  description: "ด้วย GroupDocs.Redaction for .NET ง่ายที่จะลบเนื้อหาที่ซ่อนอยู่หรือเห็นได้จากประเภทไฟล์ต่างๆ เหมาะสำหรับการแชร์อย่างปลอดภัย"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ภาพรวมของเครื่องมือการลบ"
  features:
    # feature loop
    - title: "แทนที่ข้อความส่วนตัว"
      content: "ค้นหาข้อความเฉพาะที่ใดก็ได้ในไฟล์และแทนที่มัน สามารถใช้กับข้อความปกติหรือรูปแบบได้"

    # feature loop
    - title: "ปิดบังภาพที่ละเอียดอ่อน"
      content: "ซ่อนส่วนของภาพหรือหน้าเต็มด้วยการปิดบัง คุณควบคุมสี ขนาด และตำแหน่งได้"

    # feature loop
    - title: "ลบข้อมูลที่ซ่อนอยู่"
      content: "ลบข้อมูลเมตาเช่นชื่อ คำอธิบาย หรือวันที่แก้ไขเพื่อให้แน่ใจว่าไม่มีอะไรหลงเหลือ"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ค้นหาและลบรูปแบบด้วย Regex"
      content: |
        ใช้ regex เพื่อค้นหารูปแบบข้อมูลเฉพาะเช่นที่อยู่อีเมลหรือหมายเลขประจำตัวและทำความสะอาดโดยอัตโนมัติ
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  เปิดไฟล์ที่คุณต้องการทำความสะอาด
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // สร้างกฎ REGEX สำหรับ EMAIL และสตริงการแทนที่
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // ดำเนินการลบตามการตั้งค่าของคุณ
              redactor.Apply(redaction);

              // บันทึกไฟล์ที่อัปเดต
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
    title: "ลบข้อมูลใน DOCX โดยใช้ .NET"
    exclude: "DOCX"
    description: "ปกป้องข้อมูลส่วนตัวหรือข้อมูลอย่างเป็นทางการโดยการซ่อนเนื้อหาในเอกสาร DOCX โดยใช้เครื่องมือ .NET"
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