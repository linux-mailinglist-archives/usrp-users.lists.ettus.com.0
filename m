Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F02ACFF41
	for <lists+usrp-users@lfdr.de>; Fri,  6 Jun 2025 11:27:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 44879385F54
	for <lists+usrp-users@lfdr.de>; Fri,  6 Jun 2025 05:27:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749202046; bh=KOcuUWJMEdDhdbfv6CiyUAZMGf6Y/SinXqYJ/qjLAII=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=qaxNx+hgYcv4I+S3oirQH0O1e5b0wF5e0wQHFXZErbEBLjvBH0hPLKWU583vdCpKT
	 KMRmwmGzwVnP64rvmEcH9HZks+I0vzGOvK//MDvw8A4jh9OMdI08BhFB6CF8LNF+bQ
	 MZEwAc4Kzy56bUhmHUYxUh3jM1yGAPvGc7nKxgMJpramjjrOud6hmX18HWMcwJvRGA
	 wsi0jBKtyVKZcYjpnHPTRFKANjYHKMbSquhjfplrVRbVtPy/W6aXTo+li0+JAEV+SR
	 9qG/FzP4/pGXebXSPOFFOlCsrzdAGkhBBatWNE5jIq/39f483xIwhkPO9vxRtGY9Kn
	 Uv5jeBFz9xL6g==
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 8E2BC385CF5
	for <usrp-users@lists.ettus.com>; Fri,  6 Jun 2025 05:26:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="ipcLPUT6";
	dkim-atps=neutral
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ad69e4f2100so311458266b.2
        for <usrp-users@lists.ettus.com>; Fri, 06 Jun 2025 02:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1749201989; x=1749806789; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UA1Z9iTcvbG3h/uc76HAh6i0u8CWvjgU6+lkK8VRits=;
        b=ipcLPUT6VI+V5zd+/nGw3GMVmbZkg3RCez+LVD1q2rvSFZ2xl2VDW0V/jxwWLPQpxF
         RL3WwGGUUdMdmsRYpAPzvu/b6fLmG2zWmhuqloa1F/stXBUN6sj6rRWT0GsBnJfpz0kh
         4mNYZZ0+gpVdhFgg7tkCInJnFHTJiRepYdJRl7UuGmqwl2IOUkWQQL48/0QBOGuGA4sJ
         lBEd6o1Ygu5KxyZDLRHM6nyxTXUlg2mgSCk98jKTo4307E2fPrX6PyxtKnc59SjpBx9l
         IxPKcwz/TCk72/LU1ULNMy7DzNPt5xGGOz5X4x3dMeM94BWOUxuyFz6OTFrhicAp5HYp
         x6VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749201989; x=1749806789;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UA1Z9iTcvbG3h/uc76HAh6i0u8CWvjgU6+lkK8VRits=;
        b=aaY9NIrZltYKLgpE7RXJN1K8nJ1tnoq6PM9JyNO/PHm4HXrRPOsvy2rC3ZIyefJ5Df
         7aWifdov2LY3VxxwLOo7pv+qQ2aiXbTQADJxBh2Wx9S+8RLenAqUYgY2lOnQ9H/EjxfA
         HkzYlHtDvOBMB8nfuJBL6UcMz3fP7NVdx9ZuABgkJYp3Bg4S5d8rBbkqQCH8O2qvvrXq
         73zY+uSosLwiS7wtrPf5ivKmUumx8CUNyhqeJsomLmPxylpjHIC7ak1JnDh4gfFhXHfp
         8QWoz8rypVd6gSsAGIlvAC5qPwEKuXufwqpTAsc88j1Lus/k+KrsfT+LDNeA/mGbSMLg
         9cJg==
X-Gm-Message-State: AOJu0YwbGe6arpuxenxgADVdxaTUpfoC/PXpHzgSmH2ehV7fLFMt97Ge
	wemsNh7V75eElCwIWmRaKXC+FOo/DqOJ2aYZTYgnuTyAZ/E7P8xGa2tK/f4Wemme7lt0nsPk9tA
	djhDww6Nb+s95xPJgPo+77xvjpDMv1/634fpHdDNQWQqXxLnSftkgOA4=
X-Gm-Gg: ASbGncvcEJxzWDEHZ3+zvrgbiGj1bVNyyrjLk6A36kC10fx5WwWj9WhRauB+K5usAcC
	mAMWzWm5/YVLphfGvIHUlYaz+MeY3XOfSSrlM2NZ/oGL2Bpj6aoo6Dtmp6XhuUnm2vwH6WdPHfA
	K6XJjMKnC/Kc6vpuvyZQR8YipRicpDwtwW3SCz6+7L3LChhi+QCE/HNawGg5rqh7l2ATyNlmTLb
	so=
X-Google-Smtp-Source: AGHT+IHflRYGELzyNi10NHzjiNTKYHanfPRZtqGSqy7WXL9uY+84ptqUDPHuiTULpWSsdInFyUrJzeylh349IIPxOfQ=
X-Received: by 2002:a17:906:9fca:b0:add:f3a1:4654 with SMTP id
 a640c23a62f3a-ade1abc403emr212422466b.52.1749201988462; Fri, 06 Jun 2025
 02:26:28 -0700 (PDT)
MIME-Version: 1.0
References: <BNAP110MB1885A39CCAFA92666DE91AC7946FA@BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <BNAP110MB1885A39CCAFA92666DE91AC7946FA@BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 6 Jun 2025 11:26:17 +0200
X-Gm-Features: AX0GCFtuCzp36MiC61IyCQXP5O4_WKCkUPCXHUGW5THh_kigtXDm36Ijzgz_K5s
Message-ID: <CAFOi1A4mr9s2zjA0R+tYWweaCw-_wp_R_aaKHs9-P8QUUWp84g@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: KHYWRWZVPEWOL2IJLT5P4CLFB2KOEQ6C
X-Message-ID-Hash: KHYWRWZVPEWOL2IJLT5P4CLFB2KOEQ6C
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tx_offset and rx_offset parameter usage on UHD calibration utilities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KHYWRWZVPEWOL2IJLT5P4CLFB2KOEQ6C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0025227024839873804=="

--===============0025227024839873804==
Content-Type: multipart/alternative; boundary="00000000000029c1310636e3d3a1"

--00000000000029c1310636e3d3a1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Tommy,

I'm either misunderstanding your email, or you're misunderstanding the
purpose of the tool, or maybe both.
Some facts:

- If you're unclear about the arguments, just use the default values,
they're probably fine.
- These tools are only suitable for direct-conversion (i.e., zero-IF)
daughterboards and don't work elsewhere. Maybe by "direct frequency
conversion" you mean something else (like the Basic boards?) but as I said,
you can't calibrate those with these tools.
- The duplex-ness of your application is not relevant here, the
uhd_cal_rx_iq_balance will calibrate RX IQ imbalance, the
uhd_cal_tx_iq_balance will calibrate TX IQ imbalance, and so on.
- The way these tools work is that we capture our own signal with our own
device, in a loopback mode, so you need to "listen" somewhere for the
signal. The Tx cal tools will have an rx_offset parameter to tell the tool
where to listen to the signal output. If we set that to zero, then the RX
LO could interfere with the TX LO, and that would affect our calibration.
- I'm not entirely sure about the exact provenance of the default value,
but it is a) small enough to work for all devices and rates, and b) is not
a multiple of anything, so it's less likely that the RX can interfere with
the TX.

The problem with the calibration is that it is single-point (i.e., not
frequency-selective). However, if you want to optimize the point where we
calibrate, the `tx_wave_freq` parameter is the one you want to tune, and
not the `rx_offset`.


I recommend you run the tools with the default values, based on your
description.

--M





On Fri, Jun 6, 2025 at 12:40=E2=80=AFAM Tommy Tsui <tommytsui@w5tech.com> w=
rote:

>
>
> Hi,
>
>
>
> I have some open questions about tx_offset and rx_offset parameter usage
> for the UHD calibration utility uhd_cal_rx_iq_balance,
> uhd_cal_tx_iq_balance, and uhd_cal_tx_dc_offset.
>
>
>
> The cal util =E2=80=93help output indicates tx_offset is the TX LO offset=
 from the
> RL LO in Hz. Likewise, for the rx_offset. If the usrp app uses a direct
> frequency conversion and no LO is involved, then tx_offset is zero. One
> strange thing is that when the parameter is not specified, the cal util
> will use a default value 934400 internally. I don=E2=80=99t know where th=
is
> constant came from. Does it mean for direct frequency conversion, I shoul=
d
> specify tx_offset of 0 (to override the default 934400) when performing a
> calibration?
>
>
>
> My application runs on X310 with 2 UBX-40 installed for duplex operation.
> It does specify a Rx LO on the receive and a Tx LO on the transmit, but t=
he
> difference between the Tx LO and Rx LO is 40MHz, which exceeds the
> tx_offset/rx_offset max limit of 20MHz. Therefore, my only option is to r=
un
> the calibration without tx_offset and rx_offset specified, but I wonder h=
ow
> the calibration result would impact my application performance.
>
>
>
> I appreciate it if anyone can share his/her experience on the UHD cal
> utility rx_offset & tx_offset usage.
>
>
>
> Thanks,
>
> Tom
>
>
> ------------------------------
> The information contained in this e-mail and any attachments from W5
> Technologies, Inc. may contain confidential and/or proprietary informatio=
n,
> and is intended only for the named recipient to whom it was originally
> addressed. If you are not the intended recipient, any disclosure,
> distribution, or copying of this e-mail or its attachments is strictly
> prohibited. If you have received this e-mail in error, please notify the
> sender immediately by return e-mail and permanently delete the e-mail and
> any attachments.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000029c1310636e3d3a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Tommy,</div><div><br></div><div>I&#39;m either misund=
erstanding your email, or you&#39;re misunderstanding the purpose of the to=
ol, or maybe both.</div><div>Some facts:</div><div><br></div><div>- If you&=
#39;re unclear about the arguments, just use the default values, they&#39;r=
e probably fine.</div><div>- These tools are only suitable for direct-conve=
rsion (i.e., zero-IF) daughterboards and don&#39;t work elsewhere. Maybe by=
 &quot;direct frequency conversion&quot; you mean something else (like the =
Basic boards?) but as I said, you can&#39;t calibrate those with these tool=
s.</div><div>- The duplex-ness of your application=C2=A0is not relevant her=
e, the uhd_cal_rx_iq_balance will calibrate RX IQ imbalance, the uhd_cal_tx=
_iq_balance will calibrate=C2=A0TX IQ imbalance, and so on.</div><div>- The=
 way these tools work is that we capture our own signal with our own device=
, in a loopback mode, so you need to &quot;listen&quot; somewhere for the s=
ignal. The Tx cal=C2=A0tools will have an rx_offset parameter to tell the t=
ool where to listen to the signal output. If we set that to zero, then the =
RX LO could interfere with the TX LO, and that would affect our calibration=
.</div><div>- I&#39;m not entirely sure about the exact provenance of the d=
efault value, but it is a) small enough to work for all devices and rates, =
and b) is not a multiple of anything, so it&#39;s less likely that the RX c=
an interfere with the TX.</div><div><br></div><div>The problem with the cal=
ibration is that it is single-point (i.e., not frequency-selective). Howeve=
r, if you want to optimize the point where we calibrate, the `tx_wave_freq`=
 parameter is the one you want to tune, and not the `rx_offset`.</div><div>=
<br></div><div><br></div><div>I recommend you run the tools with the defaul=
t values, based on your description.</div><div><br></div><div>--M</div><div=
><br></div><div><br></div><div><br></div><div><br></div></div><br><div clas=
s=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_att=
r">On Fri, Jun 6, 2025 at 12:40=E2=80=AFAM Tommy Tsui &lt;<a href=3D"mailto=
:tommytsui@w5tech.com">tommytsui@w5tech.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-54426239518105=
89222">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_-5442623951810589222WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Hi,<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I have some open ques=
tions about tx_offset and rx_offset parameter usage for the UHD calibration=
 utility uhd_cal_rx_iq_balance, uhd_cal_tx_iq_balance, and uhd_cal_tx_dc_of=
fset.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">The cal util =E2=80=
=93help output indicates tx_offset is the TX LO offset from the RL LO in Hz=
. Likewise, for the rx_offset. If the usrp app uses a direct frequency conv=
ersion and no LO is involved, then tx_offset
 is zero. One strange thing is that when the parameter is not specified, th=
e cal util will use a default value 934400 internally. I don=E2=80=99t know=
 where this constant came from. Does it mean for direct frequency conversio=
n, I should specify tx_offset of 0 (to override
 the default 934400) when performing a calibration?<u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">My application runs o=
n X310 with 2 UBX-40 installed for duplex operation. It does specify a Rx L=
O on the receive and a Tx LO on the transmit, but the difference between th=
e Tx LO and Rx LO is 40MHz, which
 exceeds the tx_offset/rx_offset max limit of 20MHz. Therefore, my only opt=
ion is to run the calibration without tx_offset and rx_offset specified, bu=
t I wonder how the calibration result would impact my application performan=
ce.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I appreciate it if an=
yone can share his/her experience on the UHD cal utility rx_offset &amp; tx=
_offset usage.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thanks,<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Tom<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
</div>
<div style=3D"font-size:8pt;font-family:&quot;Calibri&quot;,sans-serif">
<hr>
The information contained in this e-mail and any attachments from W5 Techno=
logies, Inc. may contain confidential and/or proprietary information, and i=
s intended only for the named recipient to whom it was originally addressed=
. If you are not the intended recipient,
 any disclosure, distribution, or copying of this e-mail or its attachments=
 is strictly prohibited. If you have received this e-mail in error, please =
notify the sender immediately by return e-mail and permanently delete the e=
-mail and any attachments.</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--00000000000029c1310636e3d3a1--

--===============0025227024839873804==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0025227024839873804==--
