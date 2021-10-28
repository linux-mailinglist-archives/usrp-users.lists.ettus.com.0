Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3860D43E44C
	for <lists+usrp-users@lfdr.de>; Thu, 28 Oct 2021 16:54:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B8DF384448
	for <lists+usrp-users@lfdr.de>; Thu, 28 Oct 2021 10:54:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RwBCStqd";
	dkim-atps=neutral
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 6EDCA383D29
	for <usrp-users@lists.ettus.com>; Thu, 28 Oct 2021 10:53:55 -0400 (EDT)
Received: by mail-qt1-f182.google.com with SMTP id s1so4566178qta.13
        for <usrp-users@lists.ettus.com>; Thu, 28 Oct 2021 07:53:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=FvDbhPANohIGOTjf8x2glJy+itJeltX21gb3jCbJTKw=;
        b=RwBCStqdVA0aXb4Oix4fquMOwo6kJlMCb9wpFcjNNzB8VV5gAJD6hwVkwM9rvjKwBT
         Qx5DHBl75WGztnFQ7bINLiZy5HfwDGbTN9um2++WeUudmyC260G4xz1+JRee1Sag3NqL
         nVvC/RiSj7L6YWR7IKIBthg7s2vKodJGazR5ov7F3k9p/Y6lSzuxY34Zs55y0332blXa
         E9e1TljvJWOJX7X1szuhRjS1wzB3RorF3C2uikvp/vNp9c0QrOU7yMnTRlcoZA3MLxFI
         5mOi7TY5HAVPnBzFBzpBCTpN5e18XQxMLI8pr05aAwFQqNweYh9HzWxKEGjluZjEr3Ts
         fxyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=FvDbhPANohIGOTjf8x2glJy+itJeltX21gb3jCbJTKw=;
        b=lzQHjsfMi/YEcuirbz++Xue0kJYcKIEaZzXlKnK+t6a1Dc/ulNIN3rHQ5cI3bDRssR
         XU2MuQx6LRyeg3z/RB71pDaK9nRCpEF/gpoNC7mj1bLleVsB1jQpYBGpy22+ee+wbO3R
         5nzXxsPCqmp3e14foNhvIw9ubCWHQg5K8l5CmMkZU5DAQkH7LJDTrjDDng377OszWWAZ
         y3mPkQ7lBoVml88mDLHDVyQMcGs6hgIo24S52GTX4pG3fKVeVZ6EM2ajC3cgbjVQn3q3
         U+8ADblkUcB3sebYIvbWRRNzKlcdE3jlx/CRfICZJzfBt05AB1MJDczFU0O7dAIoG13k
         N3Tw==
X-Gm-Message-State: AOAM530ZffGxwWVH8x0SizUNPAZLa5KV8UA/X7WXiLq5qLNye9sUwJqj
	TZuvJrn0P6DhCbs/P6AdyllhCEAWsEQ=
X-Google-Smtp-Source: ABdhPJwSr1HHN/mnyv0qo7Tv9X7Axrj9SStY7I7WE2mk+1CPH+VVOhkZy72LDkPwx49ZSyen5hGsFQ==
X-Received: by 2002:a05:622a:83:: with SMTP id o3mr3650795qtw.377.1635432834874;
        Thu, 28 Oct 2021 07:53:54 -0700 (PDT)
Received: from [192.168.2.233] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id q22sm2052498qkj.64.2021.10.28.07.53.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Oct 2021 07:53:54 -0700 (PDT)
Message-ID: <34075c0a-f3fb-c96f-c2c8-c8383daf0251@gmail.com>
Date: Thu, 28 Oct 2021 10:53:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Content-Language: en-US
To: Thangaraj Mukara Dhakshinamoorthy <thangaraj@komro.net>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <f17bcb89f7b34b69ad13bd5668be7fc1@komro.net>
 <393569f6-1576-8d72-3910-2f9766de67b9@gmail.com>
 <13776c344b6d4512a614f6f3ac3f69fb@komro.net>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <13776c344b6d4512a614f6f3ac3f69fb@komro.net>
Message-ID-Hash: VHMGS6W25JFLWICC75KUNZU4QYEPO6WV
X-Message-ID-Hash: VHMGS6W25JFLWICC75KUNZU4QYEPO6WV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD Driver Installation for Windows 10
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VHMGS6W25JFLWICC75KUNZU4QYEPO6WV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4935210653353530265=="

This is a multi-part message in MIME format.
--===============4935210653353530265==
Content-Type: multipart/alternative;
 boundary="------------PzvUpdII4weDZM10dTJeDYZj"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------PzvUpdII4weDZM10dTJeDYZj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-28 06:16, Thangaraj Mukara Dhakshinamoorthy wrote:
>
> Hello Marcus,
>
> I am able to ping the USRP device, but UHD was not able to find it!
>
> Console:
>
> C:\Program Files\UHD\bin>ping 192.168.10.2
>
> Pinging 192.168.10.2 with 32 bytes of data:
>
> Reply from 192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64
>
> Reply from 192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64
>
> Reply from 192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64
>
> Reply from 192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64
>
> Ping statistics for 192.168.10.2:
>
> Packets: Sent =3D 4, Received =3D 4, Lost =3D 0 (0% loss),
>
> Approximate round trip times in milli-seconds:
>
> =C2=A0=C2=A0=C2=A0 Minimum =3D 1ms, Maximum =3D 1ms, Average =3D 1ms
>
> C:\Program Files\UHD\bin>uhd_find_devices.exe
>
> [INFO] [UHD] Win32; Microsoft Visual C++ version 1925; Boost_107000;=20
> UHD_4.1.0.4-release
>
> [ERROR] [X300] X300 Network discovery error receive_from: An existing=20
> connection was forcibly closed by the remote host
>
> [ERROR] [UHD] Device discovery error: receive_from: An existing=20
> connection was forcibly closed by the remote host
>
> [ERROR] [UHD] Device discovery error: receive_from: An existing=20
> connection was forcibly closed by the remote host
>
> No UHD Devices Found
>
> [ERROR] [UHD] Device discovery error: receive_from: An existing=20
> connection was forcibly closed by the remote host
>
> C:
>
"Find" doesn't always work on all OS configurations.

Use uhd_usrp_probes --args "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn32=
0"


--------------PzvUpdII4weDZM10dTJeDYZj
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-28 06:16, Thangaraj Mukara
      Dhakshinamoorthy wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:13776c344b6d4512a614f6f3ac3f69fb@komro.net">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style>@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	font-size:10.5pt;
	font-family:DengXian;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:SimSun;}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:SimSun;}span.HTMLVorformatiertZchn
	{mso-style-name:"HTML Vorformatiert Zchn";
	mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert";
	font-family:Consolas;}span.HTML
	{mso-style-name:"HTML =E9=A2=84=E8=AE=BE=E6=A0=BC=E5=BC=8F =E5=AD=97=E7=AC=
=A6";
	mso-style-priority:99;
	mso-style-link:"HTML =E9=A2=84=E8=AE=BE=E6=A0=BC=E5=BC=8F";
	font-family:"Courier New";}p.HTML0, li.HTML0, div.HTML0
	{mso-style-name:"HTML =E9=A2=84=E8=AE=BE=E6=A0=BC=E5=BC=8F";
	mso-style-link:"HTML =E9=A2=84=E8=AE=BE=E6=A0=BC=E5=BC=8F =E5=AD=97=E7=AC=
=A6";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	font-size:10.5pt;
	font-family:DengXian;}span.E-MailFormatvorlage22
	{mso-style-type:personal;
	font-family:DengXian;
	color:windowtext;}span.E-MailFormatvorlage23
	{mso-style-type:personal;
	font-family:DengXian;
	color:windowtext;}span.E-MailFormatvorlage24
	{mso-style-type:personal;
	font-family:DengXian;
	color:windowtext;}span.E-MailFormatvorlage25
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}span.E-MailFormatvorlage26
	{mso-style-type:personal-reply;
	font-family:"Verdana",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US">Hello Marcus,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US">I am able to ping the USRP device, but UHD was
            not able to find it!<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US">Console:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US">C:\Program Files\UHD\bin&gt;ping 192.168.10.2<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US">Pinging 192.168.10.2 with 32 bytes of data:<o:=
p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US">Reply from 192.168.10.2: bytes=3D32 time=3D1ms
            TTL=3D64<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US">Reply from 192.168.10.2: bytes=3D32 time=3D1ms
            TTL=3D64<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US">Reply from 192.168.10.2: bytes=3D32 time=3D1ms
            TTL=3D64<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US">Reply from 192.168.10.2: bytes=3D32 time=3D1ms
            TTL=3D64<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US">Ping statistics for 192.168.10.2:<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US">=C2=A0=C2=A0=C2=A0
            <span style=3D"background:yellow;mso-highlight:yellow">Packet=
s:
              Sent =3D 4, Received =3D 4, Lost =3D 0 (0% loss),</span><o:=
p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US">Approximate round trip times in milli-seconds:=
<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 Minimum =3D 1ms, Maximum =3D=
 1ms, Average =3D 1ms<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US">C:\Program
            Files\UHD\bin&gt;uhd_find_devices.exe<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US">[INFO] [UHD] Win32; Microsoft Visual C++
            version 1925; Boost_107000; UHD_4.1.0.4-release<o:p></o:p></s=
pan></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US">[ERROR] [X300] X300 Network discovery error
            receive_from: An existing connection was forcibly closed by
            the remote host<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US">[ERROR] [UHD] Device discovery error:
            receive_from: An existing connection was forcibly closed by
            the remote host<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US">[ERROR] [UHD] Device discovery error:
            receive_from: An existing connection was forcibly closed by
            the remote host<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow;mso-fareast-language:EN-US"
            lang=3D"EN-US">No UHD Devices Found</span><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US">[ERROR] [UHD] Device discovery error:
            receive_from: An existing connection was forcibly closed by
            the remote host<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">C:</span><br>
        </p>
      </div>
    </blockquote>
    "Find" doesn't always work on all OS configurations.<br>
    <br>
    Use uhd_usrp_probes --args
    "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn320"<br>
    <br>
    <br>
  </body>
</html>
--------------PzvUpdII4weDZM10dTJeDYZj--

--===============4935210653353530265==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4935210653353530265==--
