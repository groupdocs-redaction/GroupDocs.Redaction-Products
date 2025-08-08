
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: th
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ลบข้อมูลเมตาดาต้าใน PDF โดยใช้ C#"
head_description: "ด้วย GroupDocs.Redaction for .NET คุณสามารถลบหรือปรับปรุงข้อมูลเมตาดาต้าในไฟล์ PDF ทำความสะอาดข้อมูลที่ซ่อนอยู่ซึ่งอาจเปิดเผยข้อมูลส่วนตัว"

############################# Header ############################
title: "ทำความสะอาดข้อมูลเมตาดาต้าในไฟล์ PDF ด้วย .NET" 
description: "ปกป้องข้อมูลทางธุรกิจและข้อมูลส่วนตัวที่สำคัญในไฟล์ PDF โดยใช้ C# เครื่องมือที่ใช้งานง่ายสำหรับการป้องกันข้อมูลที่เชื่อถือได้"
subtitle: "ฟีเจอร์หลักของ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction มอบเครื่องมือที่ใช้ง่ายให้กับนักพัฒนา C# เพื่อลบเนื้อหาในไฟล์ PDF ปกปิดข้อความ ภาพ และข้อมูลเมตาดาต้าข้ามหลายรูปแบบ

############################# Steps ############################
steps:
    enable: true
    title: "ลบข้อมูลเมตาดาต้าจากเอกสาร Pdf"
    content: |
      ใช้ GroupDocs.Redaction เพื่อปกป้องข้อมูลเมตาดาต้าในเอกสาร .NET ของคุณอย่างรวดเร็ว
      
      1. สร้างอินสแตนซ์ Redactor และโหลดไฟล์ Pdf ของคุณ
      2. ตั้งค่าการลบข้อมูลเมตาดาต้าเพื่อเอาข้อมูลที่ซ่อนทั้งหมดออก
      3. ใช้การลบเพื่อทำความสะอาดเอกสาร
      4. บันทึกไฟล์ที่อัปเดต
   
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
        // ลบข้อมูลเมตาดาต้าจากไฟล์ PDF

        // โหลดไฟล์ด้วย Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // กำหนดการลบข้อมูลเมตาดาต้า
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // ดำเนินการเปลี่ยนแปลงและบันทึกไฟล์
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ลบข้อมูลที่ละเอียดอ่อนในเอกสาร"
  description: "GroupDocs.Redaction for .NET ช่วยให้คุณซ่อนหรือทำลายเนื้อหาที่เป็นความลับในรูปแบบไฟล์ต่างๆ เก็บข้อมูลส่วนตัวให้ปลอดภัยขณะรักษาเอกสารให้ชัดเจนและเป็นมืออาชีพ"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ฟีเจอร์การลบข้อมูลที่มีประสิทธิภาพ"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "ค้นหาข้อความที่ละเอียดอ่อนในเอกสารของคุณและแทนที่หรือเอาออกเพื่อปกป้องความเป็นส่วนตัว"

    # feature loop
    - title: "ซ่อนเนื้อหาภาพ"
      content: "เพิ่มเลเยอร์ซ่อนภาพหรือพื้นที่เฉพาะเพื่อปกปิดข้อมูลที่ละเอียดอ่อน"

    # feature loop
    - title: "ทำความสะอาดข้อมูลเมตาดาต้า"
      content: "ลบหรือแก้ไขข้อมูลเมตาดาต้าที่ซ่อนอยู่เพื่อป้องกันการรั่วไหลของข้อมูลที่ไม่ต้องการ"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบข้อมูลเมตาดาต้าที่ซ่อนอยู่"
      content: |
        ตัวอย่างนี้แสดงให้เห็นวิธีการปรับเปลี่ยนข้อมูลเมตาดาต้าในไฟล์ PDF
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  โหลดไฟล์ PDF เข้าไปในตัวเรดักเตอร์
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // ตั้งค่าการลบข้อมูลสำหรับคุณสมบัติผู้เขียน
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // ตั้งค่าการลบข้อมูลสำหรับคุณสมบัติชื่อเรื่อง
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // ดำเนินการลบข้อมูลในเอกสาร
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // บันทึกไฟล์ที่ทำความสะอาดแล้ว
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
    title: "ปกป้องไฟล์ PDF ด้วยการลบข้อมูลเมตาดาต้า .NET"
    exclude: "PDF"
    description: "ใช้ .NET เพื่อทำลายข้อมูลที่ซ่อนอยู่จากไฟล์ PDF วิธีง่ายๆ และมีประสิทธิภาพในการป้องกันข้อมูลที่ละเอียดอ่อนในเอกสารของคุณ"
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