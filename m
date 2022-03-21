Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E41404E2A43
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 15:14:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D049D3852C5
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 10:14:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="maTK5SVv";
	dkim-atps=neutral
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 2609538411C
	for <USRP-users@lists.ettus.com>; Mon, 21 Mar 2022 10:11:17 -0400 (EDT)
Received: by mail-qt1-f182.google.com with SMTP id v14so11981106qta.2
        for <USRP-users@lists.ettus.com>; Mon, 21 Mar 2022 07:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=CTrq9iPtN2EG9gl45TszQOUHAofdXzQxllMkhdPtVf8=;
        b=maTK5SVvb6lryJ1724azrYhU6EJMHhVzV/Ap5O2pTbAgRRmRN612oZGyOTj/B/UIRX
         kq1EQsRkuHPSOPSdO8m67/XJ/8+ZBD8ICX57sgBfBHQW2C0Kw7spTqeR7nKayNY7EB/m
         I8+M5FfXdpI/g0DOxiMsc3MwXAIHrcNMHyq+44cUi53b4aRssTY2dGUPBq5qpbjALe+b
         Tg83fg54pER4obX4dYWZpiDeblge7O9hkuzPnu+KptyQdTrHtDGSSs66e5iAZzIm9lty
         fg3NMT7XEX2Ljx3kbRKSn1lCvopi40l73GMf/HQJe8/y3O7v5IDKqyjaHx3rTey5Xxnc
         l3Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=CTrq9iPtN2EG9gl45TszQOUHAofdXzQxllMkhdPtVf8=;
        b=QAb4WocWc23K8/btezQ1/+A9oacQZjOLdW3/4h3TyPKBkOTXbd8FSsXTdJwg76qAO3
         s633asaCwina9EG06gcc5MieQp7TDAqDxazS3Q7EPcUd7RNaAsTt8cl6mPnMylOqen4o
         nNDrC18Okp/gl3wV+jxNNBzDB+OhhCDlIJe0EM06HOv6G1jd9SzsmJ2Xyp54mp6oZvEb
         AKoqwItWrR9v1C1cu/cSKFQfP8piMSFgszChKeKcCJjo0fijDkgKPrDH9WF8x+d5m7SO
         3mym/JyJMwKX1mFmr31uN0PoEjRVvDUkf8rkwIC+IasQc/eEtZGWVoN41d+OOL0t+a7b
         AIHQ==
X-Gm-Message-State: AOAM5310tUfL21zt9RkFGOx9qO/fWwmONwfDZTTzF1VrrXI3EwzvDO5N
	Bgnb8p2qHCfZ5zIqWxTeJx9DGtcYgR0=
X-Google-Smtp-Source: ABdhPJzorTZElzWN13AEpQ3/FZG8ezsBQSoi1z5Hj8vqD9PVtWY+1pgZKleSikQxKbELFZ9/iNTsqg==
X-Received: by 2002:a05:622a:1c8:b0:2e1:cbdb:a91a with SMTP id t8-20020a05622a01c800b002e1cbdba91amr16240543qtw.495.1647871876417;
        Mon, 21 Mar 2022 07:11:16 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.gmail.com with ESMTPSA id d126-20020a37b484000000b0067e60283d08sm4480111qkf.40.2022.03.21.07.11.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Mar 2022 07:11:15 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 21 Mar 2022 10:11:14 -0400
Message-Id: <77C9127F-86E2-4BC0-9ED0-C477B0F4A586@gmail.com>
References: <AM8P250MB010775DAB5F976813E57AE599B169@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
In-Reply-To: <AM8P250MB010775DAB5F976813E57AE599B169@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
To: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>
X-Mailer: iPhone Mail (19D52)
Message-ID-Hash: 5O6SFTL5OB5FN5A3HGCUUHD2XUSBSGUA
X-Message-ID-Hash: 5O6SFTL5OB5FN5A3HGCUUHD2XUSBSGUA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [X410] Change hostname
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5O6SFTL5OB5FN5A3HGCUUHD2XUSBSGUA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8546948640864032892=="


--===============8546948640864032892==
Content-Type: multipart/alternative; boundary=Apple-Mail-B02B3645-CB5B-4CB4-BFC1-065DABBFB16D
Content-Transfer-Encoding: 7bit


--Apple-Mail-B02B3645-CB5B-4CB4-BFC1-065DABBFB16D
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Try looking under /data/etc/hostname

That=E2=80=99s something that is peculiar to mender-controlled filesystems.=20=


Sent from my iPhone

> On Mar 21, 2022, at 4:33 AM, Tobias Kronauer <tobias.kronauer@barkhausenin=
stitut.org> wrote:
>=20
> =EF=BB=BF
> I asked our IT department, and they said no....
>=20
> Von: Marcus D. Leech <patchvonbraun@gmail.com>
> Gesendet: Donnerstag, 17. M=C3=A4rz 2022 14:41
> An: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> Betreff: [USRP-users] Re: [X410] Change hostname
> =20
>> On 2022-03-17 06:24, Tobias Kronauer wrote:
>> Hi altogether,
>>=20
>> I have a rather dumb question: how can I change the hostname of the USRP?=
 According to the docs (being the standard way of changing host names in gen=
eral), I changed the file /etc/hostname and rebooted. However, after rebooti=
ng, the content of /etc/hostname is changed to its defaults.... Using hostna=
me or hostnamectl in the command line does not work either. Can you help me o=
n that?
>>=20
>> I am using a X410.
>>=20
>> Thanks in advance,
>> Tobias
>>=20
>>=20
>> Barkhausen Institut=20
>> www.barkhauseninstitut.org=20
> IF it's setup for DHCP, it's probably that you're getting your hostname fr=
om the DHCP server?
>=20
>=20
>=20
>=20
> Barkhausen Institut=20
> www.barkhauseninstitut.org=20
>=20
> Barkhausen Institut gGmbH | Sitz: W=C3=BCrzburger Stra=C3=9Fe 46, 01187 Dr=
esden, Germany | Registergericht: Amtsgericht Dresden, HRB 37267 | Gesch=C3=A4=
ftsf=C3=BChrer: Prof. Dr. Gerhard Fettweis, Dr. Tim Hentschel | Vorsitzender=
 der Gesellschafterdelegation: Dr. Andreas Handschuh=20
>=20
> Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter=
: https://barkhauseninstitut.org/data-privacy=20
>=20
> This email and any attachments are intended only for the person to whom th=
is email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conten=
ts to anyone, but notify the sender by return email and delete this email (a=
nd any attachments) from your system. Information on data protection and pro=
cessing of your personal information: https://barkhauseninstitut.org/data-pr=
ivacy=20
>=20

--Apple-Mail-B02B3645-CB5B-4CB4-BFC1-065DABBFB16D
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Try looking under /data/etc/hostname<div><b=
r></div><div>That=E2=80=99s something that is peculiar to mender-controlled f=
ilesystems.&nbsp;<br><div><br><div dir=3D"ltr">Sent from my iPhone</div><div=
 dir=3D"ltr"><br><blockquote type=3D"cite">On Mar 21, 2022, at 4:33 AM, Tobi=
as Kronauer &lt;tobias.kronauer@barkhauseninstitut.org&gt; wrote:<br><br></b=
lockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I asked our IT department, and they said no....<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt=
; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D=
"Calibri, sans-serif" color=3D"#000000"><b>Von:</b> Marcus D. Leech &lt;patc=
hvonbraun@gmail.com&gt;<br>
<b>Gesendet:</b> Donnerstag, 17. M=C3=A4rz 2022 14:41<br>
<b>An:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>=

<b>Betreff:</b> [USRP-users] Re: [X410] Change hostname</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 2022-03-17 06:24, Tobias Kronauer wrote:=
<br>
</div>
<blockquote type=3D"cite">
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Hi altogether,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif; font-size:12pt; color:rgb(0,0,0)">
I have a rather dumb question: how can I change the hostname of the USRP? Ac=
cording to the docs (being the standard way of changing host names in genera=
l), I changed the file /etc/hostname and rebooted. However, after rebooting,=
 the content of /etc/hostname
 is changed to its defaults.... Using hostname or hostnamectl in the command=
 line does not work either. Can you help me on that?</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif; font-size:12pt; color:rgb(0,0,0)">
I am using a X410.<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Thanks in advance,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Tobias<br>
</div>
<div>
<p style=3D"margin-top: 0px; margin-bottom: 0px;font-size:11pt; font-family:=
Calibri,sans-serif,serif,&quot;EmojiFont&quot;; margin:0px">
<br>
<br>
<b>Barkhausen Institut</b> <br>
<a class=3D"x_moz-txt-link-abbreviated" href=3D"http://www.barkhauseninstitu=
t.org">www.barkhauseninstitut.org</a>
<br>
</p>
</div>
</blockquote>
IF it's setup for DHCP, it's probably that you're getting your hostname from=
 the DHCP server?<br>
<br>
<br>
</div>
</div>
<div>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot;=
EmojiFont&quot;; margin: 0px;">
<br>
<br>
<b>Barkhausen Institut</b> <br>
www.barkhauseninstitut.org <br>
<br>
</p>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot;=
EmojiFont&quot;; margin: 0px;">
<span style=3D"font-size:9pt;" lang=3D"de-DE">Barkhausen Institut gGmbH | Si=
tz: W=C3=BCrzburger Stra=C3=9Fe 46, 01187 Dresden, Germany | Registergericht=
: Amtsgericht Dresden, HRB 37267 | Gesch=C3=A4ftsf=C3=BChrer: Prof. Dr. Gerh=
ard Fettweis, Dr. Tim Hentschel | Vorsitzender der Gesellschafterdelegation:=

 Dr. Andreas Handschuh <br>
<br>
Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter: h=
ttps://barkhauseninstitut.org/data-privacy
<br>
<br>
</span><span style=3D"font-size:9pt;" lang=3D"en-US">This email and any atta=
chments are intended only for the person to whom this email is addressed and=
 may contain confidential and/or privileged information. If you received thi=
s email in error, please do not disclose
 the contents to anyone, but notify the sender by return email and delete th=
is email (and any attachments) from your system. Information on data protect=
ion and processing of your personal information: https://barkhauseninstitut.=
org/data-privacy
<br>
<br>
</span></p>
</div>


</div></blockquote></div></div></body></html>=

--Apple-Mail-B02B3645-CB5B-4CB4-BFC1-065DABBFB16D--

--===============8546948640864032892==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8546948640864032892==--
