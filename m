Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F9C81E728
	for <lists+usrp-users@lfdr.de>; Tue, 26 Dec 2023 12:44:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2FA59384981
	for <lists+usrp-users@lfdr.de>; Tue, 26 Dec 2023 06:44:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703591092; bh=z/ItnXnePOYFl9x14FFrevTS1Nvd4XlbGcQu9IEbdSA=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=POXdgnQkIKicr+Sc/LNfmn3xABHkGWJG/Whfj4PlHb6SQ0kwsh+2G1Of7nlXNbo2+
	 2OEe+VlsflK+JHHehrNNyJlH0LstDcvzWREZ+gd3n7jbQIl3+mWB1y0HdXHzSqEHLK
	 6JLfIE1hOrYuu0Ft275IzZ7ZkAey3z97njeYWfTSbBgO0WEGVQOlVKc7Lvg6kl4LHJ
	 3J3IBcrwa5pmucQXD+KK409IJpbO1EaSoHj2/X3RAdZi40BNXj6E3DRocH7fSkntRZ
	 z84yT42JdYNJTi7l3Q4EpNVgwzOTJZ/xASt/p69kk9eRxx5V1c9JU1PoqNcCWwBQLf
	 QobSKdcYT1sAw==
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 24552380CE8
	for <usrp-users@lists.ettus.com>; Tue, 26 Dec 2023 06:43:59 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="amuD+OVN";
	dkim-atps=neutral
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3368ae75082so2155464f8f.1
        for <usrp-users@lists.ettus.com>; Tue, 26 Dec 2023 03:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703591038; x=1704195838; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3YJ8b5aeMHftCwGkCpGpV04gA147zzjsbm64Wyp7Czk=;
        b=amuD+OVNCyUL37JhNFUUh3CG2OawpmDBhqExoYEKl5k6hCBWKAtty1XvGnpULixwQl
         HecoppfsdpC0rokNgwCsP4CD61bNcpJuh8yBd2z/txQcB0SY7WfB0G1axqFE7oSfYf9Y
         +4i08T+iBskStq+fhoy5LEfMhTl80okxp18tJvcbf7a34GSkXAhreVFrQx+iT6tNR9/k
         MbSdP202p/sN0aczhNc7wd6Od8WryN9u/iOsgGAiPofMbcT+3Xq+VCgVryYCzKIvYsJh
         1eqsQSQZYW/H2ocnP8k5WLi9ogc7KWeCYCiWHA3BWY20rb73jcZN83zcnF+SEytbv+zE
         +zLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703591038; x=1704195838;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3YJ8b5aeMHftCwGkCpGpV04gA147zzjsbm64Wyp7Czk=;
        b=T2h+c78avDjbJ8nX2HuVfwU+cono1w3r+fxvKC2LJ0lxTzWM7GBpXdbwLOgHOqamq3
         R/CX1wvwm/Z426U7NBccVAPdyMjOjSkbgPgpitEwVKLE66bKm0UnRZ54scQTA8H/y57C
         6Zc/TyWSuJz+PC3mrmdLRC6QnAGVjLBTDfcdxkVcHZ3D4nxUgRvkv+mvHVI8Jr3sgxcz
         bpOcURb8R6ygChbf6cKcm17UhaoMyvV2oDO/48qSzo0UsdqrILhbAqKqWspn23Uv6A8q
         WHU8ydWSHuCoH8LFqYb+DejzKMNcdGqVg2XVPgQKcVI7K0IWNN9CuKa2MO3pPcTs8I5k
         wcXA==
X-Gm-Message-State: AOJu0YxW+mZAV36X73dWU+09ST10JXGdczxyxf1tfFPkho1NilXBSWhC
	NqbqLiuMpakkQh6z0nwsssWxVQJSWTbQak2Qhn9Nh3Rklsttqvd7
X-Google-Smtp-Source: AGHT+IEkqz70OW5ZuqomlvI3GeBKliWdYuAB64B4w5+ecefiNGvySIwlETaO7jRuN3yUj3HIb04VusGHsxMNEr2heGk=
X-Received: by 2002:a05:600c:b8a:b0:40d:5540:5ecd with SMTP id
 fl10-20020a05600c0b8a00b0040d55405ecdmr1488059wmb.154.1703591037472; Tue, 26
 Dec 2023 03:43:57 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Francisco_Gallardo_l=C3=B3pez?= <f.gallardo.lopez@gmail.com>
Date: Tue, 26 Dec 2023 12:43:46 +0100
Message-ID: <CAEtk-vVSDd-Z1dCHnkK7waNz_sZA+H0kw1=KfUZma3v+tt0o_g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: LE5432TZ2JRXBX5OV53UPFR53J37QA4B
X-Message-ID-Hash: LE5432TZ2JRXBX5OV53UPFR53J37QA4B
X-MailFrom: f.gallardo.lopez@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Strange interference
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LE5432TZ2JRXBX5OV53UPFR53J37QA4B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1376905762413405472=="

--===============1376905762413405472==
Content-Type: multipart/alternative; boundary="000000000000a191f1060d683286"

--000000000000a191f1060d683286
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I am seeing a quite strange pattern in an USRP B210, and I am trying to
figure out what it is.

Right now this is more like an academic investigation, as this is not
causing malfunctions, but it got my attention.

So, from time to time I am seeing a tone (20dB above noise) appearing just
in the middle of the band, to be precise =C2=B12KHz around the central freq=
uency
that I configured in the USRP.

I was not paying attention at all, until I noticed that it appears every
day seven times a day, and always (more or less) at the same times. Hence,
this is not random.

Gut feeling is that this is caused by some sort of signal induced into the
cables or locally radiated interference, not intended, of course.

I was trying to further investigate, and for that I was trying to get a
detail blocks diagram of the B210, as I saw the following information in
the B210 website: "If you, however, happen to have a very strong interferer
within half the master clock rate of your RX LO frequency, you might want
to reduce this analog bandwidth. You can do so by calling
uhd::usrp::multi_usrp::set_rx_bandwidth(bw)." B200/B210/B200mini/B205mini -
Ettus Knowledge Base <https://kb.ettus.com/B200/B210/B200mini/B205mini#FAQ>

Now the thing is, I realized I don't really know what the internal settings
of the USRP are, also in terms of the Analog Devices AD9363. I know that
the clock rate is 32 MHz, but from there I don't clearly know what is the
LO frequency that the USRP set.

Also, I would like to know the setting that the USRP is using for the
Analog bandwidth.

In short, I would like to:

a) Get a diagram like this one, but for the detailed case of B210. Is there
something like this? (File:2920 simplified system diagram.gif - Ettus
Knowledge Base
<https://kb.ettus.com/File:2920_simplified_system_diagram.gif>)
b) Know what is the LO freq that the USRP is setting (I assumed based on
the 32MHz clock rate)
c) Know where I can get the information on the setting the USRP is putting
for the analog bandwidth filter.

Thanks!
Fran

--000000000000a191f1060d683286
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r">Hi all,<div><br></div><div>I am seeing=C2=A0a quite strange pattern in a=
n USRP B210, and I am trying to figure out what it is.=C2=A0</div><div><br>=
</div><div>Right now this is more like an academic investigation, as this i=
s not causing malfunctions, but it got my attention.</div><div><br></div><d=
iv>So, from time to time I am seeing a tone (20dB above noise) appearing=C2=
=A0just in the middle of the band, to be precise=C2=A0=C2=B12KHz around the=
 central frequency that I configured in the USRP.=C2=A0</div><div><br></div=
><div>I was not paying attention at all, until I noticed that it appears ev=
ery day seven times a day, and always (more or less) at the same times. Hen=
ce, this is not random.</div><div><br></div><div>Gut feeling is that this i=
s caused by some sort of signal induced into the cables or locally radiated=
 interference, not intended, of course.</div><div><br></div><div>I was tryi=
ng to further=C2=A0investigate, and for that I was trying to get a detail=
=C2=A0blocks=C2=A0diagram of the B210, as I saw the following information i=
n the B210 website: &quot;<span style=3D"color:rgb(0,0,0);font-family:&quot=
;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif;font-size:1=
4px">If you, however, happen to have a very strong interferer within half t=
he master clock rate of your RX LO frequency, you might want to reduce this=
 analog bandwidth. You can do so by calling uhd::usrp::multi_usrp::set_rx_b=
andwidth(bw).</span>&quot;=C2=A0<a href=3D"https://kb.ettus.com/B200/B210/B=
200mini/B205mini#FAQ">B200/B210/B200mini/B205mini - Ettus Knowledge Base</a=
></div><div><br></div><div>Now the thing is, I realized I don&#39;t really =
know what the internal settings of the USRP are, also in terms of the Analo=
g Devices AD9363. I know that the=C2=A0clock rate is 32 MHz, but from there=
 I don&#39;t clearly know what is the LO frequency that the USRP set.=C2=A0=
<br></div><div><br></div><div>Also, I would like to know the setting that t=
he USRP is using for the Analog bandwidth.=C2=A0</div><div><br></div><div>I=
n short, I would like to:</div><div><br></div><div>a) Get a diagram like th=
is one, but for the detailed case of B210. Is there something like this? (<=
a href=3D"https://kb.ettus.com/File:2920_simplified_system_diagram.gif">Fil=
e:2920 simplified system diagram.gif - Ettus Knowledge Base</a>)</div><div>=
b) Know what is the LO freq that the USRP is setting (I assumed based on th=
e 32MHz clock rate)</div><div>c) Know where I can get the information on th=
e setting the USRP is putting for the analog bandwidth filter.</div><div><b=
r></div><div>Thanks!</div><div>Fran=C2=A0</div><div><br></div><div><br></di=
v></div></div></div></div></div></div></div></div></div>

--000000000000a191f1060d683286--

--===============1376905762413405472==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1376905762413405472==--
