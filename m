Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 345E7830F1D
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jan 2024 23:17:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0C12D38524C
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jan 2024 17:17:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705529820; bh=zgPmTpccUTwToaAFE0n+16S8KVyZy1U/nJofmcJBJ8E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=rEvJBGm0igxamcApgxTMS12qyCtwYzyM3BmdYZ0ZtTPn6nex0R9OLTdHuEXpsCFGi
	 g8dbJ8UROU1AXmkzk/qCiTX5g5+kfwMxQbJ7NmKfcvaeINE9mI5VETy7lkW1AxCXuc
	 Rn0OIIdYRlieL0il5O+XWccZPitLUpkWfVnJLbsBgLWZrs8K7PzsgyPsGyJTGg/cMh
	 3srx3xWRFyy6PyGm0wd/trDAPUTh75Mu9i9OeQuBtG1EX7DK8rBkieZ6ToKsBjna4O
	 KJ11ikkiq+Bt/3E7l2N/fOFJUYPxkJMMeBKLqCgWEtydc1nPt7Y1MDbvJqXI+3NvMt
	 hDQcshs82SXTA==
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 2B2B738514D
	for <usrp-users@lists.ettus.com>; Wed, 17 Jan 2024 17:16:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KWbA25p6";
	dkim-atps=neutral
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6817ad3e47eso1158056d6.1
        for <usrp-users@lists.ettus.com>; Wed, 17 Jan 2024 14:16:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705529784; x=1706134584; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fw9m3fHgx9lZr5kpc9te08HHRYNH/lPBLsAxW4WhqoY=;
        b=KWbA25p6EKv3rpb7/MMGl0HygOtCfOQcUVBrSl0CUiPANBLaCH3Gq973s6/ZuSmjKP
         R6dtzPuQL/ZJLvlyUf8W3dYqz8Y5hmN7k9cjQfnx4L04BnNZKLA5jMATCA9UnnwQXvoB
         EyRCuEZXl7ftbQTTF85gtKrW1VpNW6SQsyQgjB8PRFOEsUBafDBTpWl1Jihr3pUYJshZ
         QjdvsfbHxXFS1rdwuoFuoLXwOtPOssSDmK8oF90bi1U5ncc3gJ0TTPhYtrvesoQLOQRF
         9HfMuODVrQKhgcsnfriAJnraTGEtIr8wHG7+EwpO7fRwaMreRiZI+g8nwGpItUgTF7ti
         mUwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705529784; x=1706134584;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fw9m3fHgx9lZr5kpc9te08HHRYNH/lPBLsAxW4WhqoY=;
        b=hAWo7nAqUw3CHvn17JkF+L0QyOVRy2SUmFjlbAG6Ue5YacR9xPGzLgviu4DYoZns4p
         RDRZOmWV7cWQ/2Nt3L1uiqLLkNBvoF0/IH2p9M1K/hlw9LbQKfqBj5u9N5RLaLlaWitY
         aTH6X3DDNYhI2BQ1xc4bbfwTZ4R8dOFLRlDBykWx4CTcqrWwoO5fAiB1vmE4REDMqCWe
         IVMfiGmRFFq3x2jMx92eZSRQ292I7ve1jnw7uj3tWfScmQOENCH8DDuko9FaApWSro2I
         ePwA4TFpTB4HPyKqHn+NSvlYj/LbIHQzHN7xFdZLqCcJexgQiCqCyeL8/G8IB70kjfhQ
         Sndg==
X-Gm-Message-State: AOJu0YyqcEzDnHvaTcBFitykEBmV29rEXLeUhfj6kwTQotoiS8TFrL33
	YdqmT884AQEYf4WhatdJ+J83dxDm5qA=
X-Google-Smtp-Source: AGHT+IHYH/UiQQ70Coc44fZtDMZfTF7+jVUwSmVTzKln2QiTynYeNS32gO8/ObZH/89iX63qtPgYYw==
X-Received: by 2002:ad4:4eaa:0:b0:681:797d:9931 with SMTP id ed10-20020ad44eaa000000b00681797d9931mr2603320qvb.61.1705529784363;
        Wed, 17 Jan 2024 14:16:24 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-146.dsl.bell.ca. [174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id w20-20020a0562140b3400b006817d42eac6sm794481qvj.53.2024.01.17.14.16.23
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jan 2024 14:16:24 -0800 (PST)
Message-ID: <26c80a7f-23b1-4965-a61b-a67f0a43983a@gmail.com>
Date: Wed, 17 Jan 2024 17:16:23 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SJ0PR09MB9126D8AC39D16B934989FD27EC6F2@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAB__hTTLD0gOihqFKzWWrZA7VSTJixjZ+Q=d14i2dNZH0-8Wiw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTTLD0gOihqFKzWWrZA7VSTJixjZ+Q=d14i2dNZH0-8Wiw@mail.gmail.com>
Message-ID-Hash: WHEAGMUUAT3OK2UNDAZEUKX4VTGNAO4S
X-Message-ID-Hash: WHEAGMUUAT3OK2UNDAZEUKX4VTGNAO4S
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bug/problem aligning PPS to samples
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WHEAGMUUAT3OK2UNDAZEUKX4VTGNAO4S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3296995945288731878=="

This is a multi-part message in MIME format.
--===============3296995945288731878==
Content-Type: multipart/alternative;
 boundary="------------dedC1j5faHVLLE05h1wDzebD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------dedC1j5faHVLLE05h1wDzebD
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 15/01/2024 20:05, Rob Kossler via USRP-users wrote:
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
My previous assertion about it being on the "unfortunate end" of the DDC=20
is stale.=C2=A0 It used to be the case, but when the Radio
 =C2=A0 block was broken-out from the DDC/DUC blocks, things were shifted=
=20
into the radio block, at the notional interface to the
 =C2=A0 ADC/DAC.=C2=A0=C2=A0 That would have broken apps that "knew" that=
 it was at the=20
other end of the DUC/DDC, but the new mechanism
 =C2=A0 should be much "closer" to the antenna-plane.


>
> On Fri, Jan 12, 2024 at 4:38=E2=80=AFPM Eugene Grayver=20
> <eugene.grayver@aero.org> wrote:
>
>     Hello,
>
>     There appears to be a bug related to alignment of the PPS to
>     samples.=C2=A0 The issue applies to both TX and RX and was replicat=
ed
>     on N321 and X310 using UDH 3.15 and 4.6. It therefore appears to
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

--------------dedC1j5faHVLLE05h1wDzebD
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 15/01/2024 20:05, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTTLD0gOihqFKzWWrZA7VSTJixjZ+Q=3Dd14i2dNZH0-8Wiw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi Eugene,
        <div>Are you expecting that the RF output (for Tx case) should
          be synced to the PPS "at the RF output connector"?=C2=A0 It is =
my
          understanding that the sync occurs at some place in the FPGA
          logic for the "radio" block. There will be delay as this goes
          through D/A and RF chain.=C2=A0 Same in reverse for Rx.=C2=A0 A=
s long as
          you get a consistent delay (for a given sample rate), can you
          calibrate and then choose a playout time that syncs the RF
          pulse to the PPS pulse?</div>
        <div>Rob</div>
      </div>
    </blockquote>
    My previous assertion about it being on the "unfortunate end" of the
    DDC is stale.=C2=A0 It used to be the case, but when the Radio<br>
    =C2=A0 block was broken-out from the DDC/DUC blocks, things were shif=
ted
    into the radio block, at the notional interface to the<br>
    =C2=A0 ADC/DAC.=C2=A0=C2=A0 That would have broken apps that "knew" t=
hat it was at
    the other end of the DUC/DDC, but the new mechanism<br>
    =C2=A0 should be much "closer" to the antenna-plane.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTTLD0gOihqFKzWWrZA7VSTJixjZ+Q=3Dd14i2dNZH0-8Wiw@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 12, 2024 at
          4:38=E2=80=AFPM Eugene Grayver &lt;<a
            href=3D"mailto:eugene.grayver@aero.org" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">eugene.grayver@aero.org</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div class=3D"msg-2294300194068039122">
            <div dir=3D"ltr">
              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                Hello,</div>
              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                <br>
              </div>
              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                There appears to be a bug related to alignment of the
                PPS to samples.=C2=A0 The issue applies to both TX and RX=
 and
                was replicated on N321 and X310 using UDH 3.15 and 4.6.=C2=
=A0
                It therefore appears to be an FPGA issue.</div>
              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                <br>
              </div>
              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                <b>TX experiment</b></div>
              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                ----------------------------</div>
              <ul style=3D"list-style-type:disc">
                <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">USRP
                    is provided with external PPS and 10 MHz<br>
                  </span></li>
                <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">The
                    PPS input is split and goes to the USRP and a scope</=
span></li>
                <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">The
                    USRP output goes to a scope</span></li>
                <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">USRP
                    outputs a file</span></li>
                <ul style=3D"list-style-type:circle">
                  <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                    <div><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">First
                        1000 samples are 1, remaining are zero</span></di=
v>
                  </li>
                  <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                    <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">File
                      size =3D sample rate (i.e. repeats every second)</s=
pan></li>
                </ul>
                <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Setup
                    the experiment using both:</span></li>
                <ul style=3D"list-style-type:circle">
                  <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                    <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">GR
                      file_source + usrp_sink</span></li>
                  <ul style=3D"list-style-type:square">
                    <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                      <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Sync
                        to unknown PPS</span></li>
                    <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                      <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">usrp.set_start_tim=
e(5)</span></li>
                  </ul>
                  <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                    <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Standalone
                      C++ application (based on tx_samples_from_file)</sp=
an></li>
                  <ul style=3D"list-style-type:square">
                    <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                      <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Added
                        code to set_time_unknown_pps(0), then set start
                        time using metadata to 5</span></li>
                  </ul>
                </ul>
              </ul>
              <div><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Results:</span></d=
iv>
              <ul style=3D"list-style-type:disc">
                <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">The
                    USRP output is delayed relative to the PPS as
                    observed on the scope</span></li>
                <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">The
                    delay is ~1.2 us for X310 and ~100us for N321</span><=
/li>
                <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">The
                    delay changes slightly (&lt;1us) depending on the
                    sample rate (e.g. 10 Msps vs 20 Msps)</span></li>
              </ul>
              <div><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                </span></div>
              <div><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><b>RX
                    experiment</b></span></div>
              <div><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">------------------=
----------</span></div>
              <ul style=3D"text-align:left;list-style-type:disc">
                <li
style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;font-weight:40=
0;color:rgb(0,0,0)">
                  <span
style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0);font-weight:400">USRP
                    is provided with external PPS and 10 MHz</span></li>
                <li
style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;font-weight:40=
0;color:rgb(0,0,0)">
                  <div><span
style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0);font-weight:400">USRP
                      input is a pulse (generated using technique above)
                      that repeats every second</span></div>
                </li>
                <ul style=3D"list-style-type:circle">
                  <li
style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;font-weight:40=
0;color:rgb(0,0,0)">
                    <div><span
style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0);font-weight:400">Pulse
                        is aligned to PPS, verified using a scope</span><=
/div>
                  </li>
                </ul>
                <li
style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;font-weight:40=
0;color:rgb(0,0,0)">
                  <div><span
style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0);font-weight:400">USRP
                      records samples starting on a second boundary
                      (time_t(5))</span></div>
                </li>
                <ul style=3D"list-style-type:circle">
                  <li
style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;font-weight:40=
0;color:rgb(0,0,0)">
                    <div><span
style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0);font-weight:400">GR
                        usrp_source + file_sink</span></div>
                  </li>
                  <li
style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;font-weight:40=
0;color:rgb(0,0,0)">
                    <div><span
style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0);font-weight:400">standalone
                        C++ application (based on rx_samples_to_file)</sp=
an></div>
                  </li>
                  <ul style=3D"list-style-type:square">
                    <li
style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;font-weight:40=
0;color:rgb(0,0,0)">
                      <span
style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0);font-weight:400">Added
                        code to set_time_unknown_pps(0), then set start
                        time using metadata to 5</span></li>
                  </ul>
                </ul>
                <li
style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;font-weight:40=
0;color:rgb(0,0,0)">
                  <div><span
style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0);font-weight:400">Recorded
                      samples are analyzed to find the first 'large'
                      value</span></div>
                </li>
              </ul>
              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                <span style=3D"letter-spacing:normal;font-weight:400">Res=
ults</span></div>
              <ul style=3D"list-style-type:disc">
                <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Recording
                    appears to start late relative to PPS (only verified
                    on N321, delay is ~100 us, same as for the TX delay)<=
/span></li>
              </ul>
              <div><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                </span></div>
              <div><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><b>Thoughts</b></s=
pan></div>
              <div>
                <ul>
                  <li
style=3D"font-size:12pt;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFont=
Service,Calibri,Helvetica,sans-serif;color:rgb(0,0,0);list-style-type:dis=
c">
                    <span><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">I
                        recall (years ago) there was a fix to a similar
                        problem.=C2=A0 The FPGA was modified to trigger
                        ADC/DAC samples after the DDC rather than
                        before.=C2=A0 Did it regress at some point?</span=
><br>
                    </span></li>
                </ul>
              </div>
              <div>
                <ul>
                  <li
style=3D"font-size:12pt;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFont=
Service,Calibri,Helvetica,sans-serif;color:rgb(0,0,0);list-style-type:dis=
c">
                    <span><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">The
                        delays are very consistent, indicating that the
                        PPS is in fact being used (i.e. it is not
                        random).</span><br>
                    </span></li>
                </ul>
              </div>
              <div>
                <ul>
                  <li style=3D"list-style-type:disc"><span><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">We
                        ran some experiments to analyze the stability
                        and accuracy of
                        <b>relative</b>=C2=A0timing between RX and TX (i.=
e.
                        turn-around) when the start time for TX and RX
                        are specified.=C2=A0 The results are excellent =E2=
=80=93
                        delay is stable and accurate to &lt; 100 ps.</spa=
n><br>
                    </span></li>
                </ul>
                <div><span><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                    </span></span></div>
              </div>
              <div><span><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">This
                    seems like a simple thing to fix in the FPGA =E2=80=93=
 there
                    is no reason for the delay to be &gt; 1 sample
                    clock.</span></span></div>
              <div><span><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                  </span></span></div>
              <div><span><span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Eugene.</span></sp=
an></div>
              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                <br>
              </div>
              <div id=3D"m_-8991588755533013364Signature">
                <div id=3D"m_-8991588755533013364divtagdefaultwrapper"
                  dir=3D"ltr"
style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;=
font-size:12pt;background-color:rgb(255,255,255)">
                  <p><span
style=3D"font-family:Arial,sans-serif;font-size:13.33px;color:rgb(0,0,0)"=
>________________________</span><span
style=3D"font-family:Arial,sans-serif;font-size:10pt;color:black"><br>
                    </span></p>
                  <p><span
style=3D"font-family:Arial,sans-serif;font-size:10pt;color:black">Eugene
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
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">us=
rp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettu=
s.com</a><br>
          </div>
        </blockquote>
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

--------------dedC1j5faHVLLE05h1wDzebD--

--===============3296995945288731878==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3296995945288731878==--
