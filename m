Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BF93E8809
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 04:36:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F3C6838478D
	for <lists+usrp-users@lfdr.de>; Tue, 10 Aug 2021 22:36:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WH3emPKi";
	dkim-atps=neutral
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id E255D384082
	for <USRP-users@lists.ettus.com>; Tue, 10 Aug 2021 22:36:11 -0400 (EDT)
Received: by mail-qk1-f171.google.com with SMTP id a19so804485qkg.2
        for <USRP-users@lists.ettus.com>; Tue, 10 Aug 2021 19:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=2lhv6nDIyfEsBWp6/BP+QP5V/5e75MEoDQ4h/dKh/f4=;
        b=WH3emPKiAFaeyAp3bYsQ838IhznH2WSPcKFqonN2WI50yMuGxMzJXjmwms+RdZw7Qr
         WDOOZ11G/Uqoo3rR8xQhfp1t1ztRf6xiN1530/qSBbmY3VZpTOkZ3ZWnjNGCaDbJac0w
         BM/6i5hlEvtRWAWxeOEkFvKH1bS6I7gCJu/wa7KRskDGdd+DztRCrvqrOJuRTVJxvGxJ
         HxxqIKXGFAlLu76SGxVAXgLZCX7EG4Y6rG3jM9oyEMNuin5PszMcZ/JxCYTi1MzPdyA3
         PkEJYI1z3YMNLcMmTpTMWYFmOQpMrTH30CbFz9KBvNsapwDnZFW9DOlGNHgFFco0hXwv
         kS2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=2lhv6nDIyfEsBWp6/BP+QP5V/5e75MEoDQ4h/dKh/f4=;
        b=mx08ucCcoYJVj/VOTf2tp/cqOtDH7LO/pZhopBLWdShfefm865u9TY+W604SI1jCCi
         +9LkbtGaevtfocf8KYEGB+tEJEhvpxabw094b2Jz0TeE4V1+xgGrdHcqBGd4H+uK2x6T
         5kapEkmgGWQwJF5GfwFNO73N8wFlmvvapNYYDKh73LGVnnmZca0wgu9pCJca4ElMQ1Jz
         xhR1EMpSFd2cHTJSLET3QggALB9OSMCUKOyAD7iYPcI9Jh2MHcS3QXWi6YwB+0J6MgjW
         ptQw6Nj/23zxhLz2MVRGEy0aNf9+93geRy8LxqjriVmQdvugQgpiP785wZfNJFPAd3+m
         Kf5w==
X-Gm-Message-State: AOAM533blt6vvX/LIhEDqgWUjrrO+pk292jYwMJpTQmqwqOsAHzkHbkq
	cg+/0umMvSFtpMpz1XmPiMc=
X-Google-Smtp-Source: ABdhPJxpaeRZAat264+lUZdyQPEXflOuO2Df4WGK1j6o0t4d5jkjhKWmUv9h1H4wU0woni7ee9LxIQ==
X-Received: by 2002:a05:620a:f98:: with SMTP id b24mr17234134qkn.367.1628649371403;
        Tue, 10 Aug 2021 19:36:11 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id r202sm9768795qke.45.2021.08.10.19.36.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Aug 2021 19:36:11 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 10 Aug 2021 22:36:10 -0400
Message-Id: <6A7565B2-137E-4AC1-8806-F5B484FE072B@gmail.com>
References: <02e001d78e58$44fd82d0$cef88870$@gmail.com>
In-Reply-To: <02e001d78e58$44fd82d0$cef88870$@gmail.com>
To: zhang.weit3@gmail.com
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: DKZ5AAIBXSYLFT6FWJ7A5PSG5HS2CFU2
X-Message-ID-Hash: DKZ5AAIBXSYLFT6FWJ7A5PSG5HS2CFU2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How does 1PPS work in USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DKZ5AAIBXSYLFT6FWJ7A5PSG5HS2CFU2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2327768545587591869=="


--===============2327768545587591869==
Content-Type: multipart/alternative; boundary=Apple-Mail-1AE59C02-824F-4F29-8D8B-76AC1638DA3A
Content-Transfer-Encoding: 7bit


--Apple-Mail-1AE59C02-824F-4F29-8D8B-76AC1638DA3A
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Indeed in all USRPs other than the E310 and B205c the 1PPS semantic is that i=
t=E2=80=99s a trigger for clock reset. It plays no role in ongoing clock ste=
ering.=20

Sent from my iPhone

> On Aug 10, 2021, at 10:26 PM, zhang.weit3@gmail.com wrote:
>=20
> =EF=BB=BF
> Hi all,
> =20
> I am trying to reset multiple USRPs=E2=80=99 time to 0.000s using a shared=
 1PPS (1Hz clock signal). As far as I know, the UHD API function is simply t=
o wait for the PPS rising edge and latch the 0.000s value to all USRPs: usrp=
->set_time_next_pps(uhd::time_spec_t(0.0)).
> =20
> My question is that whether I can use any other rate pulses, for instance 2=
PPS (2Hz clock signal). It seems to me the API function only cares about the=
 first rising edge of the pulse to set the time of all USRPs. And the PPS si=
gnal won=E2=80=99t be used anymore as long as I do not reset the USRP time a=
gain. Is my understanding correct? Please comment if any. Thank you in advan=
ce!
> =20
> =20
> Jack
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-1AE59C02-824F-4F29-8D8B-76AC1638DA3A
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Indeed in all USRPs other than the E310 and=
 B205c the 1PPS semantic is that it=E2=80=99s a trigger for clock reset. It p=
lays no role in ongoing clock steering.&nbsp;<br><br><div dir=3D"ltr">Sent f=
rom my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Aug 10,=
 2021, at 10:26 PM, zhang.weit3@gmail.com wrote:<br><br></blockquote></div><=
blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<meta http-equiv=3D"Conte=
nt-Type" content=3D"text/html; charset=3Dus-ascii"><meta name=3D"Generator" c=
ontent=3D"Microsoft Word 15 (filtered medium)"><style><!--
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
	{mso-style-type:export-only;}
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
oNormal">Hi all,<o:p></o:p></p><p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p><=
p class=3D"MsoNormal">I am trying to reset multiple USRPs=E2=80=99 time to 0=
.000s using a shared 1PPS (1Hz clock signal). As far as I know, the UHD API f=
unction is simply to wait for the PPS rising edge and latch the 0.000s value=
 to all USRPs: <i>usrp-&gt;set_time_next_pps(uhd::time_spec_t(0.0))</i>. <o:=
p></o:p></p><p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p><p class=3D"MsoNorma=
l">My question is that whether I can use any other rate pulses, for instance=
 2PPS (2Hz clock signal). It seems to me the API function only cares about t=
he first rising edge of the pulse to set the time of all USRPs. And the PPS s=
ignal won=E2=80=99t be used anymore as long as I do not reset the USRP time a=
gain. Is my understanding correct? Please comment if any. Thank you in advan=
ce!<o:p></o:p></p><p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p><p class=3D"Ms=
oNormal"><o:p>&nbsp;</o:p></p><p class=3D"MsoNormal">Jack<o:p></o:p></p></di=
v><span>_______________________________________________</span><br><span>USRP=
-users mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubsc=
ribe send an email to usrp-users-leave@lists.ettus.com</span><br></div></blo=
ckquote></body></html>=

--Apple-Mail-1AE59C02-824F-4F29-8D8B-76AC1638DA3A--

--===============2327768545587591869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2327768545587591869==--
