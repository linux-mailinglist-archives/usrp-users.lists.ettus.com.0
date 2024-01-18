Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8A3831314
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jan 2024 08:25:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 60612384E42
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jan 2024 02:25:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705562740; bh=7Mh6I81wSK3F2BBtpVaZFNC+TsLt/YedX0xeBHKf9zM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Ogr0U6tNUN2gaPMX4bkQfxJM3sMn9Rt6oL0+2r7MugMDOT8Ye9W95xjVbyaLy7GoB
	 SLKZyeV3qPgTmtPoxlwg7hzpvkxmeLPJ5iUHamFcGEHxQbWXHeqykPHFLAxksf9CNz
	 TmtqS9NsdhGhhFxdfGHilsK4ATVkCq/nmakvnRPT32SOskdfCkUqmjCm0ntNqMHL2O
	 noRkBHZbR2qyXG1/CYD96ggb9rmoilePV0bC3smfTygj5dDYD3sONvU1Bt9Mp+7qwn
	 MeAJRSDSerqVvX7t6egmE9pbgXJRV60GDoO+aS5ertt3GET58czNy2Ulatj/UhG8hK
	 7hfV7I9uiF+kg==
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	by mm2.emwd.com (Postfix) with ESMTPS id D2E9D384B6D
	for <usrp-users@lists.ettus.com>; Thu, 18 Jan 2024 02:24:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AF3Wv4Hh";
	dkim-atps=neutral
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-7d130979108so1344689241.1
        for <usrp-users@lists.ettus.com>; Wed, 17 Jan 2024 23:24:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705562679; x=1706167479; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Jl3q1/qxImxe/LN+Po8l1peA6/IKKZZx1qHA3kOcGqw=;
        b=AF3Wv4HhFSacnlIrK+mMOrpW/YbLRcLBPAQqWtpredMUHWers1gACU4/LXeOzQ3yqb
         Ma02vrHp82rFabrgk7ldIJo2eeX6V9X1eQJlifpCI1fibP3W0f6pcpuJhjRCeaBFNzhI
         4d83Z7GAoCMZoVoMjkaSxxoyFJBU5tTLrqNlfSmZRGxfiZdD+J2EpcKpji18psA5GiHu
         haqXEcanAYzNQ1iSHM1IZ83/npoQVvlTzG/Y57zdzWmOQWwH7Pg3I4bIZXnsR6+7wYEv
         qxZwezScy7qgBpOnx8+PgEyC2gnmHOOG4ex35M4TvREeNOMZcI7zOw+XhJjngMPiawdA
         CkYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705562679; x=1706167479;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jl3q1/qxImxe/LN+Po8l1peA6/IKKZZx1qHA3kOcGqw=;
        b=NPa95Kpl49isu5jGirPfbUNJyuJ/XBtdqN8UwDv/Szb81J+goZ6rHuTbbRJNoK6scI
         F6fIfrYe1/S+yH9i4F0ssBCR3TdjUf0tUYxh/F0y5KUzcoCLRhCIuxF2HVtkcPfcOFzG
         1PXwr5LJNmZLG6eI72/njgBhiPCZHOUM3jd2GitxUZD7eSDuIDRAHF+qx/vWPZiuWWhe
         8xn4Tvl6jBSCVzOGG6P3oASM1UrxIIesB0blhRFMA033lSHPjBkgUBTGbIegLvqNNTqB
         xL8vodzAAIGN1++DBpu6jAlDKSxt8cIJvfF27c4HpiMFHfQJsWIpCiYCpUPTT4pA6/0L
         XERw==
X-Gm-Message-State: AOJu0YxgAaZ5bmUozoFbwZmPaG1h8XG3J1T4puRCUwLlPOQEkjGdkuEO
	aZyleYtNmZ5EBXZ42HE08JI9omae6ElZk7vfhhZEFElm33cIb5WO3GHomYfdBKAQ3SQpe/POoEE
	RAsS9p+Fcsz4RCNH+XhaYEZ3Y1DA=
X-Google-Smtp-Source: AGHT+IE6xhD2idB7D22vJlBas6xgToc6z0f+qhMtEgiyzt7G1sL9Gv7oxoxRxt328MSbH7oar7AVEP1z3puZ4MZDQxA=
X-Received: by 2002:a67:ed45:0:b0:467:f882:287 with SMTP id
 m5-20020a67ed45000000b00467f8820287mr333600vsp.10.1705562679226; Wed, 17 Jan
 2024 23:24:39 -0800 (PST)
MIME-Version: 1.0
References: <SJ0PR09MB9126D8AC39D16B934989FD27EC6F2@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAB__hTTLD0gOihqFKzWWrZA7VSTJixjZ+Q=d14i2dNZH0-8Wiw@mail.gmail.com>
 <SJ0PR09MB912651618314E3BC38064198EC732@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <bfc84784-5fb3-4682-92dd-4f781dcd5fcb@gmail.com>
In-Reply-To: <bfc84784-5fb3-4682-92dd-4f781dcd5fcb@gmail.com>
From: Steve Hamn <stevehamn311@gmail.com>
Date: Wed, 17 Jan 2024 23:24:28 -0800
Message-ID: <CAOYGa72RuXNXyt2sprdyEP5NX+LtACG0Qkmx834hg+Odth8dxQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: K2FBHEGPK3WWNJJXNWFPADDV3PSFQ2NR
X-Message-ID-Hash: K2FBHEGPK3WWNJJXNWFPADDV3PSFQ2NR
X-MailFrom: stevehamn311@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bug/problem aligning PPS to samples
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K2FBHEGPK3WWNJJXNWFPADDV3PSFQ2NR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4301484909576820844=="

--===============4301484909576820844==
Content-Type: multipart/alternative; boundary="000000000000a335b2060f334154"

--000000000000a335b2060f334154
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Do you know what the Pulse Width of the PPS in the N3XX GPSDO is? (I.e. how
much time difference would this result in?).

I've been seeing ~100ms of timing error with an N320 using GPS vs an N320
using WR, that I've been trying to debug. I'm using UHD 4.4 so I'm
wondering if this could be a cause?

Thanks,

Steve



On Wed, Jan 17, 2024, 13:47 Marcus D. Leech <patchvonbraun@gmail.com> wrote=
:

> On 16/01/2024 12:10, Eugene Grayver wrote:
>
> Hi,
>
> There should be some delay, but it should be on the order of a few clock
> cycles (ADC/DAC latency).  For the N321 we are observing 100us,
> corresponding to ~2000 samples.  The X310 delay is ~1us, which correspond=
s
> to 20 samples.  Still a lot higher than I would expect just due to
> ADC/DAC.  The delay changes as a function of the sample rate.  If the
> synchronization is after the DDC (as I think it is), I would expect the
> delay to be independent of the decimation ratio.
>
> We are doing the calibration and will use that to compensate, but I think
> this is something that can be mitigated (to <1us) in the FPGA.
>
> Eugene.
>
> Eugene:
>
> Talking to R&D folks (or, rather, R&D-adjacent) at NI, there was a proble=
m
> in UHD starting in 4.1 where the PPS was aligning on
>   the *trailing* edge, so time would be off by the pulse-width.
>
> Make sure (on the N3xx case) you're running UHD 4.5 or UHD 4.6 on both th=
e
> host and the device itself.
>
>
>
>
> ________________________
>
> Eugene Grayver, Ph.D.
> Aerospace Corp., Principal Engineer
> Tel: 310.336.1274
> ________________________
> ------------------------------
> *From:* Rob Kossler <rkossler@nd.edu> <rkossler@nd.edu>
> *Sent:* Monday, January 15, 2024 5:05 PM
> *To:* Eugene Grayver <eugene.grayver@aero.org?>?
> *Cc:* usrp-users <usrp-users@lists.ettus.com> <usrp-users@lists.ettus.com=
>;
> Mark Kubiak <mark.kubiak@aero.org> <mark.kubiak@aero.org>; Jason W Zheng
> <jason.w.zheng@aero.org> <jason.w.zheng@aero.org>
> *Subject:* Re: [USRP-users] Bug/problem aligning PPS to samples
>
> Hi Eugene,
> Are you expecting that the RF output (for Tx case) should be synced to th=
e
> PPS "at the RF output connector"?  It is my understanding that the sync
> occurs at some place in the FPGA logic for the "radio" block. There will =
be
> delay as this goes through D/A and RF chain.  Same in reverse for Rx.  As
> long as you get a consistent delay (for a given sample rate), can you
> calibrate and then choose a playout time that syncs the RF pulse to the P=
PS
> pulse?
> Rob
>
> On Fri, Jan 12, 2024 at 4:38=E2=80=AFPM Eugene Grayver <eugene.grayver@ae=
ro.org>
> wrote:
>
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
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--000000000000a335b2060f334154
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Marcus,<div dir=3D"auto"><br></div><div dir=3D"auto">D=
o you know what the Pulse Width of the PPS in the N3XX GPSDO is? (I.e. how =
much time difference would this result in?).=C2=A0</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">I&#39;ve been seeing ~100ms of timing error with=
 an N320 using GPS vs an N320 using WR, that I&#39;ve been trying to debug.=
 I&#39;m using UHD 4.4 so I&#39;m wondering if this could be a cause?</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">Thanks,</div><div dir=3D"auto=
"><br></div><div dir=3D"auto">Steve</div><div dir=3D"auto"><br></div><br><b=
r><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Wed, Jan 17, 2024, 13:47 Marcus D. Leech &lt;<a href=3D"mailto:patc=
hvonbraun@gmail.com" target=3D"_blank" rel=3D"noreferrer">patchvonbraun@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 16/01/2024 12:10, Eugene Grayver
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
      <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
        Hi,</div>
      <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
        There should be some delay, but it should be on the order of a
        few clock cycles (ADC/DAC latency).=C2=A0 For the N321 we are
        observing 100us, corresponding to ~2000 samples.=C2=A0 The X310 del=
ay
        is ~1us, which corresponds to 20 samples.=C2=A0 Still a lot higher
        than I would expect just due to ADC/DAC.=C2=A0 The delay changes as=
 a
        function of the sample rate.=C2=A0 If the synchronization is after
        the DDC (as I think it is), I would expect the delay to be
        independent of the decimation ratio.=C2=A0=C2=A0</div>
      <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
        We are doing the calibration and will use that to compensate,
        but I think this is something that can be mitigated (to &lt;1us)
        in the FPGA.</div>
      <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
        Eugene.</div>
    </blockquote>
    Eugene:<br>
    <br>
    Talking to R&amp;D folks (or, rather, R&amp;D-adjacent) at NI, there
    was a problem in UHD starting in 4.1 where the PPS was aligning on<br>
    =C2=A0 the *trailing* edge, so time would be off by the pulse-width.<br=
>
    <br>
    Make sure (on the N3xx case) you&#39;re running UHD 4.5 or UHD 4.6 on
    both the host and the device itself.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div id=3D"m_-4699527328678908112m_-7990498404868970052Signature">
        <div id=3D"m_-4699527328678908112m_-7990498404868970052divtagdefaul=
twrapper" dir=3D"ltr" style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,H=
elvetica,sans-serif;font-size:12pt;background-color:rgb(255,255,255)">
          <p><span style=3D"font-family:Arial,sans-serif;font-size:13.33px;=
color:rgb(0,0,0)">________________________</span><span style=3D"font-family=
:Arial,sans-serif;font-size:10pt;color:black"><br>
            </span></p>
          <p><span style=3D"font-family:Arial,sans-serif;font-size:10pt;col=
or:black">Eugene
              Grayver, Ph.D.<br>
              Aerospace Corp., Principal Engineer<br>
              Tel: 310.336.1274<br>
              ________________________</span><br>
          </p>
        </div>
      </div>
      <hr style=3D"display:inline-block;width:98%">
      <div id=3D"m_-4699527328678908112m_-7990498404868970052divRplyFwdMsg"=
 dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" co=
lor=3D"#000000"><b>From:</b> Rob
          Kossler <a href=3D"mailto:rkossler@nd.edu" rel=3D"noreferrer nore=
ferrer" target=3D"_blank">&lt;rkossler@nd.edu&gt;</a><br>
          <b>Sent:</b> Monday, January 15, 2024 5:05 PM<br>
          <b>To:</b> Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@ae=
ro.org" rel=3D"noreferrer noreferrer" target=3D"_blank">eugene.grayver@aero=
.org</a></font><span>?</span><font style=3D"font-size:11pt" face=3D"Calibri=
, sans-serif" color=3D"#000000">&gt;</font><span>?</span><br>
        <font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=
=3D"#000000">
          <b>Cc:</b> usrp-users <a href=3D"mailto:usrp-users@lists.ettus.co=
m" rel=3D"noreferrer noreferrer" target=3D"_blank">&lt;usrp-users@lists.ett=
us.com&gt;</a>; Mark
          Kubiak <a href=3D"mailto:mark.kubiak@aero.org" rel=3D"noreferrer =
noreferrer" target=3D"_blank">&lt;mark.kubiak@aero.org&gt;</a>; Jason W Zhe=
ng
          <a href=3D"mailto:jason.w.zheng@aero.org" rel=3D"noreferrer noref=
errer" target=3D"_blank">&lt;jason.w.zheng@aero.org&gt;</a><br>
          <b>Subject:</b> Re: [USRP-users] Bug/problem aligning PPS to
          samples</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <div dir=3D"ltr">Hi Eugene,
          <div>Are you expecting that the RF output (for Tx case) should
            be synced to the PPS &quot;at the RF output connector&quot;?=C2=
=A0 It is my
            understanding that the sync occurs at some place in the FPGA
            logic for the &quot;radio&quot; block. There will be delay as t=
his
            goes through D/A and RF chain.=C2=A0 Same in reverse for Rx.=C2=
=A0 As
            long as you get a consistent delay (for a given sample
            rate), can you calibrate and then choose a playout time that
            syncs the RF pulse to the PPS pulse?</div>
          <div>Rob</div>
        </div>
        <br>
        <div>
          <div dir=3D"ltr">On Fri, Jan 12, 2024 at
            4:38=E2=80=AFPM Eugene Grayver &lt;<a href=3D"mailto:eugene.gra=
yver@aero.org" rel=3D"noreferrer noreferrer" target=3D"_blank">eugene.grayv=
er@aero.org</a>&gt;
            wrote:<br>
          </div>
          <blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
            <div>
              <div dir=3D"ltr">
                <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MS=
FontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  Hello,</div>
                <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MS=
FontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  <br>
                </div>
                <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MS=
FontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  There appears to be a bug related to alignment of the
                  PPS to samples.=C2=A0 The issue applies to both TX and RX
                  and was replicated on N321 and X310 using UDH 3.15 and
                  4.6.=C2=A0 It therefore appears to be an FPGA issue.</div=
>
                <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MS=
FontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  <br>
                </div>
                <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MS=
FontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  <b>TX experiment</b></div>
                <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MS=
FontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  ----------------------------</div>
                <ul style=3D"list-style-type:disc">
                  <li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                    <span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0)">USRP
                      is provided with external PPS and 10 MHz<br>
                    </span></li>
                  <li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                    <span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0)">The
                      PPS input is split and goes to the USRP and a
                      scope</span></li>
                  <li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                    <span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0)">The
                      USRP output goes to a scope</span></li>
                  <li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                    <span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0)">USRP
                      outputs a file</span></li>
                  <ul style=3D"list-style-type:circle">
                    <li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)=
">
                      <div><span style=3D"font-family:Aptos,Aptos_EmbeddedF=
ont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:r=
gb(0,0,0)">First
                          1000 samples are 1, remaining are zero</span></di=
v>
                    </li>
                    <li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)=
">
                      <span style=3D"font-family:Aptos,Aptos_EmbeddedFont,A=
ptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,=
0,0)">File
                        size =3D sample rate (i.e. repeats every second)</s=
pan></li>
                  </ul>
                  <li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                    <span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0)">Setup
                      the experiment using both:</span></li>
                  <ul style=3D"list-style-type:circle">
                    <li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)=
">
                      <span style=3D"font-family:Aptos,Aptos_EmbeddedFont,A=
ptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,=
0,0)">GR
                        file_source + usrp_sink</span></li>
                    <ul style=3D"list-style-type:square">
                      <li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0)">
                        <span style=3D"font-family:Aptos,Aptos_EmbeddedFont=
,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(=
0,0,0)">Sync
                          to unknown PPS</span></li>
                      <li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0)">
                        <span style=3D"font-family:Aptos,Aptos_EmbeddedFont=
,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(=
0,0,0)">usrp.set_start_time(5)</span></li>
                    </ul>
                    <li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)=
">
                      <span style=3D"font-family:Aptos,Aptos_EmbeddedFont,A=
ptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,=
0,0)">Standalone
                        C++ application (based on tx_samples_from_file)</sp=
an></li>
                    <ul style=3D"list-style-type:square">
                      <li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0)">
                        <span style=3D"font-family:Aptos,Aptos_EmbeddedFont=
,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(=
0,0,0)">Added
                          code to set_time_unknown_pps(0), then set
                          start time using metadata to 5</span></li>
                    </ul>
                  </ul>
                </ul>
                <div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Ap=
tos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0=
,0)">Results:</span></div>
                <ul style=3D"list-style-type:disc">
                  <li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                    <span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0)">The
                      USRP output is delayed relative to the PPS as
                      observed on the scope</span></li>
                  <li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                    <span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0)">The
                      delay is ~1.2 us for X310 and ~100us for N321</span><=
/li>
                  <li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                    <span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0)">The
                      delay changes slightly (&lt;1us) depending on the
                      sample rate (e.g. 10 Msps vs 20 Msps)</span></li>
                </ul>
                <div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Ap=
tos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0=
,0)"><br>
                  </span></div>
                <div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Ap=
tos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0=
,0)"><b>RX
                      experiment</b></span></div>
                <div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Ap=
tos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0=
,0)">----------------------------</span></div>
                <ul style=3D"text-align:left;list-style-type:disc">
                  <li style=3D"letter-spacing:normal;font-family:Aptos,Apto=
s_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:1=
2pt;font-weight:400;color:rgb(0,0,0)">
                    <span style=3D"letter-spacing:normal;font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-si=
ze:12pt;color:rgb(0,0,0);font-weight:400">USRP
                      is provided with external PPS and 10 MHz</span></li>
                  <li style=3D"letter-spacing:normal;font-family:Aptos,Apto=
s_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:1=
2pt;font-weight:400;color:rgb(0,0,0)">
                    <div><span style=3D"letter-spacing:normal;font-family:A=
ptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;fo=
nt-size:12pt;color:rgb(0,0,0);font-weight:400">USRP
                        input is a pulse (generated using technique
                        above) that repeats every second</span></div>
                  </li>
                  <ul style=3D"list-style-type:circle">
                    <li style=3D"letter-spacing:normal;font-family:Aptos,Ap=
tos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size=
:12pt;font-weight:400;color:rgb(0,0,0)">
                      <div><span style=3D"letter-spacing:normal;font-family=
:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;=
font-size:12pt;color:rgb(0,0,0);font-weight:400">Pulse
                          is aligned to PPS, verified using a scope</span><=
/div>
                    </li>
                  </ul>
                  <li style=3D"letter-spacing:normal;font-family:Aptos,Apto=
s_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:1=
2pt;font-weight:400;color:rgb(0,0,0)">
                    <div><span style=3D"letter-spacing:normal;font-family:A=
ptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;fo=
nt-size:12pt;color:rgb(0,0,0);font-weight:400">USRP
                        records samples starting on a second boundary
                        (time_t(5))</span></div>
                  </li>
                  <ul style=3D"list-style-type:circle">
                    <li style=3D"letter-spacing:normal;font-family:Aptos,Ap=
tos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size=
:12pt;font-weight:400;color:rgb(0,0,0)">
                      <div><span style=3D"letter-spacing:normal;font-family=
:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;=
font-size:12pt;color:rgb(0,0,0);font-weight:400">GR
                          usrp_source + file_sink</span></div>
                    </li>
                    <li style=3D"letter-spacing:normal;font-family:Aptos,Ap=
tos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size=
:12pt;font-weight:400;color:rgb(0,0,0)">
                      <div><span style=3D"letter-spacing:normal;font-family=
:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;=
font-size:12pt;color:rgb(0,0,0);font-weight:400">standalone
                          C++ application (based on rx_samples_to_file)</sp=
an></div>
                    </li>
                    <ul style=3D"list-style-type:square">
                      <li style=3D"letter-spacing:normal;font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-si=
ze:12pt;font-weight:400;color:rgb(0,0,0)">
                        <span style=3D"letter-spacing:normal;font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;fon=
t-size:12pt;color:rgb(0,0,0);font-weight:400">Added
                          code to set_time_unknown_pps(0), then set
                          start time using metadata to 5</span></li>
                    </ul>
                  </ul>
                  <li style=3D"letter-spacing:normal;font-family:Aptos,Apto=
s_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:1=
2pt;font-weight:400;color:rgb(0,0,0)">
                    <div><span style=3D"letter-spacing:normal;font-family:A=
ptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;fo=
nt-size:12pt;color:rgb(0,0,0);font-weight:400">Recorded
                        samples are analyzed to find the first &#39;large&#=
39;
                        value</span></div>
                  </li>
                </ul>
                <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MS=
FontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  <span style=3D"letter-spacing:normal;font-weight:400">Res=
ults</span></div>
                <ul style=3D"list-style-type:disc">
                  <li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                    <span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0)">Recording
                      appears to start late relative to PPS (only
                      verified on N321, delay is ~100 us, same as for
                      the TX delay)</span></li>
                </ul>
                <div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Ap=
tos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0=
,0)"><br>
                  </span></div>
                <div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Ap=
tos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0=
,0)"><b>Thoughts</b></span></div>
                <div>
                  <ul>
                    <li style=3D"font-size:12pt;font-family:Aptos,Aptos_Emb=
eddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;color:rgb(0,0,0)=
;list-style-type:disc">
                      <span><span style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:=
rgb(0,0,0)">I
                          recall (years ago) there was a fix to a
                          similar problem.=C2=A0 The FPGA was modified to
                          trigger ADC/DAC samples after the DDC rather
                          than before.=C2=A0 Did it regress at some point?<=
/span><br>
                      </span></li>
                  </ul>
                </div>
                <div>
                  <ul>
                    <li style=3D"font-size:12pt;font-family:Aptos,Aptos_Emb=
eddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;color:rgb(0,0,0)=
;list-style-type:disc">
                      <span><span style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:=
rgb(0,0,0)">The
                          delays are very consistent, indicating that
                          the PPS is in fact being used (i.e. it is not
                          random).</span><br>
                      </span></li>
                  </ul>
                </div>
                <div>
                  <ul>
                    <li style=3D"list-style-type:disc"><span><span style=3D=
"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica=
,sans-serif;font-size:12pt;color:rgb(0,0,0)">We
                          ran some experiments to analyze the stability
                          and accuracy of
                          <b>relative</b>=C2=A0timing between RX and TX (i.=
e.
                          turn-around) when the start time for TX and RX
                          are specified.=C2=A0 The results are excellent =
=E2=80=93
                          delay is stable and accurate to &lt; 100 ps.</spa=
n><br>
                      </span></li>
                  </ul>
                  <div><span><span style=3D"font-family:Aptos,Aptos_Embedde=
dFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)"><br>
                      </span></span></div>
                </div>
                <div><span><span style=3D"font-family:Aptos,Aptos_EmbeddedF=
ont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:r=
gb(0,0,0)">This
                      seems like a simple thing to fix in the FPGA =E2=80=
=93
                      there is no reason for the delay to be &gt; 1
                      sample clock.</span></span></div>
                <div><span><span style=3D"font-family:Aptos,Aptos_EmbeddedF=
ont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:r=
gb(0,0,0)"><br>
                    </span></span></div>
                <div><span><span style=3D"font-family:Aptos,Aptos_EmbeddedF=
ont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:r=
gb(0,0,0)">Eugene.</span></span></div>
                <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MS=
FontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  <br>
                </div>
                <div id=3D"m_-4699527328678908112m_-7990498404868970052x_m_=
-8991588755533013364Signature">
                  <div id=3D"m_-4699527328678908112m_-7990498404868970052x_=
m_-8991588755533013364divtagdefaultwrapper" dir=3D"ltr" style=3D"color:rgb(=
0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;backgr=
ound-color:rgb(255,255,255)">
                    <p><span style=3D"font-family:Arial,sans-serif;font-siz=
e:13.33px;color:rgb(0,0,0)">________________________</span><span style=3D"f=
ont-family:Arial,sans-serif;font-size:10pt;color:black"><br>
                      </span></p>
                    <p><span style=3D"font-family:Arial,sans-serif;font-siz=
e:10pt;color:black">Eugene
                        Grayver, Ph.D.<br>
                        Aerospace Corp., Principal Engineer<br>
                        Tel: 310.336.1274<br>
                        ________________________</span><br>
                    </p>
                  </div>
                </div>
              </div>
              _______________________________________________<br>
              USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists=
.ettus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">
                usrp-users@lists.ettus.com</a><br>
              To unsubscribe send an email to <a href=3D"mailto:usrp-users-=
leave@lists.ettus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">
                usrp-users-leave@lists.ettus.com</a><br>
            </div>
          </blockquote>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a=
>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users-leave@l=
ists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a=
><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users-leave@l=
ists.ettus.com<br></a><br>
</blockquote></div></div>

--000000000000a335b2060f334154--

--===============4301484909576820844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4301484909576820844==--
