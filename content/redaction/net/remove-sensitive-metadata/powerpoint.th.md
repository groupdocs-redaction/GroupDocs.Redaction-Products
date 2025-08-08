
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: th
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ทำความสะอาดข้อมูลเมตาดาต้าใน POWERPOINT ด้วย C#"
head_description: "ลบข้อมูลเมตาดาต้าที่ไม่ต้องการจากไฟล์ POWERPOINT โดยใช้ GroupDocs.Redaction for .NET ปกป้องความเป็นส่วนตัวของคุณด้วยการลบข้อมูลที่ซ่อนอยู่"

############################# Header ############################
title: "ลบข้อมูลเมตาดาต้าใน POWERPOINT ผ่าน .NET" 
description: "ปกป้องข้อมูลเอกสารในไฟล์ POWERPOINT ด้วยเครื่องมือที่สร้างขึ้นสำหรับ C# ลบข้อมูลเมตาดาต้าในไม่กี่ขั้นตอน"
subtitle: "ฟีเจอร์ของ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "ข้อมูลเพิ่มเติมเกี่ยวกับ GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction เป็นชุดเครื่องมือสำหรับนักพัฒนา C# ช่วยให้คุณทำงานกับการลบข้อความ ภาพ และข้อมูลเมตาดาต้าในไฟล์ POWERPOINT

############################# Steps ############################
steps:
    enable: true
    title: "ทำความสะอาดข้อมูลเมตาดาต้าจากเอกสาร Powerpoint"
    content: |
      ด้วย GroupDocs.Redaction แอปพลิเคชั่นของคุณใน .NET สามารถลบข้อมูลเมตาดาต้าได้ง่ายๆ
      
      1. เริ่มต้นด้วยอ็อบเจ็กต์ Redactor และโหลดไฟล์ของคุณ
      2. เลือกฟิลด์เมตาดาต้าที่จะลบ
      3. ใช้การตั้งค่าการลบ
      4. ส่งออกเอกสารที่ทำความสะอาด
   
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
        // ลบข้อมูลเมตาดาต้าใน POWERPOINT

        // เปิดเอกสารด้วยตัวเรดักเตอร์
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // ตั้งค่าการทำความสะอาดข้อมูลเมตาดาต้า
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // ดำเนินการลบแล้วบันทึก
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ปกป้องเอกสารด้วยการลบข้อมูล"
  description: "GroupDocs.Redaction for .NET ช่วยลบเนื้อหาที่ซ่อนอยู่จากเอกสารเพื่อให้คุณสามารถแชร์ได้อย่างปลอดภัย ใช้งานได้กับหลายรูปแบบและประเภทเนื้อหา"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ความสามารถในการลบข้อมูล"
  features:
    # feature loop
    - title: "ลบข้อความส่วนตัว"
      content: "ค้นหาคำหรือวลีที่ละเอียดอ่อนและเอาออกจากเอกสารของคุณ"

    # feature loop
    - title: "ซ่อนข้อมูลภาพ"
      content: "ใช้การปิดบังเพื่อปกปิดพื้นที่ในภาพที่จำเป็นต้องซ่อน"

    # feature loop
    - title: "ลบข้อมูลเมตาดาต้า"
      content: "ทำความสะอาดฟิลด์ข้อมูลเมตาดาต้าที่อาจประกอบด้วยข้อมูลซ่อนเร้น"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบฟิลด์ข้อมูลเมตาดาต้าที่ซ่อนอยู่"
      content: |
        ตัวอย่างนี้แสดงวิธีการลบข้อมูลประจำตัวเช่นผู้เขียนและชื่อจากไฟล์ POWERPOINT
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  นำเข้าไฟล์ไปยังตัวเรดักเตอร์
          using (Redactor redactor  = new Redactor("source.pptx"))
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

              // ดำเนินการลบ
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // บันทึกเวอร์ชันที่ทำความสะอาดแล้ว
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
    title: "ทำความสะอาดไฟล์ POWERPOINT ด้วย .NET"
    exclude: "POWERPOINT"
    description: "ใช้ .NET เพื่อลบข้อมูลที่ซ่อนอยู่ในไฟล์ POWERPOINT วิธีที่เหมาะสำหรับการทำความสะอาดเอกสารที่เกี่ยวกับความลับ"
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