Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E7B50D511
	for <lists+usrp-users@lfdr.de>; Sun, 24 Apr 2022 22:24:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 95043384E2C
	for <lists+usrp-users@lfdr.de>; Sun, 24 Apr 2022 16:24:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650831843; bh=OFH1lq5NCPY/K/3tPmeEQkEW9Xf4U4MsM6xnIlDBqmo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=wV5i8xghsgEKTV3LzEK6gmAgcVIy5J1GkA2hpp+c6c691YCJJ5MNYkfkqlqIOfiwY
	 EHOo9idgZS8evkUuIMM2KXNjm5ny3csLrslXWpYfNj7E6C2oJrIVb6devmSDJTp1Xb
	 VW3M0SYYsUPSXU/P91eyL4uXeOdFO05ers15tAtsFYpHMSJ283tKiJ16lsEMyW4wzm
	 O0f/R/w63+vxDrOhZMn6VMFa6DLwTnDv6+R75mlQr3eX5dxvK+Wj2h1TvTA1xNsKcw
	 NP3ehTLw8YPdx56b6rNXmFnFKgOKSzVbTQDh89dR7Gqbu7Sq9/2U4dS9LqhqxuJ2l8
	 eMeCO2OYAAXEQ==
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 995E2384ADE
	for <usrp-users@lists.ettus.com>; Sun, 24 Apr 2022 16:22:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FVpE8wK+";
	dkim-atps=neutral
Received: by mail-qt1-f175.google.com with SMTP id t11so2244553qto.11
        for <usrp-users@lists.ettus.com>; Sun, 24 Apr 2022 13:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=yBFUxWLpb+cghayepU/mD6KvxFaCqIrDpxghwp8RiTw=;
        b=FVpE8wK+QCuV/wYVWkoXi0hxU21GwR4ElYS6105+hAwOUZbS8KSqCBxdJ+COBv9jAY
         hF2O8X2Ed4WFbyRocNUFSco1dOD9OqX0brMCJOneBnawY2V0qIE1EIHmvCzFtTFAiEY2
         iN8wQZFNqgVcgncEAiQqMaIEQMFEl3UNgjWUowVACSxkRhkUlFM+DOX4efNOE/7DBQU+
         YJtDkafYZ0GpluBT5uw0U+VdH/tuuD25StGUUHAeCxxvIOpxNzX1R1ydbg1Ky6RaJdd2
         ShLeR4wZhOHDC/quk/7DhYO+5+YBE6mtGajN1xw7HKEW4KTNbQakf9sIE8ygO+WxgoYT
         o+YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=yBFUxWLpb+cghayepU/mD6KvxFaCqIrDpxghwp8RiTw=;
        b=gYjZtG9r0UK4COCqmc9Rebu9TbyG8LcEQF1Nu3Iy+ZfRCGtK9LW8oY1CVZORn2bUCp
         KEDEdvwuT9riD5arqKsqVnhtgDe4a0IKpietJvJacUg/1gGVnVsoKAlVak9eAXuN2JPT
         BJgPGk1zqImJ0pX4hrp54HpNVNJqC5SZCgcvjmAQCRXsOtOzIxZTfxeB+DoKfrca3UC2
         5ODFJ6I/YG70gm+8k96UAPi0JQMXthrKkCSIkjRbAUBZDPdv5GTfHB0qaLAiR5IJlliq
         BfLOhPtlcMdVTdzvF/QmNRbp364HJDjuhY31ZnX3kI/9SfKPbbswKTW+EXUxHUfoiJmU
         p2Bw==
X-Gm-Message-State: AOAM531H++5h3KHoM2ZxQNxWzG1EhtiofX4fyXloWycUu1ICjYrnDGZ4
	Lgykxl5ERjRjo9Yi/YhyPqTSHYzbQMw=
X-Google-Smtp-Source: ABdhPJyw7n4CvTe0ZHLHBv/pDP2CwcmTXGQJH+S8VrsVGctaSCxfhDrlJS/LyN2CqV14gtLKRILBPA==
X-Received: by 2002:a05:622a:50c:b0:2f3:611f:3752 with SMTP id l12-20020a05622a050c00b002f3611f3752mr5054721qtx.587.1650831775578;
        Sun, 24 Apr 2022 13:22:55 -0700 (PDT)
Received: from [192.168.2.199] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id j12-20020ae9c20c000000b0067ec380b320sm4025836qkg.64.2022.04.24.13.22.55
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Apr 2022 13:22:55 -0700 (PDT)
Message-ID: <84e4af31-2c42-34c7-a918-dfdce959bf82@gmail.com>
Date: Sun, 24 Apr 2022 16:22:54 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <OL1P279MB008348E9ECCB13A1DEABCA68A0E59@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <OL1P279MB008348E9ECCB13A1DEABCA68A0E59@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
Message-ID-Hash: 2VWK5OOEB7CN7ZOIDU4V6XWDNJZGVJJH
X-Message-ID-Hash: 2VWK5OOEB7CN7ZOIDU4V6XWDNJZGVJJH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 USB - serial problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2VWK5OOEB7CN7ZOIDU4V6XWDNJZGVJJH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3232529011639005301=="

This is a multi-part message in MIME format.
--===============3232529011639005301==
Content-Type: multipart/alternative;
 boundary="------------scKWp72Jqt0OJ54r0j5IBBDg"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------scKWp72Jqt0OJ54r0j5IBBDg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-04-04 03:47, Skorstad, J=C3=B8rn wrote:
>
> Hello,
>
> Currently using the E310 SDR together with UHD 4.1.0.4, original image=20
> file downloaded using the tool uhd_images_downloader. I have tried to=20
> connect two different USB-serial converters to the radio. Both returns=20
> something like this in dmesg, and no /dev/tty*** is created:
>
> [ 1516.703188] usb 1-1-port3: attempt power cycle
>
> [ 1517.382889] usb 1-1.3: new full-speed USB device number 26 using=20
> ci_hdrc
>
> [ 1517.822885] usb 1-1.3: device not accepting address 26, error -32
>
> [ 1517.922941] usb 1-1.3: new full-speed USB device number 27 using=20
> ci_hdrc
>
> [ 1518.362912] usb 1-1.3: device not accepting address 27, error -32
>
> [ 1518.373791] usb 1-1-port3: unable to enumerate USB device
>
> lsusb shows this line: Bus 001 Device 023: ID 1a86:7523 QinHeng=20
> Electronics HL-340 USB-Serial adapter (WeMos D1 in this case)
>
> This is probably caused by lack of drivers? Previously we used the old=20
> 3.8 image, where USB serial converters were added without problems. Is=20
> it possible to add support to the new image as well?
>
> lsb_release -a
>
> LSB Version:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 n/a
>
> Distributor ID:=C2=A0=C2=A0 Alchemy
>
> Description:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Alchemy 2021.04
>
> Release:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 2021.04
>
> Codename:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Alchemy-Zeus
>
> BR
>
> Jorn
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
The latest UHD 4.2 image for the E310 now includes those drivers. Please=20
try it out and let us know.=C2=A0 We did test two different types of USB=20
serial devices and they worked--
 =C2=A0 the CP2101 and FTDI types.


--------------scKWp72Jqt0OJ54r0j5IBBDg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-04-04 03:47, Skorstad, J=C3=B8=
rn
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:OL1P279MB008348E9ECCB13A1DEABCA68A0E59@OL1P279MB0083.NORP279.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hello,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Currently using the E310 SDR together with
          UHD 4.1.0.4, original image file downloaded using the tool
          uhd_images_downloader. I have tried to connect two different
          USB-serial converters to the radio. Both returns something
          like this in dmesg, and no /dev/tty*** is created:<o:p></o:p></=
p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">[ 1516.703188] usb 1-1-port3: attempt powe=
r
          cycle<o:p></o:p></p>
        <p class=3D"MsoNormal">[ 1517.382889] usb 1-1.3: new full-speed
          USB device number 26 using ci_hdrc<o:p></o:p></p>
        <p class=3D"MsoNormal">[ 1517.822885] usb 1-1.3: device not
          accepting address 26, error -32<o:p></o:p></p>
        <p class=3D"MsoNormal">[ 1517.922941] usb 1-1.3: new full-speed
          USB device number 27 using ci_hdrc<o:p></o:p></p>
        <p class=3D"MsoNormal">[ 1518.362912] usb 1-1.3: device not
          accepting address 27, error -32<o:p></o:p></p>
        <p class=3D"MsoNormal">[ 1518.373791] usb 1-1-port3: unable to
          enumerate USB device<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">lsusb shows this line: Bus 001 Device 023:
          ID 1a86:7523 QinHeng Electronics HL-340 USB-Serial adapter
          (WeMos D1 in this case)<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">This is probably caused by lack of drivers=
?
          Previously we used the old 3.8 image, where USB serial
          converters were added without problems. Is it possible to add
          support to the new image as well?<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">lsb_release -a<o:p></o:p></p>
        <p class=3D"MsoNormal">LSB Version:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 n/a<o:p></o:p></p>
        <p class=3D"MsoNormal">Distributor ID:=C2=A0=C2=A0 Alchemy<o:p></=
o:p></p>
        <p class=3D"MsoNormal">Description:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Alchemy 2021.04<o:p></o:p></p>
        <p class=3D"MsoNormal">Release:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2021.04<o:p></o:p></p>
        <p class=3D"MsoNormal">Codename:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Alchemy-Zeus<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">BR<o:p></o:p></p>
        <p class=3D"MsoNormal">Jorn<o:p></o:p></p>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    The latest UHD 4.2 image for the E310 now includes those drivers.=C2=A0
    Please try it out and let us know.=C2=A0 We did test two different ty=
pes
    of USB serial devices and they worked--<br>
    =C2=A0 the CP2101 and FTDI types.<br>
    <br>
    <br>
  </body>
</html>

--------------scKWp72Jqt0OJ54r0j5IBBDg--

--===============3232529011639005301==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3232529011639005301==--
