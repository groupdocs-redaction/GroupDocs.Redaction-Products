
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: th
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ทำความสะอาดข้อมูลเมตาดาต้าในไฟล์ XLSX ด้วย C#"
head_description: "ด้วย GroupDocs.Redaction for .NET คุณสามารถลบข้อมูลเมตาดาต้าได้อย่างปลอดภัยจากไฟล์ XLSX ทำความสะอาดข้อมูลที่ซ่อนซึ่งอาจเปิดเผยข้อมูลส่วนตัว"

############################# Header ############################
title: "ลบข้อมูลเมตาดาต้าในไฟล์ XLSX โดยใช้ .NET" 
description: "ปกป้องข้อมูลที่ละเอียดอ่อนในไฟล์ XLSX ของคุณด้วย C# การลบที่ง่ายสำหรับเอกสารส่วนตัวและการทำงาน"
subtitle: "สำรวจสิ่งที่ GroupDocs.Redaction for .NET สามารถทำได้" 

############################# About ############################
about:
    enable: true
    title: "เรียนรู้เกี่ยวกับ GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction มอบเครื่องมือให้กับนักพัฒนา C# ในการทำความสะอาดข้อมูลในเอกสาร XLSX ปกปิดหรือเอาข้อความ ภาพ และข้อมูลเมตาดาต้าออก

############################# Steps ############################
steps:
    enable: true
    title: "ลบข้อมูลเมตาดาต้าในไฟล์ Xlsx"
    content: |
      ด้วย GroupDocs.Redaction แอปพลิเคชันของคุณใน .NET สามารถลบข้อมูลที่ซ่อนอยู่ได้อย่างรวดเร็ว
      
      1. ตั้งค่า Redactor และเปิดไฟล์ Xlsx ของคุณ
      2. กำหนดข้อมูลเมตาดาต้าที่คุณต้องการลบ
      3. ใช้กฎการลบ
      4. บันทึกไฟล์สุดท้าย
   
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
        // ทำความสะอาดข้อมูลเมตาดาต้าที่ซ่อนอยู่ใน XLSX

        // เปิดไฟล์ด้วย Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // กำหนดข้อมูลเมตาดาต้าที่จะลบ
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // ดำเนินการลบและบันทึก
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ปกป้องข้อมูลที่ละเอียดอ่อนในเอกสาร"
  description: "ใช้ GroupDocs.Redaction for .NET เพื่อลบหรือซ่อนเนื้อหาในหลายรูปแบบไฟล์ เก็บไฟล์ไว้เป็นส่วนตัวและพร้อมแชร์"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ฟีเจอร์การลบข้อมูลแบบครบวงจร"
  features:
    # feature loop
    - title: "แทนที่หรือเอาข้อความออก"
      content: "ปกป้องข้อมูลส่วนตัวโดยการค้นหาและลบข้อความที่ละเอียดอ่อน"

    # feature loop
    - title: "ซ่อนส่วนภาพ"
      content: "ใช้การปิดบังเพื่อปิดบังพื้นที่ภาพของข้อมูลที่เป็นส่วนตัว"

    # feature loop
    - title: "ลบข้อมูลเมตาดาต้า"
      content: "ลบฟิลด์ข้อมูลเมตาดาต้าที่ซ่อนอยู่ซึ่งอาจใส่รายละเอียดส่วนตัวหรือธุรกิจ"
      
  code_samples_ext:
    # code sample ext loop
    - title: "วิธีการลบข้อมูลเมตาดาต้า"
      content: |
        ตัวอย่างโค้ดนี้ลบข้อมูลเมตาดาต้าในเอกสาร XLSX
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  เปิดเอกสาร
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // กำหนดเป้าหมายข้อมูลเมตาดาต้าผู้เขียน
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // กำหนดเป้าหมายข้อมูลเมตาดาต้าชื่อเรื่อง
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // ดำเนินการลบ
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
    title: "ลบข้อมูลเมตาดาต้าใน XLSX โดยใช้ .NET"
    exclude: "XLSX"
    description: "กำจัดข้อมูลเมตาดาต้าที่ส่วนตัวในไฟล์ XLSX ด้วย .NET เก็บเอกสารของคุณให้สะอาดและปลอดภัย"
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