
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: th
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ลบข้อความส่วนตัวจาก PPTX โดยใช้ C#"
head_description: "ซ่อนเนื้อหาที่ละเอียดอ่อนในงานนำเสนอ PPTX ของคุณอย่างรวดเร็วด้วย GroupDocs.Redaction for .NET และ C#"

############################# Header ############################
title: "แก้ไขหรือซ่อนข้อความที่ละเอียดอ่อนในเอกสาร PPTX ด้วย .NET" 
description: "ทำให้การนำเสนอของคุณสะอาดและเป็นส่วนตัว ใช้ GroupDocs.Redaction for .NET และ C# เพื่อลบสิ่งที่ไม่ต้องการแชร์"
subtitle: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET คืออะไร?"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET ให้เครื่องมือแก่นักพัฒนา C# ในการลบเนื้อหาที่ละเอียดอ่อนจากไฟล์ PPTX มันทำงานกับข้อความ ภาพ คอมเมนต์ และข้อมูล 메타

############################# Steps ############################
steps:
    enable: true
    title: "ขั้นตอนในการทำความสะอาดงานนำเสนอ Pptx"
    content: |
      ใช้ GroupDocs.Redaction for .NET ในแอพ .NET ของคุณเพื่อกำจัดหรือปิดบังเนื้อหาที่ยอมรับไม่ได้ในไม่กี่ขั้นตอน
      
      1. เริ่ม Redactor ใหม่และโหลดไฟล์ Pptx ของคุณ
      2. เลือกกฎการลบที่คุณต้องการใช้
      3. กำหนดข้อความที่ต้องค้นหาและที่จะทำการแทนที่
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
        // ลบพรีเซนเทชั่น PPTX

        // เปิดไฟล์ด้วย Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // เลือกการตั้งค่าการลบ
            // เลือกข้อความที่ต้องค้นหาและแทนที่
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // ใช้การเปลี่ยนแปลงและบันทึกไฟล์ที่ได้อัปเดต
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "คุณสมบัติการลบที่คุณสามารถใช้"
  description: "GroupDocs.Redaction for .NET ช่วยให้คุณค้นหาและซ่อนข้อความที่ละเอียดอ่อน รูปภาพ และข้อมูลที่ซ่อนอยู่ทั่วหลายประเภทไฟล์ เหมาะสำหรับการแชร์ไฟล์อย่างปลอดภัย"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ตัวเลือกการลบที่มีให้"
  features:
    # feature loop
    - title: "แทนที่ข้อความซ่อน"
      content: "ค้นหาและแทนที่คำหรือวลีที่เป็นความลับทั่วทั้งไฟล์ รองรับ regex ด้วย"

    # feature loop
    - title: "ปิดบังภาพ"
      content: "ใช้บล็อกเพื่อซ่อนภาพหรือพื้นที่ที่คุณต้องการปิดบัง สามารถควบคุมรูปร่าง ขนาด และสี"

    # feature loop
    - title: "ลบรายละเอียดที่ซ่อนอยู่"
      content: "ทำความสะอาดข้อมูลเมตาเช่นชื่อผู้เขียน วันที่แก้ไข หรือความคิดเห็นเพื่อทำให้ไฟล์ของคุณสะอาด"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบโดยใช้รูปแบบ Regex"
      content: |
        ค้นหาและทำความสะอาดข้อมูลเช่นที่อยู่อีเมลหรือรหัสโดยใช้ regex จะเหมาะสำหรับการลบซ้ำ
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  เปิดไฟล์ของคุณ
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // เขียนรูปแบบ REGEX สำหรับ EMAIL และตั้งค่าการแทนที่
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // ใช้การตั้งค่าการลบของคุณ
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
    title: "ทำความสะอาดไฟล์ PPTX โดยใช้ .NET"
    exclude: "PPTX"
    description: "ทำให้เอกสาร PPTX ของคุณปลอดภัยมากขึ้นโดยการซ่อนข้อความส่วนตัวด้วย .NET ได้อย่างรวดเร็วและเชื่อถือได้"
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