Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B211EE95D
	for <lists+usrp-users@lfdr.de>; Thu,  4 Jun 2020 19:25:02 +0200 (CEST)
Received: from [::1] (port=38902 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jgtbv-0006PV-Pe; Thu, 04 Jun 2020 13:24:59 -0400
Received: from mail-qt1-f173.google.com ([209.85.160.173]:44606)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jgtbs-0006Iq-8b
 for USRP-users@lists.ettus.com; Thu, 04 Jun 2020 13:24:56 -0400
Received: by mail-qt1-f173.google.com with SMTP id c12so5892561qtq.11
 for <USRP-users@lists.ettus.com>; Thu, 04 Jun 2020 10:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=jKmnbKVvCRy3kyF7F0dobVczNAMTyJO6OpyIddrJxII=;
 b=e0tfIJAOFuextryfNsARzEEB8esgDc6oAMtnzRM121Q1sug92oHR6ZDf5aFvqVaT5R
 R5jRnOmCIICU9+LMpQ908ZCQejiH9svpet9TODatTQvvfhJFWV60t+N3vEN12c8rvjIl
 tn72vN6N3a36yfhNLgqLd+QHoK8pX86z63HJLyx3XklFs/JJQVRhmU+Kakq4SvbLtJSy
 TwcdmmIv/XPctzT5JM8/B+uykuN+IsZYSHjZ2WeJMzfjLlpT9gDf2xEEcwxfWXI/al9p
 jnt8jZaoAXQ++Q4HayE82gzkk2DzrBJPc8Isoz8k4VhuxDO/SAN9xD/gJupN/i4+x03e
 t5kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=jKmnbKVvCRy3kyF7F0dobVczNAMTyJO6OpyIddrJxII=;
 b=QAugKbP6XUurmH7AO3t2G3ED+AA29jWbWSVEC6wKAXmc0IRwdLL/+pd2M5LGjCpS0Q
 qa3QS/5dtMF0fWMr1pgUlgB4sulRLKOoUsUrlUO2RZ+sOdk2ShgrdzL7eCfyuqljPL3F
 Ee+1geoU279BHdfrTQbkGB6ntZfxLsFwg//tEGGp9I0rSeqgbfX9hVbus5CeT/TKpVG4
 9wT1bTgRNjojWilmex4t/9DQk3f6SONdfWTg+7NVUpkRZWIpqAncNJb9ABVgUEEqa6oN
 g/uOxcWmNutkZTWm5+ZsAVF7V9ntbwzhxFTimYKu0zZefuNMrSrZYz2XGpdZOb0Pt7+J
 zvAQ==
X-Gm-Message-State: AOAM531WtTJDjq7GvDuZrL1/ZVhrWRRxILrZl9ZwWMaSHuT3VikiPQsP
 ogb5075tiKYpWR9vtN3hUdZ4XjizYWM=
X-Google-Smtp-Source: ABdhPJxs6FM/KIH8tPGh+XmDSjZ5X1B/gFxI7tlCYnaj64oLWHxFapYT72vSyQdmwiWKlHrywku2Lg==
X-Received: by 2002:ac8:47d3:: with SMTP id d19mr5681947qtr.299.1591291455111; 
 Thu, 04 Jun 2020 10:24:15 -0700 (PDT)
Received: from [192.168.0.198] (d72-38-46-81.commercial1.cgocable.net.
 [72.38.46.81])
 by smtp.gmail.com with ESMTPSA id m53sm5638291qtb.64.2020.06.04.10.24.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Jun 2020 10:24:14 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Thu, 4 Jun 2020 13:24:13 -0400
Message-Id: <171C611C-A383-43B3-80BF-B6BE2AA86E6D@gmail.com>
References: <A59D1F26-80DF-4AA3-9DDC-BB2DD846A1D2@gmail.com>
In-Reply-To: <A59D1F26-80DF-4AA3-9DDC-BB2DD846A1D2@gmail.com>
To: Sidd Subramanyam <siddsubra@gmail.com>
X-Mailer: iPhone Mail (17E262)
Subject: Re: [USRP-users] Clock Bias from board mounted GPSDO
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============1307448113619345487=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 


--===============1307448113619345487==
Content-Type: multipart/alternative; boundary=Apple-Mail-0E24F6B1-C8F1-409E-95B0-EDE8FE4282B2
Content-Transfer-Encoding: 7bit


--Apple-Mail-0E24F6B1-C8F1-409E-95B0-EDE8FE4282B2
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

What exactly do you mean by clock bias? compared to what?

Once the unit is locked to GPS and you use the GPSDO as your system clock, t=
he timing will be under 1PPB. What exactly are you measuring?

If you=E2=80=99re trying fo derive bit timing from a modulated digital signa=
l, the usual way is to use a PLL in your DSP algorithms.=20

Sent from my iPhone

> On Jun 4, 2020, at 11:52 AM, Sidd Subramanyam via USRP-users <usrp-users@l=
ists.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hi all,
>=20
> I was wondering if there was a way to extract or compute a precise Clock B=
ias of the USRP time vs GPS time from the GPSDO. I am using a B210 USRP with=
 the board mounted recommended TCXO GPSDO. I have previously used the GNSS-S=
DR (https://gnss-sdr.org/) software to compute pseudorange and clock bias, h=
owever this software is run by using the front end RX channels and not the G=
PSDO input.
>=20
> In my use case, I have a need to compute this from my built in GPSDO since=
 I am intending to simultaneously use the front end on S-band signals, and t=
he B series does not allow 2 separate center frequencies across its 2 RX cha=
nnels.
>=20
> I am aware of the NMEA messages from which I can extract the position lock=
 via serial but it does not seem like there is a time output that is more gr=
anular than one second which I can use to compute a clock bias.
>=20
> Any help is appreciated.
>=20
> Thank you,
> Sidd
>=20
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-0E24F6B1-C8F1-409E-95B0-EDE8FE4282B2
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">What exactly do you mean by clock bias? com=
pared to what?<div><br></div><div>Once the unit is locked to GPS and you use=
 the GPSDO as your system clock, the timing will be under 1PPB. What exactly=
 are you measuring?</div><div><br></div><div>If you=E2=80=99re trying fo der=
ive bit timing from a modulated digital signal, the usual way is to use a PL=
L in your DSP algorithms.&nbsp;<br><div><br><div dir=3D"ltr">Sent from my iP=
hone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jun 4, 2020, at 1=
1:52 AM, Sidd Subramanyam via USRP-users &lt;usrp-users@lists.ettus.com&gt; w=
rote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=
=BB=BF<meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-=
8"><div dir=3D"ltr"><meta http-equiv=3D"content-type" content=3D"text/html; c=
harset=3Dutf-8"><div dir=3D"ltr"><meta http-equiv=3D"content-type" content=3D=
"text/html; charset=3Dutf-8">Hi all,<div><br></div><div>I was wondering if t=
here was a way to extract or compute a precise Clock Bias of the USRP time v=
s GPS time from the GPSDO. I am using a B210 USRP with the board mounted rec=
ommended TCXO GPSDO. I have previously used the GNSS-SDR (<a href=3D"https:/=
/gnss-sdr.org/">https://gnss-sdr.org/</a>) software to compute pseudorange a=
nd clock bias, however this software is run by using the front end RX channe=
ls and not the GPSDO input.</div><div><br></div><div>In my use case, I have a=
 need to compute this from my built in GPSDO since I am intending to simulta=
neously use the front end on S-band signals, and the B series does not allow=
 2 separate center frequencies across its 2 RX channels.</div><div><br></div=
><div>I am aware of the NMEA messages from which I can extract the position l=
ock via serial but it does not seem like there is a time output that is more=
 granular than one second which I can use to compute a clock bias.</div><div=
><br></div><div>Any help is appreciated.</div><div><br></div><div>Thank you,=
</div><div>Sidd</div><div><br></div><div><br></div></div></div><span>_______=
________________________________________</span><br><span>USRP-users mailing l=
ist</span><br><span>USRP-users@lists.ettus.com</span><br><span>http://lists.=
ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><br></div></bloc=
kquote></div></div></body></html>=

--Apple-Mail-0E24F6B1-C8F1-409E-95B0-EDE8FE4282B2--


--===============1307448113619345487==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1307448113619345487==--

