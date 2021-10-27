Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E5243CBA4
	for <lists+usrp-users@lfdr.de>; Wed, 27 Oct 2021 16:10:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7743D3846B3
	for <lists+usrp-users@lfdr.de>; Wed, 27 Oct 2021 10:10:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="b/Bkcd76";
	dkim-atps=neutral
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	by mm2.emwd.com (Postfix) with ESMTPS id DD4BC3843AB
	for <usrp-users@lists.ettus.com>; Wed, 27 Oct 2021 10:09:51 -0400 (EDT)
Received: by mail-io1-f43.google.com with SMTP id m184so3864513iof.1
        for <usrp-users@lists.ettus.com>; Wed, 27 Oct 2021 07:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=ykLutJgn/AKcPDrQhWyUdCKqSxMAa1KInu81xoEd/Gs=;
        b=b/Bkcd76Uutt1b7jMdD414qZYqhoMtuGG/bt4emDoO2g46yK6Im9qBdwhIVVfjyomD
         yKPQrw9i4tV5E/38pTjHah/YrjQsxgCBONi7pCb418r5Y0ubCRIPTVyse1AF79vG7mLD
         gW3CILYjCfcg/HAtwTrmJfCiS3WC6w2nWxoVm8RiKbpJUBWqFjGcUsFrHjZgTAbIURT8
         p5IBBJzjuBljnPL8MNUMmqtix2ExCYXufV7LB0n0E70KyI3S8qrgPLZmBVWFdi/8GvD1
         SR4jrCGXUWRZlCju7i0F3DA3RPRARK6lXTHXuzX0bz/jA/eK2rs03h++OSCEbAi3hItC
         cjCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=ykLutJgn/AKcPDrQhWyUdCKqSxMAa1KInu81xoEd/Gs=;
        b=0jA5EWpDm/dm16Ly//sEr7M023L6hW0nhnnpjvclU/6pw34A3lC4CTFEKQjW5mIy29
         ShnX6qjylkA9JNwblBWEVmCifkCP1Uyyiu98RM6VuakvST8xcLK3Sk2icfLX9bSbaTmy
         jjcMaLlIBBba7HF+UEHTCJNwnZpulrs4OyGiWGD58ZuhSV0o6NxZ1kfaWKPwLvVsadIe
         YrOW1T9vIHz+sSQY5mqfLQvYJo05+uxhNdyjX3FNfDjRY3wbgITbEAMfhJpSBMRu9siB
         vlpIbO1OC/tNSM5bblUbVKxpG8DRcW+HC3l5NKDLx6tKwyeKX78jXOSOEj6YNKgb99zx
         9CcA==
X-Gm-Message-State: AOAM530JmiTrITKjb0g1UNQTYA1tUOOiM2TAy/iZY5ZaC11p4jsmIC1U
	1ZvE0w+PQPUFKBvNPUjGBUewy7DaNoQ=
X-Google-Smtp-Source: ABdhPJzegnyqN5Cskmc57ttCJEP1sW1guQuc65vU+4RwDPEF/SIk3jjpqXqV1KDn8QRtSGiX7DFldg==
X-Received: by 2002:a05:6638:1505:: with SMTP id b5mr20771031jat.99.1635343791209;
        Wed, 27 Oct 2021 07:09:51 -0700 (PDT)
Received: from [192.168.2.240] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id z11sm26953ilb.11.2021.10.27.07.09.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Oct 2021 07:09:50 -0700 (PDT)
Message-ID: <393569f6-1576-8d72-3910-2f9766de67b9@gmail.com>
Date: Wed, 27 Oct 2021 10:09:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Content-Language: en-US
To: Thangaraj Mukara Dhakshinamoorthy <thangaraj@komro.net>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <f17bcb89f7b34b69ad13bd5668be7fc1@komro.net>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <f17bcb89f7b34b69ad13bd5668be7fc1@komro.net>
Message-ID-Hash: 6UVJBVCBS7NQRTBM2BQAWJX46ZWYAJZ3
X-Message-ID-Hash: 6UVJBVCBS7NQRTBM2BQAWJX46ZWYAJZ3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD Driver Installation for Windows 10
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6UVJBVCBS7NQRTBM2BQAWJX46ZWYAJZ3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3179294158969027356=="

This is a multi-part message in MIME format.
--===============3179294158969027356==
Content-Type: multipart/alternative;
 boundary="------------BRzAUKcPPEjhgFOw1ROJn37C"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------BRzAUKcPPEjhgFOw1ROJn37C
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-27 08:06, Thangaraj Mukara Dhakshinamoorthy wrote:
>
> Hello everyone,
>
> I am trying to connect the N320 to my windows 10, but I can=E2=80=99t i=
nstall=20
> the usb driver from the hardware settings of the device, either it is=20
> automatically installing best suitable driver like standard com driver=20
> or not installing .inf file from UHD/WinUSB folder!(I copied the files=20
> of erllc_uhd_winusb_driver into C:\Program=20
> Files\UHD\share\uhd\images\driver)
>
> PS C:\Program Files\UHD\bin> .\uhd_find_devices.exe
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
> PS C:\Program Files\UHD\bin>
>
The USB port on your N320 is strictly for console use, so UHD won't be=20
able to "see" it.

Can you ping your N320 over its network cable?

The N320 USB port should "look" like a USB serial device to your Windows=20
system.


> It is just installing the com drivers! Not the .inf file provided with=20
> UHD! I tried a lot, it is not working!
>
> Have anyone successfully installed UHD in windows? Please help!
>
> Regards,
>
> Thangaraj
>

--------------BRzAUKcPPEjhgFOw1ROJn37C
Content-Type: multipart/related;
 boundary="------------jMzRSzSS8Vch4UU6AmjL9bdq"

--------------jMzRSzSS8Vch4UU6AmjL9bdq
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-27 08:06, Thangaraj Mukara
      Dhakshinamoorthy wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:f17bcb89f7b34b69ad13bd5668be7fc1@komro.net">
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
	font-family:SimSun;}span.HTMLVorformatiertZchn
	{mso-style-name:"HTML Vorformatiert Zchn";
	mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert";
	font-family:Consolas;}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:SimSun;}span.HTML
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
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"
            lang=3D"EN-US">Hello everyone,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"
            lang=3D"EN-US">I am trying to connect the N320 to my windows
            10, but I can=E2=80=99t install the usb driver from the hardw=
are
            settings of the device, either it is automatically
            installing best suitable driver like standard com driver or
            not installing .inf file from UHD/WinUSB folder!(I copied
            the files of erllc_uhd_winusb_driver into C:\Program
            Files\UHD\share\uhd\images\driver)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow"
            lang=3D"EN-US">PS C:\Program Files\UHD\bin&gt;
            .\uhd_find_devices.exe</span><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"
            lang=3D"EN-US"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"
            lang=3D"EN-US">[INFO] [UHD] Win32; Microsoft Visual C++
            version 1925; Boost_107000; UHD_4.1.0.4-release<o:p></o:p></s=
pan></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"
            lang=3D"EN-US">[ERROR] [X300] X300 Network discovery error
            receive_from: An existing connection was forcibly closed by
            the remote host<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"
            lang=3D"EN-US">[ERROR] [UHD] Device discovery error:
            receive_from: An existing connection was forcibly closed by
            the remote host<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"
            lang=3D"EN-US">[ERROR] [UHD] Device discovery error:
            receive_from: An existing connection was forcibly closed by
            the remote host<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow"
            lang=3D"EN-US">No UHD Devices Found</span><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"
            lang=3D"EN-US"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"
            lang=3D"EN-US">[ERROR] [UHD] Device discovery error:
            receive_from: An existing connection was forcibly closed by
            the remote host<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"
            lang=3D"EN-US">PS C:\Program Files\UHD\bin&gt;<o:p></o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
      </div>
    </blockquote>
    The USB port on your N320 is strictly for console use, so UHD won't
    be able to "see" it.<br>
    <br>
    Can you ping your N320 over its network cable?<br>
    <br>
    The N320 USB port should "look" like a USB serial device to your
    Windows system.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:f17bcb89f7b34b69ad13bd5668be7fc1@komro.net">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><img style=3D"width:4.2708in;height:3.1041=
in"
            id=3D"Grafik_x0020_1"
            src=3D"cid:part1.gtON2Ia7.AohJy00V@gmail.com" class=3D""
            width=3D"410" height=3D"298"><span
            style=3D"font-size:9.0pt;font-family:&quot;Verdana&quot;,sans=
-serif"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:9.0pt;font-family:&quot;Verdana&quot;,sans=
-serif"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><img style=3D"width:4.7395in;height:3.4895=
in"
            id=3D"Grafik_x0020_3"
            src=3D"cid:part2.AHVk6LaH.AfJlnPF5@gmail.com" class=3D""
            width=3D"455" height=3D"335"><span
            style=3D"font-size:9.0pt;font-family:&quot;Verdana&quot;,sans=
-serif"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><img style=3D"width:4.7083in;height:2.3437=
in"
            id=3D"Grafik_x0020_4"
            src=3D"cid:part3.TtNS4CP5.2m6W5uGC@gmail.com" class=3D""
            width=3D"452" height=3D"225"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:9.0pt;font-family:&quot;Verdana&quot;,sans=
-serif"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:9.0pt;font-family:&quot;Verdana&quot;,sans=
-serif"
            lang=3D"EN-US">It is just installing the com drivers! Not the
            .inf file provided with UHD! I tried a lot, it is not
            working!<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:9.0pt;font-family:&quot;Verdana&quot;,sans=
-serif"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"
            lang=3D"EN-US">Have anyone successfully installed UHD in
            windows?
          </span><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Please
            help!<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Regards,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Thangaraj<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:9.0pt;font-family:&quot;Verdana&quot;,sans=
-serif"><o:p>=C2=A0</o:p></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>
--------------jMzRSzSS8Vch4UU6AmjL9bdq
Content-Type: image/jpeg; name="image001.jpg"
Content-Disposition: inline; filename="image001.jpg"
Content-Id: <part1.gtON2Ia7.AohJy00V@gmail.com>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwgHBgoICAgLCgoLDhgQDg0NDh0VFhEYIx8l
JCIfIiEmKzcvJik0KSEiMEExNDk7Pj4+JS5ESUM8SDc9Pjv/2wBDAQoLCw4NDhwQEBw7KCIo
Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozv/wAAR
CAEqAZoDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAA
AgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkK
FhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWG
h4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl
5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREA
AgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYk
NOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOE
hYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk
5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD1n+xtK/6Bln/34X/CoXs9Ajco9tpysOqm
OMGptZ8kaPdfaCRF5Z3kZyB36c1wEaQSCB9S0m1hhltnmRo5nkbyUAIznndg+9VHl+0RNzt7
iXzO/wD7G0r/AKBln/34X/Cj+xtK/wCgZZ/9+F/wrN8H3lnd6Op09XFrktH5hO7knIOc9xWR
Z30ltJFfJqFzcTte3Sz2rTmRWiQydFOdmNq4xjrjvU+pa1Vzqf7G0r/oGWf/AH4X/Cj+xtK/
6Bln/wB+F/wrnrHxjeSWMd5e6ckMM/ELLIDucrlFwCeScj61NB4guzdmxjht47hrmVXee4Yx
/IE3Bc85O7hemAadtQNv+xtK/wCgZZ/9+F/wo/sbSv8AoGWf/fhf8K58eLNTmfUDb6Wnk20j
RpI8oGCr7WLDOemSABmrWteJ203Qra/tlhuZp08xU5VXULuYgnGOPWl0uHWxrf2NpX/QMs/+
/C/4Uf2NpX/QMs/+/C/4Vif8JXdrdyM9lCbJZ3gBWQmUssPm5xjGOCOvvTdE1e91C91N7iaH
C2cMkaW8xdE3Bz+B6Z+lD2Gbv9jaV/0DLP8A78L/AIUf2NpX/QMs/wDvwv8AhXJaLqOrWWkW
94sdzIl4LWGMajcFt0r53yA5YhcFePrwKsyeKr22SXyLOF47dJppzLcMSVSZkIXIPJxkZ4HS
nbWwWZ0n9jaV/wBAyz/78L/hR/Y2lf8AQMs/+/C/4Vyx8V6xaRyRtBb3lxLqE0ECo20IiZOG
zjnA4q5L4o1FUuLj7JbQ20N15DvJIzGMBQSWCjnkgcZ9elIRu/2NpX/QMs/+/C/4Uf2NpX/Q
Ms/+/C/4VcB3KCOQRS0AUv7G0r/oGWf/AH4X/Cj+xtK/6Bln/wB+F/wq7RQBS/sbSv8AoGWf
/fhf8KP7G0r/AKBln/34X/CrtFAFL+xtK/6Bln/34X/Cj+xtK/6Bln/34X/CrtFAFL+xtK/6
Bln/AN+F/wAKP7G0r/oGWf8A34X/AAq7RQBS/sbSv+gZZ/8Afhf8KP7G0r/oGWf/AH4X/Crt
FAFL+xtK/wCgZZ/9+F/wo/sbSv8AoGWf/fhf8Ku0UAUv7G0r/oGWf/fhf8KP7G0r/oGWf/fh
f8Ku0UAUv7G0r/oGWf8A34X/AAo/sbSv+gZZ/wDfhf8ACrtFAFL+xtK/6Bln/wB+F/wo/sbS
v+gZZ/8Afhf8Ku0UAUv7G0r/AKBln/34X/Cj+xtK/wCgZZ/9+F/wq7RQBS/sbSv+gZZ/9+F/
wo/sbSv+gZZ/9+F/wq7RQBS/sbSv+gZZ/wDfhf8ACj+xtK/6Bln/AN+F/wAKu0UAUv7G0r/o
GWf/AH4X/Cj+xtK/6Bln/wB+F/wq7RQBS/sbSv8AoGWf/fhf8KP7G0r/AKBln/34X/CrtFAF
L+xtK/6Bln/34X/Cj+xtK/6Bln/34X/CrtFAFL+xtK/6Bln/AN+F/wAKP7G0r/oGWf8A34X/
AAq7RQBS/sbSv+gZZ/8Afhf8KP7G0r/oGWf/AH4X/CrtFAFL+xtK/wCgZZ/9+F/wo/sbSv8A
oGWf/fhf8Ku0UAFULvRbG9vY7yaMmWJGRSrEDDYzkd+lX6KAKtlp1rp4ZbaPYGxkZ449B260
6Gxs7aaSaC1gillOZHSMKz/UjrViigCtFpthAGENlbxhnEhCRKMsOjdOvvSzWFncLtmtIJV3
+Zh4wRu/vc9/erFFAFSXSdNnkkkm0+1keUASM8KkuB0ycc9B+VSTWVpcRJFPawyxxkFEeMMF
x0wD0qeigCIW0AORDGCG352j72MZ+uOKbb2NnaKy21rDAr/eEcYXd9cfU1PRQBH5EPlpH5Sb
IyCi7RhcdMDtimm0tiGBt4sMCG+QcgnJB/HmpqjEykZAcj12GgCGXTNPnWRZrG2kWVg0geJT
vI6E8cmlfTrGRVSSyt3VH3qGiUhW9Rx196l81f7r/wDfBo81f7r/APfBoAkoqPzV/uv/AN8G
jzV/uv8A98GgCSio/NX+6/8A3waPNX+6/wD3waAJKKj81f7r/wDfBo81f7r/APfBoAkoqMzK
OoYf8BNJ56f7X/fJqeZdwJaKi89P9r/vk0een+1/3yaOaPcCWiovPT/a/wC+TSG7hU4LEH/d
NTKrTgrykl8x2ZNRVc30C/xN+CE0n9oW/q//AH7P+FYPHYWLs6kfvQ+WXYs0VW/tC39X/wC+
D/hTvtkH94/98mnHGYaXw1Iv5oOWXYnoqMTKQCA5B/2DR5q/3X/74NdKaauiSSio/NX+6/8A
3waTz0/2v++TQ2luBLRUXnp/tf8AfJo89P8Aa/75NLmj3AloqE3cKnBYg/7ppPtkH94/98ms
niaKdnNfeh2ZPRUH2yD+8f8Avk0fbIP7x/75NL61Q/nX3oOV9ieioPtkH94/98mj7ZB/eP8A
3yaPrVD+dfeg5X2J6Kg+2Qf3j/3yaPtkH94/98mj61Q/nX3oOV9ieiovtEZ/vf8AfJo89P8A
a/75Nbc8e4iWioxMp6Bj/wABNHmr/df/AL4NNNMCSio/NX+6/wD3waPNX+6//fBpgSUVH5q/
3X/74NHmr/df/vg0ASVDc3UFnCZriQRoCBk+p6Cpqwtf027uLq2vbeefZAfmiiALDP8AEoPB
NAG5S1RsbC4tJWeXUrm6DLgJKFwPfgCr1ABTVdXztOcHBpJEZ8YkZMelRQxOJWkZmx0we9AF
iiiqjaejXoufOlAzuMQb5S3Y01bqJ36FqoJr22tpooZp0jkmOI1Y8sanrmNW0a3fWLE3LvO9
3cOGZjgqoQkKuOmOtAzp6yLvXFsD9nSyurmVIRIRHH8uPTd0z7Vo2kD21rHDJO07IMeY45b6
1gatolzqN7DcySyLZwQ7lW3neORpMcbscFeOnvTTSeomm1oWbDxQl5eJay6deWzyHCM6ZU8Z
5I6dK3a8806bWlTSykbCza3zcFlbzfM5xjv6frmu41OCS602aGJQZHXC5crg+uR6UmTBSStJ
3ZFPcS+ayhsAHAxWddaxa2tylvNcN5z4+VVZiM9CcA7R7nFWEjlhQRzSmaRRhpCMbj61kql9
YavdSRWJuobx0fzEkVTGQoUhgxGRxkYz34r8rr1qlWvUVSbdm7a+fmeikklY2d7f3j+dNacK
6o0oDvnapblsdcVyMuka06XioJ453SUNP9q+WfcwKbRn5Nq8dB+NPl8P3UeqwzRwSzQW9xIY
M3RLRq0a88tyN4PHv6VCpR61e/8AW/X+tdAv5HW72/vH86py6zZw2T3j3J8hJPLLKGb5t23G
AMk7uK5z+xNVijso1W4d1t4wJPtZ/cTbsyO2T8wIx69Ogq5JpF+2gtaR4juDf+crAqdq+fv3
c8dOcUckU1epfXv0/EL+RuWt7Bf263FvL5kbZwcEHjqCDyD7Gpa5bUdE1KJrOKwaWQLMZ5bg
SKjNIXBbcMgbSM8AH0pkmia0ltK1rNKlzPFcCRmuCwyZAY8AkgfLkDHTPNS6FOWqqLXv+o7v
sdR9ph+1i18wecY/M2d9ucZ/OpK53QdLvbS+imnWcRrbPH/pDoXBLg4+Unjr3rW1W2nu7VY7
dvLk8xSJNxGzHf3+lYzpwjNRUtO403YuVWOpWa28lwZ1EUcvlO2Dw+7bj8+KsqCFAJyQOT61
y0vhu8ktrpxcXIke/My24nHlFPNDZIx6c4oowpyfvytsDbOpqN7mGO4it3kAlmDGNf72Ov8A
MVykej61Pd3JnWaKGe4iZ0W4wu0SMW24bIBXHoT6UsmiapJqRmWGZJIxORcG6yrkkGIKuflG
AAeB+NbLDU72dRfh29e/9dp5n2Ouorlm07Xvs9zv3SmSPesfndHcjeo5H3QDjJA5qCLQ9c+w
MvnTJcR2TRwM9xnDmRjyAcZ2EDPOKSw0La1EPmfY7PzZNoXecDtmk3t/eP51zcVhqEXhWS0j
juXnZ/uTyJvCkjO0q2OBkjJ+tUYtC1o2kbSyXBuLeCMQ5uujiVic4OCdhA5yO1XyOV3Krs7b
/jvsL5HWvdxx3EVu82JZgxRefmC4z/MVBBqdpc3clrDKXlizu+RtvHUBsYJHsaxbHS79PEcV
3PbyARmfzJ2uNyybiNm1M/LgDHQdO/Wo7rTtWM17Hp9vNbW0uWeMzriVt4J8sg5TcN2c45P4
0nShJ8rn07q2/wDl/wAGwXZ1FFco1hrVvbbra3uCrpcRx2xugWh3hdhLFsHBB6EkZ4qSLRtW
ScXIllFx54G5rglRF5O0/LnH3+eme9R9Xha/Ov6+f9eY7vsdGLmFrp7YODMiB2T0UkgH9D+V
SVz3hzTbyzvp57m1lgD28UZMtwJS8gLbm6nAOQf6CtTU7W4uhALd/KdJQxk3H5R34756c1nU
pwjU5VLTv8vIaehdqhZ65pt/cm3trndKN2AyMu7acHaSAGwfTNX65W20vVpLSG2+z/Y5LM3D
xztIrb2feF24JwPmyc46dKKNOE4vmdvn6/f02E2zqqbHKsoYrn5WKnKkcj61ylhpGs29nGqv
diSRvKnE8yHYjAZddrHkEcd+asDTdSS8jNxDPdWi3EpWNLnaUy4KOcsMgLkYz36Vo8PTTa50
F32OlorjDo2tBL8zG+nlkk3KEmjEUoDkqPvhgMYB6fjWh4hsdXvNMs4LOIrKq5doZtpjcAY5
JGVznPU9KHhocyj7Ra9fkF32OjqA3tsHuEMo3Wyhph/cBGQfyBrn20bV1upbqGaVJ5Zbgbmu
CVEZQ+Xhc4HzY7ZFO0nSbyG31bdZyW4uoUWKOW4ErFghBy2T3PrR7Cmot8/b8wuza07VrPVI
2ksZy4XG7KMhGRkHBAOCO9Wop/OjDoz7Tn7wKn8jXNReHLuOyshLcSzTtJALohxHtiRT8g24
yAT+NQNoesSI0jyT+dFGPIxdEAP5zNzzg/IQOfpWnsqd7QqWX9en/DCu+x10V0XUmKbcoJBK
tnkHBH51N9rm/v8A6CuEl8PanFbrBaxXMMK3k8kognUtIGOUYbm4A6EEjnsatTaPqagTKlxP
O160m1rn5PLz8pb5hjAycL37GuiM6lP+HiGl6/8ABFZPdHcW1w80hVgMYzxVqqFj/rj/ALtX
6+0yOvUr4NTqu7uzmqpKWgUUzzB6GjzB6GvaMx9FM8weho8wehoAfRTPMHoaPMHoaAH0UzzB
6GjzB6GgB1IVBIJAJHTjpSeYPQ0eYPQ0AOxUUUgWJVIcEDB+Q0/zB6GjzB6GgBPOX0f/AL4N
HnL6P/3waXzB6GjzB6GgCF0gcklHBPcKaZ5Fv/01/wC+T/hVnzB6GjzB6GuGeW4OpLmlTV/Q
pTkupW8i3/6a/wDfJ/wo8i3/AOmv/fJ/wqz5g9DR5g9DUf2Vgf8An0vuH7SXcreRb/8ATX/v
k/4UeRb/APTX/vk/4VZ8weho8weho/srA/8APpfcHtJdyt5Fv/01/wC+T/hR5Fv/ANNf++T/
AIVZ8weho8weho/srA/8+l9we0l3K3kW/wD01/75P+FI1vCfumQf8AP+FWvMHoaPMHoamWUY
GSs6SD2ku5SNsuflZse6Gk+zf7R/74NXvMHoaPMHoa53kGXt35Pxf+Y/az7lH7N/tH/vg0fZ
v9o/98Gr3mD0NHmD0NL/AFfy/wDk/F/5j9rMo/Zv9o/98Gj7N/tH/vg1e8weho8weho/1fy/
+T8X/mHtZlH7N/tH/vg0fZv9o/8AfBq95g9DR5g9DR/q/l/8n4v/ADD2syj9m/2j/wB8GkNu
wPBJ/wCAn/Cr/mD0NHmD0NTLh7ANaRa+bD20jP8As7/5U/4UfZ3/AMqf8K0PMHoaPMHoaj/V
zA+f3/8AAD20jN8qT/nm/wD3yaTy5P8Anm//AHya0/MHoaPMHoay/wBWMJ/NL71/kP28jM8u
T/nm/wD3yaPLk/55v/3ya0/MHoaPMHoaX+rGE/ml96/yD28jM8uT/nm//fJo8uT/AJ5v/wB8
mtPzB6GjzB6Gj/VjCfzS+9f5B7eRmeXJ/wA83/75NL5cn/PN/wDvk1peYPQ0eYPQ0f6sYT+a
X3r/ACD28jP+zv8A5U/4UfZ3/wAqf8K0PMHoaPMHoa2/1cwPn9//AABe2kZ/2d/8qf8ACnC2
45Yg/wC4aveYPQ0eYPQ1UeHcAt038/8AKwe2kUfs3+0f++DThbR45d8/9czVzzB6GjzB6GtY
5Dl8fsfi/wDMXtZ9yCFI4WLAuSRj7hqbzl9H/wC+DS+YPQ0eYPQ16eHw9LDw9nSVkQ5Nu7Iq
WkpsokMTiIhZCp2FugPbNdBJXtNSt7yS5SMsPsz7XLjAPuD6defY0xNWs3huZhKBHbOUZiww
5ChvlOeeDWUfDFylv5Sak0u638p1nUbSQwYfdA4znOc8NTG8NXZikP8AxL98skrGIo3lIHRV
yvHUbf1PSqsu4rs347yB7WG5aRYo5lDJ5jBeoyB9aW6uobK3eedwqopPJALYGcDPU8Vj6poV
1faNaadHPEBDHsk37gGO3AYEc8HnHepdY0afUI4liNsxWB4WFwpIG4AbxjuMfrQ0gV+ppRXd
vKkZEqK0iBwjMA2D04pxmUTeXxwpZm3DC47EZz39K59PCp+2SSTNHMkkYAcyOGjIQLwv3SMj
NSyeHLieINLdRG4eFxNIFIEkjMrf98/LjHoaGlcE2bYubdghW4iIkOEIkHzn0HrUlc/ceH57
q9tLp47RfJTY0EckiImG3blwOT7EV0J60mkAlFFLSGVBqMB1Q6cN3nCPfnHy/TPrjnHpQNSt
WvJLYSruii8x33DaoyRgnPByKzjoV2br7YdSfzjcmUoFXy9pG3HTd93HfqKqR+GLpFPNgCkc
SKio22XY5bMn1zz159apJCdzdtr+3ubeS4VwkUcjIXcgDKnBOfSpzLEIxIZUCEZD7hg/jWRH
o11FoMtgklusskzSEKCI9rPuK+o44yKq3WkT23hzT9OWOO4khu4yQQzJjcTz3wPWiyA3ZLuF
Iw6yJIWGUVZFy49snFJcX9paxSyzXMarCheT5gSoHfHWsQ+F3aCVWe3Ej2zRLtQ7Y2aQudvo
vOKWfwt5yy4a3V5XuC7mPJYSD5QfXBxRZDN1bq3fZtuIjvXeo3j5l9R7U9HSRQ0bq6noynIN
c3J4Ynlu3uG+zZkgEeFd1ELBCvyqOCOc8471v2dstnZQWyKqiKMLhBgcChpdBJvqTUUUVIzP
1HWYtNmEclvPKBEZnaMLiNAcEnJB79s1d8+HeU86PcAGKlxkA9CR2rM1TQxqV8l2WRXhgKwl
gTtk3Bg3uOMEVnzeFZp5755Hgc3ZLbzJJlclSV29CODg9apJNCd7nRJcQSMqxzxOzDKhXBJH
qKVJ4Zf9XNG/O35XB59PrWK3hpBM8kJhgLXTSq0aYZEaMptH4nPpUcPhy6ityySWlvdRrGsD
wodvy5BZvUkE0rINTeE8JdYxNGXYEqocZIHXAqK4v7e2nggdsyzyBFRSCRkE5I9ODWVF4c+z
a3HexbHhRUChpHVo9oxwBwc9ee5NFzoE8+qNcCS2WNp/O8zafOH7sptB6Y5yKLINTaSeGTPl
zRvgkHa4OMdaYLqHYzyOkaB9oZ5Fw3pg5/8Ar1z9p4WntbNYklhinVgpmV3fzIyNr5DdCR6d
6snQJYrrz4BayKJ3dYJlOwKyqOwPzDbxx3p2V9wuzbEsbSNGsiGRRlkDAkfUU6sbTdDew1i5
vGMcgmZ2WTzH3jcc7Sv3cD1rZpMYUUUUgCiiigAooooAKKKKACiiigAooooAKKKKACiiigAo
oooAKKKKAFwf7rflRg/3W/Kp6KQyDB/ut+VGD/db8qnooAgwf7rflRg/3W/Kp6KAIMH+635U
YP8Adb8qnooAgwf7rflRg/3W/Kp6KAIMH+635UYP91vyqeigCDB/ut+VGD/db8qnooAgwf7r
flR8391vyqeigCDB/ut+VGD/AHW/Kp6KAIMH+635UYP91vyqeigCDB/ut+VGD/db8qnooAgw
f7rflRg/3W/Kp6KAIMH+635UYP8Adb8qnooAgwf7rflRg/3W/Kp6KAIMH+635UYP91vyqeig
CDB/ut+VGD/db8qnooAgwf7rflRg/wB1vyqeigCDB/ut+VGD/db8qnooAgwf7rflRg/3W/Kp
6KAIMH+635UYP91vyqeigCDB/ut+VGD/AHW/Kp6KAIMH+635UYP91vyqeigCDB/ut+VGD/db
8qnooAgwf7rflRg/3W/Kp6KAIMH+635UYP8Adb8qnooAgwf7rflRg/3W/Kp6KAILqaSCISRw
mUKfnVT823uQO59qhg1Fby5CWiiWBRmSbPyg9lHqfX0q7SKqoMKoUZzgDFAGZBcStqWrRmVi
sSx7Fz93KZ4/GsuDxDeQadG7Wyzpb2kE1xM8uGYOOcDHJHXtWve6Lb307TGa4hZ02S+TJtEq
+jfmemDzSy6JYywzwlGWO4iSJlVsAKvQD0rVOHXyJaZQl8RzRHUG+yxH7HnbCZSsr8gA4Ixt
PYgmi68Rzad50d/aIk4EZhEUhdXDsVGflyCCDnAPtmpNR8OpdQXWyaWSaZDGnnSZWNSQSFwM
gcVMPD1mYpllkuJpJipM0kuZE28rtPbB5p3p2DUq2/iK5ulit4bJPtksjKodnSIqoBLZKhsc
gdOtQ6vf362l+tuBDcx/Z0cmdtq7zg7eODz1/HtWlJocMsMSvd3bTQuWjuPN/eLkYIzjGMds
U99GtZI5UkMr+d5e9i/J2HKn9OaOaCewambLrY0tJoyjvP56W6B5XkUt5e4nhSQMA9BzUkGv
3d6IobWxT7SyO8gldkUKrbcrlcnJ6ZAq9caLa3HmsWljkklEwkjfDI4GMqe3HH40yXQ4ZRCx
ursTRKV88S4d1JyVY45H8u1K8Gtdw1K9jqNwnhGO/lJefyS3znPzZIGah1OKa2jtUt9Qu5NR
O0RRiTKvyCzOvTb1yT07VqR6VaxaR/ZaBvs4jMYBbJA+vrVVdBZphdSahdJcmNY5GgYKrhc4
4IOOvNNSjzN+YrO1ixZSyLqF5Zu7SLHtkQsckBs8fgVP4GrpdVODn8qr2lo0E1xPI4eWdhkg
YAUDCj/PcmrVZO1ykM8xfU/kaPMX1P5Gn0UhjPMX1P5GjzF9T+Rp9FADPMX1P5GjzF9T+Rp9
FADPMX1P5GjzF9T+Rp9FADPMX1P5GjzF9T+Rp9FADPMX1P5GjzF9T+Rp9FADPMX1P5GjzF9T
+Rp9FADPMX1P5GjzF9T+Rp9FADPMX1P5GjzF9T+Rp9FADPMX1P5GjzF9T+Rp9FADPMX1P5Gj
zF9T+Rp9FADPMX1P5GjzF9T+Rp9FADPMX1P5GjzF9T+Rp9FADPMX1P5GjzF9T+Rp9FADPMX1
P5GjzF9T+Rp9FADPMX1P5GjzF9T+Rp9FADPMX1P5GjzF9T+Rp9FADPMX1P5GjzF9T+Rp9FAD
PMX1P5GjzF9T+Rp9FABVS7uJYpVSMqAVycjNW6z77/j4T/cP860ppOWpnUbUdBv2y5/vJ/3x
/wDXo+2XP95P++P/AK9Q0VvyrsYcz7k32y5/vJ/3x/8AXo+2XP8AeT/vj/69Q0tDUUCcmS/b
Ln+8n/fH/wBej7Zc/wB5P++P/r1FRUOUOxooz7kv2y5/vJ/3x/8AXo+2XP8AeT/vj/69RYop
rkZL50S/bLn+8n/fH/16Ptlz/eT/AL4/+vUNFVyrsTzPuaFnM8yOZMEq2OBjsKsVU0//AFcn
+/8A0FW655q0jog7xCiiioLCimPKkf3mAqB71R9xSfc0AWqKzmupWP3sfSnpeyL94Bh+VOwF
6ioEu4n6nafepgQRkHIpALRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRR
RQAUUUUAFFFFABRRRQAUUUUAFFFFABWfff8AHwn+4f51oVn33/Hwn+4f51pS+Izq/CV6wNb8
Zab4f1FLS/jmVXUESoNwGfUda368q+Kv/IZi/wCua/1rWo2loZU0m9T0fTdd0rV13affwTn+
6rYYfgea0OlfNqFkYOrFWHRlOCPxrpNK8d+IdL2qt6bmIf8ALO4G8fn1H51z3Oi1j22gkAZJ
xXP2HiSTUNKtrvyVieaMMyg5APtUct7NL95zQBuS31vF1cE+gqjNrJ6RLj3NZRJPWkoA6PT5
mntFkc5Ysf51YqnpP/IPT/eb+dXK6o/Cjll8TLun/wCrk/3/AOgq3VTT/wDVyf7/APQVbrnq
fEzop/CjK8Ra7H4d0s380LzIHClUODznn9KxNN8f6HrW1YdSWCRv+WUw8tv14P50vxO/5FB/
+uq/yNeCgZFQWfSQOQGByD0IOQaK8B0vxFrGjkfYNQmiUf8ALMtuQ/geK9I8JeN7zWYLhL6C
ISwBcSRjAbPqPWncR21RyXEUQ+dwKxJtSnl/i2j2qo0jN95iaANmbV41yI13H1NWNCvpbq/k
Rj8ojJx+Irna2PDH/IRk/wCuR/mKAOqooopDCiiigAooooAKKKKACiiigAooooAKKKKACiii
gAooooAKKKKACiiigAooooAKKKKACiiigAooooAKz77/AI+E/wBw/wA60Kz77/j4T/cP860p
fEZ1fhK9eVfFT/kMxf8AXNf616rXlfxSGdai/wCua/1rSrsZ0tzA8L3Ol291ONUiSSOSMqu8
dDWS6p5r+X9zcdv0poFSKtccadpud9yo0uWpKd9z0zw/x4esP+uP9TWhVDQeNAsf+uX9TV+t
TUKKKKAN/Sf+Qen+8386uVT0n/kHp/vN/OrldUfhRyy+Jl3T/wDVyf7/APQVbqpp/wDq5P8A
f/oKt1z1PiZ0U/hRyHxO/wCRRf8A66r/ACNeGWbRx3UTzLujVgWHtXufxN/5FF/+uy/yNeFK
KzaurFSXMmjY8TS6bc6oJtLjWOJkG5V6A1s+ARg3/wDup/M1yKrXY+BBg330T+ZqacOSKje9
iKVP2cFC97HW0UUVoWFbPhj/AJCMn/XI/wAxWNWz4Y/5CMn/AFyP8xQB1VFFFIYUUUUAFFFF
ABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABWfff8A
Hwn+4f51oVn33/Hwn+4f51pS+Izq/CV68t+KAzrUf/XJf616lXmHxOQ/2vG+OPLUZ/OtKuxn
S3OHVakVaFWplWuc6D0TQ+NCsv8Arl/U1eqlooxoll/1y/qau0xBRRUVxdW9nH5lzPHCvq7A
UAdJpP8AyD0/3m/nVyqWjsj6ZE8ciSIxJVkYMCM+oq7XVH4Ucst2XdP/ANXJ/v8A9BVuqmn/
AOrk/wB/+gq3XPU+JnRT+FHI/E3/AJFJ/wDrsv8AI14Yq17r8SUL+FGAGT5q/wAjXhyLUFiq
tdd4HGPt30T+ZrllWus8FjH236J/OgDqKKKKYgrZ8Mf8hGT/AK5H+YrGYhVLMQqjqScAVq+D
7m2u76d7a5hmEaFWCSAkHI7UAddRRRSGFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRR
RQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAVn33/AB8J/uH+daFZ9+wFwmSB8h6/WrptJ3Zn
V+Er159411u8i1trSK2spYolGRMhLPkeua74zRKcGRc/Ws/UdK0fVcm8gjd8Y8wHa35ilUxN
DbnX3oyhdO9jytp9EuTi7sp9MkP8cX7yOnroTToZNNu4L6MDP7tvmA9xXV3/AIEgILafqIH/
AEznGR+YrldR8NXunOZZLRgy8ia3JP6rXP7ej/OvvR0J3OqtJY9O0a1F7IlvsjwfMYLjk1k3
3jnTLbK2qyXbDuo2r+Zrk00bxBr12fs9lcTkcGWcnA/4E1dRpXwkuZ8SavqaRjvFbjcfzPAr
aLUnZMG0tzntQ8c6nc5WGRLVD2iGW/76NVLLRfEHiKXzLWxuLnd/y2lzt/76bj8q9g0nwN4d
0fa0GnpLKP8AlrcfvG/Xit8AABQMAdAK2VLuZOquhgeDNFvdB8NwWF86GZXd2EZyBuOcZrfo
orZKysYt3dy7p/8Aq5P9/wDoKt1U0/8A1cn+/wD0FW65qnxM6afwo5b4g6pPpmgobeKB3mlC
ZnTcF4PIHrXlb6ja3H/IU0Zc957JsH8VNe63tjaajAYLy3jniP8AC65rlNS+Gml3O57GaWzc
9F++n5Hn9ags81j0zTb0/wDEs1SNm/54z/u3/Wt7w3YXOnfbPtUZiBC/MTx+dM1b4c6xa5b7
LHfRj+KE/N+XWuTu9O1uZ1062stQn5wsJWQgH6HigDs77xXo9jlTc+fIP4IBu/XpXN3/AMQL
l8rZ28duvZpDvb8ulXNI+EXiPUdr6hJDpsJ5IY73/wC+Rx+ZrudH+EfhrTdr3aS6jKO87YX/
AL5FAHjwuNb8R3HlRLd6g5/gQEgfgOBXpfwx8Fa9oerTanqkUdtHJbGJYt4L5LA8gcDpXpVr
Z2tjCIbS3it4x0SJAo/IVNQAgGB1zS0UUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFAB
RRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAyVikTMOoFc5qDFrlSTk7D/Ouin/ANQ/0rnL
7/j4T/cP86+K4jnL6xTjfSxrH4GUbq9tbJFe7uYoFY4UyMBk0xdRsXumtFvIGuFGWiDjcBjP
T6Gqtz5tprP202c91FJAIlMCb2iIJJ4z0ORz7VTh026+33d5NHiCK6a4gt1j+eRvKCj5s4x1
GMda8SNKDjdvp+PYRrJqVjLB58d5A0W/ZvEgxu6Y+vIpxv7NJZYmu4lkhXfKpcZRfU+grHNr
Je6XPK9lMLuW4ilZZYQm0hk+5k9Ao6/WkkspJLmWKezuDFHLPJJLEOZVcDAQg5J6HHbbVexp
66/l5f8ADAbB1Gy+xfbTdw/Zf+e28bOuOv14qS3uobqETW06Sxt0eNsg1izRX0nhwrJDczSL
co8cbjdN5YlBGfU7RRtvoL1tRhtLlILi5LSW6KPMYeXtDMv+8AfyoVGNnZ63fX+twN5pNisz
PtVRkkngChL0DygtwP33MQDff78evFcpt8QTG2jljuwPshScHlZCY2znnAYNgdM+9aTRXFrF
olybWab7Gm2aKJQzjKAdM84IrRRnSa5amvk/X9UJpGt/bcAkij+3w75iRGu4Zcg4OPx4pbXW
ob7f9kvobjZ97y2DYrnLSzvbEWhhtZxdS8TqUDQmMyM2GP8ACyhj0/WneGLS9t3Q3UM6iO1E
O64jCFCGJ2rj7y98nmuqeIrqEpKvLT+8/wCv6+QuWPY7fTLyVVkLHcN/T8BWlDd+a4Qrgn3r
F0//AFcn+/8A0FaVp/x8L9DUYDNMZ9ahSdRtNpO+u9ur1N1CPs72LNzc/Z8EgYxkknGKy7fx
NY3cckttf2sscZG9kkBC56Z5q1rCs9u6KMs0bAD1OK4iC31KTT7Wa1sbi1uLOxS2ZnUK7tuT
IHqoAbn34rtzHG4lYupTjVcUmrbLdff/AJDhCPKnY7eXUjBE0srxoijJZuAKiS9+0bminDhW
KtsbIBHUfhXE3U+tLqM1tFJfC7kiuWCFl8tsMvlmP8D+ec0+a11yC7jELXNvbNdzyMYYvMJY
yAqWAYfKVz6j2rzKlTFVIpVK/wCP9fIu0UrpHam4kUZMrAepamtebJUia42ySZ2KX5bHXAri
b7S9budMmSWS/lNxHMZI/MHylZVMYX0yu76962r9ZYJ9K1CO1uriO3R1dFXdKNyjBIJ56c/W
uVuqrfvW7369lp16sqy7Gp/bdp5sMX9oxb58+UvmjL4649aWy1m11EObLUI7kJ97ypQ2Pyrl
7Kxv9P8AsKQ2s4uZUC3KlQ0BTcxwzfwsu49OvvUvhCzvoHVruG4UR2ccO+4jVGUgn5FC9V56
nn3rSblGEpKq9Ntd9X/X9WJ0vsegL90fSlpF+6PpS1+mx+FHEFFFFUAUUUUAFFFFABRRRQAU
UUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUARz/6h/pXOX3/AB8J/uH+
ddMQGBBGQayL+yi+0pyw+Q9/evnM3yrEY2tCdK2itqVzqMHcwb66WxsLi7ZGkEEbSFUGS2Bn
FVY9dsX8hWMsbzKjENE2I933Qxxhc9s9a0r+1jkSa1bJjljKNzzgjB/nWWuhQrIjG6uWACCV
SVxNs+6WwO3tjOOa+UlShSlKnV+JNrQd7q6FvNUktpdRRYkb7HaC4XJPzE7uD7fLSpqjtqkV
qYQIXQBpc9JSu4L9Nv60t/pUF7MZJLmaHzY/KlRGAEyZztOR7npg81GfDummY3HlH7T54mE+
fnDA8AdscY+lJOhy672/y/4I35GVB4m1K6064vLeOwcW8HnPjfhDk/u25+9jnPStDVNWutLt
rIyvZJJcOyvI4fy1wpYYAOfapv7AtRaG2WSZYzbG3fDD5lzkE8dRzg+9T3unC9+zstzNbSWz
Fo5ItueV2nO4EdK0lUoOastNfy0/EOpWj12F0hR/3NyywtKjIzKnmYwNw4yc8U3/AISO0N80
alvs6QNI0pjbLEOFATj5gSe3epY9BsYk8uNpAmYSFDA48r7v/wBeq8vh6KOJ2imu53WPy4Iz
Kq+WN4cbSR2IHJz6Ul9Wb6gTP4k0qONXkuGTdI0e1o2DArjdkEZAGRk1qdenIrAtPDjSRLPf
Sul558ku4bJCA5HynKlT90cgD2rfrGtGlGypu/cC5p/+rk/3/wCgrTswTcA+gOazNP8A9XJ/
v/0FbNlGoj8z+I8VtlOHdfHxt9nX7jZu1MneJJMb1ziqt0qwhRGoAOc8Zq7VS9RmKbVJ69BX
1+dUIfVKlSEff01S13XXfYypv3kjlr9ZLHVrePSLOwjub5ZHlmljILbMHBK8nO7vSw+LNN8m
2+1OYLiePc0IBfYckYJA9QQPWr+oaK9/Pb3C3F1ay24cK0IXkNjIO5T6DpUS+EoIr2C6t1eE
wxrHtCowdVJIzuBIPJ5BB5r4ynh3VglKEm12T899H5W9DpbSCTWrMTwIt1GFkG4llbBUoWGG
6DgZ57VFN4m0u3to7ieSWKOVise+F1L4GSQCMlcd+lSp4QtlgSEpM8ayvJtZwc71KlT/ALIV
sAdsCmS+ETPDbpNdXMklqT5MsixMVUgArgrgjgckZ461SwDur052/wAL8/L0/wCCLm8zatIk
uk3h8qQCCO4NWhZRY/i/Om2MLwIVcHoACcc/lVqvqsqyvDPCxlWpe873utd338jCc5c2jEHA
xS0UV9IYhRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFA
BRRRQAUUUUAFZ99/x8J/uH+dW/tEH/PVP++qrXQSaRXS4iGFwQxrSnpLUzqax0MW8/4+D9BU
Fa8tmswAa5gGOhBqD+y1/wCfyH/P418XmOSYqpiZ1KVmpO+9ty4TtGzOUf7Emt3A1WHfI7p9
jZ4i424HCHHyndnPQ8iqb6vq/l3bRvunjWTdAbbi3IcBOf4sjnv+FdwNMA6XsQz/AJ9aP7MH
H+mxcdP85rKOUY1WvTT26rp/X9bFc6OHmuNTj1WET3spS3mmjDLbgLNmNWUEAY6kjPt60q6n
q8YtBLcHzpYIpUT7LxO7N8ycD5dox6HnJrtTpjA/LewY/H/Gmf2dMAf9Kt+f9o81jPA4uFlK
hf0s/wAl5/5D5k0cCJb+wE9xawsJBG67nQkIpuXy3Q5wDnofpWzo13qF3dkXFzHJDHbo2Yos
LI5LAncQDwAOABXR/YLj/ntD/wB9f/Xo/s+djzPB9S3/ANeuedHE1E17B3fXlf8AkU3rcq1d
+yrJEhXCnGScdadHphz+8uoMegJq2sAVQouYMAY617eT5O7T+tw0a2e+/wCBhUk/siabYgLJ
ufI39AMdhWqAFAAGAKqWrRwIweeMlmzwfap/tEH/AD1T/vqvfoYDD4Vv2EbX/rdlKUnFcxLR
UX2iD/nqn/fVH2iD/nqn/fVdVmO5LRUX2iD/AJ6p/wB9UfaIP+eqf99UWYXJaKi+0Qf89U/7
6o+0Qf8APVP++qLMLktFRfaIP+eqf99UfaIP+eqf99UWYXJaKi+0Qf8APVP++qPtEH/PVP8A
vqizC5LRUX2iD/nqn/fVH2iD/nqn/fVFmFyWiovtEH/PVP8Avqj7RB/z1T/vqizC5LRUX2iD
/nqn/fVH2iD/AJ6p/wB9UWYXJaKi+0Qf89U/76o+0Qf89U/76oswuS0VF9og/wCeqf8AfVH2
iD/nqn/fVFmFyWiovtEH/PVP++qPtEH/AD1T/vqizC5LRUX2iD/nqn/fVH2iD/nqn/fVFmFy
WiovtEH/AD1T/vqj7RB/z1T/AL6oswuS0VF9og/56p/31R9og/56p/31RZhcloqL7RB/z1T/
AL6o+0Qf89U/76oswuS0VF9og/56p/31R9og/wCeqf8AfVFmFyWiovtEH/PVP++qPtEH/PVP
++qLMLktFRfaIP8Anqn/AH1R9og/56p/31RZhcloqL7RB/z1T/vqj7RB/wA9U/76oswuQ+Wv
90UeWv8AdFOoqiRvlr/dFHlr/dFRXt2ljYzXcisyQoXYL1IFYGmePdB1jCW9+kMp/wCWU/yN
+vB/Ci4HSFEHUAUwvCDjj8qr7i4DbtwPQ5yDTWZUGWYKPc0XHYuBY26AGl8tf7orHl1W3h+6
xZv9mrWlX733nblwEIx+OaLiL3lr/dFHlr/dFOoHUZ6UAN2JnGFz6Um2PGflx61yA/s9rDUk
vIc6/wCVcby0bGU/K23acfc24xjimQ2ltpGhtJqlhZRw3piENmSWgRwnLv8AKOT1PHYd+aV9
B2Oz8tf7oo2JzwOOtc/HZwKPDs0ErXXlN5az5bBXYecdB6Z61kxRWcglEjSW1wILhdVmEZLD
LfKW4+b268ZptiR2wRD0AP0oCIegU49KwtCAHh68jhWIwIZFglggEImXb97YOM5yMjrisLTB
ANNs5PDkPl3kOnP9seCIqC3lfKG4wX34I6ng0NjSud15a/3RTR5JkaMFC6gFlBGQD0JFcbL4
jnuI52iurnyGNukcynyVVjGS/wA5RsZIx0PPHFX/AAhcXd5dveXyuJpbC33syFckNJ7Dmn1F
0Ol2J/dFJsj5+7x19q5C3nV7Gz0UeYdQg1PfLDtbKoJGYtn02kc1m3P2RNJvbW1jtbmJXgaS
9Nuw3Dzlys46sepJ7jNTcdtT0LYnoKPLX+6K5e2he5+H+oQwrJFujuBF5AKhxzgxgjIQ9h6V
Vk1O6i8pLfUbsusEH2CPZuW8J+/vO3nHTtgDNPqK2h2Xlp/dFHlp/dFY+uTpY6rpN/cMUtYX
lSWQAkIWX5c47ZGM1gTfa76F7e0sru4S5vJ71Gi2p8oIETfOV4Lc47gdKLjsdvsTOMLn0pAs
Z6bT9DXBXkE2r3V7qkljGYvs9s07PCftMIwd/lHoCMHI710Hh/TNPttY1e4tbCCHMyCKRIQv
yGJCcHHQn9aEI3tiZxgZ9KbmHzRFuTzCu4JkZx649K4PfJb+JNVlt40+1LLdMGiiYTKPK+Vn
boyZAAHqRWjPdatZRRgXl1Nv05JpZnjDNGWkUOwAHVVLEChPQbR1a+S7OisjMhw6ggle/Ppx
TvLX+6K4i3uzDc3jx6neDT575Fl1Ap+82iEbcHb0LcbsVEmt6zImn7b8rHIZdk87eWJXWYqF
YBDn5cfL8vXrRcGtDvNif3RRsQ9gaxvEZiV7E36FtMEjfahtLLnHybwP4c568ZxmszU79LZU
TTbqaxsxamSwW1h+S4m3H5MYPH3eOPvH0ouFjrPLX+6KPLX+6K4+8l1ieW6DXd2qy3T2v2eN
RtVDb7sg4znf0P4UaNJqJsx9jvbudLPSo3hhYDEk2HBVjgE4IAx7Ci4WOw8tf7oo8tf7ornd
D1X99Juv7q+tGSFfOmiO5J2JBQYUYHQn0z1ras9Rtr8kW5kOEVzvjZeGzjqPY8UxFjy1/uij
y1/uinVk6usv2+xnhDFoFkkwO+NuR+IzQBqeWv8AdFHlr/dFc8s1zb3Vzd5aH7V5TPI6FvJQ
7scewAB+tJf313NZCKWTZ5kYKgQnM/z44/u8AH8aLCOi8tf7oo8tf7orn5r29uZZ4ZjGqpcI
FiAO9QJBg9OhHPWt21kaW1jkZxIWGSwQrn8D0o6DH7E9BRsT0FZWtGBbq0bUF3adhxICpZA/
G3ePT73XjOKzjp4vtdLWNvCkEcdu8dycq0ShmJCDHccdRwaaQmdNsQ9hRsT0FcwF0/UbLWZb
VVQPbt/o8e5WJXd874x8xJ6c8AU6VFbVVDqy3e6IxybTlYNnz4Pp1z74osFzpdiHsKNiHoAR
XNWqInhfVre22TW8cTiKaOHy/O+TnIHUg8Z702C4isd15pKLHYbYFnKxkR53EOwHqFxkgUWC
+h0/lr/dFGxP7ormX8Q3zT2fkkYluWBDRYEkXm7RjjOdvPb1qRA0XhqwlkDqsF4JJTtOVUO2
SR1xyKLMLo6LYg7AUbE9BXI3LQN5mouEmWS7ke3t542K3C4UZX0bI4PvXI6xb3T61fMsM4Bu
ZCBsY4+Y0WNKcOdtHr1FFFSQZ3iH/kXdQ/64NXz5p2mT6rctb2+zeEZ8OcAgV9B+If8AkXdQ
/wCuDV87xM8T7o2ZG9VODWc+a3u7ikpOL5dzpPBOrala65Bax3kwgfcGiLkqeD2rv5J5JTl3
LfU15v4SXHiO2P8Avf8AoJr0SqKCt7w1925+q/1rBre8Nfdufqv9aaA3KKKKYhcnpk4pMkdz
RRQAZPrS5PqeKSigAyTQST1JNFFAC7m9T+dIST1NFFABk4xk4pdx9TSUUAGTnPel3H1PNJRQ
AAkdOKMk96KKADJ9TRnNFFAC5PqaTJ9aKKAILy0W+iEck1xGAc5gnaJvzUg060tobG1jtbVB
FDGMKoP+c1LRQAA46UuT6mkooAMn1oJJ6miigBcn1NJkmigdaAIvtNv9o+z+fH52M+XuG78q
lz71lWrTWtpJbGxme4TewkC/LIeSDu9T+dUreDU2mt55jds8ZlWMsCAMhdu4HPGc9aYHRZPr
Rk+prnY21SOyVriW9IBLSlY9rodvHJJyufTipbWTU5WtpGa5YskTKRjyipX59/vnP6UWC5u5
PqaKxIf7RiFrDJPO0l2v7wuw3RFTkkfUcfWta13fZY9/m7sc+bjf+OOKAH+aiyLHvAkYEque
SB1x+YojlSZFkjkEiNyrKcg1nakZbfUrK+W2muI4klR1gXcwLbcHHp8uKy7Sx1m0ihVZLlBb
pb7YYyNjEufMB9cKaEgbOljmWZA8cgkQnhlbIp2T61ylla61Hai2b7Xbk3I2mHAVYTISxPo3
PPtjFSSDXFWKMtfkoHWFo8Es4kO0yn+7sx7dadhXOnyc5zzS5Oc5Oa55v7fF2UBk8oSGHfxy
rHd5n/AR8tS6XFqsd7FJdS3MkcqzeaspG1MOPLwO3y5+tKwXNzcfU0mTnOeaKKQxdx9TRub1
P50lFABRRRQBneIf+Rd1D/rg1fPapX0J4hmFt4ev5mh84JCSY843fjXijRaZKTuinsm9U/fR
/wCIqWNEnhVMa/bn/e/ka76uP0GzW21OK6W6t5bdAxaRJB8ox3B5FaV/4y0eyyEla5cdohx+
Z4oGb1b3hr7tz9V/rXlH/CWa9rUpt9E05yTx+6jMjD6noK9C+Hul+JdOtLs+IHP75laGN5A7
J13Zx07UIR2NFFFUIKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACi
iigAooooAKKKKACiiigCKe1t7pQlxCkyg5AdcgGpenTgUUUAM8qMTGby18wrtL45x6Zp9FFA
BRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABWRqPhXRdUybixRZD/y0i+Rv0rXooA881L4Tx3T4
tNVMMZPzeZDubH1BFaGkfCvw3pu2S5ik1GYfxXDfL/3yOK7Oiiw7kdvbQWcQhtYI4Ix0SNAo
H4CpKKKBBRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFA
BRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQB//2Q==
--------------jMzRSzSS8Vch4UU6AmjL9bdq
Content-Type: image/jpeg; name="image002.jpg"
Content-Disposition: inline; filename="image002.jpg"
Content-Id: <part2.AHVk6LaH.AfJlnPF5@gmail.com>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwgHBgoICAgLCgoLDhgQDg0NDh0VFhEYIx8l
JCIfIiEmKzcvJik0KSEiMEExNDk7Pj4+JS5ESUM8SDc9Pjv/2wBDAQoLCw4NDhwQEBw7KCIo
Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozv/wAAR
CAFPAccDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAA
AgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkK
FhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWG
h4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl
5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREA
AgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYk
NOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOE
hYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk
5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD1rSP+QLY/9e8f/oIq5VPR/wDkC2P/AF7R
/wDoIq5VT+JkU/gXoFFFFSWFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAF
FFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRR
QAUUUUAFFFFABVE6xYLbXFw1wFS2cpKGBDKw7beuTxj1yMdavVzl3od7damda/cpd27Yt7fO
Y3QZ/wBYe7HnB/hzxnnIB0StuUMARkZwRg0UKSVBZdpI5Gc4ooAqaP8A8gWx/wCvaP8A9BFX
KpaSQuh2TMQALaMknt8oqtaeIbG6lm/0iCOCM7UkkmUGQ9yB6e/eqn8TIp/AvQ1qKQEEAg5B
6GmzOY4XcdVUmpLH0VxvgnxjfeJb64guo7VVjgWUeQWyCSRtOe4xXUz30cF7bWjKxe5D7CBw
Noyc/nQJO5ZoqhY61YX8duY7iNJbhA6QO6iTGM/dz6UyHxBpc81wi3kISBkUymVdjMwOADnk
8dKBmlRWfb67pdyjvHfwbUna3JaQD94Djbz3qG+1+KxvpLd7S4eOFI3mnTaVjDkgEjO48jnA
OKANaiqiapZyXQgjuYXPIysynDA424znP4U5tSsFba17bhtpfBlXO0dT16DB59qALNFV4L+z
unMdvdwTOqhiscgYgHoeO1R6nqMel2onkRpCzrGiKQCzMcAZJAH1JoAuUVly67FBKkMsDpK4
J2l0+XChiGO7A696tSanp8RmEl9bIbfHnbpVHl56bueM+9AFqiqw1GxaeO3F7bmaUbkjEq7n
GM5Azk8U2PUrd2vAzeUtnJsleQhVHyhs59MMKALdFZ8euafLf/Y1uYt7Ro8TeYuJQ27Gzn5v
unpRd6zawac17AReoJFiAt3VsuzBQM5x1I6mgDQoqhZ6xbXUMjSE2skLMssU7ANGVxnPOCOR
yDjkUtxrFlBIsYmWWQzpCyRMGKMxwNwzxQBeorPfVR9ue2htJ51hIE8qbQsRIyByQScEHgHG
RVKDxQk9lLcrpt2DHEk5jJj3GJgSHzuxj5TxnPHSgDdorJfxBAHlRba4Z0SJkG0L5vmEhQuT
6jnOAKLLxDbX+oJZRROsjQ+a290BTkjG3duJBBBIBHvQBrUVkz+I7O3gM0iTBFnlhOFB5jDF
j16fKcVBL4pjga3WbT7lTLH5rYeNtibgoPDfNnI4XJoA3aKovrOnRX09lLeRRz28ImlV3C7U
JIyc/T+XrTptUtYorWVHE0d3KsUbxEMpLZwc56cUAXKKym8Q2aGIMkv726e2Hyj5SrbSx54X
OBn3FVJ/FscMlyi6bdyi383LI0eGEf3yMtxjPfGe1AHQUVi3niNbK0tJptPuN1yrOIg0e5FU
ZJJ3YPHYEmrq6tZvIsaTxEkEuDIoMfy7vmUnI49qALtFZkHiHS50kk+2wRxJMYVkeVQsjBQ3
ynPPBq2L+zM7QC7gMqkBo/MG4E9AR70AWKKzV1qI6ldWjQtHHaY825kkRUBKhum7PRhzjFB1
/TBdQQ/bIStwjNHMJV8tiGC7Qc8nJ6UAaVFVZNU0+ISmS/tkELbZS0yjYfQ88Hg07+0LLfEn
2yDfMm+NfMGXXrkc8j3oAsUVm3mv6ZZ2K3Zu4ZUc4jEcqkyHIBC884zT7nU/JvBaQWk11KFD
yCLaBGpJAJLEeh4HPBoAv0VjnxFAJGJtbgW2940ucLskdQSVHOf4SMkYyOtNTxRYSWulXCpM
RqsgjiXaNyHBJ388Yxg+5FAG1RWUNeh/tZrBraZFWQwi4bbsLhBIV65+6c5IxxUs+v6Rb2LX
smpWv2cBsSCZSGwMkDnk+woA0KKoPrFmttbXCSCSK5G5HQgjaFLFifQAVX/t8C1+0tp90qys
q2ykLuuC3TA3cevzY4oA16Kx4/Etq17a2U0E8FxcSSRlHA/dugBwxBxyGGCMg0kXiezmldIo
Llwl6LMuEG3ecfNnP3ecZoA2aKyLbxHaXczLErGNZxB5odGG45AyAdy5IxyBWvQAUUUUAFFF
FABRRRQBS0gBtEsgQCDbR5B/3RUFpoFlaSzYhieGQ7kjeJT5Z74PXHt2qxo//IFsf+vaP/0E
Vcqp/EyKfwL0EAAAAGAKjuQzW0qqpZihAUYyePepaKks4D4eeF9T8P6ldy31lLAk0IVWaaNx
kHOPlOa6/U9NlvZLee2uvstzbltkhjEgwwwQRke3ftWhRQBytv4RYahMjy7LFFiWPCqZJCkZ
XO7qOSeMc02bwQ9xaSwS6pnztgcLbhVKqhQcA9ec5zjI6dq6yigDmrnwdHcyI7XKOI7iSVEk
hyuJMFgcMMnI4P6Grt7oT3moyz/bNltcRxpPAIgS4QkjDZ4B3c8flWxRQBgN4Vi8vEd00cip
KI5FjGUd5RIHHuCPxqvc+CbWe5lkSZVWW3ELBotzLhSu5TkAcHnINdPRQBm2ekG01O6uhcDy
bhQPs6JtUEDBY88tgAZGOKdNpSDSm0+zMcMZ7TR+cpBPIKsec/WtCigDmT4LiMJj+3ynKbdz
KCfuKn/stWG8OSiIxxXyqsd19pt91uGKMSxIbn5x8xx0I45reooAwLfwnb20kci3BLRyQvny
xn92Dx7A7j9KkuNCupZNREWpeVDfkMUEPzK21V+9uGQQvI9zzW3RQBzFr4MW1aFVvVMKLGsi
fZxltjs4w2cqMtyOeBVtPD0yaIdOF/8AMJ1lifyvki2sGChSfu/L0z3rcooA5278KvcwtjUS
k86SpcymEN5gk25wM/LjYMdePXrRF4SVNVk1CS+eR3mSQZTnCMWCk55644A4FdFRQBmnS7iP
UJbi2vvKguGDTwtEGywGMqc/LkAZ69Kop4UjtNJgsNPnSDYymZ5IvMFxtGAGG4cZ5xnFdBRQ
BlXejNcyvOLry5zHEFYR5VWjYsDjPQ7sYz070y30J4bizd7zzIrTc6p5QDNI2dzFs9PmPAFb
FFAGKPD8i3zTpfkRLLJPDEYgdkrggknPzDluOOvWs8+CFaSKRr1AV3btlsBs3MG/dc/u+nbP
U11VFAGPqWgG/vJblbryjJHEu0xBsNG+9G68jJ5Hf1FB0E/2XFbJdbLiK4+0rN5Q2+ZuLH5M
9OSMZ/GtiigDnJPB8VxEy3Go3Zdo3BaJzGN7uXZsA85bHHbaKkXwrEn2pkudst6sy3EixAGQ
P0z/ALp5H4it+igDD1jw2urQ2Uf2hE+yKygyQCTIKhcjJGGGMg9qil8IwSxun2qT53kcsVBJ
LxhOT3xjPvXQ0UAcbqvhe+W0mW1kN3dXhlWVhBGsahwgPBbK/cByNx68dK0rLwrHY6nLeRTx
nzZvNO+Dc/JyV3E4xn0AI9a6CigDn73wst5e6hM1xEEv1VXzbAyLgKMB8/d+XpiifwlbzyXT
mcj7QsqgeWP3e8oSR/3x+tdBRQBzkfhFBqcl9NeNMzzpNho+TtZiASSc/exkY4A4pYfCSw28
tqt6fs9xbG3mUxDcRhgCrZ+XG7pg9K6KigDlf+EKAtlgS9iiBXZL5dt98BgwIyxwcjk5/AYr
ZudNuG1H7bZXv2Z5EVJlaISK4BJGORgjJ59+laNFAGG/hxnJha+b7EHeSKDyxlHYHq3cAsSB
j8eKbB4UgglhkW6kPlPE6qVGBsHOPTccE/St6igDGk8M2M0+pXEoLTX4ZTJ3jUoEIXt26471
XHhRZMvdXYklZJEZkhCD5owgIGTjAX8a6GigDIl0aR4NPjkdJ/syNDLxsDoy7WIAzg9KYNEv
DZpby6oXNu6vayeQA0ZXIG7n5+Dg9K2qKAMCTwsLjdJPfSG5cSFpkQKQ7bMMo7bdgwOfep4f
DsMCskczKhuYpwNo42Kox+O3JPvWxRQBz0fhp7adPLnV4fNQ4KBTHGrmTHH3iWwM8cfr0NFF
ABRRRQAUUUUAFFFFAFPR/wDkC2P/AF7R/wDoIq5VPR/+QLY/9e0f/oIq5VT+JkU/gXoFFFFS
WFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABR
RRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUU
AU9H/wCQLY/9e0f/AKCKuVT0f/kC2P8A17R/+girlVP4mRT+BegVFcwi4t3jZ5EBH3o3KsPo
RUtJ1qSzk9PN8trossFxJPcXO8ubqdmX7h5x/QVKviq8nEK22mtLKIhJOiKzjO5l2qQOPuE5
NdBFYWsKwLHAqi3BEQH8GRg4qBtE01jEfsiAw52FSRjJ3EcHkZ5wa6PaQbu1/WpmoyS0ZT1S
W8Gvaclns3vBMSJWIXjZ1A61Uh8VXN3LEtrp0kgVY2mCqzfeODtIGBjBOT1rbvdLstRaNrqA
SNGCEbJBXPXBHrimtpGntNDN9lRXgUKhXK4A6DA6gehqVOFkmhtSvoYt5ruqfZroRLb2tzFL
GFilVt4QybcnjBB9R/OtW+vruCezs7eOFrm5DEtISEUKAW6cnqMCnDQ9NEc0f2VSs4xJuYnI
znAJPAzzxU1zptndwxRTw71iOYzuIK8Y4Oc9KHKGmgWkc/o2p3zWlraLHG4aCWeaSSVicCUj
aPX2PtU9lrckdlBbx2yrLJFAbVGlZt4frknn5cNn2x61sW+l2NoFFvaxxhIzEoUYwhOSPpml
TTbON7Z1t0DWqFITj7ikAED8hTc4NvQXLLv/AFoYSeKryS0ub1NNY26QySRMysoypwAzEYO7
26VdbVdQgv7a3u4reFJcZl+cq5JOEU4wGAx1654q4NF00GfFquLgESLk7WBOTxnAz7U+TTLK
a7S7kgDTJjaSxwMdDjpketJyp9EO0u5i65ez2Wux3Lqktra2bzCLcwJbcFz6dwOegzU1xreo
WRe2mtrZ7rMJTy5CEKyPs5yMggg/WtiWztp5TJLCjuYzESwzlD1H04qCHRtOgjMcdqoUurnJ
LHKnK8nnjtQpwsk1sDTu7Dbq+msBZtcpGUlfy55FJAjJHBGe2Rj8RWaPEN9LFNNFaQKtrALi
ZZJCCyNuKheOu1c5PGTitPV7B9UtBZkxiCRh5+4HJUHOF9zjFPudJsLyVJbi1R3QbQeRkehx
1HseKUXBLVA0+hUTW2eMOsS4a9W2GW5wQDn689KXTtVuLjS5tSuoY44UDsiRsWbClgc/XFWX
0fT3vftjWqGfcH3c/eHAbHTOOM1YhtoLeAQQxKkQz8gHHJyf5mk3C2iGlK+py82t31reJf3U
KEPYb4oIXZuXkQKD7jPUe9XovENzCFbUbMwRHzF80qybiqhhgNzgjcPqPer0WgaTCJAljHiS
MxsDk/ITnbz0Ge1SDSLAWotTbq8KyCQK5LfMDkHJOewq3Om1sSlLuZEWrXKXckX2SNL+4eGP
DzMUVjGXOR2wARx1NP8A7e1AakbL7B5pgdEuGhRyMsAcqcYAAIPPvWtPpdjdeb51ujmYqznk
Elehz2I9RTF0XT0mimW2CyRABWDHt0zzzj3zRz0+qDll3KWu68+kuPKRJvLQSTRhWLBScZyB
he/J9KhufEN5B9pk+yRtGl39khClmZnOMMQB05PA54rUvdH0/UZBJd2qTNt2/NnkZzgjvzzz
T5NNspYJoHt0aOd/MkX1bjn68Dn2pKVNJXQ2pXKsOqyjRZb29hFpJHuB80MqnnAOMZweOOtZ
UWs3F7eWhljMUltdSxyKAyB8Qlh8p57jrW//AGdafYDYmENbsCCjEnOeep5qODRtOtseVaop
Dl88kliu0kk9TjihSgr6BZ6GMfEmpfZ7TbYI9xdwG5VIg8gVAF+U4HUluvQVNL4meG+hVoAY
HIjkARi8L7C5VjjbkY6da1JtH0+4ghgktlKW42xAEqUGMYBHOMdqQ6LppuxdG0QzBg4bnhgM
Zx0zjjNPmp9hWl3MJtW1IXtvfyQxFGsHuFhjkY/JuQnPqwUn+VbK6gbq21CVY1NvCGWNgxBk
wuWOewzxx6U3+xLW0SSTTbWCK5aMxo8mSqqTyPp3wOKs2OnQWOlxadGu6GOPy8H+Id8/WlKU
GtEOKknqYia7dW9kJIbSL7LawW7yb5WLlXAyAfUep60alrupR2+orEILWeAFoklVixUMBv6Y
YHPbpnmtv+y7HyHg+zJ5ciqjLjghfuj8KZ/YunZnJtVY3ClZNxLZBOSBk8An0p89O97C5ZWt
czptdnh1OCzZYpUkkEErRK/7uQqT94jHpx1way7HV5tPt4ZyJbh3sbZEQktl3dxkjr/U4ro1
0LTFuEuBaKZYyGViScMBgHk9ccZ6086PpxhMJtI/LMaxFcfwqcgfgTmmp00rWE4ybMr+2tSu
UNqtmkFwIpJJDPuQFFOAVHXnPfpitPQnZ9A093YszW0ZJJySdo70j6HpskMcT2oZYs7cs2ee
oJzkg9wauQwx20EcEKBIo1Coo6KB0FRKUWrRRSTvqSUUUVkWFFFFABRRRQAUUUUAFFFFABRR
RQAUUUUAFFFFABRRRQAUUUUAU9H/AOQLY/8AXtH/AOgirlU9H/5Atj/17R/+girlVP4mRT+B
egUUUVJYUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQA
UUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFF
FABRRRQBT0f/AJAtj/17R/8AoIq5VPSP+QLY/wDXvH/6CKuVU/iZFP4F6BUF5dx2UHnSqxTe
qnaOm4gZ+nNT1XvrRb6wntGYoJoym4dVyOCPcdaksop4js5CyxpIzLNJCQdqjKYy2ScY5GD7
1cGp6efOxfWx8gZm/fL+7H+1zx+NY/8AwiMWx1+2yfPapAcoMbgwLP8AVsDP0obwjGFUxXQS
Rd5DGEEFjMJQWHcAjGKBmlaa5p13FHIt1FH5zukSySKDJsYqSvPI47VZN5ahSxuYQFAJJkHA
IyP0BrCh8ICFkzfB1JzODbgb8StKNvPycsR349OtCeDbdGZjcebuR1KSx5Ug5CAgEZCqSOvO
aBGrc61p9pFazSXEZgunKJOHXyx8pbJbOMfKambUbFGZWvLdWSPzGBlUEJ/ePPT3qiNC32mn
w3V0blrKQyb5EB3kqy9D0xu469KzR4JUSIz3wmEVqLeNZYSQBtUdmHGVzgYOT1oA3rrVLG0s
Pt0t1EICu5H8xcPxkBTnBJ7VXm8RaVbWa3VzeRQqyRuUdxvUOQFyM8dRVa+8Oy3unWlu2oEz
W8bRtPLCJPMDLtY4J4Pof51R/wCEHhSSd47pd0qoQ7wlmRl2f7WNp2DjGeetPqHQ6BtTsELh
762Ux435lUbc9M88Z7U0avphcRjUbUuWCbfOXO49B16+1Y8fg6GO/kujOjeZdLcnMR3ZDbiu
d2MZ6cZHHJpR4OthCUE+CYmj3CIZ5l8zd9c8UkM2I9Us2eOJ7mGKaQkJE0ybmwSOADz0NNn1
jTre2muHvbfZCSrkSrww/h6/e9qzI/CUCM7m4LMzxsG8sZXbM0uAfctj8KqQ+B0trbybe8jR
gWCyNb7yUZSpDZbBODwRj6c0dA0uatx4l021t4ZJpSrz2rXUcJxvZFAJwM9een19KtpqunyQ
xyrfW2yRtiHzVwW/ujnr7VnXnhpbq0tbdbrYILOSzYmIMXV1Az14Pyg/nVe+8Hx3bnZeeVCZ
1mMQi+XIVFGMEc/J1OfvHinpcXQ0B4k0dtOTUBfRfZXnEAk3cb923H5/pzUlnren3kMsiXMa
eQWEqvIoKBWK5IzwDg4JqqPDxGkf2et0vyXX2iJzCPlxJvAIzzzxniqlz4Lt7i3aL7SVLCTL
CMDczTCXJweQCMYzyO4pD0Na71qws/srTXCLDdEhJt6+WMKWyWzjGBU0mo2MTOsl5boyJ5jB
pVBVf7x56e9ZVz4aMthYW8NxDA9kWKkW+5DuVlPyliR949zVX/hCLeOaeSKaNhLGqgzxM7IQ
qrkEOB/CDjHXvQI27PV9P1Ca4htLuKZ7YgShGB25AI/DB61BF4h0ydrgRXUTCFgit5qBZWKh
sKc4PBqK10BoYL+Ca9adb6JUkcoA+7YELZ75ABxj86pxeEPneW4vVkkcPkpbhFG6IR8DJ7DN
A15m4L+08hZmuYUQqWyZFwMdec4470h1Ow2swvIGCRecdsgOE/vfT3rGn8HQT2lxbtdNsljj
WMbOI2UqWbGedxRcjjp71a0zw9Fpy3O10JuYliISLaFAB6ZJP8Xc0PyEvMsadrthqNrazJPH
E12m+GKSVN7r6gAn/wCt3p02t6ZCtszX0BW6l8mFlkBDvgnGfwrNj8KJHJb7bv8AdRxQpIpi
G5jEDtIbPy9eRz+FWRoKx6bplpDOqHTnRlcxAh8KVORnjIJ/GhgTWeu2N/aQ3FvKjLIQGUyI
GiyCcMM8HA6dasjULE2n2wXkBtv+e3mrs64+9nHXisVPB1vHHbos42wRRxlTEMPsEgyQD38w
5+lWBoEo0e3svt+6W2mEscrw7lGCcLtJ+6AcDnPTmmDLdnrmn3lrDOLmOLz1LokrqrEA4zjP
Tipn1C2imkSSaJFiTfI7SqAn15yOv0rAtvA1rBPE8ky3CrAIXEkRycbuVwwC/e9D+FTt4T3J
GzX7NcRxjMzxA+ZIJA+9hnnkYxR1Gbcd9ZyyJFHdQvJInmIqyAll/vAdx70yHULaWRYTNEkz
ltsRlUswUkEgA+34Vm23htYdfOsPNFLK6LvBiIwwXblPmwoI7EH60tl4dNlqUd3FeYVTIXUR
4Mu52YBjnGAWOOM+9IRdudYsrd1TzllczrC6xsCY2bONwzwOKkTU9PkKBL62YyAsm2VTuA6k
c84xWL/wiAbULi8kv2d5pVfPl84VmIBOecbscAcAUz/hC4kuIZobsI8VoluHMWWQqpAdMMAp
+buDR0Hoa17r+mWVh9ta7hkjbPl+XIpMhBwQvPJq0buDyy6Sxv8AuzIArjlR369PfpXNDwOE
s/s8d+qb94lP2cEEM4f5csSpyOuTWhpujuLfUfOV4PthdIo22kwxnPHHH3mZsZ7igRopqli7
FDeW6yrH5jxmZdyLjJJwenPXpUEfiHR5Zp4k1K2Jt0V5G81doVuhznFZw8HwLFt89XbczEvC
CGzEIsHBBI4z1pknhKaS3ljOqsxnjjSVnhzv2E9cMDtIOMZ7DmhjNMa/ZHUGs8sCpbMhxswE
Vyc56YcfrT7rXNOtY4HN1FJ9odViWORSX3MFyBnkAnnFY8ngiCS0a2a9k2mLy+EA/wCWcaA/
+Qwfxp6eD9hh2XcUaK0bSIlt94pIXG0sxK5yc8nPtT6i6Gtq+qNpNuk/2Ke6RnVD5LICpYhR
ncw6kim2OuWN7HMfNSCS3LiaKWRQ0e1ipJwTgZB5p1zp0l5piWlxdF5A8btKEA3FXDdOgzjF
Zd54OtruGWM3BQymdiyxjkySLJz6gFQPcelIZsnVNPA3G/tseX5mfOX7n97r096dLqFlbxxy
zXkEUcn3GeQAN9CTz1FYD+CoJLOaAzojSeSRsiIQGNmYcbiSDu5G78at3HhmC6tLS3d41Frb
ywqEi+X5125AJOMfU0AtzS/tTTzH5n2+22GTy93nLjf/AHc56+1Pe8t1iaRZUcCMyAIwJKjq
RXP3vgtLuJoUvjFG5QunlZU7YwgOARzxn09jVzS9JdP7QklR4RcsyQxttJijOc9OOWLNjPcU
PyEXLbW9NutPS+W8gSFgu4vKo2EjIVueDz0q91rlD4FSSyhhlvEkeAxhD9n2xlUQoAyqwycM
ecjtXUwxiGGOIYARQowMDgU9AH0UUUgCiiigAooooAKKKKAKekf8gWx/694//QRVyqekf8gW
x/694/8A0EVcqp/EyKfwL0CsjxTHcS+HbpLVJHm+QqI0LNw6ngDr9K16KktHHtf+Jnms4o2d
Ld2kBuJLNt8g3YXcoU7PlyeQo9fSqdrJ4ls7JpI57+ef7BAoW4tjhGEhEh4XJYA57lvfFd5R
QBgaRca3KLqS7bzPLt0ECGAxrI+3JPzAN14xgYrH09telvZJf9KxctGJpJrPZwsTkqFIxjfh
c/z6129FA0zkvtviWLSnSG0xPDarKv7jCksoHlgeqnecD0Ud6Z9t8SfYpZmuJP3UEZXy7Fsy
sXbdgFM7toA+7jnJ4rsKKBHPave6xGbP7Gk6B4Sx224lLS5XCPjhQQTk8dOtP0yXWn1Mi+3N
bTeeNhhCiLbIAnzdTuUk89cVvUUAcQthqn2hUa3ufL80aaT28gNv836EDbn3q1az+IlkjZYT
DBG8YNutqFDhpXDHPbC7Tx9T1rraKAOHgudd+0zXb/bUMqQRzy/YTuh5kLBEwd4BKjODwc89
avHUfFCCP/Qy5CK7YixneNoHsVb5j6CuqooBnN/8TW/0zXLKfzZZdjxwP5Xlo2VIAXIBPbJ5
HoazrnUL6K8F3b/a7OK7eG3y1mzS/LFIzbYyM9dozj1612tMeGORo2kjVmjbchIyVOCMj8Cf
zoGcfPc67Ne2L3NtdFoGWUwQ23yH9w2W39N287dufTjvUFvd+KmxeP8AaZJltrhYojbFUkcF
Sm4FQQcZxwM7cd+e6ooA5tbzWh4cglaSR7hpws00do3mJHnlhGygk9B933xU+kT63PNM96GV
Etk8uNoQgkc7sknseF47ZrdooEcla3fiS6jhj82eIySIJpXsgphOxy6qDwVDBQG569TRqf8A
bN3ZaTM32qN5LWVbqCGLIMjRcBhjK85+ldbRQNOzucS1z4qsbCG1i3EK0YNw1qzFFMWdu1VY
kBuM4J9T3q94mfVJ3gtYVnMLrExEFuXEjeau4M38ACjPbv1xiuoop31uI5G11LxQPtE1xDvI
mMYtlt2BTcSqkMVAZQdpJBbjNT28+rxagkEyyw25uJMyw2mfOIIxuwDtBGTu/WunopAcrp9/
4kk8P6lPcr/xMEUmCIWzDy25+XkAOM9ME/Wg3PiS0llZzNeRo8sYVLZVLKI9yuD67vl9D6Zr
qqKB3OOtr7xVJDDJJv8A3S7nAtMef++24OQCP3fPQHvUd8+t6wItPmiuI40mT7Sfsvyvifpk
jDLswTjiu1opgcgup+IWlvQ0VzDaidFRxaF5IUy4O1duH6J0DYDZ5oju9b06a8dmvrqJrlyA
1oWIUxZj2gDpuGD6d8Zrr6KQXONub7xWtn5qbo2edEObUt5S+UGLYVWJy5IPBx7davY1d9Ov
dQlldLyJ5EtR9nOETcOQoBLZA4JB+nWukooEYF5d63/Z9i9lBJ51xFtcTRjdE+AQzgcDowPu
RWbd33iS6ljRoGgtri3djH9ndmJO4bCQp2kDaeSvJ712NFALQ4zT7zXobGzjP2to0khRgbIp
Iw2gMoyCAoP8RxnnBqBJvEtpHdSwrOjyRw7Ivsp8uFd7B2UBTyBg4wTznBruqKY0UtKuZ7iz
QXKv56KokcxNGrkqDlQwBxz6DnNXaKKQgooooAKKKKACiiigAooooAKKKKACiiigAooooAKK
KKAKekf8gWx/694//QRVyqekf8gWx/694/8A0EVcqp/EyKfwL0CiikJwCTwBUli0Vzl5470C
ykaNrl5XXqIoyf16VB/wsbw/82ZLgADOTCeaAOqorJ0HxHZeI4pZrGOcRRkYkljKh8/3fXpW
tQAhIUEkgAdSaoJrumyW7XC3Q8lCd0hRgoxjnJHTkYPQ9qvOu5GXAORjB6GuRfw7rE1q1uGj
gtgHWK2Nw0gjUhcDdgZGQcDtQhnWxyrKm9MkZI5BHQ470+uZXRNVW5VpJVm+WURSG4YG2Znc
hguMPwyjB6beKrQ+F9QkgjhuH8qIMS8KXkjbm8oru3cHliDjtjPWgLHVPcQpcR27SASyqzIn
dguM/lkfnRLcQwPEksgVpn2Rg/xNgnA/AH8qx2stUin0e4WOK6ltbdobgvMVJLBMsDtOfun0
rHfwzrEks0twsU6tdiYwfa2RWG2QHaQuVzuXjnoeaBdDtao6frWm6qzLZXSyso3EYIJHTIyB
ke44rO0bSdQsdSMtzIsyG1SN5XlZmLgAfKOw4PXJJ5qjBoOsf2fbq4ghnsYBFCI5ifOw6Mct
gbQQmMYPU0wOrZlRGdjhVGSfQVVm1axt7KK8kuFEMwBjYAsXyMjAHJ454rnH0LXri7tZpJI0
CTSyMFuGO0O7HYcr8w2lQOmMHrxWiul39nbaTLbxwT3Fhb+RJE8hVWBVQSrYOCCvpyCaQF1N
e0t7v7It2vnbd20qRxt3dcYzjnHWnQ63pk4g8u8Qm4kMcSnKszAZIweeAKzRol62oXmpySKZ
Swmtrbf+6EoiCZY7d3qOuMc4p1vpN5Ja2vnxJFOl4Z5287eXyjAkHaOeRxjoKALo8QaU0ZkW
7DgS+V8iMxLYzwAMkY5z0qzNf2lu8iTTqjRQmZwf4UHVvpxXOP4f1GSzKSW9u1wkccEDrcMn
lbAwEuQM5+b7v61c1nSdQuZna18mT7TZGzlaVypjyfvgAHPU8cdqAXmXpfEOlQiYvdjEJVXI
RiMk4AGByckDAzVqC+tbm3iuIZ0aOY4jbONx9BnvwePauZv/AA9qkrTpaIsNv5scoiW7ZfNd
XDF1O392SAc4zkn8asv4euH0vSYpY4pZrK789l8wrwd38QHzMNwOSOSD60AdHJIsUbSOwVEB
ZiewFVTqtgEZzdRhVg+0Ek9Iv7304rJ0bRL62iu47yQDzofKZhM0nnPzmUg/dJyOBVVdA1ia
JEdrW2ZIYbUkEyhkjYsWxgdTgbfTPNA9DbufEGlWjQrPeIpnQSR8EgqeAcgcDJHWmw+I9JuL
W5uY7v8Ac2v+udo3UJ7cjr7VhjwtqW+NpbiKb7NGVjUMUSYebvCuvPGOOpwQDV+60S8l0HV7
JWTzryeSSL5yAAxBGTjg8U9LBY1rfUrS7szdwS+ZCpIYhDkEdQVxnPtipWuIVuEt2kAlkUui
dyBjJ/UfnXKr4Z1RoXYzCOQxT+Wv2lyUkcrtLMAN5ADfMRxnFR32h6hDPd30zxKgjlDTG5kz
MrSIwUgD5BtUpxmkB2dVL3VLPT5IY7qYo85IjUIzFsdeAD6iuQ0/R9Vvks71WnW2V5ikH2pk
KAyEqcspLKVwOxxW1qOlX0s+jz28efsalZUW7aM8hf4sEsPlPB607CNue4htkDzSBFZ1QE92
Y4A/EkCpa5FvCl84w8+5Zn3XGbhzuxcB1x6YTI4x6Uj+HdaF1aCK4VYbbzQjC4bIVi+FbIJb
gpjkYwevFLoOx19FcinhrUraBYlcXMGYmlt3u3HmsEKud/JHzYbHQ4pJPDurm7v5WladZ5Q4
Q3ZRJI9wPl4C5XA4zk5x05o6iOkbVLFLI3rXKC3BK7/Ug4wO5ORjFQS+INLhjhkluwizglMo
2cA4JIxlR7nArOtdEvrTQtPiRYHu7G4aYRNISj5L/LuxnOH4OOoqS6stWllmuYra18y9tRby
pJMSIcFsEHb8w+Y5HHQUDNP+1tP2Xj/a4ttj/wAfJzxF8u7n8Dmo7nXdLtIraWe7VEul3Qtg
kMvHPA4HI5PrWGPCV0rXEazRGC6bbOCTmWNUUJ9DuBz7GrU3hye7h0q3muTFDbWb29yIiMyb
ggKjIPB2nkYNMR0PWkSRJN2x1badrbTnB9DXK3PhzVZZr7y5hGJt4WYXLgupK7U29F2gEZH9
TWn4f0YaK+oRpCiRT3JljZZGYsCB1B6EfrSA2aKKKACiiigAooooAKKKKACiiigAooooAKKK
KACiiigCnpH/ACBbH/r3j/8AQRVyqekf8gWx/wCveP8A9BFXKqfxMin8C9ApksYlieMkgOpU
kHkZp9FSWclc+GL8hIZBZ6nbjA/fx+XIo9mFcTqvgTxJdam9tp2mpbWxzl5ZgVA+vX9K9joo
Ax/DOjXOhaQlpdahJfSgDLMAFTgDagHRa2KKKACiiigAooooAKKKKACiiigAooooAKKKKACi
iigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoooo
AKKKKACiiigAooooAKKKKACiiigCnpH/ACBbH/r3j/8AQRVyqekf8gWx/wCveP8A9BFXKqfx
Min8C9AoooqSwooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKAC
iiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooo
oAKKKKACiiigCnpH/IGsf+veP/0EVcqnpH/IGsf+veP/ANBFXKqfxMin8C9AoooqSwooooAK
KKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiii
gAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigCnpH/IG
sf8Ar3j/APQRVyqekf8AIGsf+veP/wBBFXKqfxMin8C9AoooqSwooooAKKKKACiiigAooooA
KKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii
igAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigCnpH/IGsf+veP/ANBFXKp6
R/yBrH/r3j/9BFXKqfxMin8C9AoooqSwooooAKKKKACiiigAooooAKKKKACiiigAooooAKKK
KACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigA
ooooAKKKKACiiigAooooAKKKKACiiigCnpH/ACBrH/r3j/8AQRVyqekf8gax/wCveP8A9BFX
KqfxMin8C9AoooqSwooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKK
KKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiig
AooooAKKKKACiiigCnpH/IGsf+veP/0EVcqnpH/IGsf+veP/ANBFXKqfxMin8C9AoooqSynf
ara6cUFx5uXzjy4Xf/0EHFYuo+K4LV47uB53gTieFrV1yCfvBivUeh6101VLmwS8uYZJnZoo
fmEP8LN2Y+uOwranKmn7y/r7jGpGo17r/r7ySWSWSxaW0AaRo90QfgE44zWVHq62du8lzPPJ
MCiGCaNUZGP0H3ffnpWzLGJYnjLMoYYypwR9DVP+x7VkcSNNI77f3ryEuu05XB7YOTShKCVp
Dmpt+6VJfEccNkty0IGC29C+DhepUYyw9+KmfWSsk4FqzJDIsStvGZHYKVAH/Aupp8+iWtyg
WZ52PlmNm805dSckE96mbTLV4po2QlZmDt8xyGAABHpjAq70exNqvf8Aq3+ZQn1K+t7x3ezJ
EdsZHiWYYADdQccnHapdWupzaWhtM7bmZFYiTYdp54ODirK6ZAFcM0sheMxMzuSSpqVrOF4o
Iyp2wMrJz0K9KXPC6dtg5J2eu5Rj1rcqSm1ZbeXcIZC4JcqCeR2yAcVMmpOdJOoS2xjUoHWP
eCSpAxn0PNKmj2iOWAfb822MudqbupUdup/OpzZwGy+xsuYfL8vaT/DjHWlJ0+iKiqnVlW61
b7PO0K2zSuHjQAMBkvnH5YqMaxJI/wBmjsybpS4kj8wAIFxzuxzncMcU250JGVPJeVnaeN5Z
HlJbC5xg+ozVj+xrXauDMrqWJkWQh23dcnvnA/Kq/dJE/vb/ANf5FC21w29jYC4xI0yJvYv8
4LHAO3Hr7ilXxBNFCPtNsgleaVI1WQ4KocEk447D39qtjQLEBFVZFRFQbRIQG2HK59cU9tHt
iSytNG3mNIrJIQULfex6A9xVOVFvYhRrJblC+1maexkezgkRU8vfKW2shYg4x34PP1rRvL6S
GdLaCAzTOjORvChVGBnP1Ipk+i2lwxaQy4bbvUSkByvQn1PAqa6sIbt0kcyI6AqGjcqSp6g4
7cCocqemhoo1Fdt9jLttVnbTUjaKSRlslnln8wKRkHp/tcVaj1dFiCeW7SKyIAzDLBlDbs/T
Ofoanj0q0ihaJEYI0AgI3H7gzgfqeaeunWq3Mdx5eZI4vKUk8bfp6+/vTlOm29CYwqJLUzU8
TRyW8kyWsjKqK6YP3gWAAOQADyDjmrcepyNqC2Ulusb7ctmXrxn5ePmHrT00i2SBrfdM0LYx
G0hIQA5AHpUj6fDLeLcyNIzIdyIXOxTjGQPXFJul0Q0qvVkF1qxgmnVLZpY7UBp33AbQRngd
+Oe1NXWCblUNqwha4NuJd45bGQcelTXGlWtzM0rhwXAEiq5CyAdAw7086fbnHynifzx8x+//
AJ7Uk6dthtVL6Mo6jf3VrcXMCON8sS/ZcqOHJ2n68lTVY6rNPCGaR1WKGPzxFhW81n29T06H
8DWzcWNvc3FvcSpuktmLRnOMEj9aiXSLNUuEWMgXMomk+Y8tx+XQcVUZ00lda/1+n4kyhUbd
np/X6/gQHWtkv722aO3814vNLg/MoJzj0ODVU6xOl4k81u8cLWu+OIOGLkuoXPoef1rUbTbZ
1VWQkLK0uCT945z/ADNV10KxXcGEsgMflAPITtTIIA9MEDFEZUluglGq9mINYMc4gurYwuGA
ch9yqCpKnOO+0j61CviFXtRMtpIGEe6RCf8AVndtw2PxOewFWm0a0kt5IZRJL5rKzu7ks23p
zTzpduHuJIzJE9wys7xuQcjpj0pXpdh2q9/6/r8yG9vpl0U3cRRJCVwVYOvLAcHvxTNQ1OSw
vX+UyxJbb/LXGSxcL1/Gra6darYGx8vMBBBUk85OSc+ueaqXmirJYXEUbPLNMFUvNISdoYHG
e3eiDp3s+/4BJVLab2/r7xTrEizG1Nn/AKWXCrF5gwQQTu3Y9Ae1VI9cey04z3Sh282XcrSf
Mqq5GAADnA+grQ/se2KnLTGXeH87zD5gIGOv04xUbeH7BovLxKqlWRsSsC6sckE9+STVKVHq
hONXoyu2uywPc/aLdNi3AhgKufmyob5uOOMnNadjdi+tEnEbR7sgqw6EHH5VDJpFrI7tmVS7
K+VcjawGAw9DjircMYhiWMM77R952yT9TUTdNx91alQVRS956D6KKKxNgooooAKKKKACiiig
AooooAKKKKACiiigAooooAKKKKACiiigCnpH/IGsf+veP/0EVcqnpH/IGsf+veP/ANBFXKqf
xMin8C9AoooqSwooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKA
CiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoo
ooAKKKKACiiigCnpH/IGsf8Ar3j/APQRVyqekf8AIGsf+veP/wBBFXKqfxMin8C9AoooqSwo
oooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK
ACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigCn
pH/IGsf+veP/ANBFXKp6R/yBrH/r3j/9BFXKqfxMin8C9AoooqSwooooAKKKKACiiigAoooo
AKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACi
iigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigDJ04D+y7P/r3j7/7Iqzge
/wCdV9O/5Bdn/wBe8f8A6CKs1U/iZFP4F6CYHv8AnRge/wCdLRUliYHv+dGB7/nS0UAJge/5
0YHv+dLRQAmB7/nRge/50tFACYHv+dGB7/nS0UAJge/50YHv+dLRQAmB7/nRge/50tFACYHv
+dGB7/nS0UAJge/50YHv+dLRQAmB7/nRge/50tFACYHv+dGB7/nS0UAJge/50YHv+dLRQAmB
7/nRge/50tFACYHv+dGB7/nS0UAJge/50YHv+dLRQAmB7/nRge/50tFACYHv+dGB7/nS0UAJ
ge/50YHv+dLRQAmB7/nRge/50tFACYHv+dGB7/nS0UAJge/50YHv+dLRQAmB7/nRge/50tFA
CYHv+dGB7/nS0UAJge/50YH+TS1Be82cv0/qKAJfl9f1o+X1/WqRhiz/AKpP++RVS9mjtTDF
FZrPcTsVijGFBwMklj0AFAGx8vr+tHy+v61z51Wxgknjv4orMwCPcXIYEsCcDA5xipm1HSEE
pa4t8QgGQgZCg4xzjnORwPWgDa+X1/Wj5fX9az4hbTxJLEsbxuNysFGCKSaKMQsRGgIHBCig
DSwPf86KU9TRQBV0xlfSbJkYMrW0ZDDoRtHIq1VXS8/2RZbixP2aPJY5J+QdferVOW7JjblV
gooopFBRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABR
RRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAVBef8ecv0/rU9FAGeZ4s
/wCsFVb2CG88p1unt54G3RTRgErkYIwQQQR2NbWT60ZPrQBzUukQS3H2r+0p0u/l/fhVzwpQ
8YxyGP07VDN4c06dHjN1IsZEeyMKu1SmMMQRhzx1bPHFdXk+tGT60AZVr5FraxW6yKVjXaMI
FH5AYH4U6aaNomVXBJHAFaeT60ZPrQAHqaKKKAP/2Q==
--------------jMzRSzSS8Vch4UU6AmjL9bdq
Content-Type: image/jpeg; name="image003.jpg"
Content-Disposition: inline; filename="image003.jpg"
Content-Id: <part3.TtNS4CP5.2m6W5uGC@gmail.com>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwgHBgoICAgLCgoLDhgQDg0NDh0VFhEYIx8l
JCIfIiEmKzcvJik0KSEiMEExNDk7Pj4+JS5ESUM8SDc9Pjv/2wBDAQoLCw4NDhwQEBw7KCIo
Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozv/wAAR
CADhAcQDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAA
AgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkK
FhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWG
h4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl
5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREA
AgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYk
NOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOE
hYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk
5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD0fwL/AMiZp3+43/oRrfrN8P2Uem6HbWcT
MyQhlDP1PzHrWlV1GpTbXcimnGCT7BRUclxDC6RyzRo8hwiswBY+3rUlQWFFFFABRRRQAUUU
UAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAVXEkv2nZt/d
5+/jv6f/AF/wqxRQB5b8QbdX8RzztGDHHbIGk3HKtztGPf8Ax9KwLbSYrmySdbpVd+BGSOud
v8yv4Zr0DXvClprniCWe4ubiM+Ui7YyMHGfUe9U5Phzo0S75L+7VfUlf8K9ihi6cKSi5a+h4
1fB1J1XJR09TiW0WRLkQNdQDKlt+Tt4bbjp605tFZYw/2mNupO3JyPb1PqO3eu2/4VrpOOL2
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
WrlFFABRRRQAUUUUAFA60UUAakP+rFFFFAH/2Q==
--------------jMzRSzSS8Vch4UU6AmjL9bdq--

--------------BRzAUKcPPEjhgFOw1ROJn37C--

--===============3179294158969027356==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3179294158969027356==--
