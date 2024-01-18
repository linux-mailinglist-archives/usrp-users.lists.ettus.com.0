Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C072A831D3A
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jan 2024 17:07:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3BAB8384CAF
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jan 2024 11:07:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705594069; bh=pjFc/jMIvdGb6CPtapSalcjAj4gQiOsGcvF/g9vKnlc=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=uTWgt0+QYFvHOLb/UzA+RO+HMPvYwBQ1pCIWNxJ5oeKnFCmDJg4CExIMZfwW+ckOb
	 I8fAR+Uj6MnWcF2OdonCgA0nGfbGZeqElz3wmLk7qp6Jxlf8V1MQZDnwDjcvZfzMWd
	 pzzlef9xcTqC8KDmukjFJvJPqsQoiA9ix3tPEmOYC1zcf2wlWqS9ZJwY9t9v4Qarea
	 zKx6ftu69XfAdwRJFc9mR/CeVqC7d8ZeFkv8G8WU9lox8Y/63pya4nEI+EQh4fx2Ca
	 ApUg8t2KFd4XMUU3KK4ODJUzINUhK1yQF3FEm0u30n+6eAups1hTnjrtftEOmGzIe0
	 a63gua89kUgHg==
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 4B1EA3849F2
	for <usrp-users@lists.ettus.com>; Thu, 18 Jan 2024 11:06:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cdaqMLtr";
	dkim-atps=neutral
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-783137d8049so1111576785a.2
        for <usrp-users@lists.ettus.com>; Thu, 18 Jan 2024 08:06:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705594009; x=1706198809; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xN0BilK0erywGHD/SHb/AQnZVDUaYzsfMqGzhzi8BQU=;
        b=cdaqMLtrEid6gZA0w04yEdwDQWORxjdLEPQ+jjW36sRhQbk5SanafSUEjAUuE88jLe
         yoK3lBaoNzP8yxyXHgNEfuITzINFLQPMXIDai4QaZi/0mNk/KSLPePJ+T8sVladSZYAd
         gsO9IWl2z5WoLYj7DMTYHc1iD149x2OIsDbgKpoHpUeGqxHfrS1wB5EOfgYIeP5sek9E
         UGYBaq2gXhGRREXbcovgsQb9Moczpq6WD8jhAlyABjkzWjjdBt1rtfDnnanXdquLdeU/
         Nxw3nMlzm0X5VKDRYtDxm5T0zW8n2TdIlhLSAssvQS6Y7IX+7emSywTBnWZIbyM54X/0
         iTPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705594009; x=1706198809;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xN0BilK0erywGHD/SHb/AQnZVDUaYzsfMqGzhzi8BQU=;
        b=eUXGalgW8Jx4RhMeGN8Z3MDhf42IW2jByB84bgapC0cMjvmFpIB1An4RjqKN7Y7tkK
         nhCMuORq11BNHSVK+RjBXN5bFjIkL9PAW3cv+c6KhKTw/XeljvTQhrpqiSjIASjPa2gU
         82gkUR3AXEMcNjv+20pkuoT/CxRmvwaIIMt5LX6iXnynYOe3hD4MMFnij8j5dagGZA87
         GcU02ProntZVKTC8ARM7hWfkjgWe+uGpU2cdS1V+7wGTIXd0hInZGf9JCV64dizbn8El
         s3syPa6Cf6MhXqnbN/kfisl7P4aBBIz9hMAboMfYHr1VWDM0Jboa53pkWRGQCrG9yaLv
         ks4w==
X-Gm-Message-State: AOJu0YzodUPi6rBXBXTRYOnmcTH75xY6JjLgUKNAbuQPTLXI+n5l3uIU
	pafOPx/4cNWNUgDjIJfaKlb9hTUwFF8Zu6pGa7Z4J1++BP2sLg8/
X-Google-Smtp-Source: AGHT+IFkWCngbAEaJ4IkOOh8+a1kgA1qPn7UXHjbkLbDyAeyUVCSkeZTI9nlDOjVWn7xOTVtczmCAw==
X-Received: by 2002:a05:6214:29ea:b0:67f:7347:9b97 with SMTP id jv10-20020a05621429ea00b0067f73479b97mr1030938qvb.111.1705594009550;
        Thu, 18 Jan 2024 08:06:49 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id lv7-20020a056214578700b006819933416dsm240265qvb.18.2024.01.18.08.06.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jan 2024 08:06:48 -0800 (PST)
Message-ID: <6b0a56cc-2321-4a28-bd28-565549801f90@gmail.com>
Date: Thu, 18 Jan 2024 11:06:39 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steve Hamn <stevehamn311@gmail.com>
References: <SJ0PR09MB9126D8AC39D16B934989FD27EC6F2@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAB__hTTLD0gOihqFKzWWrZA7VSTJixjZ+Q=d14i2dNZH0-8Wiw@mail.gmail.com>
 <SJ0PR09MB912651618314E3BC38064198EC732@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <bfc84784-5fb3-4682-92dd-4f781dcd5fcb@gmail.com>
 <CAOYGa72RuXNXyt2sprdyEP5NX+LtACG0Qkmx834hg+Odth8dxQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAOYGa72RuXNXyt2sprdyEP5NX+LtACG0Qkmx834hg+Odth8dxQ@mail.gmail.com>
Message-ID-Hash: W4H6NHCQC5M5PO7QF674WB5RVXT5ARGC
X-Message-ID-Hash: W4H6NHCQC5M5PO7QF674WB5RVXT5ARGC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bug/problem aligning PPS to samples
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W4H6NHCQC5M5PO7QF674WB5RVXT5ARGC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4318967349120284135=="

This is a multi-part message in MIME format.
--===============4318967349120284135==
Content-Type: multipart/alternative;
 boundary="------------4T3SbfQsxsrpssTpPGMR2sco"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------4T3SbfQsxsrpssTpPGMR2sco
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 18/01/2024 02:24, Steve Hamn wrote:
> Hi Marcus,
>
> Do you know what the Pulse Width of the PPS in the N3XX GPSDO is?=20
> (I.e. how much time difference would this result in?).
>
> I've been seeing ~100ms of timing error with an N320 using GPS vs an=20
> N320 using WR, that I've been trying to debug. I'm using UHD 4.4 so=20
> I'm wondering if this could be a cause?
>
> Thanks,
>
> Steve
I don't know off the top of my head.=C2=A0=C2=A0 Update host and radio to=
 UHD4.5=20
or 4.6 and try again?


>
>
>
> On Wed, Jan 17, 2024, 13:47 Marcus D. Leech <patchvonbraun@gmail.com>=20
> wrote:
>
>     On 16/01/2024 12:10, Eugene Grayver wrote:
>>     Hi,
>>
>>     There should be some delay, but it should be on the order of a
>>     few clock cycles (ADC/DAC latency).=C2=A0 For the N321 we are
>>     observing 100us, corresponding to ~2000 samples.=C2=A0 The X310 de=
lay
>>     is ~1us, which corresponds to 20 samples.=C2=A0 Still a lot higher
>>     than I would expect just due to ADC/DAC.=C2=A0 The delay changes a=
s a
>>     function of the sample rate.=C2=A0 If the synchronization is after=
 the
>>     DDC (as I think it is), I would expect the delay to be
>>     independent of the decimation ratio.
>>
>>     We are doing the calibration and will use that to compensate, but
>>     I think this is something that can be mitigated (to <1us) in the
>>     FPGA.
>>
>>     Eugene.
>     Eugene:
>
>     Talking to R&D folks (or, rather, R&D-adjacent) at NI, there was a
>     problem in UHD starting in 4.1 where the PPS was aligning on
>     =C2=A0 the *trailing* edge, so time would be off by the pulse-width=
.
>
>     Make sure (on the N3xx case) you're running UHD 4.5 or UHD 4.6 on
>     both the host and the device itself.
>
>
>>
>>
>>     ________________________
>>
>>     Eugene Grayver, Ph.D.
>>     Aerospace Corp., Principal Engineer
>>     Tel: 310.336.1274
>>     ________________________
>>
>>     ------------------------------------------------------------------=
------
>>     *From:* Rob Kossler <rkossler@nd.edu> <mailto:rkossler@nd.edu>
>>     *Sent:* Monday, January 15, 2024 5:05 PM
>>     *To:* Eugene Grayver <eugene.grayver@aero.org?>?
>>     *Cc:* usrp-users <usrp-users@lists.ettus.com>
>>     <mailto:usrp-users@lists.ettus.com>; Mark Kubiak
>>     <mark.kubiak@aero.org> <mailto:mark.kubiak@aero.org>; Jason W
>>     Zheng <jason.w.zheng@aero.org> <mailto:jason.w.zheng@aero.org>
>>     *Subject:* Re: [USRP-users] Bug/problem aligning PPS to samples
>>     Hi Eugene,
>>     Are you expecting that the RF output (for Tx case) should be
>>     synced to the PPS "at the RF output connector"?=C2=A0 It is my
>>     understanding that the sync occurs at some place in the FPGA
>>     logic for the "radio" block. There will be delay as this goes
>>     through D/A and RF chain.=C2=A0 Same in reverse for Rx.=C2=A0 As l=
ong as
>>     you get a consistent delay (for a given sample rate), can you
>>     calibrate and then choose a playout time that syncs the RF pulse
>>     to the PPS pulse?
>>     Rob
>>
>>     On Fri, Jan 12, 2024 at 4:38=E2=80=AFPM Eugene Grayver
>>     <eugene.grayver@aero.org> wrote:
>>
>>         Hello,
>>
>>         There appears to be a bug related to alignment of the PPS to
>>         samples.=C2=A0 The issue applies to both TX and RX and was
>>         replicated on N321 and X310 using UDH 3.15 and 4.6.=C2=A0 It
>>         therefore appears to be an FPGA issue.
>>
>>         *TX experiment*
>>         ----------------------------
>>
>>           * USRP is provided with external PPS and 10 MHz
>>           * The PPS input is split and goes to the USRP and a scope
>>           * The USRP output goes to a scope
>>           * USRP outputs a file
>>              o
>>                 First 1000 samples are 1, remaining are zero
>>               o File size =3D sample rate (i.e. repeats every second)
>>           * Setup the experiment using both:
>>               o GR file_source + usrp_sink
>>                   + Sync to unknown PPS
>>                   + usrp.set_start_time(5)
>>               o Standalone C++ application (based on
>>                 tx_samples_from_file)
>>                   + Added code to set_time_unknown_pps(0), then set
>>                     start time using metadata to 5
>>
>>         Results:
>>
>>           * The USRP output is delayed relative to the PPS as
>>             observed on the scope
>>           * The delay is ~1.2 us for X310 and ~100us for N321
>>           * The delay changes slightly (<1us) depending on the sample
>>             rate (e.g. 10 Msps vs 20 Msps)
>>
>>
>>         *RX experiment*
>>         ----------------------------
>>
>>           * USRP is provided with external PPS and 10 MHz
>>          *
>>             USRP input is a pulse (generated using technique above)
>>             that repeats every second
>>              o
>>                 Pulse is aligned to PPS, verified using a scope
>>          *
>>             USRP records samples starting on a second boundary
>>             (time_t(5))
>>              o
>>                 GR usrp_source + file_sink
>>              o
>>                 standalone C++ application (based on rx_samples_to_fil=
e)
>>                   + Added code to set_time_unknown_pps(0), then set
>>                     start time using metadata to 5
>>          *
>>             Recorded samples are analyzed to find the first 'large' va=
lue
>>
>>         Results
>>
>>           * Recording appears to start late relative to PPS (only
>>             verified on N321, delay is ~100 us, same as for the TX del=
ay)
>>
>>
>>         *Thoughts*
>>
>>           * I recall (years ago) there was a fix to a similar
>>             problem.=C2=A0 The FPGA was modified to trigger ADC/DAC
>>             samples after the DDC rather than before. Did it regress
>>             at some point?
>>
>>           * The delays are very consistent, indicating that the PPS
>>             is in fact being used (i.e. it is not random).
>>
>>           * We ran some experiments to analyze the stability and
>>             accuracy of *relative*=C2=A0timing between RX and TX (i.e.
>>             turn-around) when the start time for TX and RX are
>>             specified.=C2=A0 The results are excellent =E2=80=93 delay=
 is stable
>>             and accurate to < 100 ps.
>>
>>
>>         This seems like a simple thing to fix in the FPGA =E2=80=93 th=
ere is
>>         no reason for the delay to be > 1 sample clock.
>>
>>         Eugene.
>>
>>         ________________________
>>
>>         Eugene Grayver, Ph.D.
>>         Aerospace Corp., Principal Engineer
>>         Tel: 310.336.1274
>>         ________________________
>>
>>         _______________________________________________
>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>         To unsubscribe send an email to usrp-users-leave@lists.ettus.c=
om
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>

--------------4T3SbfQsxsrpssTpPGMR2sco
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 18/01/2024 02:24, Steve Hamn wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAOYGa72RuXNXyt2sprdyEP5NX+LtACG0Qkmx834hg+Odth8dxQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">Hi Marcus,
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Do you know what the Pulse Width of the PPS in
          the N3XX GPSDO is? (I.e. how much time difference would this
          result in?).=C2=A0</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">I've been seeing ~100ms of timing error with an
          N320 using GPS vs an N320 using WR, that I've been trying to
          debug. I'm using UHD 4.4 so I'm wondering if this could be a
          cause?</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Thanks,</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Steve</div>
      </div>
    </blockquote>
    I don't know off the top of my head.=C2=A0=C2=A0 Update host and radi=
o to
    UHD4.5 or 4.6 and try again?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAOYGa72RuXNXyt2sprdyEP5NX+LtACG0Qkmx834hg+Odth8dxQ@mail.gmai=
l.com">
      <div dir=3D"auto">
        <div dir=3D"auto"><br>
        </div>
        <br>
        <br>
        <div class=3D"gmail_quote" dir=3D"auto">
          <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 17, 2024, 13:=
47
            Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com=
"
              target=3D"_blank" rel=3D"noreferrer" moz-do-not-send=3D"tru=
e"
              class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>=
&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <div>
              <div>On 16/01/2024 12:10, Eugene Grayver wrote:<br>
              </div>
              <blockquote type=3D"cite">
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  Hi,</div>
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  <br>
                </div>
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  There should be some delay, but it should be on the
                  order of a few clock cycles (ADC/DAC latency).=C2=A0 Fo=
r
                  the N321 we are observing 100us, corresponding to
                  ~2000 samples.=C2=A0 The X310 delay is ~1us, which
                  corresponds to 20 samples.=C2=A0 Still a lot higher tha=
n I
                  would expect just due to ADC/DAC.=C2=A0 The delay chang=
es
                  as a function of the sample rate.=C2=A0 If the
                  synchronization is after the DDC (as I think it is), I
                  would expect the delay to be independent of the
                  decimation ratio.=C2=A0=C2=A0</div>
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  <br>
                </div>
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  We are doing the calibration and will use that to
                  compensate, but I think this is something that can be
                  mitigated (to &lt;1us) in the FPGA.</div>
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  <br>
                </div>
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  Eugene.</div>
              </blockquote>
              Eugene:<br>
              <br>
              Talking to R&amp;D folks (or, rather, R&amp;D-adjacent) at
              NI, there was a problem in UHD starting in 4.1 where the
              PPS was aligning on<br>
              =C2=A0 the *trailing* edge, so time would be off by the
              pulse-width.<br>
              <br>
              Make sure (on the N3xx case) you're running UHD 4.5 or UHD
              4.6 on both the host and the device itself.<br>
              <br>
              <br>
              <blockquote type=3D"cite">
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  <br>
                </div>
                <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                  <br>
                </div>
                <div
id=3D"m_-4699527328678908112m_-7990498404868970052Signature">
                  <div
id=3D"m_-4699527328678908112m_-7990498404868970052divtagdefaultwrapper"
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
                <hr style=3D"display:inline-block;width:98%">
                <div
id=3D"m_-4699527328678908112m_-7990498404868970052divRplyFwdMsg" dir=3D"l=
tr"><font
                    style=3D"font-size:11pt" face=3D"Calibri, sans-serif"
                    color=3D"#000000"><b>From:</b> Rob Kossler <a
                      href=3D"mailto:rkossler@nd.edu"
                      rel=3D"noreferrer noreferrer" target=3D"_blank"
                      moz-do-not-send=3D"true">&lt;rkossler@nd.edu&gt;</a=
><br>
                    <b>Sent:</b> Monday, January 15, 2024 5:05 PM<br>
                    <b>To:</b> Eugene Grayver &lt;<a
                      href=3D"mailto:eugene.grayver@aero.org"
                      rel=3D"noreferrer noreferrer" target=3D"_blank"
                      moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">eugene.grayver@aero=
.org</a></font><span>?</span><font
                    style=3D"font-size:11pt" face=3D"Calibri, sans-serif"
                    color=3D"#000000">&gt;</font><span>?</span><br>
                  <font style=3D"font-size:11pt"
                    face=3D"Calibri, sans-serif" color=3D"#000000"> <b>Cc=
:</b>
                    usrp-users <a
                      href=3D"mailto:usrp-users@lists.ettus.com"
                      rel=3D"noreferrer noreferrer" target=3D"_blank"
                      moz-do-not-send=3D"true">&lt;usrp-users@lists.ettus=
.com&gt;</a>;
                    Mark Kubiak <a href=3D"mailto:mark.kubiak@aero.org"
                      rel=3D"noreferrer noreferrer" target=3D"_blank"
                      moz-do-not-send=3D"true">&lt;mark.kubiak@aero.org&g=
t;</a>;
                    Jason W Zheng <a
                      href=3D"mailto:jason.w.zheng@aero.org"
                      rel=3D"noreferrer noreferrer" target=3D"_blank"
                      moz-do-not-send=3D"true">&lt;jason.w.zheng@aero.org=
&gt;</a><br>
                    <b>Subject:</b> Re: [USRP-users] Bug/problem
                    aligning PPS to samples</font>
                  <div>=C2=A0</div>
                </div>
                <div>
                  <div dir=3D"ltr">Hi Eugene,
                    <div>Are you expecting that the RF output (for Tx
                      case) should be synced to the PPS "at the RF
                      output connector"?=C2=A0 It is my understanding tha=
t
                      the sync occurs at some place in the FPGA logic
                      for the "radio" block. There will be delay as this
                      goes through D/A and RF chain.=C2=A0 Same in revers=
e
                      for Rx.=C2=A0 As long as you get a consistent delay
                      (for a given sample rate), can you calibrate and
                      then choose a playout time that syncs the RF pulse
                      to the PPS pulse?</div>
                    <div>Rob</div>
                  </div>
                  <br>
                  <div>
                    <div dir=3D"ltr">On Fri, Jan 12, 2024 at 4:38=E2=80=AF=
PM
                      Eugene Grayver &lt;<a
                        href=3D"mailto:eugene.grayver@aero.org"
                        rel=3D"noreferrer noreferrer" target=3D"_blank"
                        moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">eugene.grayver@ae=
ro.org</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                      <div>
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
                            There appears to be a bug related to
                            alignment of the PPS to samples.=C2=A0 The is=
sue
                            applies to both TX and RX and was replicated
                            on N321 and X310 using UDH 3.15 and 4.6.=C2=A0=
 It
                            therefore appears to be an FPGA issue.</div>
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
                                is provided with external PPS and 10 MHz<=
br>
                              </span></li>
                            <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                              <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">The
                                PPS input is split and goes to the USRP
                                and a scope</span></li>
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
                                    1000 samples are 1, remaining are
                                    zero</span></div>
                              </li>
                              <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                                <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">File
                                  size =3D sample rate (i.e. repeats ever=
y
                                  second)</span></li>
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
                                  C++ application (based on
                                  tx_samples_from_file)</span></li>
                              <ul style=3D"list-style-type:square">
                                <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                                  <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Added
                                    code to set_time_unknown_pps(0),
                                    then set start time using metadata
                                    to 5</span></li>
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
                                USRP output is delayed relative to the
                                PPS as observed on the scope</span></li>
                            <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                              <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">The
                                delay is ~1.2 us for X310 and ~100us for
                                N321</span></li>
                            <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                              <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">The
                                delay changes slightly (&lt;1us)
                                depending on the sample rate (e.g. 10
                                Msps vs 20 Msps)</span></li>
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
                          <ul
                            style=3D"text-align:left;list-style-type:disc=
">
                            <li
style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;font-weight:40=
0;color:rgb(0,0,0)">
                              <span
style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0);font-weight:400">USRP
                                is provided with external PPS and 10 MHz<=
/span></li>
                            <li
style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;font-weight:40=
0;color:rgb(0,0,0)">
                              <div><span
style=3D"letter-spacing:normal;font-family:Aptos,Aptos_EmbeddedFont,Aptos=
_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,=
0);font-weight:400">USRP
                                  input is a pulse (generated using
                                  technique above) that repeats every
                                  second</span></div>
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
                                    is aligned to PPS, verified using a
                                    scope</span></div>
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
                                  records samples starting on a second
                                  boundary (time_t(5))</span></div>
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
                                    C++ application (based on
                                    rx_samples_to_file)</span></div>
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
                                    code to set_time_unknown_pps(0),
                                    then set start time using metadata
                                    to 5</span></li>
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
                                  samples are analyzed to find the first
                                  'large' value</span></div>
                            </li>
                          </ul>
                          <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                            <span
style=3D"letter-spacing:normal;font-weight:400">Results</span></div>
                          <ul style=3D"list-style-type:disc">
                            <li
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
                              <span
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Recording
                                appears to start late relative to PPS
                                (only verified on N321, delay is ~100
                                us, same as for the TX delay)</span></li>
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
                                    recall (years ago) there was a fix
                                    to a similar problem.=C2=A0 The FPGA =
was
                                    modified to trigger ADC/DAC samples
                                    after the DDC rather than before.=C2=A0
                                    Did it regress at some point?</span><=
br>
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
                                    delays are very consistent,
                                    indicating that the PPS is in fact
                                    being used (i.e. it is not random).</=
span><br>
                                </span></li>
                            </ul>
                          </div>
                          <div>
                            <ul>
                              <li style=3D"list-style-type:disc"><span><s=
pan
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">We
                                    ran some experiments to analyze the
                                    stability and accuracy of <b>relative=
</b>=C2=A0timing
                                    between RX and TX (i.e. turn-around)
                                    when the start time for TX and RX
                                    are specified.=C2=A0 The results are
                                    excellent =E2=80=93 delay is stable a=
nd
                                    accurate to &lt; 100 ps.</span><br>
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
                                seems like a simple thing to fix in the
                                FPGA =E2=80=93 there is no reason for the=
 delay
                                to be &gt; 1 sample clock.</span></span><=
/div>
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
                          <div
id=3D"m_-4699527328678908112m_-7990498404868970052x_m_-899158875553301336=
4Signature">
                            <div
id=3D"m_-4699527328678908112m_-7990498404868970052x_m_-899158875553301336=
4divtagdefaultwrapper"
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
                        _______________________________________________<b=
r>
                        USRP-users mailing list -- <a
                          href=3D"mailto:usrp-users@lists.ettus.com"
                          rel=3D"noreferrer noreferrer" target=3D"_blank"
                          moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">
                          usrp-users@lists.ettus.com</a><br>
                        To unsubscribe send an email to <a
                          href=3D"mailto:usrp-users-leave@lists.ettus.com=
"
                          rel=3D"noreferrer noreferrer" target=3D"_blank"
                          moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">
                          usrp-users-leave@lists.ettus.com</a><br>
                      </div>
                    </blockquote>
                  </div>
                </div>
                <br>
                <fieldset></fieldset>
                <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com"
                rel=3D"noreferrer noreferrer" target=3D"_blank"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                rel=3D"noreferrer noreferrer" target=3D"_blank"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users-leave@lists.ettus.com</a>
</pre>
              </blockquote>
              <br>
            </div>
            _______________________________________________<br>
            USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com"
              rel=3D"noreferrer noreferrer" target=3D"_blank"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">us=
rp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              rel=3D"noreferrer noreferrer" target=3D"_blank"
              moz-do-not-send=3D"true">usrp-users-leave@lists.ettus.com<b=
r>
            </a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------4T3SbfQsxsrpssTpPGMR2sco--

--===============4318967349120284135==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4318967349120284135==--
