Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDF77E72B9
	for <lists+usrp-users@lfdr.de>; Thu,  9 Nov 2023 21:23:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A7D7238520A
	for <lists+usrp-users@lfdr.de>; Thu,  9 Nov 2023 15:23:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699561432; bh=Xtv5LjSPr3sgBhVwq85H2Mf+OC51sLTDihUYlGRBigk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=XNCfR9BF6UZLqGNDi6aj5Pfso1sME572ByURoPv/kwMQMZXqxzASxj5bRmZtEXoD2
	 lZUA+S0WmyUuYtNv8XQmuPUy0k/bd6bAU0DBTf+1kwoDpF9mNhGeS6E1to68tZKMnR
	 2VFPoyrjcgq1/nqIhyF9rFahdupbetFzhFthba9cqVwNLDSdYzesSD7DNC4vXFVSVQ
	 DsJKvuQXJqUoU0eTa7C3taZXcxsqH4B5c681nAkf1DLJSfxfBrWizx9JuUDELZh7LF
	 Wdrnyvexb/wORJy4ouAHcgXmwV/j+st4WH6PCsb6GCSObgsxgrFYmXK44UGyzer3Ir
	 510qnvB+T8SOA==
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 8D6D838515D
	for <usrp-users@lists.ettus.com>; Thu,  9 Nov 2023 15:23:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FMyIMQxf";
	dkim-atps=neutral
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-58a0350c8d9so74942eaf.1
        for <usrp-users@lists.ettus.com>; Thu, 09 Nov 2023 12:23:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699561421; x=1700166221; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k1GV6FKViAW02bIV/iHNxIdMMpozFrVABgzNjANnMdo=;
        b=FMyIMQxfITlyC/sVWqJJwRRisZuX8RW2xRfmI/wPY5t29eLkoPqT8lWoNdGyWjV6T9
         2yLuCDH7hMHRfbGlLUw8u3B7A1GZYKThet1orYHqMFcfSSYTPzuYXMXG79I9acS05QaF
         jSK06x8NWLKAZU9hKAW4k4S6/8iQHTJSdfbCuT9uCDmDHK4d7dLt+8lKFvyE97CR07Pu
         S/WoiX/r2yqScj2C+vIL/zfBnorg7uqUXcyDqkMYC0XhyJ3wkQRsFnSEsxEQGGV5Ii5k
         WwzfZfX5eD22VvmFWbe6QEt2rlOZZCvdRIUO9SC9x7oStScL50DlsXLlAwOtFH5aSLdg
         YCDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699561421; x=1700166221;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=k1GV6FKViAW02bIV/iHNxIdMMpozFrVABgzNjANnMdo=;
        b=eQp25yI0INNKyYGUGo+Pys3iqk7ol9v4KmjX5qNlVpugzOwbvXhGUHTxRqyt7ruMok
         B3T6jsV+Dc9j6XyETioR8pwDZ7rYXkDGQCPzHN+hUYYh7rgoYVk7rOtkir3g6c8w5cGj
         B0HC3LDMe76WKtt4xOvap1Te3SrxuIM/n7GBJGVdR1+Bv1d2b+KMMoPZnZMVWkOrShhy
         uYk8zrL38kSB3N4t5fdzUHFEmQh58MLAE4HBZldokbOW41HufZg2hnfrEpGBxvOE1+EK
         3MPQWl8+hZ+fSNskbTkrDM2eS77l+i86wyHWLPDkI0TTdiYv8St/vTH/i/essjVeRPP0
         oZUw==
X-Gm-Message-State: AOJu0Yz1WT3B/BRJ7e3VwAQteD5OHyxPXVHB6wtCPCZvMDs88/IqzsWb
	Gz47H43YsnnZG+j22Up//tBQRc1gPQo=
X-Google-Smtp-Source: AGHT+IGQro2iUfTNQlTOEDLozcwlZLfg1C/AKUPn7JFLCzgI3xuss0T11A6VY3vR8NLBR0niFJd/DA==
X-Received: by 2002:a05:6358:94a6:b0:16b:7751:32d3 with SMTP id i38-20020a05635894a600b0016b775132d3mr6628430rwb.1.1699561419897;
        Thu, 09 Nov 2023 12:23:39 -0800 (PST)
Received: from [192.168.2.196] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id ku14-20020a05622a0a8e00b004166905aa2asm2213306qtb.28.2023.11.09.12.23.39
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 12:23:39 -0800 (PST)
Message-ID: <205d1113-8d44-4ec1-bebd-c2abd1165697@gmail.com>
Date: Thu, 9 Nov 2023 15:23:29 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <EPj9uOa321eJLJKgODoWf3EI9ZYwoJRL30JSGFZZs@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <EPj9uOa321eJLJKgODoWf3EI9ZYwoJRL30JSGFZZs@lists.ettus.com>
Message-ID-Hash: DQ75HTOGADTTKWBS73FZSTJCXMT2HW3X
X-Message-ID-Hash: DQ75HTOGADTTKWBS73FZSTJCXMT2HW3X
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 not working
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DQ75HTOGADTTKWBS73FZSTJCXMT2HW3X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4529003023889297212=="

This is a multi-part message in MIME format.
--===============4529003023889297212==
Content-Type: multipart/alternative;
 boundary="------------TeWK90il2AIltnkTQ0gM0ErF"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------TeWK90il2AIltnkTQ0gM0ErF
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 09/11/2023 10:35, dixitmn6@gmail.com wrote:
>
> Hello,
>
> The technical details for the issue are as follows:
>
> Host Machine: ubuntu 16.10 laptop (with lan to usb converter) with uhd=20
> drivers with version UHD_4.4.0
>
I am astonished that you were able to build UHD 4.4 on Ubuntu 16.10 --=20
it was released 7 years ago, and reached EOL
 =C2=A0 2.5 years ago.=C2=A0 Consider upgrading.=C2=A0 Seriously.

> USRP X310: The USRP has been rarely used. Previously the green light=20
> used to blink on the SFP0 port, now it does not. The USRP x310 is=20
> programmed with SFP0 as 1GB and SFP1 as 10GB.
>
> The SFP port has been purchased as accordance from here=20
> <https://kb.ettus.com/X300/X310#Guidance_on_10Gb_SFP.2B_to_RJ45_Adapter=
s>.=20
> The SFP-10G-T with specs (10GBASE-T-SFP+ 30m) maybe this one=20
> https://www.fs.com/de-en/products/66612.html
>
Since the X310 does NOT do autonegotiation, it's entirely probably that=20
your SFP module on the X310 end won't work.=C2=A0 IN ADDITION.
 =C2=A0 Most lan-to-USB converters cannot actually support 1G rates, and =
ALL=20
OF THEM for USB-2.0 will only support 100Mbit, which
 =C2=A0 the X310 absolutely, positively, does not support.


> The SFP 10G is being used for the SFP0(1gb one) - I think higher one=20
> should not be an issue for lower data rate. LAN cable has 1gb data rate=
.
>
> =E2=80=9Clsusb=E2=80=9D is performed since the lan to usb converter is =
being used.
>
> Initially, the USRP was not being detected and the ip address could=20
> not be assigned to the host machine. Hence, via JTAG the USRP was=20
> programmed in default fashion.
>
> Now, the USRP gets detected and the IP address of host is set to be=20
> 192.168.10.1. However, pinging is not successful. The error is=20
> =E2=80=9Cdestination is not reachable.=E2=80=9D
>
> Now, the issue is mostly a networking issue. But having tested=20
> everything related to the networking as mentioned in the=20
> documentation, the green light over the SFP0 does not work and the=20
> pinging is not successful. Need help upon this.
>
Your SFP module is probably not appropriate, and your USB-to-LAN adaptor=20
probably doesn't support 1GiGe.


>
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------TeWK90il2AIltnkTQ0gM0ErF
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 09/11/2023 10:35, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:dixitmn6@gmail.com">dixitmn6@gmail.co=
m</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:EPj9uOa321eJLJKgODoWf3EI9ZYwoJRL30JSGFZZs@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello,</p>
      <p>The technical details for the issue are as follows:</p>
      <p>Host Machine: ubuntu 16.10 laptop (with lan to usb converter)
        with uhd drivers with version UHD_4.4.0</p>
    </blockquote>
    I am astonished that you were able to build UHD 4.4 on Ubuntu 16.10
    -- it was released 7 years ago, and reached EOL<br>
    =C2=A0 2.5 years ago.=C2=A0 Consider upgrading.=C2=A0 Seriously.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:EPj9uOa321eJLJKgODoWf3EI9ZYwoJRL30JSGFZZs@lists.ettus.com">
      <p>USRP X310: The USRP has been rarely used. Previously the green
        light used to blink on the SFP0 port, now it does not. The USRP
        x310 is programmed with SFP0 as 1GB and SFP1 as 10GB. </p>
      <p class=3D"">The SFP port has been purchased as accordance from <a
href=3D"https://kb.ettus.com/X300/X310#Guidance_on_10Gb_SFP.2B_to_RJ45_Ad=
apters"
          title=3D"" moz-do-not-send=3D"true">here</a>. The SFP-10G-T wit=
h
        specs (10GBASE-T-SFP+ 30m) maybe this one <a
          href=3D"https://www.fs.com/de-en/products/66612.html" title=3D"=
"
          moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https:=
//www.fs.com/de-en/products/66612.html</a></p>
    </blockquote>
    Since the X310 does NOT do autonegotiation, it's entirely probably
    that your SFP module on the X310 end won't work.=C2=A0 IN ADDITION.<b=
r>
    =C2=A0 Most lan-to-USB converters cannot actually support 1G rates, a=
nd
    ALL OF THEM for USB-2.0 will only support 100Mbit, which<br>
    =C2=A0 the X310 absolutely, positively, does not support.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:EPj9uOa321eJLJKgODoWf3EI9ZYwoJRL30JSGFZZs@lists.ettus.com">
      <p>The SFP 10G is being used for the SFP0(1gb one) - I think
        higher one should not be an issue for lower data rate. LAN cable
        has 1gb data rate.</p>
      <p>=E2=80=9Clsusb=E2=80=9D is performed since the lan to usb conver=
ter is being
        used.</p>
      <p>Initially, the USRP was not being detected and the ip address
        could not be assigned to the host machine. Hence, via JTAG the
        USRP was programmed in default fashion. </p>
      <p>Now, the USRP gets detected and the IP address of host is set
        to be 192.168.10.1. However, pinging is not successful. The
        error is =E2=80=9Cdestination is not reachable.=E2=80=9D</p>
      <p>Now, the issue is mostly a networking issue. But having tested
        everything related to the networking as mentioned in the
        documentation, the green light over the SFP0 does not work and
        the pinging is not successful. Need help upon this.</p>
    </blockquote>
    Your SFP module is probably not appropriate, and your USB-to-LAN
    adaptor probably doesn't support 1GiGe.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:EPj9uOa321eJLJKgODoWf3EI9ZYwoJRL30JSGFZZs@lists.ettus.com">
      <p><br>
      </p>
      <p><br>
      </p>
      <p><br>
      </p>
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
    <br>
  </body>
</html>

--------------TeWK90il2AIltnkTQ0gM0ErF--

--===============4529003023889297212==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4529003023889297212==--
