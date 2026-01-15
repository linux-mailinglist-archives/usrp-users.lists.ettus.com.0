Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B167D233D9
	for <lists+usrp-users@lfdr.de>; Thu, 15 Jan 2026 09:48:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0CF7F386818
	for <lists+usrp-users@lfdr.de>; Thu, 15 Jan 2026 03:48:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1768466884; bh=SgEqZGPYorz6lVmr85KzvzNcDDKuTw3TWWUoAnsM3QU=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0h/0bFFToHxGjRWPph5zHhDjbFrgIvf+tbtC/j8xxC5thfnk/OoEKqY/fXTsrfzyS
	 fAuqZ2A89mdlUvgrfiLbPsWrtJIwATrUFZVluZa2J1303OdfZRLh92i6d9yNrBuk5F
	 LfpNy1Th0VAbmq9K3NMzIhhnX1unK0ACYxwCWbS2i+Z1q5KdxZhByBUZfAxKzfqI/w
	 erMs6IEwncJxgcC1JaHhmUPw8wKG7r2jk7CJzBSuxMXqGrVzeJ+FBwh/0++6BytZJJ
	 AFwd/mBIkvbAXbBIoLNJnqCzP9qDvGWfbjblwtx/XlN8YIRCK4/5XvhAo64+u90qiU
	 WHOYutsouvscw==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 689EE3867F6
	for <usrp-users@lists.ettus.com>; Thu, 15 Jan 2026 03:46:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="mxo5gVnf";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-6505d3adc3aso979636a12.1
        for <usrp-users@lists.ettus.com>; Thu, 15 Jan 2026 00:46:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1768466808; x=1769071608; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AWKY7EfOURQSLuh+iJqURv9h5bUG0K6ywyrL0brkl/Q=;
        b=mxo5gVnfg54kCuV3xjGBMJ6y4sWUI4Q37hXRJ2jRGNG9umNweqm8Tuc1vKD32he05x
         TfAjv0BNcqHPBbXbBIj7dz1aQZTSMq7k8Q5UYZeX7eYXi8u6Oy1xCDwZh4OE75V8y5T4
         DCr43TmKbW9CltCtCvtbD/t0IpDCG3ZDmfd39ZYNPzfm8ZQrfciDdAwWvtOqGPGkqR7T
         N11IUw8pft7XVZUQsuree71HYfF9QnZQcux6uFINS7+3a72dvzFJsGZtQl/X60HrhtWo
         YktGGVUujFipgWTCrE29Yu3OtbAgrfEfQiTX31bCv0OSuA1MIbz3pR2JQb4alTv1uc6s
         bDkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768466808; x=1769071608;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AWKY7EfOURQSLuh+iJqURv9h5bUG0K6ywyrL0brkl/Q=;
        b=ZD53kp8TIazIOXg6Yji2PQjwFCeCuLPVCjjditfyUXwoJCmRVXVv4woHhFoLVx+C3k
         03irqRuuuwxh232LyLKbGsiNZe5eRH6qkTTQmhc/rAkde7rom5pX6RyJIyFjVe9Qc45y
         hTOG4zfHLgtrZEss6S6r9vp7L63xdFdjGyHu/zZU+wDtHFhoGzOdHtyvXMCWSetYxovA
         ZsFW0NmUqkLYN82x9Y3TLKtbuqvK/Ma4C0DXB0qJOhONAx6co5+KkuaWo7aOwnWX5Ql/
         bfWR//lMYlk6SwG1PUmMmyu2U5w8f6lA2yIkghzd9uZyVmI99SZVCWg/275ORJlkanFp
         nBsg==
X-Gm-Message-State: AOJu0YyVBfGKOYydXQsB1VCNymZopBlFea5NXLimuLvcoyO+OvijXMhX
	EOOq/10KCikKgPOnP27ig3+8ggB8/bBPcNjnzpJsKh1zPAJHqsOYrOPbAdrl9UGn9uo/wqnAonp
	614Ebvw4dmChBwEMfEnrtieMKhskowc/77k72Ixo1jZJgPL67OUBcWag=
X-Gm-Gg: AY/fxX7FxJbNor9TK62iKjLCFWDAvQrYK9RAUStCCX6HAe1vQko6YCREON4ihaRpMLe
	hVUQQwF58nia0JCnEU0AVw4nKt1I0i5i6ThiEjrI3NOdWjNK1X+4Oiy09KC1ZMwXNYvUwg61ANQ
	6y2CxUDXlOOz1MtFTBZmlse/fibTEtCo6kQFxFQuLkIt4o5gdEoKkjKFUbwXvArL8FCh+4K8UdH
	sMI+g4J8PGfs/ksyPJA/eLeRhsG0Xw0UaslQzQkvpU5CMi6LwtI2NW1X2RzK+kSPFRdSA/KVfiB
	usl7grXOuRq/IpQrrFD9auz4orU=
X-Received: by 2002:a05:6402:2794:b0:649:815e:3f9b with SMTP id
 4fb4d7f45d1cf-653ec10b28emr4391595a12.3.1768466807653; Thu, 15 Jan 2026
 00:46:47 -0800 (PST)
MIME-Version: 1.0
References: <SA1P110MB19324582F1B8CFDD8469BBA6B78FA@SA1P110MB1932.NAMP110.PROD.OUTLOOK.COM>
 <217ceb53-0caa-412a-a79d-dfc2c47208ff@gmail.com>
In-Reply-To: <217ceb53-0caa-412a-a79d-dfc2c47208ff@gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 15 Jan 2026 09:46:35 +0100
X-Gm-Features: AZwV_QhYdPsSWGWXvo4TRbqBmsRVCb28KwYQRK0qWdjjPMks5ok_Lal4FurucLc
Message-ID: <CAFOi1A5Jbr+bPB-C-kCpDXWcP-X06eBxRpsBEnbJsFqNC5ZeoQ@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: N3UE2LSB3XDXWFPH236W6SKY6G7U52FS
X-Message-ID-Hash: N3UE2LSB3XDXWFPH236W6SKY6G7U52FS
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using USRP B206mini with Octoclock 10MHz+PPS
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N3UE2LSB3XDXWFPH236W6SKY6G7U52FS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2767754349834415112=="

--===============2767754349834415112==
Content-Type: multipart/alternative; boundary="000000000000de11ba064869432d"

--000000000000de11ba064869432d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey David,

to add onto what Marcus said: The minis don't have a hardware PLL (unlike
the B200/B210, and all other USRPs). Before you go down the rabbit hole of
modifying the FPGA, you might want to run a few B2xx-minis from an
Octoclock (ignore PPS for now), and check if the phase stability is good
enough for your application.

Other than that, it would be possible to use a GPIO input for PPS, but
neither the software nor the FPGA expect that, and both will require
modifications. For a USRP/UHD veteran such as yourself, that sounds
feasible, but be aware it's a lot of work and might not give you what you
need.

--M

On Wed, Jan 14, 2026 at 9:20=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 2026-01-14 14:57, David Raeman via USRP-users wrote:
>
> Hello,
>
>
>
> I have a project currently hosted on a USRP E320 that involves distribute=
d
> signal coherence. During development I sometimes do over-the-wire testing
> using an Octoclock=E2=80=99s 10MHz and PPS outputs to synchronize multipl=
e radios
> on the bench.
>
>
>
> I=E2=80=99m starting to investigate the viability of rehosting this appli=
cation on
> a USRP B206mini to reduce size and cost. As far as I can discern, this
> radio only has a single port that can accept either a 10MHz reference inp=
ut
> or a PPS input. Is it possible to somehow use the radio with both clock a=
nd
> PPS outputs from an Octoclock with out-of-the-box UHD? If not, would it b=
e
> viable for me to add a bit of FPGA logic and UHD tweaks such that softwar=
e
> can specify a GPIO pin as the PPS input while using the SMA as the 10MHz
> input? Or are there hardware or systems constraints that would preclude
> that approach?
>
>
>
> Thanks!
>
> David Raeman
>
> Synoptic Engineering
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> You could probably add some FPGA functionality to implement a separate PP=
S
> input.
>
> But I should warn you that the clock servo in the B205x series is simply
> NOT UP TO THE TASK of building-out multi-unit coherent applications.
>
> The mutual phase-noise is way too high.  The B205 was never intended for
> such applications to begin with, and the clock servo just doesn't work th=
at
> well.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000de11ba064869432d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey David,</div><div><br></div><div>to add onto what =
Marcus said: The minis don&#39;t have a hardware PLL (unlike the B200/B210,=
 and all other USRPs). Before you go down the rabbit hole of modifying the =
FPGA, you might want to run a few B2xx-minis from an Octoclock (ignore PPS =
for now), and check if the phase stability is good enough for your applicat=
ion.</div><div><br></div><div>Other than that, it would be possible to use =
a GPIO input for PPS, but neither the software nor the FPGA expect that, an=
d both will require modifications. For a USRP/UHD veteran such as yourself,=
 that sounds feasible, but be aware it&#39;s a lot of work and might not gi=
ve you what you need.</div><div><br></div><div>--M</div></div><br><div clas=
s=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_att=
r">On Wed, Jan 14, 2026 at 9:20=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"m=
ailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 2026-01-14 14:57, David Raeman via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt">Hello,<u></u>=
<u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0=
<u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt">I have a
            project currently hosted on a USRP E320 that involves
            distributed signal coherence. During development I sometimes
            do over-the-wire testing using an Octoclock=E2=80=99s 10MHz and=
 PPS
            outputs to synchronize multiple radios on the bench.<u></u><u><=
/u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0=
<u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt">I=E2=80=99m s=
tarting
            to investigate the viability of rehosting this application
            on a USRP B206mini to reduce size and cost. As far as I can
            discern, this radio only has a single port that can accept
            either a 10MHz reference input or a PPS input. Is it
            possible to somehow use the radio with both clock and PPS
            outputs from an Octoclock with out-of-the-box UHD? If not,
            would it be viable for me to add a bit of FPGA logic and UHD
            tweaks such that software can specify a GPIO pin as the PPS
            input while using the SMA as the 10MHz input? Or are there
            hardware or systems constraints that would preclude that
            approach?<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0=
<u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thanks!<u></u=
><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt">David Raeman<=
u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt">Synoptic
            Engineering<u></u><u></u></span></p>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    You could probably add some FPGA functionality to implement a
    separate PPS input.<br>
    <br>
    But I should warn you that the clock servo in the B205x series is
    simply NOT UP TO THE TASK of building-out multi-unit coherent
    applications.<br>
    <br>
    The mutual phase-noise is way too high.=C2=A0 The B205 was never intend=
ed
    for such applications to begin with, and the clock servo just
    doesn&#39;t work that well.<br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000de11ba064869432d--

--===============2767754349834415112==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2767754349834415112==--
