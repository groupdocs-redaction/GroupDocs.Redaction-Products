
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: th
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "แก้ไขข้อมูลเมตาดาต้าใน JPEG โดยใช้ C#"
head_description: "ด้วย GroupDocs.Redaction for .NET คุณสามารถทำความสะอาดหรือเปลี่ยนข้อมูลเมตาดาต้าในไฟล์ JPEG ของคุณ ลบรายละเอียดที่ซ่อนซึ่งอาจมีข้อมูลส่วนตัว"

############################# Header ############################
title: "ลบข้อมูลเมตาดาต้าจากไฟล์ JPEG โดยใช้ .NET" 
description: "ปกป้องรายละเอียดส่วนตัวในไฟล์ JPEG ของคุณโดยใช้ C# เครื่องมือที่ง่ายสำหรับความปลอดภัยของเอกสาร"
subtitle: "ฟีเจอร์เด่นของ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ช่วยนักพัฒนา C# ลบข้อความ ภาพ และข้อมูลเมตาดาต้าในไฟล์ JPEG โดยใช้เครื่องมือที่ใช้งานง่าย

############################# Steps ############################
steps:
    enable: true
    title: "ทำความสะอาดข้อมูลเมตาดาต้าในเอกสาร Jpeg"
    content: |
      GroupDocs.Redaction ทำให้การลบข้อมูลเมตาดาต้าในแอปพลิเคชัน .NET ของคุณเป็นเรื่องง่าย
      
      1. ตั้งค่า Redactor และโหลดไฟล์ Jpeg ที่ต้องการทำความสะอาด
      2. เลือกการตั้ง_VALUESเพื่อเอาข้อมูลเมตาดาต้าทั้งหมดออก
      3. ทำการลบข้อมูลเพื่อล้างไฟล์
      4. บันทึกไฟล์ที่มีข้อมูลเมตาดาต้าที่ถูกลบ
   
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
        // ลบข้อมูลเมตาดาต้าจากไฟล์ JPEG

        // ใช้ Redactor เพื่อโหลดไฟล์
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // กำหนดการลบข้อมูลเมตาดาต้า
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // ดำเนินการและบันทึก
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ลบข้อมูลที่ละเอียดอ่อนจากเอกสาร"
  description: "GroupDocs.Redaction for .NET ช่วยให้คุณซ่อนหรือทำความสะอาดเนื้อหาที่เป็นส่วนตัวในรูปแบบต่างๆ ปกป้องข้อมูลที่ละเอียดอ่อนในขณะที่รักษาไฟล์ให้อยู่ในสภาพที่ใช้งานได้"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ฟีเจอร์การลบข้อมูลที่สำคัญ"
  features:
    # feature loop
    - title: "ค้นหาและลบข้อความ"
      content: "ค้นหาคำหรือวลีที่ละเอียดอ่อนในไฟล์ของคุณและทำความสะอาด"

    # feature loop
    - title: "ปกปิดพื้นที่ในภาพ"
      content: "ใช้การซ่อนเพื่อปกปิดส่วนที่เป็นส่วนตัวในภาพ"

    # feature loop
    - title: "แก้ไขข้อมูลเมตาดาต้า"
      content: "ลบหรือเปลี่ยนข้อมูลเมตาดาต้าเพื่อหลีกเลี่ยงการเปิดเผยข้อมูลส่วนตัว"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ทำความสะอาดฟิลด์ข้อมูลเมตาดาต้าที่ซ่อนอยู่"
      content: |
        ตัวอย่างนี้แสดงวิธีการลบหรือแก้ไขข้อมูลเมตาดาต้าที่ซ่อนอยู่ในเอกสาร JPEG
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  เปิดไฟล์ JPEG ด้วยตัวเรดักเตอร์
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // เพิ่มการลบสำหรับฟิลด์ผู้เขียน
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // เพิ่มการลบสำหรับฟิลด์ชื่อ
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // ดำเนินการลบข้อมูล
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // บันทึกเอกสารที่ทำความสะอาดแล้ว
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
    title: "ทำความสะอาดข้อมูลเมตาดาต้าใน JPEG ด้วย .NET"
    exclude: "JPEG"
    description: "ใช้ .NET เพื่อลบข้อมูลที่ซ่อนอยู่จากเอกสาร JPEG วิธีที่เหมาะสำหรับการรักษาความปลอดภัยข้อมูลส่วนตัว"
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