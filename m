Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F370482E624
	for <lists+usrp-users@lfdr.de>; Tue, 16 Jan 2024 02:06:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 72C4A38508A
	for <lists+usrp-users@lfdr.de>; Mon, 15 Jan 2024 20:06:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705367204; bh=4xad9ld7puc4/EmErjQUc9DGLoknKIlMN6P9BvTQax4=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=ssgAOO9xWYSLGiGjGufORm3jthDIghMCaUGNIdbAuj3gJtq4HPWw4dJ3rkqq7RCHj
	 6+4q2R+3R6eTAQIz+j53/fEVmYhzYKtfI1Y35HfAmPHSp+SiPf8Y4xvRv12VoyUMcW
	 c8fh5dbr/7tegtpEcCd0MAw62k6o9012WylSAY2Cf5WO5I8oy/BGpG6QYDacUODhAB
	 F9i8xY/Aobq9rsuTmA3q+r2x1/NkJ8AQQZ+oiIFwSlJ6nBrPBfRMwOVMBL0TqPNtGA
	 +BCdDMNEjqr4rK+T+k+TdudfMA2wtFdpgDgptP8Od60M/Ui/JXoHaC+BDultZPz1uF
	 uX6J9B9QCVvmg==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 66FDB384D7D
	for <usrp-users@lists.ettus.com>; Mon, 15 Jan 2024 20:05:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Uy+bVAff";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-555e07761acso11171521a12.0
        for <usrp-users@lists.ettus.com>; Mon, 15 Jan 2024 17:05:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1705367148; x=1705971948; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AMx5/zcv708wSc13iCdw+b9thdW1tnmU4siLt0jgP2w=;
        b=Uy+bVAffH/Ai+J17xFgnN4FqmTbVCHBcf3XYelSAHU4iQ1Cn4DEDP23gyF21AmF36+
         xTgzzM/QwRtEuGyP64Z/1B+p8wkzcN5AGtkO5jogr2pTKKWHr7rcXVWZA3on/ySFPPMQ
         6vFAzWyOt1vMVtkxIvrDXZ7EwsIXtBtoa4FvSx4jMyN/rU8D+U3ZYfU6AFigb/pTwa04
         nZc9iGVIj+lzvnaCmgg0Ye3MSYzXIi+CoeL2lRemPXebFJE00N5lKTcv/0mdSgZbDnoT
         A0anLuAG/4yaeuoWD1dth/uJWPj62W1jEzZ/ZaW+7qyOUkcJhB/Y1RoYwGIJoGyx3vsH
         vvNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705367148; x=1705971948;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AMx5/zcv708wSc13iCdw+b9thdW1tnmU4siLt0jgP2w=;
        b=mSgEPhv2wDBCDz/I/8GP21Cfml6swMLNekRbCHG+OoOQTSSg/x4tWRyekiWSoXyPTo
         XockFeKx0OiOd4R/kLQUMpxvIU/kqhiDEkjBGBhuCb81RBXpBcz8VHyvXlAcTthu/kDd
         5EDflioLdOMSL0t8P8O9Ozyp9VVSQfEBy7TN1DpikQDVKndemkTVPkNurE3pu9ipWfl9
         7M2YDMiyiurDuOmu4AO9ym4mrgHE2mQRRTj4zhfTRqUXI5Iow2tfJ2d7PhM2KBhCXuAG
         Tt3aTe1oZrg4Oe3e7++cFrVu9T3MR6YSdOE7D7nQE/M+nwCPoCzWww1LxkDLB5uQQUcB
         ImiQ==
X-Gm-Message-State: AOJu0Yx/1wflxFmbiQL9XJ8o2vBxGj/FAWdrTAe+B/XQOFmzdBQeHM91
	mBdetM89iIjgHg6V/FeRyXKqus2TfUPBU4THJp/YNg5GbV/E
X-Google-Smtp-Source: AGHT+IFdSC08up/0J0m478k44DG2LgWSM8v6J9PaAg5FV0h3ZCgI9tUdurkDDJF9x/uhP8QrPf3T0hRHLCyP9Gj+lJ0=
X-Received: by 2002:aa7:d745:0:b0:555:1c92:d1a9 with SMTP id
 a5-20020aa7d745000000b005551c92d1a9mr2311378eds.46.1705367148079; Mon, 15 Jan
 2024 17:05:48 -0800 (PST)
MIME-Version: 1.0
References: <SJ0PR09MB9126D8AC39D16B934989FD27EC6F2@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB9126D8AC39D16B934989FD27EC6F2@SJ0PR09MB9126.namprd09.prod.outlook.com>
Date: Mon, 15 Jan 2024 20:05:36 -0500
Message-ID: <CAB__hTTLD0gOihqFKzWWrZA7VSTJixjZ+Q=d14i2dNZH0-8Wiw@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: 7FQILENN7WRTUZLYIXS3CPP35ECTKHEF
X-Message-ID-Hash: 7FQILENN7WRTUZLYIXS3CPP35ECTKHEF
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>, Mark Kubiak <mark.kubiak@aero.org>, Jason W Zheng <jason.w.zheng@aero.org>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bug/problem aligning PPS to samples
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7FQILENN7WRTUZLYIXS3CPP35ECTKHEF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3411888542945391095=="

--===============3411888542945391095==
Content-Type: multipart/alternative; boundary="000000000000137165060f05bbfe"

--000000000000137165060f05bbfe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Eugene,
Are you expecting that the RF output (for Tx case) should be synced to the
PPS "at the RF output connector"?  It is my understanding that the sync
occurs at some place in the FPGA logic for the "radio" block. There will be
delay as this goes through D/A and RF chain.  Same in reverse for Rx.  As
long as you get a consistent delay (for a given sample rate), can you
calibrate and then choose a playout time that syncs the RF pulse to the PPS
pulse?
Rob

On Fri, Jan 12, 2024 at 4:38=E2=80=AFPM Eugene Grayver <eugene.grayver@aero=
.org>
wrote:

> Hello,
>
> There appears to be a bug related to alignment of the PPS to samples.  Th=
e
> issue applies to both TX and RX and was replicated on N321 and X310 using
> UDH 3.15 and 4.6.  It therefore appears to be an FPGA issue.
>
> *TX experiment*
> ----------------------------
>
>    - USRP is provided with external PPS and 10 MHz
>    - The PPS input is split and goes to the USRP and a scope
>    - The USRP output goes to a scope
>    - USRP outputs a file
>       - First 1000 samples are 1, remaining are zero
>       - File size =3D sample rate (i.e. repeats every second)
>    - Setup the experiment using both:
>       - GR file_source + usrp_sink
>          - Sync to unknown PPS
>          - usrp.set_start_time(5)
>       - Standalone C++ application (based on tx_samples_from_file)
>          - Added code to set_time_unknown_pps(0), then set start time
>          using metadata to 5
>
> Results:
>
>    - The USRP output is delayed relative to the PPS as observed on the
>    scope
>    - The delay is ~1.2 us for X310 and ~100us for N321
>    - The delay changes slightly (<1us) depending on the sample rate (e.g.
>    10 Msps vs 20 Msps)
>
>
> *RX experiment*
> ----------------------------
>
>    - USRP is provided with external PPS and 10 MHz
>    - USRP input is a pulse (generated using technique above) that repeats
>    every second
>    - Pulse is aligned to PPS, verified using a scope
>       - USRP records samples starting on a second boundary (time_t(5))
>    - GR usrp_source + file_sink
>       - standalone C++ application (based on rx_samples_to_file)
>       - Added code to set_time_unknown_pps(0), then set start time using
>          metadata to 5
>       - Recorded samples are analyzed to find the first 'large' value
>
> Results
>
>    - Recording appears to start late relative to PPS (only verified on
>    N321, delay is ~100 us, same as for the TX delay)
>
>
> *Thoughts*
>
>    - I recall (years ago) there was a fix to a similar problem.  The FPGA
>    was modified to trigger ADC/DAC samples after the DDC rather than befo=
re.
>    Did it regress at some point?
>
>
>    - The delays are very consistent, indicating that the PPS is in fact
>    being used (i.e. it is not random).
>
>
>    - We ran some experiments to analyze the stability and accuracy of
>    *relative* timing between RX and TX (i.e. turn-around) when the start
>    time for TX and RX are specified.  The results are excellent =E2=80=93=
 delay is
>    stable and accurate to < 100 ps.
>
>
> This seems like a simple thing to fix in the FPGA =E2=80=93 there is no r=
eason for
> the delay to be > 1 sample clock.
>
> Eugene.
>
> ________________________
>
> Eugene Grayver, Ph.D.
> Aerospace Corp., Principal Engineer
> Tel: 310.336.1274
> ________________________
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000137165060f05bbfe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Eugene,<div>Are you expecting that the RF output (for T=
x case) should be synced to the PPS &quot;at the RF output connector&quot;?=
=C2=A0 It is my understanding that the sync occurs at some place in the FPG=
A logic for the &quot;radio&quot; block. There will be delay as this goes t=
hrough D/A and RF chain.=C2=A0 Same in reverse for Rx.=C2=A0 As long as you=
 get a consistent delay (for a given sample rate), can you calibrate and th=
en choose a playout time that syncs the RF pulse to the PPS pulse?</div><di=
v>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Fri, Jan 12, 2024 at 4:38=E2=80=AFPM Eugene Grayver &lt;<a hr=
ef=3D"mailto:eugene.grayver@aero.org">eugene.grayver@aero.org</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"=
msg-2294300194068039122">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
There appears to be a bug related to alignment of the PPS to samples.=C2=A0=
 The issue applies to both TX and RX and was replicated on N321 and X310 us=
ing UDH 3.15 and 4.6.=C2=A0 It therefore appears to be an FPGA issue.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<b>TX experiment</b></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
----------------------------</div>
<ul style=3D"list-style-type:disc">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cal=
ibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">USRP is provided=
 with external PPS and 10 MHz<br>
</span></li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontS=
ervice,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cal=
ibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">The PPS input is=
 split and goes to the USRP and a scope</span></li><li style=3D"font-family=
:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;=
font-size:12pt;color:rgb(0,0,0)">
<span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cal=
ibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">The USRP output =
goes to a scope</span></li><li style=3D"font-family:Aptos,Aptos_EmbeddedFon=
t,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb=
(0,0,0)">
<span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cal=
ibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">USRP outputs a f=
ile</span></li><ul style=3D"list-style-type:circle">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">First 1000 =
samples are 1, remaining are zero</span></div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cal=
ibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">File size =3D sa=
mple rate (i.e. repeats every second)</span></li></ul>
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cal=
ibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Setup the experi=
ment using both:</span></li><ul style=3D"list-style-type:circle">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cal=
ibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">GR file_source +=
 usrp_sink</span></li><ul style=3D"list-style-type:square">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cal=
ibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Sync to unknown =
PPS</span></li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cal=
ibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">usrp.set_start_t=
ime(5)</span></li></ul>
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cal=
ibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Standalone C++ a=
pplication (based on tx_samples_from_file)</span></li><ul style=3D"list-sty=
le-type:square">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cal=
ibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Added code to se=
t_time_unknown_pps(0), then set start time using metadata to 5</span></li><=
/ul>
</ul>
</ul>
<div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Results:</s=
pan></div>
<ul style=3D"list-style-type:disc">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cal=
ibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">The USRP output =
is delayed relative to the PPS as observed on the scope</span></li><li styl=
e=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helve=
tica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cal=
ibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">The delay is ~1.=
2 us for X310 and ~100us for N321</span></li><li style=3D"font-family:Aptos=
,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-s=
ize:12pt;color:rgb(0,0,0)">
<span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cal=
ibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">The delay change=
s slightly (&lt;1us) depending on the sample rate (e.g. 10 Msps vs 20 Msps)=
</span></li></ul>
<div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
</span></div>
<div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><b>RX exper=
iment</b></span></div>
<div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">-----------=
-----------------</span></div>
<ul style=3D"text-align:left;list-style-type:disc">
<li style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;font-weight:40=
0;color:rgb(0,0,0)">
<span style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,A=
ptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,=
0,0);font-weight:400">USRP is provided with external PPS and 10 MHz</span><=
/li><li style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont=
,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;font-weigh=
t:400;color:rgb(0,0,0)">
<div><span style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedF=
ont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:r=
gb(0,0,0);font-weight:400">USRP input is a pulse (generated using technique=
 above) that repeats
 every second</span></div>
</li><ul style=3D"list-style-type:circle">
<li style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;font-weight:40=
0;color:rgb(0,0,0)">
<div><span style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedF=
ont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:r=
gb(0,0,0);font-weight:400">Pulse is aligned to PPS, verified using a scope<=
/span></div>
</li></ul>
<li style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;font-weight:40=
0;color:rgb(0,0,0)">
<div><span style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedF=
ont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:r=
gb(0,0,0);font-weight:400">USRP records samples starting on a second bounda=
ry (time_t(5))</span></div>
</li><ul style=3D"list-style-type:circle">
<li style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;font-weight:40=
0;color:rgb(0,0,0)">
<div><span style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedF=
ont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:r=
gb(0,0,0);font-weight:400">GR usrp_source + file_sink</span></div>
</li><li style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFon=
t,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;font-weig=
ht:400;color:rgb(0,0,0)">
<div><span style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedF=
ont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:r=
gb(0,0,0);font-weight:400">standalone C++ application (based on rx_samples_=
to_file)</span></div>
</li><ul style=3D"list-style-type:square">
<li style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;font-weight:40=
0;color:rgb(0,0,0)">
<span style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,A=
ptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,=
0,0);font-weight:400">Added code to set_time_unknown_pps(0), then set start=
 time using metadata
 to 5</span></li></ul>
</ul>
<li style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;font-weight:40=
0;color:rgb(0,0,0)">
<div><span style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedF=
ont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:r=
gb(0,0,0);font-weight:400">Recorded samples are analyzed to find the first =
&#39;large&#39; value</span></div>
</li></ul>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<span style=3D"letter-spacing:normal;font-weight:400">Results</span></div>
<ul style=3D"list-style-type:disc">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cal=
ibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Recording appear=
s to start late relative to PPS (only verified on N321, delay is ~100 us, s=
ame as for the TX delay)</span></li></ul>
<div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
</span></div>
<div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><b>Thoughts=
</b></span></div>
<div>
<ul>
<li style=3D"font-size:12pt;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;color:rgb(0,0,0);list-style-type:dis=
c">
<span><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServi=
ce,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">I recall (=
years ago) there was a fix to a similar problem.=C2=A0 The FPGA was modifie=
d to trigger ADC/DAC samples
 after the DDC rather than before.=C2=A0 Did it regress at some point?</spa=
n><br>
</span></li></ul>
</div>
<div>
<ul>
<li style=3D"font-size:12pt;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;color:rgb(0,0,0);list-style-type:dis=
c">
<span><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServi=
ce,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">The delays=
 are very consistent, indicating that the PPS is in fact being used (i.e. i=
t is not random).</span><br>
</span></li></ul>
</div>
<div>
<ul>
<li style=3D"list-style-type:disc"><span><span style=3D"font-family:Aptos,A=
ptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">We ran some experiments to analyze the stability a=
nd accuracy of
<b>relative</b>=C2=A0timing between RX and TX (i.e. turn-around) when the s=
tart time for TX and RX are specified.=C2=A0 The results are excellent =E2=
=80=93 delay is stable and accurate to &lt; 100 ps.</span><br>
</span></li></ul>
<div><span><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFont=
Service,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
</span></span></div>
</div>
<div><span><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFont=
Service,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">This =
seems like a simple thing to fix in the FPGA =E2=80=93 there is no reason f=
or the delay to be &gt; 1 sample
 clock.</span></span></div>
<div><span><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFont=
Service,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
</span></span></div>
<div><span><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFont=
Service,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Eugen=
e.</span></span></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_-8991588755533013364Signature">
<div id=3D"m_-8991588755533013364divtagdefaultwrapper" dir=3D"ltr" style=3D=
"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;font-size:=
12pt;background-color:rgb(255,255,255)">
<p><span style=3D"font-family:Arial,sans-serif;font-size:13.33px;color:rgb(=
0,0,0)">________________________</span><span style=3D"font-family:Arial,san=
s-serif;font-size:10pt;color:black"><br>
</span></p>
<p><span style=3D"font-family:Arial,sans-serif;font-size:10pt;color:black">=
Eugene Grayver, Ph.D.<br>
Aerospace Corp., Principal Engineer<br>
Tel: 310.336.1274<br>
________________________</span><br>
</p>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000137165060f05bbfe--

--===============3411888542945391095==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3411888542945391095==--
