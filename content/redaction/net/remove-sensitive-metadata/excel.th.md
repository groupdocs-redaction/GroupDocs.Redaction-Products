
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: th
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "แก้ไขและลบข้อมูลเมตาดาต้าใน EXCEL ผ่าน C#"
head_description: "รักษาเอกสาร EXCEL ของคุณโดยการลบข้อมูลเมตาดาต้าโดยใช้ GroupDocs.Redaction for .NET กำจัดข้อมูลที่ซ่อนอยู่ซึ่งอาจทำให้ข้อมูลเป็นอันตราย"

############################# Header ############################
title: "การป้องกันข้อมูลเมตาดาต้าในไฟล์ EXCEL ผ่าน .NET" 
description: "ด้วย C# คุณสามารถทำความสะอาดข้อมูลที่ละเอียดอ่อนจากไฟล์ EXCEL เครื่องมือที่ออกแบบมาเพื่อเก็บข้อมูลของคุณให้ปลอดภัย"
subtitle: "ประโยชน์หลักของ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "อะไรคือ GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction มอบวิธีที่เชื่อถือได้สำหรับนักพัฒนา C# ในการจัดการการลบข้อมูลในไฟล์ EXCEL ทำงานกับข้อความ ภาพ และข้อมูลเมตาดาต้า

############################# Steps ############################
steps:
    enable: true
    title: "ทำความสะอาดข้อมูลเมตาดาต้าในไฟล์ Excel"
    content: |
      ใช้ GroupDocs.Redaction ในโครงการ .NET ของคุณเพื่อจัดการข้อมูลเมตาดาต้าได้อย่างปลอดภัย
      
      1. สร้างอ็อบเจ็กต์ Redactor และโหลดไฟล์ Excel ที่ต้องการ
      2. กำหนดการลบข้อมูลเมตาดาต้า
      3. ดำเนินการลบ
      4. บันทึกเวอร์ชั่นสุดท้าย
   
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
        // ทำความสะอาดข้อมูลเมตาดาต้าจาก EXCEL

        // เริ่มต้นการลบข้อมูลและโหลดไฟล์
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // ตั้งค่าตัวเลือกสำหรับการลบข้อมูลเมตาดาต้า
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // ดำเนินการและบันทึกผลที่ได้
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ลบข้อมูลส่วนตัวในไฟล์ของคุณ"
  description: "GroupDocs.Redaction for .NET ช่วยให้คุณทำความสะอาดข้อความ ภาพ และข้อมูลเมตาดาต้าในหลายรูปแบบ เหมาะสำหรับเอกสารทางกฎหมายและองค์กร"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "เครื่องมือการลบข้อมูลเมตาดาต้า"
  features:
    # feature loop
    - title: "ค้นหาและลบข้อความ"
      content: "ค้นหาข้อความส่วนตัวหรือข้อมูลลับในเอกสารและลบออกอย่างปลอดภัย"

    # feature loop
    - title: "ซ่อนองค์ประกอบภาพ"
      content: "เพิ่มเลเยอร์ซ่อนพื้นที่ที่ละเอียดอ่อนในภาพ"

    # feature loop
    - title: "ลบข้อมูลเมตาดาต้า"
      content: "ลบข้อมูลที่ซ่อนซึ่งอาจทำให้ข้อมูลรั่วไหล"
      
  code_samples_ext:
    # code sample ext loop
    - title: "กำหนดเป้าหมายข้อมูลเมตาดาต้าสำหรับการลบ"
      content: |
        เรียนรู้วิธีการค้นหาและลบข้อมูลเมตาดาต้าเช่นผู้เขียนหรือชื่อจากเอกสาร EXCEL
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  นำเข้าเอกสารไปยังตัวเรดักเตอร์
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // กำหนดเป้าหมายข้อมูลเมตาดาต้าผู้เขียน
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // กำหนดเป้าหมายข้อมูลเมตาดาต้าชื่อ
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // ใช้การแก้ไข
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // บันทึกเอกสารที่อัปเดต
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
    title: "ลบข้อมูลเมตาดาต้าใน EXCEL โดยใช้ .NET"
    exclude: "EXCEL"
    description: "กำจัดข้อมูลเมตาดาต้าที่เป็นส่วนตัวในไฟล์ EXCEL ด้วย .NET เก็บเอกสารของคุณให้สะอาดและปลอดภัย"
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