
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: th
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ลบข้อมูลเมตาดาต้าใน PHOTO ด้วย C#"
head_description: "GroupDocs.Redaction for .NET ช่วยให้คุณลบข้อมูลที่ซ่อนอยู่ในไฟล์ PHOTO ที่อาจเปิดเผยข้อมูลส่วนตัวหรือธุรกิจ"

############################# Header ############################
title: "ลบข้อมูลเมตาดาต้าจาก PHOTO โดยใช้ .NET" 
description: "ทำให้เอกสารของคุณปลอดภัยโดยการลบข้อมูลที่ซ่อนจากไฟล์ PHOTO โดยใช้ C#"
subtitle: "ข้อดีของ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ช่วยนักพัฒนา C# ซ่อนเนื้อหาส่วนตัวในไฟล์ PHOTO รวมถึงข้อความ รายละเอียด รูปภาพ และข้อมูลเมตาดาต้า

############################# Steps ############################
steps:
    enable: true
    title: "ลบข้อมูลเมตาดาต้าในไฟล์ Photo"
    content: |
      ใช้ GroupDocs.Redaction ในโครงการ .NET ของคุณเพื่อทำการลบข้อมูลเมตาดาต้าในเอกสาร
      
      1. เริ่มต้นด้วย Redactor และเปิดไฟล์ Photo ของคุณ
      2. กำหนดกฎเพื่อทำลายข้อมูลเมตาดาต้า
      3. ทำการลบข้อมูลและทำความสะอาดไฟล์
      4. บันทึกไฟล์ผลลัพธ์
   
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
        // ลบข้อมูลเมตาดาต้าจากเอกสาร PHOTO

        // ใช้ Redactor เพื่อโหลดเอกสาร
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // ตั้งค่าฟิลด์ข้อมูลเมตาดาต้าสำหรับการลบ
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // ทำความสะอาดเอกสารและบันทึก
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ลบข้อมูลส่วนตัวจากไฟล์"
  description: "GroupDocs.Redaction for .NET ช่วยให้คุณลบข้อมูลส่วนตัวจากข้อความ ภาพ และรายละเอียดไฟล์ เหมาะสำหรับการรักษาความปลอดภัยข้อมูล"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ฟีเจอร์การลบข้อมูลที่มีประโยชน์"
  features:
    # feature loop
    - title: "การทำความสะอาดข้อความ"
      content: "ตรวจสอบและลบข้อความที่ไม่ควรแชร์"

    # feature loop
    - title: "ซ่อนพื้นที่ในรูปภาพ"
      content: "ปิดบังการแสดงผลเฉพาะในภาพ"

    # feature loop
    - title: "ลบข้อมูลเมตาดาต้า"
      content: "ลบข้อมูลเมตาดาต้าที่ซ่อนทั้งหมดก่อนการแชร์หรือการเผยแพร่"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบฟิลด์ข้อมูลเมตาดาต้าที่ซ่อนอยู่"
      content: |
        ตัวอย่างนี้แสดงวิธีการลบข้อมูลเมตาดาต้าในเอกสาร PHOTO
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  โหลดไฟล์ PHOTO ไปยังตัวเรดักเตอร์
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // ลบฟิลด์ผู้เขียน
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // ลบฟิลด์ชื่อ
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // ดำเนินการในการลบข้อมูล
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // บันทึกเวอร์ชันที่คลีน
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
    title: "ใช้ .NET เพื่อปิดข้อมูลเมตาดาต้า PHOTO"
    exclude: "PHOTO"
    description: "รักษาความปลอดภัยเอกสาร PHOTO ของคุณโดยการทำความสะอาดข้อมูลเมตาดาต้าให้เรียบร้อย"
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