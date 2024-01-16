Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE2882FC77
	for <lists+usrp-users@lfdr.de>; Tue, 16 Jan 2024 23:20:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4A811385586
	for <lists+usrp-users@lfdr.de>; Tue, 16 Jan 2024 17:20:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705443656; bh=LuL4LKaKdr8T4IAcwaHXMPzcy80f55XnXWA7o4KFDVQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ZTIpsqsV/mz7l4UUy21mKs/0gPzEVGCDnIyPb2hw31o9ePkeCyLD39nou1/11HDWP
	 JOeKQ19kRI+jaHzRS/neIKbU+kVq/mhOhnbPi4ovfVJIbUXneiLjkk9jP9ajUx7H42
	 GKCdfKsuIqJ4AJ6gZ2+T4swotK+C/27AmtXfoviyyDfTR63o5yN1fjM7mZyjpPFpDO
	 9mvTBJchfKDLatI099Tn/miHEg7Vu5+yoQ5LhCm74l5kb/a1GOOmwsVsGNkbf5MXgt
	 sCpbU3TvJPW5DCwzzaMxQA/+q2QHTNd7R0kI8tDyj/Wm/s5olxrqhMi9FBc1hHGUrL
	 Rda5fSxRGK5Yw==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 846D938518F
	for <usrp-users@lists.ettus.com>; Tue, 16 Jan 2024 17:19:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UvIIob4z";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-68137bf3636so44255056d6.1
        for <usrp-users@lists.ettus.com>; Tue, 16 Jan 2024 14:19:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705443597; x=1706048397; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ot4plVU5a3leI+Oql5+13i3uLa5TWhtqZn4LGsA3B8M=;
        b=UvIIob4zpNZk6gh0oBwO2r6xpf/56ImozcGJVWyev7+lNnYJeMdwYJkkZ3+Rnq3zRi
         NXmgPAjSySupX+RpESOog5zJXEYK3y/ANeIOfxJ9s6RAWMbfYchooi7gLcp7T+fz8274
         YtuheiVvjQ3pCNjaoHyvTuGIro5iBItchgFg2blvNfNEelWxm7fcqDhCe3UYwgtoeoBF
         yaJSEuEgjzHB9ObB0II9KJDNZnokh48IPEXSfxo4ELGap+nFEo4AMK0PwCdB//vpc+3b
         hS07es5IHUIj6y2OEe3LkPdnOIVgCGlj0v6P9gvZ4xT1Em/cDzG7FaIWwhyDis8irM7X
         qbtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705443597; x=1706048397;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ot4plVU5a3leI+Oql5+13i3uLa5TWhtqZn4LGsA3B8M=;
        b=G6SUNp/HZnRIhTAKKKFBueT0pJAVxXG5dhDMQogNzGZjT2fChikzd/CP7cKz6Cl/nc
         /27yprEL1DuvV4uOq9cspF71mmZC7nRv1VNuN6MzDebidRZXlJLX2tL0NP/zoNwudaM1
         bsBgsuNrVJgYBGhClPsKWbBIT1i1cQzkS+adp4+bT5o2kNgCjjimvTbwoodz1H72Ldjq
         V5f0GTVZ00SGgb4bVmw3d+lU0K4JMJF2MwFzQutbsoX8zKhD84ZSc9k4lUJLnM90YiRM
         WCGmYqL8iaGLlHVgmC8/59iPxP5w0BZmT/KcKtufmv+nBiXbIYEtLbgAaf0t9BsUeNb+
         UOew==
X-Gm-Message-State: AOJu0YxQAvoXCWgTXZBMtx0M4RPyOHe7TmUZu5jJgnk7GavWz/gd3HXd
	oqI7nIynl/srfdlovdij9w2sBffIZOY=
X-Google-Smtp-Source: AGHT+IGb4ebbXf+VRDbaepXAXz0Gr19zgbXzMbvg8CG302+lSyfv1/UPYijnvsQSR0F1rz/9uwDb8g==
X-Received: by 2002:a0c:aa1d:0:b0:680:4515:30af with SMTP id d29-20020a0caa1d000000b00680451530afmr7678598qvb.91.1705443596732;
        Tue, 16 Jan 2024 14:19:56 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-146.dsl.bell.ca. [174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id dz12-20020ad4588c000000b00680ee17f108sm4540190qvb.49.2024.01.16.14.19.56
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jan 2024 14:19:56 -0800 (PST)
Message-ID: <ded4e7b8-1b3c-479c-bb28-23710b9ffdf0@gmail.com>
Date: Tue, 16 Jan 2024 17:19:55 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SJ0PR09MB9126D8AC39D16B934989FD27EC6F2@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAB__hTTLD0gOihqFKzWWrZA7VSTJixjZ+Q=d14i2dNZH0-8Wiw@mail.gmail.com>
 <SJ0PR09MB912651618314E3BC38064198EC732@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SJ0PR09MB912651618314E3BC38064198EC732@SJ0PR09MB9126.namprd09.prod.outlook.com>
Message-ID-Hash: CZ7MMEOVU4DTVN3QJWRLV5HKMNEKYET5
X-Message-ID-Hash: CZ7MMEOVU4DTVN3QJWRLV5HKMNEKYET5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bug/problem aligning PPS to samples
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CZ7MMEOVU4DTVN3QJWRLV5HKMNEKYET5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0714117159710563396=="

This is a multi-part message in MIME format.
--===============0714117159710563396==
Content-Type: multipart/alternative;
 boundary="------------THToCLvqQb3QDzpEMvvKob9l"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------THToCLvqQb3QDzpEMvvKob9l
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 16/01/2024 12:10, Eugene Grayver wrote:
> Hi,
>
> There should be some delay, but it should be on the order of a few=20
> clock cycles (ADC/DAC latency).=C2=A0 For the N321 we are observing 100=
us,=20
> corresponding to ~2000 samples.=C2=A0 The X310 delay is ~1us, which=20
> corresponds to 20 samples.=C2=A0 Still a lot higher than I would expect=
=20
> just due to ADC/DAC.=C2=A0 The delay changes as a function of the sampl=
e=20
> rate.=C2=A0 If the synchronization is after the DDC (as I think it is),=
 I=20
> would expect the delay to be independent of the decimation ratio.
>
> We are doing the calibration and will use that to compensate, but I=20
> think this is something that can be mitigated (to <1us) in the FPGA.
>
> Eugene.
I don't think the timed streaming has *ever* been at the DAC--DUC or=20
ADC--DDC interface.=C2=A0 From what I understand, timestamps
 =C2=A0 have *always* been assigned (in the RX case) as samples come off =
the=20
DDC, and correspondingly for the other direction.

Different sample rates will necessarily determine the DDC filter depth=20
that is being used, and the rate that some of it is
 =C2=A0 clocked at.

Having things like timed-commands account for DUC/DDC group delays=20
requires that either host-side UHD have a more
 =C2=A0 intimate understanding of FPGA implementation details than it=20
currently has, OR, the FPGA needs some understanding.

Also, since the decision was made a LONG time ago as to at what "plane"=20
the timestamps apply, changing it "mid-stream"
 =C2=A0 would break a lot of existing code.

Now, having said all that, (A) I'm not an Ettus/NI R&D person, so I'm=20
just guessing about motivations for the architecture.

Also, 100usec seems like waaay longer than you'd expect just due to=20
DDC/DUC group delay, and I wonder if there's something
 =C2=A0 else going on, like subtleties about when you do time synchroniza=
tion=20
and master-clock rate changes.=C2=A0 I recall that there's
 =C2=A0 some "gotchas" there.=C2=A0 Like if you clock-synch, and THEN=C2=A0=
 change the=20
master clock rate, there can be some weirdness
 =C2=A0 because the increment quantum changes across master-clock rate=20
changes for the time-stamp clocks.


>
>
> ________________________
>
> Eugene Grayver, Ph.D.
> Aerospace Corp., Principal Engineer
> Tel: 310.336.1274
> ________________________
>
> -----------------------------------------------------------------------=
-
> *From:* Rob Kossler <rkossler@nd.edu>
> *Sent:* Monday, January 15, 2024 5:05 PM
> *To:* Eugene Grayver <eugene.grayver@aero.org>
> *Cc:* usrp-users <usrp-users@lists.ettus.com>; Mark Kubiak=20
> <mark.kubiak@aero.org>; Jason W Zheng <jason.w.zheng@aero.org>
> *Subject:* Re: [USRP-users] Bug/problem aligning PPS to samples
> Hi Eugene,
> Are you expecting that the RF output (for Tx case) should be synced to=20
> the PPS "at the RF output connector"?=C2=A0 It is my understanding that=
 the=20
> sync occurs at some place in the FPGA logic for the "radio" block.=20
> There will be delay as this goes through D/A and RF chain.=C2=A0 Same i=
n=20
> reverse for Rx.=C2=A0 As long as you get a consistent delay (for a give=
n=20
> sample rate), can you calibrate and then choose a playout time that=20
> syncs the RF pulse to the PPS pulse?
> Rob
>
> On Fri, Jan 12, 2024 at 4:38=E2=80=AFPM Eugene Grayver=20
> <eugene.grayver@aero.org> wrote:
>
>     Hello,
>
>     There appears to be a bug related to alignment of the PPS to
>     samples.=C2=A0 The issue applies to both TX and RX and was replicat=
ed
>     on N321 and X310 using UDH 3.15 and 4.6.=C2=A0 It therefore appears=
 to
>     be an FPGA issue.
>
>     *TX experiment*
>     ----------------------------
>
>       * USRP is provided with external PPS and 10 MHz
>       * The PPS input is split and goes to the USRP and a scope
>       * The USRP output goes to a scope
>       * USRP outputs a file
>          o
>             First 1000 samples are 1, remaining are zero
>           o File size =3D sample rate (i.e. repeats every second)
>       * Setup the experiment using both:
>           o GR file_source + usrp_sink
>               + Sync to unknown PPS
>               + usrp.set_start_time(5)
>           o Standalone C++ application (based on tx_samples_from_file)
>               + Added code to set_time_unknown_pps(0), then set start
>                 time using metadata to 5
>
>     Results:
>
>       * The USRP output is delayed relative to the PPS as observed on
>         the scope
>       * The delay is ~1.2 us for X310 and ~100us for N321
>       * The delay changes slightly (<1us) depending on the sample rate
>         (e.g. 10 Msps vs 20 Msps)
>
>
>     *RX experiment*
>     ----------------------------
>
>       * USRP is provided with external PPS and 10 MHz
>      *
>         USRP input is a pulse (generated using technique above) that
>         repeats every second
>          o
>             Pulse is aligned to PPS, verified using a scope
>      *
>         USRP records samples starting on a second boundary (time_t(5))
>          o
>             GR usrp_source + file_sink
>          o
>             standalone C++ application (based on rx_samples_to_file)
>               + Added code to set_time_unknown_pps(0), then set start
>                 time using metadata to 5
>      *
>         Recorded samples are analyzed to find the first 'large' value
>
>     Results
>
>       * Recording appears to start late relative to PPS (only verified
>         on N321, delay is ~100 us, same as for the TX delay)
>
>
>     *Thoughts*
>
>       * I recall (years ago) there was a fix to a similar problem.=C2=A0
>         The FPGA was modified to trigger ADC/DAC samples after the DDC
>         rather than before.=C2=A0 Did it regress at some point?
>
>       * The delays are very consistent, indicating that the PPS is in
>         fact being used (i.e. it is not random).
>
>       * We ran some experiments to analyze the stability and accuracy
>         of *relative*=C2=A0timing between RX and TX (i.e. turn-around) =
when
>         the start time for TX and RX are specified.=C2=A0 The results a=
re
>         excellent =E2=80=93 delay is stable and accurate to < 100 ps.
>
>
>     This seems like a simple thing to fix in the FPGA =E2=80=93 there i=
s no
>     reason for the delay to be > 1 sample clock.
>
>     Eugene.
>
>     ________________________
>
>     Eugene Grayver, Ph.D.
>     Aerospace Corp., Principal Engineer
>     Tel: 310.336.1274
>     ________________________
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------THToCLvqQb3QDzpEMvvKob9l
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 16/01/2024 12:10, Eugene Grayver
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR09MB912651618314E3BC38064198EC732@SJ0PR09MB9126.namprd09=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Hi,</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        There should be some delay, but it should be on the order of a
        few clock cycles (ADC/DAC latency).=C2=A0 For the N321 we are
        observing 100us, corresponding to ~2000 samples.=C2=A0 The X310 d=
elay
        is ~1us, which corresponds to 20 samples.=C2=A0 Still a lot highe=
r
        than I would expect just due to ADC/DAC.=C2=A0 The delay changes =
as a
        function of the sample rate.=C2=A0 If the synchronization is afte=
r
        the DDC (as I think it is), I would expect the delay to be
        independent of the decimation ratio.=C2=A0=C2=A0</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        We are doing the calibration and will use that to compensate,
        but I think this is something that can be mitigated (to &lt;1us)
        in the FPGA.</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Eugene.</div>
    </blockquote>
    I don't think the timed streaming has *ever* been at the DAC--DUC or
    ADC--DDC interface.=C2=A0 From what I understand, timestamps<br>
    =C2=A0 have *always* been assigned (in the RX case) as samples come o=
ff
    the DDC, and correspondingly for the other direction.<br>
    <br>
    Different sample rates will necessarily determine the DDC filter
    depth that is being used, and the rate that some of it is<br>
    =C2=A0 clocked at.<br>
    <br>
    Having things like timed-commands account for DUC/DDC group delays
    requires that either host-side UHD have a more<br>
    =C2=A0 intimate understanding of FPGA implementation details than it
    currently has, OR, the FPGA needs some understanding.<br>
    <br>
    Also, since the decision was made a LONG time ago as to at what
    "plane" the timestamps apply, changing it "mid-stream"<br>
    =C2=A0 would break a lot of existing code.<br>
    <br>
    Now, having said all that, (A) I'm not an Ettus/NI R&amp;D person,
    so I'm just guessing about motivations for the architecture.<br>
    <br>
    Also, 100usec seems like waaay longer than you'd expect just due to
    DDC/DUC group delay, and I wonder if there's something<br>
    =C2=A0 else going on, like subtleties about when you do time
    synchronization and master-clock rate changes.=C2=A0 I recall that
    there's<br>
    =C2=A0 some "gotchas" there.=C2=A0 Like if you clock-synch, and THEN=C2=
=A0 change
    the master clock rate, there can be some weirdness<br>
    =C2=A0 because the increment quantum changes across master-clock rate
    changes for the time-stamp clocks.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR09MB912651618314E3BC38064198EC732@SJ0PR09MB9126.namprd09=
.prod.outlook.com">
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div id=3D"Signature">
        <div id=3D"divtagdefaultwrapper" dir=3D"ltr"
style=3D"color:rgb(0,0,0); font-family:Calibri,Arial,Helvetica,sans-serif=
; font-size:12pt; background-color:rgb(255,255,255)">
          <p><span
style=3D"font-family: Arial, sans-serif; font-size: 13.33px; color: rgb(0=
, 0, 0);">________________________</span><span
style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: black;">=
<br>
            </span></p>
          <p><span
style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: black;">=
Eugene
              Grayver, Ph.D.<br>
              Aerospace Corp., Principal Engineer<br>
              Tel: 310.336.1274<br>
              ________________________</span><br>
          </p>
        </div>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Rob
          Kossler <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:rkoss=
ler@nd.edu">&lt;rkossler@nd.edu&gt;</a><br>
          <b>Sent:</b> Monday, January 15, 2024 5:05 PM<br>
          <b>To:</b> Eugene Grayver <a class=3D"moz-txt-link-rfc2396E" hr=
ef=3D"mailto:eugene.grayver@aero.org">&lt;eugene.grayver@aero.org&gt;</a>=
<br>
          <b>Cc:</b> usrp-users <a class=3D"moz-txt-link-rfc2396E" href=3D=
"mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a=
>; Mark
          Kubiak <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:mark.k=
ubiak@aero.org">&lt;mark.kubiak@aero.org&gt;</a>; Jason W Zheng
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:jason.w.zheng=
@aero.org">&lt;jason.w.zheng@aero.org&gt;</a><br>
          <b>Subject:</b> Re: [USRP-users] Bug/problem aligning PPS to
          samples</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <div dir=3D"ltr">Hi Eugene,
          <div>Are you expecting that the RF output (for Tx case) should
            be synced to the PPS "at the RF output connector"?=C2=A0 It i=
s my
            understanding that the sync occurs at some place in the FPGA
            logic for the "radio" block. There will be delay as this
            goes through D/A and RF chain.=C2=A0 Same in reverse for Rx.=C2=
=A0 As
            long as you get a consistent delay (for a given sample
            rate), can you calibrate and then choose a playout time that
            syncs the RF pulse to the PPS pulse?</div>
          <div>Rob</div>
        </div>
        <br>
        <div class=3D"x_gmail_quote">
          <div dir=3D"ltr" class=3D"x_gmail_attr">On Fri, Jan 12, 2024 at
            4:38=E2=80=AFPM Eugene Grayver &lt;<a
              href=3D"mailto:eugene.grayver@aero.org"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">eu=
gene.grayver@aero.org</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"x_gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(204,204,204)=
; padding-left:1ex">
            <div class=3D"x_msg-2294300194068039122">
              <div dir=3D"ltr">
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                  Hello,</div>
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                  <br>
                </div>
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                  There appears to be a bug related to alignment of the
                  PPS to samples.=C2=A0 The issue applies to both TX and =
RX
                  and was replicated on N321 and X310 using UDH 3.15 and
                  4.6.=C2=A0 It therefore appears to be an FPGA issue.</d=
iv>
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                  <br>
                </div>
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                  <b>TX experiment</b></div>
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                  ----------------------------</div>
                <ul style=3D"list-style-type:disc">
                  <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                    <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">USRP
                      is provided with external PPS and 10 MHz<br>
                    </span></li>
                  <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                    <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">The
                      PPS input is split and goes to the USRP and a
                      scope</span></li>
                  <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                    <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">The
                      USRP output goes to a scope</span></li>
                  <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                    <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">USRP
                      outputs a file</span></li>
                  <ul style=3D"list-style-type:circle">
                    <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                      <div><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">First
                          1000 samples are 1, remaining are zero</span></=
div>
                    </li>
                    <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                      <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">File
                        size =3D sample rate (i.e. repeats every second)<=
/span></li>
                  </ul>
                  <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                    <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">Setup
                      the experiment using both:</span></li>
                  <ul style=3D"list-style-type:circle">
                    <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                      <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">GR
                        file_source + usrp_sink</span></li>
                    <ul style=3D"list-style-type:square">
                      <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                        <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">Sync
                          to unknown PPS</span></li>
                      <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                        <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">usrp.set_start_t=
ime(5)</span></li>
                    </ul>
                    <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                      <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">Standalone
                        C++ application (based on tx_samples_from_file)</=
span></li>
                    <ul style=3D"list-style-type:square">
                      <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                        <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">Added
                          code to set_time_unknown_pps(0), then set
                          start time using metadata to 5</span></li>
                    </ul>
                  </ul>
                </ul>
                <div><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">Results:</span><=
/div>
                <ul style=3D"list-style-type:disc">
                  <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                    <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">The
                      USRP output is delayed relative to the PPS as
                      observed on the scope</span></li>
                  <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                    <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">The
                      delay is ~1.2 us for X310 and ~100us for N321</span=
></li>
                  <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                    <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">The
                      delay changes slightly (&lt;1us) depending on the
                      sample rate (e.g. 10 Msps vs 20 Msps)</span></li>
                </ul>
                <div><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)"><br>
                  </span></div>
                <div><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)"><b>RX
                      experiment</b></span></div>
                <div><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">----------------=
------------</span></div>
                <ul style=3D"text-align:left; list-style-type:disc">
                  <li
style=3D"letter-spacing:normal; font-family:Aptos,Aptos_EmbeddedFont,Apto=
s_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; font-weight=
:400; color:rgb(0,0,0)">
                    <span
style=3D"letter-spacing:normal; font-family:Aptos,Aptos_EmbeddedFont,Apto=
s_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0=
,0,0); font-weight:400">USRP
                      is provided with external PPS and 10 MHz</span></li=
>
                  <li
style=3D"letter-spacing:normal; font-family:Aptos,Aptos_EmbeddedFont,Apto=
s_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; font-weight=
:400; color:rgb(0,0,0)">
                    <div><span
style=3D"letter-spacing:normal; font-family:Aptos,Aptos_EmbeddedFont,Apto=
s_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0=
,0,0); font-weight:400">USRP
                        input is a pulse (generated using technique
                        above) that repeats every second</span></div>
                  </li>
                  <ul style=3D"list-style-type:circle">
                    <li
style=3D"letter-spacing:normal; font-family:Aptos,Aptos_EmbeddedFont,Apto=
s_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; font-weight=
:400; color:rgb(0,0,0)">
                      <div><span
style=3D"letter-spacing:normal; font-family:Aptos,Aptos_EmbeddedFont,Apto=
s_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0=
,0,0); font-weight:400">Pulse
                          is aligned to PPS, verified using a scope</span=
></div>
                    </li>
                  </ul>
                  <li
style=3D"letter-spacing:normal; font-family:Aptos,Aptos_EmbeddedFont,Apto=
s_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; font-weight=
:400; color:rgb(0,0,0)">
                    <div><span
style=3D"letter-spacing:normal; font-family:Aptos,Aptos_EmbeddedFont,Apto=
s_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0=
,0,0); font-weight:400">USRP
                        records samples starting on a second boundary
                        (time_t(5))</span></div>
                  </li>
                  <ul style=3D"list-style-type:circle">
                    <li
style=3D"letter-spacing:normal; font-family:Aptos,Aptos_EmbeddedFont,Apto=
s_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; font-weight=
:400; color:rgb(0,0,0)">
                      <div><span
style=3D"letter-spacing:normal; font-family:Aptos,Aptos_EmbeddedFont,Apto=
s_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0=
,0,0); font-weight:400">GR
                          usrp_source + file_sink</span></div>
                    </li>
                    <li
style=3D"letter-spacing:normal; font-family:Aptos,Aptos_EmbeddedFont,Apto=
s_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; font-weight=
:400; color:rgb(0,0,0)">
                      <div><span
style=3D"letter-spacing:normal; font-family:Aptos,Aptos_EmbeddedFont,Apto=
s_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0=
,0,0); font-weight:400">standalone
                          C++ application (based on rx_samples_to_file)</=
span></div>
                    </li>
                    <ul style=3D"list-style-type:square">
                      <li
style=3D"letter-spacing:normal; font-family:Aptos,Aptos_EmbeddedFont,Apto=
s_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; font-weight=
:400; color:rgb(0,0,0)">
                        <span
style=3D"letter-spacing:normal; font-family:Aptos,Aptos_EmbeddedFont,Apto=
s_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0=
,0,0); font-weight:400">Added
                          code to set_time_unknown_pps(0), then set
                          start time using metadata to 5</span></li>
                    </ul>
                  </ul>
                  <li
style=3D"letter-spacing:normal; font-family:Aptos,Aptos_EmbeddedFont,Apto=
s_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; font-weight=
:400; color:rgb(0,0,0)">
                    <div><span
style=3D"letter-spacing:normal; font-family:Aptos,Aptos_EmbeddedFont,Apto=
s_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0=
,0,0); font-weight:400">Recorded
                        samples are analyzed to find the first 'large'
                        value</span></div>
                  </li>
                </ul>
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                  <span style=3D"letter-spacing:normal; font-weight:400">=
Results</span></div>
                <ul style=3D"list-style-type:disc">
                  <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                    <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">Recording
                      appears to start late relative to PPS (only
                      verified on N321, delay is ~100 us, same as for
                      the TX delay)</span></li>
                </ul>
                <div><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)"><br>
                  </span></div>
                <div><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)"><b>Thoughts</b><=
/span></div>
                <div>
                  <ul>
                    <li
style=3D"font-size:12pt; font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFon=
tService,Calibri,Helvetica,sans-serif; color:rgb(0,0,0); list-style-type:=
disc">
                      <span><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">I
                          recall (years ago) there was a fix to a
                          similar problem.=C2=A0 The FPGA was modified to
                          trigger ADC/DAC samples after the DDC rather
                          than before.=C2=A0 Did it regress at some point=
?</span><br>
                      </span></li>
                  </ul>
                </div>
                <div>
                  <ul>
                    <li
style=3D"font-size:12pt; font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFon=
tService,Calibri,Helvetica,sans-serif; color:rgb(0,0,0); list-style-type:=
disc">
                      <span><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">The
                          delays are very consistent, indicating that
                          the PPS is in fact being used (i.e. it is not
                          random).</span><br>
                      </span></li>
                  </ul>
                </div>
                <div>
                  <ul>
                    <li style=3D"list-style-type:disc"><span><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">We
                          ran some experiments to analyze the stability
                          and accuracy of
                          <b>relative</b>=C2=A0timing between RX and TX (=
i.e.
                          turn-around) when the start time for TX and RX
                          are specified.=C2=A0 The results are excellent =
=E2=80=93
                          delay is stable and accurate to &lt; 100 ps.</s=
pan><br>
                      </span></li>
                  </ul>
                  <div><span><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)"><br>
                      </span></span></div>
                </div>
                <div><span><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">This
                      seems like a simple thing to fix in the FPGA =E2=80=
=93
                      there is no reason for the delay to be &gt; 1
                      sample clock.</span></span></div>
                <div><span><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)"><br>
                    </span></span></div>
                <div><span><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">Eugene.</span></=
span></div>
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                  <br>
                </div>
                <div id=3D"x_m_-8991588755533013364Signature">
                  <div id=3D"x_m_-8991588755533013364divtagdefaultwrapper=
"
                    dir=3D"ltr"
style=3D"color:rgb(0,0,0); font-family:Calibri,Arial,Helvetica,sans-serif=
; font-size:12pt; background-color:rgb(255,255,255)">
                    <p><span
style=3D"font-family:Arial,sans-serif; font-size:13.33px; color:rgb(0,0,0=
)">________________________</span><span
style=3D"font-family:Arial,sans-serif; font-size:10pt; color:black"><br>
                      </span></p>
                    <p><span
style=3D"font-family:Arial,sans-serif; font-size:10pt; color:black">Eugen=
e
                        Grayver, Ph.D.<br>
                        Aerospace Corp., Principal Engineer<br>
                        Tel: 310.336.1274<br>
                        ________________________</span><br>
                    </p>
                  </div>
                </div>
              </div>
              _______________________________________________<br>
              USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">
                usrp-users@lists.ettus.com</a><br>
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">
                usrp-users-leave@lists.ettus.com</a><br>
            </div>
          </blockquote>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------THToCLvqQb3QDzpEMvvKob9l--

--===============0714117159710563396==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0714117159710563396==--
