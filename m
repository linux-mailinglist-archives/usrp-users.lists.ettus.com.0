Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E885C38B195
	for <lists+usrp-users@lfdr.de>; Thu, 20 May 2021 16:21:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B793D385972
	for <lists+usrp-users@lfdr.de>; Thu, 20 May 2021 10:21:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="D7dmHh7r";
	dkim-atps=neutral
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id A75633838D4
	for <USRP-users@lists.ettus.com>; Thu, 20 May 2021 10:20:19 -0400 (EDT)
Received: by mail-qt1-f181.google.com with SMTP id s12so3657922qta.3
        for <USRP-users@lists.ettus.com>; Thu, 20 May 2021 07:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=YSQVSAE/AzaTnb8SxOOUs5mtrH1W/105TSdBGkl93+0=;
        b=D7dmHh7rtCi1rzI/7m1mQS7rVi+edGxkL6jGpaZrT7Fryri+EmlpLQ0ajrE+bt9OJw
         KqGKA90+9aHczSxFhSgWI2Tx1fuJ4A0WMI3sESYXm3S2OhZ2U4+68gt9CLSLNahAjnWQ
         vGGHuqV28i0K+9fKt01XDXR4lPS4SVPzEmaPdINiAKdGXP9WvCEb4UqLo8tDBXPxZ7LS
         WsG6Ee8T1Nedc0++sa89pI2E4cA0IkaBDTt8+3nvpKNZfrYuMCKhsotoUvBSoXPo77u6
         BVesdnM2+U3UaEE5o5xOHsrGyn9eAoKYEEf/B+nKto57egrI2WmOChsTOrla1SR7ZyDQ
         6gwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=YSQVSAE/AzaTnb8SxOOUs5mtrH1W/105TSdBGkl93+0=;
        b=Os8Gx9nasNxiLEwSHPtqQjjiYhYrUCkyQwxhf2uiS67M0n1UpK2h4K/nu6/T7yqEHE
         4AgHXwtA8k1vYfW4JL2kLFyTdXEtPyC/UZJNjTYfhhRgs7azbk1QriKglJEHMVu3QhYT
         fHRWRYo/z7QdBi3WwC/Lwc//pN9Ih1m7D7AC7F6eTafYjB0wEHh8UZK4ZVmKEDetUd9F
         VAYRJaX0NOnnzPAHQnBwDTR2Dv31NyfFaZEIzw/DQHHqsaE9JOUAqmwdNRzCRSreQLB+
         9Jl3ptifvrzrQOuOz/bNT0AwnC5MSSjm0csHNLSNPVbYO+uTQuJ1QhpTXdIDEdtDdzvj
         1cJg==
X-Gm-Message-State: AOAM530qg+Fhy74cJlGeWEMPNFXXCVTyijQybpjsaMSZeUV8jpuk/Gvy
	391uiurz3yDmRAFGYJ0diNDjAaIMnqI=
X-Google-Smtp-Source: ABdhPJwwjOdIzQMUW1FaioNMeZ5N5jB3iMqXzzbh50NVxC0EdvgZPv65JCm8cpgUD761aV+XZXouoA==
X-Received: by 2002:ac8:5bd5:: with SMTP id b21mr5204264qtb.317.1621520419012;
        Thu, 20 May 2021 07:20:19 -0700 (PDT)
Received: from [192.168.2.132] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id b123sm1333645qke.87.2021.05.20.07.20.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 May 2021 07:20:18 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 20 May 2021 10:20:17 -0400
Message-Id: <EA92F6CC-A8E4-4DFF-BDF4-C80728862ECE@gmail.com>
References: <d996ed7c371b4d60aed6ac547b48f687@kth.se>
In-Reply-To: <d996ed7c371b4d60aed6ac547b48f687@kth.se>
To: Seyed Samie Mostafavi <ssmos@kth.se>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: TA6CEB7HNTMEWF5SCXRU2CMWXOEGUMWL
X-Message-ID-Hash: TA6CEB7HNTMEWF5SCXRU2CMWXOEGUMWL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Does E320 in network mode mount the SD card?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TA6CEB7HNTMEWF5SCXRU2CMWXOEGUMWL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6762717366273352985=="


--===============6762717366273352985==
Content-Type: multipart/alternative; boundary=Apple-Mail-891FCA26-681D-44B9-85A4-7372299A51E0
Content-Transfer-Encoding: 7bit


--Apple-Mail-891FCA26-681D-44B9-85A4-7372299A51E0
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Since this system runs off of the SD card, yes.=20

Sent from my iPhone

> On May 20, 2021, at 7:19 AM, Seyed Samie Mostafavi <ssmos@kth.se> wrote:
>=20
> =EF=BB=BF
> Hi,
>=20
>=20
>=20
> Does anyone know whether the default NI petalinux on the E320 (in network m=
ode) mounts the SD card or not?
>=20
> I am asking this because I need to change the BOOT.bin and switch to anoth=
er design from the host. I cannot remove the old SD card and insert a new on=
e.
>=20
>=20
>=20
> Best,
>=20
> Samie
>=20
>=20
>=20
>=20
> =20
> Seyed Samie Mostafavi
> Doctoral Student
>=20
> KTH
> School of electrical engineering and computer science (EECS)
> Department of information systems and engineering (ISE)
> Malvinas v=C3=A4g 10, 100 44 Stockholm
> ssmos@kth.se
> =20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-891FCA26-681D-44B9-85A4-7372299A51E0
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Since this system runs off of the SD card, y=
es.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr">=
<br><blockquote type=3D"cite">On May 20, 2021, at 7:19 AM, Seyed Samie Mosta=
favi &lt;ssmos@kth.se&gt; wrote:<br><br></blockquote></div><blockquote type=3D=
"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font-=
family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hi,</p>
<p><br>
</p>
<p>Does anyone know whether the default NI petalinux on the E320 (in network=
 mode) mounts the SD card or not?</p>
<p>I am asking this because I need to change the BOOT.bin and switch to anot=
her design&nbsp;from the host.&nbsp;I cannot&nbsp;remove the old SD card and=
 insert&nbsp;a new one.</p>
<p><br>
</p>
<p>Best,</p>
<p>Samie</p>
<p><br>
</p>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:; margin:0">
<hr>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; fon=
t-family:Calibri,sans-serif">
<span style=3D"font-size:12pt; font-family:Arial,sans-serif; color:rgb(93,93=
,93)"><img border=3D"0" width=3D"70" height=3D"70" id=3D"_x0000_i1025" alt=3D=
"Kth Logo" style=3D"width: 0.7291in; height: 0.7291in; user-select: none;" s=
rc=3D"http://www.kth.se/delad/grafik/kth_logo.jpg" data-unique-identifier=3D=
""></span><span style=3D"font-size:12pt; font-family:Arial,sans-serif; color=
:rgb(93,93,93)"></span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; fon=
t-family:Calibri,sans-serif">
<span style=3D"font-size:12pt; font-family:Arial,sans-serif; color:rgb(93,93=
,93)">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 1.5pt; font-size:11pt; font-f=
amily:Calibri,sans-serif">
<span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(93,9=
3,93)">Seyed Samie Mostafavi</span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 6pt; font-size:11pt; font-fam=
ily:Calibri,sans-serif">
<span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(93,9=
3,93)">Doctoral Student</span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 1.5pt; font-size:11pt; font-f=
amily:Calibri,sans-serif">
<span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(93,9=
3,93)">KTH</span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 1.5pt; font-size:11pt; font-f=
amily:Calibri,sans-serif">
<i><span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(9=
3,93,93)">School of electrical engineering and computer science (EECS)</span=
></i><span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb=
(93,93,93)"></span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 1.5pt; font-size:11pt; font-f=
amily:Calibri,sans-serif">
<i><span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(9=
3,93,93)">Department of information systems and engineering (ISE)</span></i>=
</p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 1.5pt; font-size:11pt; font-f=
amily:Calibri,sans-serif">
<span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(93,9=
3,93)">Malvinas v=C3=A4g 10, 100 44 Stockholm</span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; fon=
t-family:Calibri,sans-serif">
<span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(93,9=
3,93)"><a style=3D"color:rgb(4,74,145); text-decoration:underline" id=3D"LPN=
oLP">ssmos@kth.se</a></span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; fon=
t-family:Calibri,sans-serif">
&nbsp;</p>
</div>
</div>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-891FCA26-681D-44B9-85A4-7372299A51E0--

--===============6762717366273352985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6762717366273352985==--
