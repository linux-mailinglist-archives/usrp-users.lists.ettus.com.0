Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 707A4AFFEC4
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jul 2025 12:10:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2A21C386360
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jul 2025 06:10:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752142226; bh=KUfwtw6NjN3+adzQDxbKFvPHu+nfLZTwX1mXdKIpK7o=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=G2j9KoUtfXgRnD06ED5bGccBQZVmsuIPkAwM9w26+9WuBwdoiAzB+ycz37C0AyW77
	 OdgkzwDDWJB3fSiv6LaX6mPpDPoRUYQdy0G8Rk01sc9kvhXRpWwH/KFC48HDrAes35
	 5iDdogYCudht5ad7Qe+jejgn+nZJm4ojdS0ZLRrWf+VaylpGnXpdYe4A2T/8AlgHAZ
	 cf5g/tckNVwEwqysxedZO6B7pRfxmyAzXARb0Ev/aE+5KgZU8AfPiANmXy+murSiZX
	 bl5SlHC8tt6M0F1piAXC66i2cK3XxOFoQbqOPsxIKL5vndHXVkeplV9RrhlmF+VB1T
	 ReEIItor16qhQ==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 1B47D38093F
	for <usrp-users@lists.ettus.com>; Thu, 10 Jul 2025 06:10:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="MKP6525p";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ae3be3eabd8so172525066b.1
        for <usrp-users@lists.ettus.com>; Thu, 10 Jul 2025 03:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1752142204; x=1752747004; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T/vDhJ1A/K/CRDUmz9166upyycJWTLVq+FiOjnAP6/0=;
        b=MKP6525pbIF2IdU7u4utUni7ygNxw7z6Qe7Vf/TehgB6SmK56HL5BLS8bG2ns11on6
         Jvou49a59mU2RKOb1NEQ/CXhYUlD8HAQE63tfOV9DAwVNIUT19dEb8GaW7JFRXFrazcq
         y0jC5iHlr5VY1i0rMiMjfm1R4XAHoPJ825ijf1h/7prTkfvJdSk5cCcewnFpFHmYsBvT
         Q5snOCoPXaJ8sI8P/NlwKSJc/t0FAaerRSLLjmm/C5Kn6ZWF0yC+aDZz6Tds+YBbzu1N
         iDHqlUqBwNIM1ADhN9068twdjJtyGgKBLJwFU9SpW+MudaUK3pKuF9GN7Tbg/vdze7B1
         ZItQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752142204; x=1752747004;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T/vDhJ1A/K/CRDUmz9166upyycJWTLVq+FiOjnAP6/0=;
        b=ZOdFoLkrX4kWjcz6miXGaAIQh117lwtRcFEtaAHyN59x1WTexrutUwWM2Ntil8y5ul
         eHwJr+10n2kTD4lcnqsoSmPa45X1tyL6xIk+rG5JImD1dpD+8PzGJFoPhdG377Tb8nQu
         iTr26t1nkdeh8X6rOOVVE+WLuUcgHxeixCw3Tz48byG/dYsOHCn58k0vetMXdNWWCxHH
         IAnEA5BEB7v4BrrHQh3STb82uz1f9Igx9P8eRen5btWdp9sdy7kZpjjW4HROZ2Z+gumB
         WkHwDzXUvf473m40cKw5QdizZQqhv2kIVb3FK84Td1EjCW+Ud1B3p3R0Pq1wjbr9826L
         2Zvg==
X-Gm-Message-State: AOJu0YybMzVJtobGApBfymv2JYuyMyN7o1DQ3cKyzSFyAhS8cRM2QLg7
	TQ8Cz1TFZZTouMF6Uzp3speFXHzr+J/kOJpUpypa/Lz4NImoN829/Uh47XOjXjyEM1pBF//78MH
	IoGtZ6xSPFyvEH8PmlZ+UQB/2fHQMy/T5dKQSXcEFXQmgk8pruqN/5RM=
X-Gm-Gg: ASbGncsOOIpUQEKokcrFkfoLycqBEzyiu4+KfADcLH5UyQYJ+lyhNTyv3uH5zByUV6Z
	Zq0vIZnzmYVVyqTYf7xfL+1vvcdhDklL3LTq/s1imt+ggRNJaUGqrV9BEC95E2JrAWU3AZBSPsk
	z8jBq7SRejQOA1fL/7BlHE91AK/Jfyhfxn7H/9PUV64urP0aJk8Ym6
X-Google-Smtp-Source: AGHT+IGyEOH3DP5aprhbreFEB0Rz/LXglD7U4ysskf3ldbLqnk68aPhX3mbPyc5bgT0nvJhmVH1hK93jyMkOYjLp1jM=
X-Received: by 2002:a17:907:6ea2:b0:ae0:c606:78d0 with SMTP id
 a640c23a62f3a-ae6e2455e0fmr253113466b.23.1752142203664; Thu, 10 Jul 2025
 03:10:03 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR09MB9126BF40779325611798B964EC42A@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <SJ0PR09MB9126AF58A14EB228D487AA59EC42A@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB9126AF58A14EB228D487AA59EC42A@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 10 Jul 2025 12:09:52 +0200
X-Gm-Features: Ac12FXwWb1x5QjTFQqd8pIpgGCZz0JW2Vzc2ST9HlQAjYCL2ru7OCkSg2viICpE
Message-ID: <CAFOi1A56GFX98v-AW06fM06L104c0a325fyfW+aKBmYw-HuBiw@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: DWMQT5OW5WX7JWZU323COKRMJBQ33OVC
X-Message-ID-Hash: DWMQT5OW5WX7JWZU323COKRMJBQ33OVC
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: control timebbbout waiting for ACK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DWMQT5OW5WX7JWZU323COKRMJBQ33OVC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3006716645006295721=="

--===============3006716645006295721==
Content-Type: multipart/alternative; boundary="000000000000a54c79063990655f"

--000000000000a54c79063990655f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Eugene,

nothing comes to mind immediately. Are you starting the stream, and then
doing nothing else? When does the error happen, at the beginning of the
streaming, or at  any time?

--M

On Fri, Jul 4, 2025 at 11:10=E2=80=AFPM Eugene Grayver <eugene.grayver@aero=
.org>
wrote:

> Correction to previous post: Sample rate is 125 Msps at a
> master_clock_rate of 250 MHz.
>
> I am
>
>    - using a N321 w/ UHD 4.6.0.
>    - Running one channel at 100 Msps on a very fast machine.
>    - Interface over a 10 GbE over RJ45 (on-board interface to PlanetLabs
>    SFP-RJ45 transceiver).
>    - Running a custom C++ application.
>    - Not using DPDK.
>
>
> I intermittently (once every 2-3 runs) get an error in the RX path.  The
> error appears to be fatal (i.e. no more samples received).
>
> RfnocError: OpTimeout: Control operation timed out waiting for ACK
>
> Any suggestions?
>
> Eugene.
>
>
> Eugene Grayver, Ph.D.
> Principal Engineer
> 310-336-1274
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a54c79063990655f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Eugene,</div><div><br></div><div>nothing comes to=
 mind immediately. Are you starting the stream, and then doing nothing else=
? When does the error=C2=A0happen, at the beginning of the streaming, or at=
=C2=A0 any time?</div><div><br></div><div>--M</div></div><br><div class=3D"=
gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Fri, Jul 4, 2025 at 11:10=E2=80=AFPM Eugene Grayver &lt;<a href=3D"mailto:=
eugene.grayver@aero.org">eugene.grayver@aero.org</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-386827448=
3614644681">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Correction to previous post: Sample rate is 125 Msps at a master_clock_rate=
 of 250 MHz.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_-3868274483614644681divRplyFwdMsg"></div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I am</div>
<ul style=3D"direction:ltr;margin-top:0px;margin-bottom:0px;list-style-type=
:disc">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation" style=3D"direction:ltr">using a N321 w/ UHD 4.6.=
0.=C2=A0</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation" style=3D"direction:ltr">Running one channel at 1=
00 Msps on a very fast machine.=C2=A0</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation" style=3D"direction:ltr">Interface over a 10 GbE =
over RJ45 (on-board interface to PlanetLabs SFP-RJ45 transceiver).=C2=A0</d=
iv>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation" style=3D"direction:ltr">Running a custom C++ app=
lication.=C2=A0</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation" style=3D"direction:ltr">Not using DPDK.</div>
</li></ul>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I intermittently (once every 2-3 runs) get an error in the RX path.=C2=A0 T=
he error appears to be fatal (i.e. no more samples received).</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
RfnocError: OpTimeout: Control operation timed out waiting for ACK</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Any suggestions?</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Eugene.</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_-3868274483614644681x_Signature">
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Eugene Grayver, Ph.D.</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Principal Engineer</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
310-336-1274</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000a54c79063990655f--

--===============3006716645006295721==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3006716645006295721==--
