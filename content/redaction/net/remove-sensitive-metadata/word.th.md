
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: th
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ลบข้อมูลเมตาดาต้าใน WORD โดยใช้ C#"
head_description: "ใช้ GroupDocs.Redaction for .NET เพื่อค้นหาและลบข้อมูลเมตาดาต้าที่ซ่อนอยู่ในไฟล์ WORD เก็บเอกสารของคุณให้เป็นส่วนตัวและปลอดภัยจากการเปิดเผยที่ไม่พึงประสงค์"

############################# Header ############################
title: "ลบข้อมูลเมตาดาต้าในไฟล์ WORD โดยใช้ .NET" 
description: "ปกป้องข้อมูลส่วนตัวและธุรกิจในไฟล์ WORD ด้วย C# เครื่องมือที่ง่ายสำหรับความไว้วางใจของไฟล์"
subtitle: "สิ่งที่คุณสามารถทำได้โดยใช้ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ช่วยนักพัฒนา C# ปกป้องเนื้อหาในไฟล์ WORD ทำความสะอาดข้อความ ภาพ และข้อมูลเมตาดาต้าอย่างรวดเร็วและง่ายดาย

############################# Steps ############################
steps:
    enable: true
    title: "ลบข้อมูลเมตาดาต้าจากไฟล์ Word"
    content: |
      ด้วย GroupDocs.Redaction ง่ายที่จะทำความสะอาดข้อมูลเมตาดาต้าในสภาพแวดล้อม .NET ของคุณ
      
      1. สร้างอ็อบเจ็กต์ Redactor และเปิดเอกสาร Word ของคุณ
      2. ตั้งค่ากฎเพื่อลบข้อมูลเมตาดาต้าที่ซ่อนอยู่ทั้งหมด
      3. ดำเนินการลบข้อมูลเพื่อลบแท็กที่ละเอียดอ่อน
      4. บันทึกเอกสารที่ทำความสะอาดแล้ว
   
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
        // ลบข้อมูลเมตาดาต้าจากไฟล์ WORD

        // เปิดเอกสารโดยใช้ Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // กำหนดตัวเลือกการลบข้อมูลเมตาดาต้า
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // ดำเนินการลบข้อมูลแล้วบันทึกไฟล์ที่ทำความสะอาดแล้ว
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ลบข้อมูลที่เป็นความลับจากเอกสาร"
  description: "ด้วย GroupDocs.Redaction for .NET คุณสามารถลบเนื้อหาที่ละเอียดอ่อนจากหลายรูปแบบ เก็บไฟล์ของคุณให้ปลอดภัยขณะรักษาโครงสร้างเดิม"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "เครื่องมือการลบข้อมูลเมตาดาต้าและเนื้อหา"
  features:
    # feature loop
    - title: "แทนที่ข้อความที่ละเอียดอ่อน"
      content: "ค้นหาข้อความในเอกสารและลบหรือปรับเปลี่ยนอย่างปลอดภัยเพื่อปกป้องข้อมูลส่วนตัว"

    # feature loop
    - title: "ปกปิดภาพ"
      content: "ปิดบังพื้นที่ที่ละเอียดอ่อนของภาพด้วยเลเยอร์"

    # feature loop
    - title: "ลบข้อมูลเมตาดาต้า"
      content: "ค้นหาและลบข้อมูลที่ซ่อนเพื่อลดความเสี่ยงในการรั่วไหลของข้อมูล"
      
  code_samples_ext:
    # code sample ext loop
    - title: "แก้ไขหรือทำลายข้อมูลเมตาดาต้าที่ซ่อนอยู่"
      content: |
        ตัวอย่างนี้แสดงวิธีการกำหนดเป้าหมายและทำความสะอาดข้อมูลเมตาดาต้าในเอกสาร WORD
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  โหลดไฟล์สำหรับการลบข้อมูล
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // ลบข้อมูลผู้เขียน
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // ลบข้อมูลชื่อ
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // ดำเนินการลบข้อมูล
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // ส่งออกเอกสารที่ทำความสะอาด
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "การลบข้อมูลเมตาดาต้าใน WORD ด้วย .NET"
    exclude: "WORD"
    description: "ใช้ .NET เพื่อลบข้อมูลเมตาดาต้าที่ซ่อนอยู่จากไฟล์ WORD เครื่องมือที่ง่ายสำหรับการเก็บข้อมูลไว้อย่างปลอดภัย"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "ภาพ JPEG"


---