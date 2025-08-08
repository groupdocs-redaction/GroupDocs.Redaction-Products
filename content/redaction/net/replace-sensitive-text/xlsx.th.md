
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: th
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ลบข้อความส่วนตัวจาก XLSX โดยใช้ C#"
head_description: "ล้างเนื้อหาส่วนตัวในไฟล์ XLSX ของคุณอย่างรวดเร็วโดยใช้ GroupDocs.Redaction for .NET และ C#"

############################# Header ############################
title: "แก้ไขหรือซ่อนข้อความที่ละเอียดอ่อนในเอกสาร XLSX ด้วย .NET" 
description: "ด้วย GroupDocs.Redaction for .NET และ C# คุณสามารถลบข้อมูลส่วนตัวหรือข้อมูลธุรกิจจากไฟล์ XLSX และเก็บไว้ให้ปลอดภัยต่อการแชร์"
subtitle: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET คืออะไร?"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET ช่วยนักพัฒนา C# ในการค้นหาและลบข้อมูลที่ละเอียดอ่อนจากไฟล์ XLSX สามารถทำงานกับข้อความ รูปภาพ หมายเหตุ และข้อมูลไฟล์

############################# Steps ############################
steps:
    enable: true
    title: "วิธีการลบข้อความในไฟล์ Xlsx"
    content: |
      ใช้ GroupDocs.Redaction for .NET ภายในโปรเจกต์ .NET ของคุณเพื่อซ่อนหรือทำความสะอาดข้อมูลที่ละเอียดอ่อนในไม่กี่ขั้นตอน
      
      1. สร้าง Redactor และโหลดไฟล์ Xlsx
      2. เลือกการตั้งค่าการลบที่เหมาะสมกับคุณ
      3. ใส่ข้อความที่ต้องค้นหาและสิ่งที่คุณต้องการแทนที่
      4. เริ่มกระบวนการลบและบันทึกไฟล์ที่ได้อัปเดต
   
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
        // ลบข้อความจากไฟล์ XLSX

        // ใช้ Redactor เพื่อเปิดไฟล์นั้น
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // เลือกตัวเลือกการลบของคุณ
            // ตั้งค่าข้อความค้นหาและข้อความที่ต้องใช้แทน
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // ใช้การลบและบันทึกไฟล์ที่สะอาด
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือเพิ่มเติมสำหรับการลบ"
  description: "GroupDocs.Redaction for .NET ช่วยทำความสะอาดเนื้อหาที่แตกต่าง—ข้อความ รูปภาพ หรือข้อมูลเมตา—เพื่อให้ไฟล์ของคุณพร้อมสำหรับการแชร์อย่างปลอดภัย"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ตัวเลือกการลบที่แสดง"
  features:
    # feature loop
    - title: "แทนที่ข้อความที่ละเอียดอ่อน"
      content: "ค้นหาข้อความในไฟล์และแทนที่ข้อมูลที่เป็นความลับ รองรับข้อความง่ายๆ และรูปแบบ"

    # feature loop
    - title: "ปิดบังพื้นที่ของภาพ"
      content: "ใช้ซ้อนเพื่อซ่อนข้อมูลภาพ เลือกสี ขนาดพื้นที่ และรูปแบบหน้า"

    # feature loop
    - title: "ลบข้อมูลเพิ่มเติม"
      content: "ลบข้อมูลเมตา เช่น ชื่อผู้แต่ง วันที่เวลา หรือหมายเหตุภายในเพื่อหลีกเลี่ยงการรั่วไหล"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบด้วยกฎ Regex"
      content: |
        ใช้ regex เพื่อค้นหาและทำความสะอาดรูปแบบเช่นหมายเลขโทรศัพท์ อีเมล หรือรายละเอียดส่วนตัวอื่นๆ
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  เปิดไฟล์เพื่อเริ่มต้น
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // เขียนรูปแบบ REGEX สำหรับ EMAIL และเลือกการแทนที่
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // ดำเนินการลบตามรูปแบบของคุณ
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
    title: "ซ่อนข้อมูลใน XLSX โดยใช้ .NET"
    exclude: "XLSX"
    description: "ทำความสะอาดเอกสาร XLSX ของคุณโดยลบข้อความส่วนตัวหรือละเอียดอ่อนโดยใช้เครื่องมือ .NET"
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