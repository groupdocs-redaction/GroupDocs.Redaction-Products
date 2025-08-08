
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: th
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ลบข้อมูลเมตาดาต้าจาก DOCX โดยใช้ C#"
head_description: "ใช้ GroupDocs.Redaction for .NET เพื่อลบหรือแก้ไขข้อมูลเมตาดาต้าที่ซ่อนอยู่ในไฟล์ DOCX ปกป้องเอกสารของคุณจากการเปิดเผยรายละเอียดส่วนตัว"

############################# Header ############################
title: "ลบข้อมูลเมตาดาต้าในไฟล์ DOCX ด้วย .NET" 
description: "ใช้ C# ทำความสะอาดข้อมูลเมตาดาต้าที่ละเอียดอ่อนจากไฟล์ DOCX เก็บข้อมูลธุรกิจและข้อมูลส่วนตัวให้ปลอดภัย"
subtitle: "ฟีเจอร์เด่นของ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "อะไรคือ GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction มอบเครื่องมือให้กับนักพัฒนา C# ในการซ่อนหรือย้ายเนื้อหาในไฟล์ DOCX ทำความสะอาดข้อความ ภาพ และข้อมูลเมตาดาต้าอย่างรวดเร็ว

############################# Steps ############################
steps:
    enable: true
    title: "ทำความสะอาดข้อมูลที่ซ่อนอยู่ในไฟล์ Docx"
    content: |
      GroupDocs.Redaction ช่วยให้โครงการ .NET ของคุณลบข้อมูลเมตาดาต้าที่ไม่ต้องการได้อย่างรวดเร็ว
      
      1. สร้างอินสแตนซ์ Redactor และเปิดไฟล์ Docx ของคุณ
      2. ตั้งค่าการลบข้อมูลเพื่อกำหนดเป้าหมายข้อมูลเมตาดาต้า
      3. ดำเนินการเปลี่ยนแปลงเพื่อทำความสะอาดเอกสาร
      4. บันทึกไฟล์ที่ทำความสะอาดแล้ว
   
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
        // ลบข้อมูลเมตาดาต้าจากเอกสาร DOCX

        // โหลดไฟล์โดยใช้ Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // ตั้งค่าการลบข้อมูลเมตาดาต้า
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // ดำเนินการและบันทึกการเปลี่ยนแปลง
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ซ่อนข้อมูลที่ละเอียดอ่อนในเอกสารใดๆ"
  description: "GroupDocs.Redaction for .NET ช่วยให้คุณทำความสะอาดเนื้อหาที่ละเอียดอ่อนในหลายประเภทไฟล์ ทำให้เอกสารของคุณปลอดภัยต่อการแชร์หรือจัดเก็บ"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ตัวเลือกการลบข้อมูลที่ชาญฉลาด"
  features:
    # feature loop
    - title: "ลบข้อความส่วนตัว"
      content: "ค้นหาและลบข้อความส่วนตัวหรือธุรกิจจากไฟล์ของคุณ"

    # feature loop
    - title: "ซ่อนภาพ"
      content: "ปกปิดภาพหรือพื้นที่ที่เลือกเพื่อซ่อนข้อมูลลับ"

    # feature loop
    - title: "ลบข้อมูลเมตาดาต้า"
      content: "ทำความสะอาดข้อมูลเมตาดาต้าที่ซ่อนอยู่เพื่อหลีกเลี่ยงการรั่วไหลของรายละเอียดพื้นหลัง"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ทำความสะอาดฟิลด์เมตาดาต้า"
      content: |
        ตัวอย่างนี้จะแสดงวิธีการลบข้อมูลที่ซ่อนจากไฟล์ DOCX
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  โหลดไฟล์ DOCX ของคุณ
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // กำหนดเป้าหมายสำหรับการลบฟิลด์ผู้เขียน
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // กำหนดเป้าหมายสำหรับการลบฟิลด์ชื่อ
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // ดำเนินการลบข้อมูล
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // บันทึกไฟล์ที่อัปเดตแล้ว
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
    title: "ลบข้อมูลเมตาดาต้าใน DOCX ด้วย .NET"
    exclude: "DOCX"
    description: "ลบข้อมูลเมตาดาต้าที่ไม่ต้องการในไฟล์ DOCX โดยใช้ .NET วิธีง่ายๆ ในการปกป้องรายละเอียดที่ซ่อนในไฟล์ของคุณ"
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