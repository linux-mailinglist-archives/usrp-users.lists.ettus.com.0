Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF709C1CAF
	for <lists+usrp-users@lfdr.de>; Fri,  8 Nov 2024 13:11:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5D07D38633E
	for <lists+usrp-users@lfdr.de>; Fri,  8 Nov 2024 07:11:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731067886; bh=3TD2WMkeMgKMXxMI9zpJoEKmaoye6lFN8K+1GqgnrU4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=QonJU5KE5PxvHPCmUCo+YPvbjykqmxBE6SkZ/1wX9O7YZEz9ez4PmlH2Hl4GLQHZc
	 iTljt1DjZviGlusiPOdTumjAgITV7GGZNPfZ496MHlQdKbSF4CIXGyr0QbO0bYxvwR
	 c23kWuRespHYw8hjwvVoazyqxVOfmuvnoXpO4lxow3xjqH5H9Z50RiXB6EzSQUHG7H
	 30eFKcIW5JD80dZXyus+H6xAhOP1nXTwa2TE+6smbtD9vsf8HJnoq1pIFxGQnk1Zyj
	 wa6RTIbmUaNCVz2EwiEs6Xn6mJhDBiXsKR4vjXoJjGmS5nf9UHe+sUz08UTTy0Q8CI
	 LcRZDV30Z7EqQ==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 4FEA6386320
	for <usrp-users@lists.ettus.com>; Fri,  8 Nov 2024 07:10:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fEREQC8D";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5cf0810f5f9so941501a12.0
        for <usrp-users@lists.ettus.com>; Fri, 08 Nov 2024 04:10:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731067845; x=1731672645; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oSYThbuaxOK1g32pgbF0PWpPuxI1JqAQ+3ktP8RY4FM=;
        b=fEREQC8DGUy/q2PEPsslLId/1PLS+OHIzpJ7ZUlmG6VMswh5wwszMA+v0AopFblVzq
         zx3V76VGkxOJLPbzVH2fSICbvZDOh/PMit+0JvwIW/To0s1lRtrlSALN/zBQx6Npe9mC
         +NW+4uJQ1MAFFb+FUQhXbS1yYgJX4AyoMZXeYn0pJSBdOHhj6xnFv7VxrY0Oxx1v+Uz6
         23PM7MbpIV3HelMWI9/6nuDbVIqiIrX7b9LxuHlvT2yhWHjUKLTxWBifXWPAREk+dUnp
         /XmB3boN7rMlg2tNzFup/+djFu9gQpAfY0P5dgTYCgMy63vsO3teDaZp285zUd6o56SY
         CIug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731067845; x=1731672645;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oSYThbuaxOK1g32pgbF0PWpPuxI1JqAQ+3ktP8RY4FM=;
        b=QI7Qvcb8NbXAdeGvain1WXndoG7Nw1SzAHsXjtnYi5todDQ4GkmQmwHJknmh3vRBF9
         gc4naDQSKNTc6lDN0cN8S91W5yKF1ZdcDm8z4Qh7c37kwNPm41iHp71YWQ9yFctJMWga
         oqXRtuApdBoN+zHvv6BRfp8X92rr51Jsj+uhJ553ZW81ipwZIgvgv0LDFDHBR5oXKEPU
         mtiCEdsjJQWDOUpS39+EQJoW1v+vIWD/rY1mS8cNtiFbeOzSL0S9NjCzsdUpepNwIRDV
         DhB4z72BQKedbk5XGKA7kpfuUey1JpdfiSzDRjPozzIEzl1RY9F+LUComVBTO4VkhV4U
         w2+Q==
X-Gm-Message-State: AOJu0YzDfn4Q4tBwPjQ5oo4RPLlQMbPRLja2iugeZfSPhNqEnIAGSi6n
	i/9VBtInsyweQ6LGi41tzBnW+z6BY1qXRgJdOF/RXU7Etvg8gawl5lKb2F4mtqt+11RNDOF6C4q
	KYA4JL53tEp/NRATYRfWp2XCLH1c=
X-Google-Smtp-Source: AGHT+IHuViPyDxwR1VZ5yZa6jEUHcYVHgfISEXAQswTsBAQuiVw70m51uXuKV/xiy62IXNTsAXhMrDuI9+pdw6OTISY=
X-Received: by 2002:a05:6402:2109:b0:5cf:3cb:578a with SMTP id
 4fb4d7f45d1cf-5cf0a2fb8d7mr3090280a12.3.1731067844733; Fri, 08 Nov 2024
 04:10:44 -0800 (PST)
MIME-Version: 1.0
References: <PN3P287MB02912CA9923EA294EFE33AAA935D2@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
In-Reply-To: <PN3P287MB02912CA9923EA294EFE33AAA935D2@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
From: hui cj <cjh416593819@gmail.com>
Date: Fri, 8 Nov 2024 20:10:32 +0800
Message-ID: <CAEL-RA3bOvTjbUJW_efAR9fDu_P2VYrVLFgBO9kDW-7dBxfF4Q@mail.gmail.com>
To: Nidhi Panda <nidhi.panda@cyronics.com>
Message-ID-Hash: F5S3LODIRY4XLR5X5G7F7MH3EPOVLKJK
X-Message-ID-Hash: F5S3LODIRY4XLR5X5G7F7MH3EPOVLKJK
X-MailFrom: cjh416593819@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Replay block use for continuously stream data.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F5S3LODIRY4XLR5X5G7F7MH3EPOVLKJK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6162133842795695559=="

--===============6162133842795695559==
Content-Type: multipart/alternative; boundary="000000000000f7b50e062665a3a5"

--000000000000f7b50e062665a3a5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The answer is yes.

https://github.com/EttusResearch/uhd/issues/793

Nidhi Panda <nidhi.panda@cyronics.com> =E4=BA=8E2024=E5=B9=B411=E6=9C=888=
=E6=97=A5=E5=91=A8=E4=BA=94 19:10=E5=86=99=E9=81=93=EF=BC=9A

> Hello all,
>
> I am using USRP x300 device. I want to receive data continuously store it
> on ddr memory and transmit it after variable time delay. I know there wil=
l
> be constraint on the maximum time (because of ddr size) I can wait before
> starting transmission and I am ok with it. But after a fixed time delay t=
he
> reception and transmission must be continuous.
>
> I read about Replay block and as per my understanding we can store the
> received samples for a fixed time duration and transmit it in a continuou=
s
> mode or a fix number of samples once.
>
>
>    1. Is it possible to continuously receive and transmit at the same
>    time using replay block. How to do that?
>
> Regards,
> Nidhi
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f7b50e062665a3a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The answer is yes.</div><div><br></div><a href=3D"htt=
ps://github.com/EttusResearch/uhd/issues/793">https://github.com/EttusResea=
rch/uhd/issues/793</a></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">Nidhi Panda &lt;<a href=3D"mailto:nidhi.panda@cyronic=
s.com">nidhi.panda@cyronics.com</a>&gt; =E4=BA=8E2024=E5=B9=B411=E6=9C=888=
=E6=97=A5=E5=91=A8=E4=BA=94 19:10=E5=86=99=E9=81=93=EF=BC=9A<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-496335875360=
4350175">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hello all,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I am using USRP x300 device. I want to receive data continuously store it o=
n ddr memory and transmit it after variable time delay. I know there will b=
e constraint on the maximum time (because of ddr size) I can wait before st=
arting transmission and I am ok
 with it. But after a fixed time delay the reception and transmission must =
be continuous.=C2=A0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I read about Replay block and as per my understanding we can store the rece=
ived samples for a fixed time duration and transmit it in a continuous mode=
 or a fix number of samples once.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<ol start=3D"1" style=3D"list-style-type:decimal">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div>Is it possible to continuously receive and transmit at the same time u=
sing replay block. How to do that?</div>
</li></ol>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Regards,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Nidhi<br>
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000f7b50e062665a3a5--

--===============6162133842795695559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6162133842795695559==--
