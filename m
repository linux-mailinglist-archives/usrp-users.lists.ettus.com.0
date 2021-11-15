Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 188DA451224
	for <lists+usrp-users@lfdr.de>; Mon, 15 Nov 2021 20:30:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E510384702
	for <lists+usrp-users@lfdr.de>; Mon, 15 Nov 2021 14:30:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PcblEcQt";
	dkim-atps=neutral
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id A96CB3840FF
	for <USRP-users@lists.ettus.com>; Mon, 15 Nov 2021 14:29:31 -0500 (EST)
Received: by mail-qv1-f43.google.com with SMTP id i13so12102409qvm.1
        for <USRP-users@lists.ettus.com>; Mon, 15 Nov 2021 11:29:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=oWhOsbWx5st+hWA6h5GDmU8v5qVin9Np+ubU03aoFdQ=;
        b=PcblEcQtreA4nvUUiszvwr2VJ8KXkUTHunNKpCLKyb1qP4RyeQbZB85Ic6/Iv4sXhv
         wi4EB+kFnTDf7Y6HJQqF4EoXNYoYJYFhZZAl1rFqIdKzw8Pfo3W8Zz0ddXLD+wR1JlaU
         QSYxFEVyKSmiHPoW2d8ph5BcR8K1wqC2H8Qk6c6GcAwgmfbsh07sZ1GhnANGwwhM5QTh
         XABH1BYSF6/PcbY95BUjxYqDxXY3s2fsggp5/ZpLhIgQHK9Hg5iovpW/HEhirr0q8+SX
         8Tfp7NoK2N6qZW6c9cY+huVWZUk9t2VuPOFU+H5vDJZ4saxtBU33OGz78xutNA3BvbNO
         tIXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=oWhOsbWx5st+hWA6h5GDmU8v5qVin9Np+ubU03aoFdQ=;
        b=KS9UXjY/nLRw2WFX5dQCwhocmnOlDTqpLG3MLrrJTNGyYh08UajyVokMU3z7r1TMgj
         tseoYX7HkvuK3hbE0v6GPoQRXR0FbTo8lC7OQBP8m1kYaYMdG8A/fM5/lrXN0aom07J7
         O0il4xDFHS+YDnjqZ2Oue62B8zLb115m7XknQxB73fZRjlKmH3zRcE104WQyQOaI0MTn
         R14su6qTS/N+NxkNK5JyfUVuGQBSSiI6yoNF17sIAoDdj314l/Pq0THKHVyG4FB/4ZBD
         i809F4UG5Wgij/97anCm3RG62MGRdMgnR0y4QKGfXeN0+fk+Yp+77Skc9BriHS6+tOIa
         T2fg==
X-Gm-Message-State: AOAM533IgfBaMTKh7q71BZgvGKl+7nLj6745rFAkIPijW6QnhwMWQuEv
	n4rl3mcyYgkzQJ1DkkJGp6U=
X-Google-Smtp-Source: ABdhPJz5SCecADwUEjvooWDQbXajswawvgVE9LsH9GY3+X1OMFGrqCKKf1Tu7PDFXyLgYoLMGTkNhQ==
X-Received: by 2002:a05:6214:1453:: with SMTP id b19mr39417271qvy.20.1637004571072;
        Mon, 15 Nov 2021 11:29:31 -0800 (PST)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.gmail.com with ESMTPSA id x16sm6762888qkp.67.2021.11.15.11.29.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Nov 2021 11:29:30 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 15 Nov 2021 14:29:29 -0500
Message-Id: <820304BF-7161-41D2-8206-FF2DA756560E@gmail.com>
References: <009601d7da55$5f0027c0$1d007740$@gmail.com>
In-Reply-To: <009601d7da55$5f0027c0$1d007740$@gmail.com>
To: zhang.weit3@gmail.com
X-Mailer: iPhone Mail (18H107)
Message-ID-Hash: AFNPYRZYXIQGAOQVV252O3RK5ICXXDXK
X-Message-ID-Hash: AFNPYRZYXIQGAOQVV252O3RK5ICXXDXK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OTW format in B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AFNPYRZYXIQGAOQVV252O3RK5ICXXDXK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7945189028235047564=="


--===============7945189028235047564==
Content-Type: multipart/alternative; boundary=Apple-Mail-CD8AA17D-74E0-4C10-96CD-D1E422FA9275
Content-Transfer-Encoding: 7bit


--Apple-Mail-CD8AA17D-74E0-4C10-96CD-D1E422FA9275
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Yes it can. Although there was briefly a version of UHD where it was broken.=
=20

Also the unpacker will consume more CPU cycles than for sc16. So use it only=
 if USB bandwidth is your dominating issue.=20

Sent from my iPhone

> On Nov 15, 2021, at 2:17 PM, zhang.weit3@gmail.com wrote:
>=20
> =EF=BB=BF
> Hi,
> =20
> I am playing with one B210. I just want to check whether B210 can support s=
c12 as over-the-wire format. Thank you for the help in advance!
> =20
> =20
> =20
> West
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-CD8AA17D-74E0-4C10-96CD-D1E422FA9275
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Yes it can. Although there was briefly a ve=
rsion of UHD where it was broken.&nbsp;<div><br></div><div>Also the unpacker=
 will consume more CPU cycles than for sc16. So use it only if USB bandwidth=
 is your dominating issue.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone=
</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Nov 15, 2021, at 2:1=
7 PM, zhang.weit3@gmail.com wrote:<br><br></blockquote></div><blockquote typ=
e=3D"cite"><div dir=3D"ltr">=EF=BB=BF<meta http-equiv=3D"Content-Type" conte=
nt=3D"text/html; charset=3Dus-ascii"><meta name=3D"Generator" content=3D"Mic=
rosoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:\7B49\7EBF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@\7B49\7EBF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--><div class=3D"WordSection1"><p class=3D"Ms=
oNormal">Hi,<o:p></o:p></p><p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p><p cl=
ass=3D"MsoNormal">I am playing with one B210. I just want to check whether B=
210 can support sc12 as over-the-wire format. Thank you for the help in adva=
nce!<o:p></o:p></p><p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p><p class=3D"M=
soNormal"><o:p>&nbsp;</o:p></p><p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p><=
p class=3D"MsoNormal">West<o:p></o:p></p></div><span>_______________________=
________________________</span><br><span>USRP-users mailing list -- usrp-use=
rs@lists.ettus.com</span><br><span>To unsubscribe send an email to usrp-user=
s-leave@lists.ettus.com</span><br></div></blockquote></div></body></html>=

--Apple-Mail-CD8AA17D-74E0-4C10-96CD-D1E422FA9275--

--===============7945189028235047564==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7945189028235047564==--
