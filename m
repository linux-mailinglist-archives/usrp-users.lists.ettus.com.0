Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFDB6AABC6
	for <lists+usrp-users@lfdr.de>; Sat,  4 Mar 2023 19:16:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B1BB5384922
	for <lists+usrp-users@lfdr.de>; Sat,  4 Mar 2023 13:16:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677953818; bh=Z8CHr+VZ8Vuw7h8ZfHxxNmJGEwJmAYi0UaPJx2gnHlQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=nDi7gHF/5pFrRvh4M/zdAO1TCCmeDXfuXnOab/VxAFmU+/yW5viQFQR2zFbR3vfax
	 pfRTg4oHOZQRieIqmd+bOeWLWPkIXj5+YixNIEmJq3xzjbOYUdWIB3PgVY85SXBeFm
	 izeImzzt1idbbpDyq8DWkgjmYTpDRuh0/V1LV8mOj0NDx91sSon4hH36Astd53cKOi
	 E2OdJ5kgQ+tdBU+xhWBnmu4NEFekLFdzHlkldwVXjAI0o8AXQKDCf8ANZws8IC99K+
	 AXTfdt4rlLKv/Xyu/wckBDZAUv+jfOHMkigAe7/XXElYvczoCQtO13JIYwos7XtXOy
	 k1GYHuJjVvX4w==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id D68AF384688
	for <usrp-users@lists.ettus.com>; Sat,  4 Mar 2023 13:16:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cVxmu7WY";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id w23so6436136qtn.6
        for <usrp-users@lists.ettus.com>; Sat, 04 Mar 2023 10:16:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6IrYicGDjIhzS3+P3StjaTvB62B+k/gPW0l4XFaCd0E=;
        b=cVxmu7WYXE7ycjjsgOfmYXkcjGGPjC1F7i8cOBw51APZJE6Tf8ypMd4bLaxyE4E/WJ
         pW+bi7CVsQJdJOr/Bb4apWNyzgjVoobvh6e62VJQKPgqgKnHF42EgJHMSUTBDi7XQpXp
         j3m3040JbKsuA9D8EXjVVhpyX10prLr4MpslK0nwBffQMcLHRMJd0T/jpjCfWzMMJVyJ
         uP6kIxd1pnMoB+0BdWnAn8AeKx4Xc2j2Sc0bslmejJPH4u1jvJUMMpwn2Vzn/zG1cFur
         Hpxsjhpjk9P82ncFnU7147UmadzSnBQNwFemnzfMhSfye5XvgVZsj3jAnfYjr0mpue45
         ueNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6IrYicGDjIhzS3+P3StjaTvB62B+k/gPW0l4XFaCd0E=;
        b=gOrhpiMj8ny8njTMyLZmwv27vCi+To2cHrPMv+VQ8jTNM8QViy0d4XqOagIEpuJfca
         Z7b9EwlpszSrSwmSZrZWzz2OSVGqbvMpDOQ3yvo1LezwnQW/DhbpCcodI7gq9TJZWkHs
         AEvHNTDx0Qb0Bl0ChmpmDYtJBoNCsAUpCiuYyv/4Z7Bj8zbjgq0TkUrAFA9AgNaWy3Eu
         uKIXxBU4T+oAYnfAIQMCB/Gw8inpiUCP/hVA6RSzcHQRTAmnk9uVDowvlYghYiSyRD+z
         oUtufjub+ZVLprrVjIsTtNjeJhOomjGHQlxP7ag/4EXsUx8yiC9dOrI8aX4Kv9haD3aR
         lk+Q==
X-Gm-Message-State: AO0yUKUQituzq9B55prYwHg6ljYo+OcZcYAltKYLTrAfQ7pTM1RRmCgt
	tLN2N3swb/BKkuc8TUGB8VcM3XLRkQA=
X-Google-Smtp-Source: AK7set8nhOOuMnJhH/I3TLX/U/Q13TaelxkmEf6kr3KvcyfG63UN6aa+F1XEKuTGI0iXGhT9Qqn+Vw==
X-Received: by 2002:ac8:5b44:0:b0:3bf:d688:2a7d with SMTP id n4-20020ac85b44000000b003bfd6882a7dmr8920264qtw.26.1677953785223;
        Sat, 04 Mar 2023 10:16:25 -0800 (PST)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id j67-20020a378746000000b007422eee8058sm4061020qkd.125.2023.03.04.10.16.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Mar 2023 10:16:24 -0800 (PST)
Message-ID: <2df6d1c3-f428-cf2e-2b76-03b48ceb9fc9@gmail.com>
Date: Sat, 4 Mar 2023 13:16:24 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Abhay Samant <abhay.samant@ni.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <SJ0PR04MB832815197030088DB1468B6CEBB09@SJ0PR04MB8328.namprd04.prod.outlook.com>
 <9d0647bc-b671-3350-a9f0-e5b11106b44a@gmail.com>
 <SJ0PR04MB832895E5D4CE860EB46A057BEBB09@SJ0PR04MB8328.namprd04.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SJ0PR04MB832895E5D4CE860EB46A057BEBB09@SJ0PR04MB8328.namprd04.prod.outlook.com>
Message-ID-Hash: W2DIDMUGXK2HGN4OCKCKSYLRCAQ7345F
X-Message-ID-Hash: W2DIDMUGXK2HGN4OCKCKSYLRCAQ7345F
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error updating fpga image on n320
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W2DIDMUGXK2HGN4OCKCKSYLRCAQ7345F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5143974365673307826=="

This is a multi-part message in MIME format.
--===============5143974365673307826==
Content-Type: multipart/alternative;
 boundary="------------58wvWR3HaxH06kCPXjXwiD5V"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------58wvWR3HaxH06kCPXjXwiD5V
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/03/2023 13:09, Abhay Samant wrote:
> Hi Marcus,
> Thank you for your quick response on a Saturday.
>
> My network profile that I use to connect to USRP was earlier=20
> configured to use static address 192.168.10.1, which I had used this=20
> IP address with the image loader call.
Normally, 192.168.10.1 is the IP address of your *HOST* computer.

>
> Nevertheless, based on your feedback, I changed the IP address to=20
> 192.168.10.2 and still get the same error
>
> uhd_image_loader --args "type=3Dn3xx,addr=3D192.168.10.2,fpga=3DHG"
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11;=20
> UHD_4.2.0.1-0-g321295fb
> No applicable UHD devices found
> [ERROR] [MPMD IMAGE LOADER] mpmd_image_loader only supports a single=20
> device
>
> I can ping to this address successfully. I have also disabled firewall=20
> on Ubuntu (sudo disable ufw) based on some other answers that I saw=20
> related to same question.
>
> Abhay Samant, PhD
>
> Chief Software Engineer =E2=80=93 Aerospace/Defense/Government Business
>
> NI
> abhay.samant@ni.com
>
>
You're using the SFP0=C2=A0 port on the N320?

Another way to update it is to simply program an entirely-fresh system=20
image onto the uSD card:

https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updat=
ing_the_files_system_by_writing_the_disk_image

https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card=
#N3xx


> -----------------------------------------------------------------------=
-
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Saturday, March 4, 2023 11:56 AM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [EXTERNAL] [USRP-users] Re: Error updating fpga image on n32=
0
> On 04/03/2023 12:52, Abhay Samant wrote:
>> Hi,
>> I am trying to update fpga image on my n320 on an Ubuntu 20.04=20
>> machine and I get the following error
>>
>> $ uhd_image_loader --args "type=3Dn3xx,addr=3D192.168.10.1,fpga=3DHG"
>> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11;=20
>> UHD_4.2.0.1-0-g321295fb
>> No applicable UHD devices found
>> [ERROR] [MPMD IMAGE LOADER] mpmd_image_loader only supports a single=20
>> device.
>>
>> I have downloaded all the images using uhd_image_downloader command.
>>
>> Has anyone else run into the loader only supports a single device erro=
r.
>>
>>
>> Abhay Samant, PhD
>>
>> Chief Software Engineer =E2=80=93 Aerospace/Defense/Government Busines=
s
>>
>> NI
>> abhay.samant@ni.com <mailto:abhay.samant@ni.com>
>>
>>
> Your IP address is almost certainly incorrect -- try 192.168.10.2
>
>
>> INTERNAL - NI CONFIDENTIAL
>>
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com  <mailto:usrp-use=
rs@lists.ettus.com>
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com  <mail=
to:usrp-users-leave@lists.ettus.com>
>
>
> INTERNAL - NI CONFIDENTIAL
>

--------------58wvWR3HaxH06kCPXjXwiD5V
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 04/03/2023 13:09, Abhay Samant
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR04MB832895E5D4CE860EB46A057BEBB09@SJ0PR04MB8328.namprd04=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <span style=3D"font-size:12pt;background-color:rgb(255, 255, 255)=
"
          class=3D"ContentPasted0">Hi Marcus,</span>
        <div style=3D"font-size:12pt;background-color:rgb(255, 255, 255)"
          class=3D"ContentPasted0">
          Thank you for your quick response on a Saturday.</div>
        <div style=3D"font-size:12pt;background-color:rgb(255, 255, 255)"=
><br
            class=3D"ContentPasted0">
        </div>
        <div style=3D"font-size:12pt;background-color:rgb(255, 255, 255)"
          class=3D"ContentPasted0">
          My network profile that I use to connect to USRP was earlier
          configured to use static address 192.168.10.1, which I had
          used this IP address with the image loader call.<br
            class=3D"ContentPasted0">
        </div>
      </div>
    </blockquote>
    Normally, 192.168.10.1 is the IP address of your *HOST* computer.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR04MB832895E5D4CE860EB46A057BEBB09@SJ0PR04MB8328.namprd04=
.prod.outlook.com">
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <div style=3D"font-size:12pt;background-color:rgb(255, 255, 255)"
          class=3D"ContentPasted0">
        </div>
        <div style=3D"font-size:12pt;background-color:rgb(255, 255, 255)"=
><br
            class=3D"ContentPasted0">
        </div>
        <div style=3D"font-size:12pt;background-color:rgb(255, 255, 255)"
          class=3D"ContentPasted0">
          Nevertheless, based on your feedback, I changed the IP address
          to 192.168.10.2 and still get the same error</div>
        <div style=3D"font-size:12pt;background-color:rgb(255, 255, 255)"
          class=3D"ContentPasted0">
          <br class=3D"ContentPasted0">
        </div>
        <div style=3D"font-size:12pt;background-color:rgb(255, 255, 255)"
          class=3D"ContentPasted0 ContentPasted1">
          uhd_image_loader --args "type=3Dn3xx,addr=3D192.168.10.2,fpga=3D=
HG"
          <div class=3D"ContentPasted1 ContentPasted0">[INFO] [UHD] linux=
;
            GNU C++ version 9.4.0; Boost_107100; DPDK_19.11;
            UHD_4.2.0.1-0-g321295fb</div>
          <div class=3D"ContentPasted1 ContentPasted0">No applicable UHD
            devices found</div>
          [ERROR] [MPMD IMAGE LOADER] mpmd_image_loader only supports a
          single device</div>
        <div style=3D"font-size:12pt;background-color:rgb(255, 255, 255)"
          class=3D"ContentPasted0 ContentPasted1">
          <br class=3D"ContentPasted0">
        </div>
        <span style=3D"font-size:12pt;background-color:rgb(255, 255, 255)=
"
          class=3D"ContentPasted0 ContentPasted1">I can ping to this
          address successfully. I have also disabled firewall on Ubuntu
          (sudo disable ufw) based on some other answers that I saw
          related to same question.</span><br>
      </div>
      <div class=3D"elementToProof">
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);">
          <br>
        </div>
        <div id=3D"Signature">
          <div>
            <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0)">
              <p style=3D"margin:0in 0in 0.0001pt; font-size:11pt;
                font-family:Calibri,sans-serif; color:rgb(32,31,30);
                text-align:start; background-color:rgb(255,255,255)">
                Abhay Samant, PhD</p>
              <p style=3D"margin:0in 0in 0.0001pt; font-size:11pt;
                font-family:Calibri,sans-serif; color:rgb(32,31,30);
                text-align:start; background-color:rgb(255,255,255)">
                Chief Software Engineer =E2=80=93 Aerospace/Defense/Gover=
nment
                Business</p>
              <p style=3D"margin:0in 0in 0.0001pt; font-size:11pt;
                font-family:Calibri,sans-serif; color:rgb(32,31,30);
                text-align:start; background-color:rgb(255,255,255)">
                NI<br>
                <span style=3D"margin:0px; color:blue;
                  text-decoration:underline"><a class=3D"moz-txt-link-abb=
reviated" href=3D"mailto:abhay.samant@ni.com">abhay.samant@ni.com</a></sp=
an></p>
              <br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    You're using the SFP0=C2=A0 port on the N320?<br>
    <br>
    Another way to update it is to simply program an entirely-fresh
    system image onto the uSD card:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_N300=
/N310/N320/N321_Getting_Started_Guide#Updating_the_files_system_by_writin=
g_the_disk_image">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_S=
tarted_Guide#Updating_the_files_system_by_writing_the_disk_image</a><br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/Writing_t=
he_USRP_File_System_Disk_Image_to_a_SD_Card#N3xx">https://kb.ettus.com/Wr=
iting_the_USRP_File_System_Disk_Image_to_a_SD_Card#N3xx</a><br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR04MB832895E5D4CE860EB46A057BEBB09@SJ0PR04MB8328.namprd04=
.prod.outlook.com">
      <div class=3D"elementToProof">
        <div id=3D"Signature">
          <div>
            <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0)">
            </div>
          </div>
        </div>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Mar=
cus
          D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patc=
hvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Saturday, March 4, 2023 11:56 AM<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> [EXTERNAL] [USRP-users] Re: Error updating
          fpga image on n320</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <div class=3D"x_moz-cite-prefix">On 04/03/2023 12:52, Abhay Saman=
t
          wrote:<br>
        </div>
        <blockquote type=3D"cite">
          <style type=3D"text/css" style=3D"display:none">p
	{margin-top:0;
	margin-bottom:0}</style>
          <div class=3D"x_elementToProof x_ContentPasted0"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0);
            background-color:rgb(255,255,255)">
            Hi,</div>
          <div class=3D"x_elementToProof x_ContentPasted0"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0);
            background-color:rgb(255,255,255)">
            I am trying to update fpga image on my n320 on an Ubuntu
            20.04 machine and I get the following error<br>
          </div>
          <div class=3D"x_elementToProof x_ContentPasted0"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0);
            background-color:rgb(255,255,255)">
            <br>
          </div>
          <div class=3D"x_elementToProof x_ContentPasted0"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0);
            background-color:rgb(255,255,255)">
            $ uhd_image_loader --args
            "type=3Dn3xx,addr=3D192.168.10.1,fpga=3DHG"</div>
          <div class=3D"x_elementToProof x_ContentPasted0"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0);
            background-color:rgb(255,255,255)">
            <div class=3D"x_ContentPasted0">[INFO] [UHD] linux; GNU C++
              version 9.4.0; Boost_107100; DPDK_19.11;
              UHD_4.2.0.1-0-g321295fb</div>
            <div class=3D"x_ContentPasted0">No applicable UHD devices
              found</div>
            <div class=3D"x_ContentPasted0">[ERROR] [MPMD IMAGE LOADER]
              mpmd_image_loader only supports a single device.</div>
            <br>
          </div>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0);
            background-color:rgb(255,255,255)">
            I have downloaded all the images using uhd_image_downloader
            command.</div>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0);
            background-color:rgb(255,255,255)">
            <br>
          </div>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0);
            background-color:rgb(255,255,255)">
            Has anyone else run into the loader only supports a single
            device error.<br>
          </div>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0);
            background-color:rgb(255,255,255)">
            <br>
          </div>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0);
            background-color:rgb(255,255,255)">
            <br>
          </div>
          <div class=3D"x_elementToProof">
            <div id=3D"x_Signature">
              <div>
                <div
                  style=3D"font-family:Calibri,Arial,Helvetica,sans-serif=
;
                  font-size:12pt; color:rgb(0,0,0)">
                  <p style=3D"margin:0in 0in 0.0001pt; font-size:11pt;
                    font-family:Calibri,sans-serif; color:rgb(32,31,30);
                    text-align:start; background-color:rgb(255,255,255)">
                    Abhay Samant, PhD</p>
                  <p style=3D"margin:0in 0in 0.0001pt; font-size:11pt;
                    font-family:Calibri,sans-serif; color:rgb(32,31,30);
                    text-align:start; background-color:rgb(255,255,255)">
                    Chief Software Engineer =E2=80=93
                    Aerospace/Defense/Government Business</p>
                  <p style=3D"margin:0in 0in 0.0001pt; font-size:11pt;
                    font-family:Calibri,sans-serif; color:rgb(32,31,30);
                    text-align:start; background-color:rgb(255,255,255)">
                    NI<br>
                    <span style=3D"margin:0px; color:blue;
                      text-decoration:underline"><a
                        class=3D"x_moz-txt-link-abbreviated
                        moz-txt-link-freetext"
                        href=3D"mailto:abhay.samant@ni.com"
                        moz-do-not-send=3D"true">abhay.samant@ni.com</a><=
/span></p>
                  <br>
                </div>
              </div>
            </div>
          </div>
        </blockquote>
        Your IP address is almost certainly incorrect -- try=C2=A0=C2=A0
        192.168.10.2<br>
        <br>
        <br>
        <blockquote type=3D"cite">
          <p style=3D"font-family:Calibri; font-size:10pt; color:#000000;
            margin:5pt" align=3D"Right">
            INTERNAL - NI CONFIDENTIAL<br>
          </p>
          <br>
          <fieldset class=3D"x_moz-mime-attachment-header"></fieldset>
          <pre class=3D"x_moz-quote-pre">________________________________=
_______________
USRP-users mailing list -- <a class=3D"x_moz-txt-link-abbreviated moz-txt=
-link-freetext" href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-sen=
d=3D"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"x_moz-txt-link-abbreviated mo=
z-txt-link-freetext" href=3D"mailto:usrp-users-leave@lists.ettus.com" moz=
-do-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
        </blockquote>
        <br>
      </div>
      <br>
      <p
        style=3D"font-family:Calibri;font-size:10pt;color:#000000;margin:=
5pt;"
        align=3D"Right">
        INTERNAL - NI CONFIDENTIAL<br>
      </p>
    </blockquote>
    <br>
  </body>
</html>

--------------58wvWR3HaxH06kCPXjXwiD5V--

--===============5143974365673307826==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5143974365673307826==--
