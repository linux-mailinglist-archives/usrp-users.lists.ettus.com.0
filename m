Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CBD9C1001
	for <lists+usrp-users@lfdr.de>; Thu,  7 Nov 2024 21:47:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E8E813863AC
	for <lists+usrp-users@lfdr.de>; Thu,  7 Nov 2024 15:47:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731012433; bh=VHLcUxRiw0/0mDGigWhvNBUI+/zNn0KD5wXiI64IydU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=MvyyYfF+vKKv5m9V6DxgiGeujxCrdRfrgFRzSBnFJovzNVG/R7TqZn7cYifh2booP
	 a1lYVv+zQbGcsPuf8atw9W7lcnMjPZdkGU2uswwz+BspkSQIpukyF41APT007sNges
	 W5K/UbAfh/7WiLcXP3b8fKzAM+lRVzn6fJgKJxjZIRj3V7JJCmCsFkyLubPSskKiNl
	 TToWnt2/GbJnpNf8FpM5ckBKRnMQNQheHFpgqBx7CmU+kepmC3//9hCn0PQkOG578Z
	 74o0ribDItnv3W2FRsEsGM0pw99lPLfcthDTimbPzITXh2eFVR6CAV6dCDmJx5tlI/
	 6HnVqhL/56VbA==
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	by mm2.emwd.com (Postfix) with ESMTPS id CBE2038630C
	for <usrp-users@lists.ettus.com>; Thu,  7 Nov 2024 15:46:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lHx6TfRr";
	dkim-atps=neutral
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-20c70abba48so15090915ad.0
        for <usrp-users@lists.ettus.com>; Thu, 07 Nov 2024 12:46:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731012407; x=1731617207; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fxzebTWHNoq0hjKzsX1amOqse10XN6P+BUIoR2TM8XA=;
        b=lHx6TfRrhBWroFaj1eb5hMm0Otzuv6ZgqZ9Ftl2stZHQuqc6MEnZ8hDrgRjJAG2Tbp
         5F/3UckVixZDTNMCZIA+E1y23ENPOrNSUElBlbH1Oky/RM7b+lVBPzZBnzp4uXJkU4Hk
         FH/AQp+0hJEf/OV4P9uvoPexqSkxckJkL2rJRAO2GelPnWeB4SNS1tQlxNs7NwvXKlam
         apOmGwVtaZ/F5zWHWAq8rNPm+kQDfbOqcIx86ye7jmfdHEJnyYWcwqkHD9GAQJSsJO6H
         hBfx2rqXxiqQbutLPrLcJT0PDm/wZkuJWFzBQ5z0OxPmHWwRD60zR+mhIeYwXActStYs
         bm5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731012407; x=1731617207;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fxzebTWHNoq0hjKzsX1amOqse10XN6P+BUIoR2TM8XA=;
        b=wS8qu3r16HCXQVfuDHm0jdbXTgUWuH+cv/mRLekeNDh6EOHJOWTpLC1D3zTKT2WITs
         /yon8+vnzGolNMIDjsINGR9030A6t6uAXuUZVhYsrMWNWuM+x0CVY6sGt3Bnqo/72e1Y
         s2UGc1XqwU4JIm9NwC5+KgnpisVwvjIvLZYCubtqLtNmpBaZZHVa+cGowcb474nKOUo1
         mRrTh5Oqtd00RdDhVeNODUiSEPIAHYdGah4MrqGk58vQYmL6J9fmhsmMFO4JImy2r9Qe
         lXMRELWMaccQ+VAsgfnCAm7qp/xzDwyFO+JO8+NsB/6tdypV7C5Gx3q/oy14gpmLh+v1
         jWAg==
X-Gm-Message-State: AOJu0YyLkGRf+6hkazPyQE/pU/T2UdOpJdslxFMDgA+NmL34jPjeP9NN
	TqgHAtryYZgnNVmsEulPkq4SgOXBuvxFmvQBKyFmDWvjvZap45VdoDh2dAxT0Fv9D/asrD15XZd
	rFtp5kkWcmZDRSr17pobQR7K84kDHSg==
X-Google-Smtp-Source: AGHT+IGffWlkpfHSxPx01Avm4vjjnQ59EgUuIRt4E4rKDd4x1JZi++C97kNeeS+vqM9WwLPgvL2Qm3GckndyB/sygpY=
X-Received: by 2002:a17:90b:5310:b0:2e0:9a63:9017 with SMTP id
 98e67ed59e1d1-2e9b177a14cmr697107a91.23.1731012407251; Thu, 07 Nov 2024
 12:46:47 -0800 (PST)
MIME-Version: 1.0
References: <CAEZoMYOCpG0bx2hMpBQGyjG3A0OfFTbLYsBTxVZ7=jaVZm2XSw@mail.gmail.com>
 <6f137c76-b4c4-4a53-a16b-766f0c0c7299@gmail.com>
In-Reply-To: <6f137c76-b4c4-4a53-a16b-766f0c0c7299@gmail.com>
From: Chris Wozny <woznych@gmail.com>
Date: Thu, 7 Nov 2024 15:46:36 -0500
Message-ID: <CAEZoMYOpzDMfSEQ0NyL9C-VXQ75kOMvR-QrkNK1X3zGF75krOw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: WCRTRZ3ZWFCUPKE2WWIMYDPWH43JLJQD
X-Message-ID-Hash: WCRTRZ3ZWFCUPKE2WWIMYDPWH43JLJQD
X-MailFrom: cwoz36@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: First 10 Samples From First Receive Always 0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WCRTRZ3ZWFCUPKE2WWIMYDPWH43JLJQD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2374473213470725850=="

--===============2374473213470725850==
Content-Type: multipart/alternative; boundary="000000000000a2d86a062658bbdf"

--000000000000a2d86a062658bbdf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you! The sample delay induced by the filter taps makes sense. Is
there a best practice that folks go with to deal with this or is it so
insignificant that people don't care? I was thinking of either requesting
10 more samples and skipping the first 10 when writing to the filesystem /
reading them into the software that consumes them.

On Thu, Nov 7, 2024 at 3:03=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmail=
.com>
wrote:

> On 07/11/2024 14:53, Chris Wozny wrote:
> > I had noticed that the first ten samples of my application were always
> > coming up as zero regardless of whether it was 8-bits on host or
> > 16-bits on host. I went down the path of trying to reproduce a minimal
> > example to share with this mailing list, however I then realized that
> > even the example "rx_timed_samples.cpp" was also producing the same
> > results. This occurred with two different b200minis and a B210 with
> > UHD 4.7.0.0. I had to de-boostify the source code to run on my system
> > and specify a center frequency and receive gain, but am able to
> > reproduce this issue every time. I've confirmed that a signal is
> > present by using a signal generator for one setup and also with an OTA
> > setup tuned to 2421 MHz with AGC disabled and receive gain set to 70 dB=
.
> >
> > Has anyone observed this issue or can anyone else reproduce it using
> > the timed receive example as well? Sorry if I am missing critical
> > details that would help diagnose the issue, let me know if any
> > additional information would be helpful.
> >
> > - Chris
> >
> The signal must necessarily pass through some digital filtering on the
> way between the antenna and your application.
>    Those digital filters have a certain length, and thus group delay.
> That filter must necessarily have *some* value already
>    in it prior to your samples being presented to it.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a2d86a062658bbdf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you! The sample delay induced by the filter taps mak=
es sense. Is there a best practice that folks go with to deal with this or =
is it so insignificant=C2=A0that people don&#39;t care? I was thinking of e=
ither requesting 10 more samples and skipping the first 10 when writing to =
the filesystem / reading them into the software that consumes them.</div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, =
Nov 7, 2024 at 3:03=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchv=
onbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-wid=
th:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-l=
eft:1ex">On 07/11/2024 14:53, Chris Wozny wrote:<br>
&gt; I had noticed that the first ten samples of my application were always=
 <br>
&gt; coming up as zero regardless of whether it was 8-bits on host or <br>
&gt; 16-bits on host. I went down the path of trying to reproduce a minimal=
 <br>
&gt; example to share with=C2=A0this mailing list, however I then realized =
that <br>
&gt; even the example &quot;rx_timed_samples.cpp&quot; was also producing t=
he same <br>
&gt; results. This occurred with two different b200minis and a B210 with <b=
r>
&gt; UHD 4.7.0.0. I had to de-boostify the source code to run on my system =
<br>
&gt; and specify a center frequency and receive gain, but am able to <br>
&gt; reproduce this issue every time. I&#39;ve confirmed that a signal is <=
br>
&gt; present by using a signal generator for one setup and also with an OTA=
 <br>
&gt; setup tuned to 2421 MHz with AGC disabled and receive gain set to 70 d=
B.<br>
&gt;<br>
&gt; Has anyone observed this issue or can anyone else reproduce it using <=
br>
&gt; the timed receive example as well? Sorry if I am missing critical <br>
&gt; details that would help diagnose the issue, let me know if any <br>
&gt; additional information would be helpful.<br>
&gt;<br>
&gt; - Chris<br>
&gt;<br>
The signal must necessarily pass through some digital filtering on the <br>
way between the antenna and your application.<br>
=C2=A0=C2=A0 Those digital filters have a certain length, and thus group de=
lay.=C2=A0=C2=A0 <br>
That filter must necessarily have *some* value already<br>
=C2=A0=C2=A0 in it prior to your samples being presented to it.<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a2d86a062658bbdf--

--===============2374473213470725850==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2374473213470725850==--
