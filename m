Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0D84F15DD
	for <lists+usrp-users@lfdr.de>; Mon,  4 Apr 2022 15:29:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1A34384694
	for <lists+usrp-users@lfdr.de>; Mon,  4 Apr 2022 09:29:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649078997; bh=tEBHixaVb4/pUShx9QaqxYF+bXgvGag3Gb7F6a8rPi8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=lRZ47wJtLEyhX6P8WBCS6SRt0zxDq2oqz/9/DJkYfmAvoBQtduwaL5eubbPn9G/XJ
	 AqW6VN8Huin6dEm7HqScr3buWfwkj8A4Pbues5F0lrIrmkfLm46vB11to9e3hoZtZc
	 5N/cZrAhpcJsCu/kg2HWw9MJbLoPcixgahjVc2mZkzFF0aQZmarWPbyuJ2DHjGLq9x
	 R8ZiT6A2Y0KEVaDzWHyz0wnaq0TuayptbZcCjH2Qkql/4/QzL2KGX6ho7+ZtdynAk2
	 U19FoIxaaxyyzw9bXshvIJjL2gCF9BVNm1P0cCBcx45J56ahdlFDhtKnrsLpdeLrFz
	 tyVHGhy0Vgwpg==
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 54653384616
	for <usrp-users@lists.ettus.com>; Mon,  4 Apr 2022 09:28:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FHIjWoOr";
	dkim-atps=neutral
Received: by mail-qk1-f174.google.com with SMTP id g8so7582696qke.2
        for <usrp-users@lists.ettus.com>; Mon, 04 Apr 2022 06:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=BZxXykubJrduT69fSglHyPWnbVfVi9XYGrTO4VEFUps=;
        b=FHIjWoOrq1pWdW/qdFZQbZDtiASh0f57EqWHP/Xz3NXYHfhHTsvhC7fziWMfKuLtCK
         w/O8j0m2EOPVc+PcCzp7CFAVPxfioBcVwEWiOH2ldwCcyZQHerfO9DhbZYPdTQcSyL0o
         sfq8/fsbJI4Pck2KWX/K00y3/dUugOVg0BFJtD4pOk+UFFvEjLEPDBBnf9QNaSJ1zr/k
         sRXHHE1UgNcFZ3ssYh4BIwVDEVO3OTqDsZWBielpiBDy1Ez44SLvCIDKB/EIb9oFbV6z
         p9/klp3yw6GiKhh6R06yiRW9FzVw8atg+g1LIbiKAcE1wf14/xXguKtn6KJYc74a0UOS
         nKig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=BZxXykubJrduT69fSglHyPWnbVfVi9XYGrTO4VEFUps=;
        b=PMGGnfQgxzCrjKB4zTCvz4e+7cZalvAPjOwmJ1JPyxdF0sRFYTj5x6aZRYO+3s7eWv
         7+jVBjXgu+D3C9OsjfZ2ZMiIpgYL5K4uO5mjZv92hTLD9tzyHUujzr8ZR13PoP3PHsqG
         6wkkKRaXsdVNHacmIjU76WtAJObOftp+GIBRCEWK7VDWJsNxaIZ7bDrrjBf/EyIdZupe
         p0lzkqKjTcBJ7EgvV37Nn/b9WrtxJfREH/pS8zSBBXNSyCvQU/gg21NKTAxKtl7/++XV
         YscoFozDjuswIQQcNH92IxQ4LGgZpkvADhzwKE6sZX+TROVY6b0XI66FBFj/s/nivrq/
         DFPg==
X-Gm-Message-State: AOAM5307TEXaHeYBrUCEYAtDC7Kbto9WhFSaq1LNEC4eWUcZI48i3yoN
	UFeHHZAq6RvPJzuIcKitXAl6nphQGgI=
X-Google-Smtp-Source: ABdhPJw1oYXhcH9RLbUD1wUYrG2cX0k2sKMuEarJhyyiemvw/DXXAwpvE51tj4mBx46PC+TYRICBDQ==
X-Received: by 2002:a37:c402:0:b0:67b:2ddd:f63d with SMTP id d2-20020a37c402000000b0067b2dddf63dmr13625359qki.398.1649078935441;
        Mon, 04 Apr 2022 06:28:55 -0700 (PDT)
Received: from [192.168.2.186] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id j188-20020a3755c5000000b0067d1c76a09fsm6442893qkb.74.2022.04.04.06.28.54
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Apr 2022 06:28:54 -0700 (PDT)
Message-ID: <431675db-4751-1da1-8555-2ff7dfa4ed28@gmail.com>
Date: Mon, 4 Apr 2022 09:28:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <OL1P279MB008348E9ECCB13A1DEABCA68A0E59@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <OL1P279MB008348E9ECCB13A1DEABCA68A0E59@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
Message-ID-Hash: SU22JLB2I5T25SVFD5IPBLPOQLG55ZO2
X-Message-ID-Hash: SU22JLB2I5T25SVFD5IPBLPOQLG55ZO2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 USB - serial problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SU22JLB2I5T25SVFD5IPBLPOQLG55ZO2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4076071065733687188=="

This is a multi-part message in MIME format.
--===============4076071065733687188==
Content-Type: multipart/alternative;
 boundary="------------2Ww400lWF5xUR7kG9fNEfVGW"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------2Ww400lWF5xUR7kG9fNEfVGW
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
I just tried this with a CP2101-based USB serial card, and got the same=20
result.=C2=A0 Nothing in /dev/ttyUSB* or /dev/ttyACM*=C2=A0 and no hint t=
hat any=20
driver was loaded.

I'll see if anyone in Ettus R&D can help.


--------------2Ww400lWF5xUR7kG9fNEfVGW
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
    I just tried this with a CP2101-based USB serial card, and got the
    same result.=C2=A0 Nothing in /dev/ttyUSB* or /dev/ttyACM*=C2=A0 and =
no hint
    that any driver was loaded.<br>
    <br>
    I'll see if anyone in Ettus R&amp;D can help.<br>
    <br>
    <br>
  </body>
</html>

--------------2Ww400lWF5xUR7kG9fNEfVGW--

--===============4076071065733687188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4076071065733687188==--
