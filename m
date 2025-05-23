Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D9BAC19B0
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 03:31:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A427E384F18
	for <lists+usrp-users@lfdr.de>; Thu, 22 May 2025 21:31:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747963915; bh=LY6fbiGI9iq429OWASznsDJUtvOEk5vKI2ZvRwnfIsE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=tTJRae5TkFE9vlefCpJQcmH/Bf+G78yoRshcluqalO8rUizm73nBHO4abBcFFsXFs
	 L4XBPlPJMBfjIfz7mDluEcGpzO8EB7e01QEBQus9xmxBPzPrRW8Kp+CLj8PCzHkVn2
	 mb/AHwmIzKVuxPVBcq338qzcbb2MzhUYhf/TyREai1sCuqAjlhYYYhBe7BYo+fHLaV
	 yPex/NuRQZLfQVsYNVrWTDiAUwTxwSONaJH/NWdL5ervCVEd2RJB7/UvnPGGFtQw8L
	 HGSGYzzw0UJ5L2J9oABfd7IPKo0rOem2/lD0PcnquNUU8cALmFwD3WoEMf2d50EoWn
	 mmj1LlQkGID6g==
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 95C3A380C58
	for <usrp-users@lists.ettus.com>; Thu, 22 May 2025 21:31:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RDAFFAem";
	dkim-atps=neutral
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-3dc6f653152so16402785ab.3
        for <usrp-users@lists.ettus.com>; Thu, 22 May 2025 18:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747963897; x=1748568697; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2wR3UnhsLMnqUpeG4Jllka8i24A90GXyDFIW3dV+zUo=;
        b=RDAFFAemCQYbUWY8tPRlUCZq/vP37hPgvbLmWHc1xyMq1kcGjQMsiMLqEZsKTdfnn7
         CQfxo9knb6EFj+rUOOtTpLYf/9q9Lx1F3ih88oM5JEq61Lu+cDxEI1cBbYF56vm68HWn
         LzLTAgnqpwDawd/6OkFTTmVmbACTVWwGSnInh/QwWANalube/uzH/VUSZ4HMUaMKnJl+
         RVFC/3XRGUEkM7kmhsEKUCtL06RMyVzrdDaICOqqJAuVeB+C6xAf0XEAxs1CZ8KDiZV/
         F3zQ+aAYiOevU74qAIhxq53WSCgGpxkMOiD1KrfN1xcYa1znQvuNXZpiSTDuP/ykzFq+
         +daA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747963897; x=1748568697;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2wR3UnhsLMnqUpeG4Jllka8i24A90GXyDFIW3dV+zUo=;
        b=sD+2bsqPqvEA+jtW6gL4KO155HI3M62/SeBROhgpqDOoqSqTOUhU43el99jFEk1tgJ
         wmZqe2qi80b3hSLTZcGa5Ll4fI1qpN/IW3N+57PTH1Z/at8aykK4kpsOyvhiIHCrsmgk
         pzLDp+10VAI/Cb4HSOJXMNwMY/9Ch42lVIBCCwLBFoDxzrrOWMwNxd/ADzkGRxW8R88+
         hwe6a7gPc7PW0I18Fagf9C3GMIyDFSQdA7AFLAw6kr2mzWWPzh7V+cx4f1FT+PUvmQr7
         fygDX294ryYT5Q1/GPu59rW3uuBYzdHqDgjlbQMQI4+bnFE6x73ObMb7pMJT3JIhWTOe
         98ag==
X-Gm-Message-State: AOJu0YzIFTONCO/WFSLOM/bJu1Oq/OtbeUShDoCwNM4Z1pn49/ENEP9N
	9ddOxUUdlvTmU6DVmct85TdAZva+oTSP4s5OHvPIZ+bMRbQjuw+qiz7/zw9XTJ4UoEeb/XCwlLV
	astQMFiciq2YBvqTipkvBieDBL60AwExmow==
X-Gm-Gg: ASbGncvxXqxC9gGP0H7csR83JlusrRoXKRbiaLuzEe/yuRkCNdkTB8TdDdhclEQqUuR
	O2jjI/g1yZuxVDP/1VPw2lQzOKbH6yswEJdmsN/EE7NrzkQz/kvplt86FvX5sxW9qsGME8baBKm
	v5bUWWtue9gvplJBEyER+WiL6xpX+yZBJx
X-Google-Smtp-Source: AGHT+IH5HD1Mh+wMixDJ2BfwX+3K4GfHl/Jxcv28d5b+bBGK0/IoFriEWMmJAffR5C3DyD2wHto+gaFR3jYZX8o4PPQ=
X-Received: by 2002:a92:ca0d:0:b0:3d8:1ea5:26d1 with SMTP id
 e9e14a558f8ab-3dc932db875mr16481045ab.18.1747963896736; Thu, 22 May 2025
 18:31:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2FZ3qPZxwPGY-p18O895qNREXgsOTWUHJhxyi3boCoVeg@mail.gmail.com>
In-Reply-To: <CAAxXO2FZ3qPZxwPGY-p18O895qNREXgsOTWUHJhxyi3boCoVeg@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 23 May 2025 04:31:23 +0300
X-Gm-Features: AX0GCFvvKG7ly2S7GxKY0XCXvdAE39SyCaG4z_oS2SnbnM2Q-IaouwTdPF44l9w
Message-ID: <CAAxXO2EpXSctSrnaCA7pbjDD=i95WEphKyQsoJDYqrwL06Fnqg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: GPLZCBVVBHOBAMKHDUPU4FHFBBGDGAH5
X-Message-ID-Hash: GPLZCBVVBHOBAMKHDUPU4FHFBBGDGAH5
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Curious energy spikes from my X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GPLZCBVVBHOBAMKHDUPU4FHFBBGDGAH5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1510386310483924890=="

--===============1510386310483924890==
Content-Type: multipart/alternative; boundary="0000000000002533880635c38f1c"

--0000000000002533880635c38f1c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The spike is very clean to come from outside.
Must be from my X310. My tuner must be adding a signal to the
center frequency. The small artifact at 2 Ghz is probably the tuner not
equilibrating fully.
I recently updated my FPGA image. Is that where the tuner lives?

On Fri, May 23, 2025 at 3:19=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.com=
> wrote:

> Hello,
>
> Whenever I look at my spectrum I always see an energy spike at the center
> frequency.
> In the first image you can see a spike at 2, but not at 2.001 Ghz. In the
> next image,
>  at 2.001 Ghz you can see the energy spike at the center frequency, but
> also a small
>  spike at 2 Ghz.
> I have verified these results by both fosphor (OpenCL fft) and fftw3f.
> Besides, if it were
>  an fft artifact, why is the spike at 2 Ghz still visible after a few
> mins? These spikes
>  seem to be transient, but real. In that part of the spectrum, you there
> is no traffic. Could it be  harmonics from my power supply? Problems with
> my X-310? My transmitter
>  doing funny things (I have 2 boards and not enabling my transmitter
> anywhere)?
> Naming of images is freq_sr.jpg. All are in Mhz.
>
> TIA
> Nikos
>

--0000000000002533880635c38f1c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">The=
 spike is very clean to come from outside.</div><div class=3D"gmail_default=
" style=3D"font-size:small">Must be from my X310. My tuner must be adding a=
 signal to the</div><div class=3D"gmail_default" style=3D"font-size:small">=
center frequency. The small artifact at 2 Ghz is probably the tuner not=C2=
=A0</div><div class=3D"gmail_default" style=3D"font-size:small">equilibrati=
ng fully.</div><div class=3D"gmail_default" style=3D"font-size:small">I rec=
ently updated my FPGA image. Is that where the tuner lives?</div></div><br>=
<div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"=
gmail_attr">On Fri, May 23, 2025 at 3:19=E2=80=AFAM Nikos Balkanas &lt;<a h=
ref=3D"mailto:nbalkanas@gmail.com">nbalkanas@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
 class=3D"gmail_default" style=3D"font-size:small">Hello,</div><div class=
=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail_=
default" style=3D"font-size:small">Whenever I look at my spectrum I always =
see an energy spike at the center frequency.</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small">In the first image you can see a spike at 2, =
but not at 2.001 Ghz. In the next image,</div><div class=3D"gmail_default" =
style=3D"font-size:small">=C2=A0at 2.001 Ghz you can see the energy spike a=
t the center frequency, but also a small</div><div class=3D"gmail_default" =
style=3D"font-size:small">=C2=A0spike at 2 Ghz.</div><div class=3D"gmail_de=
fault" style=3D"font-size:small">I have verified these results by both fosp=
hor (OpenCL fft) and fftw3f. Besides, if it were</div><div class=3D"gmail_d=
efault" style=3D"font-size:small">=C2=A0an fft artifact, why is the spike a=
t 2 Ghz still visible after a few mins? These spikes</div><div class=3D"gma=
il_default" style=3D"font-size:small">=C2=A0seem to be transient, but real.=
 In that part of the spectrum, you there is no traffic. Could it be=C2=A0 h=
armonics from my power supply? Problems with my X-310? My transmitter</div>=
<div class=3D"gmail_default" style=3D"font-size:small">=C2=A0doing funny th=
ings (I have 2 boards and not enabling my transmitter anywhere)?</div><div =
class=3D"gmail_default" style=3D"font-size:small">Naming of images is freq_=
sr.jpg. All are in Mhz.</div><div class=3D"gmail_default" style=3D"font-siz=
e:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small">T=
IA</div><div class=3D"gmail_default" style=3D"font-size:small">Nikos</div><=
/div>
</blockquote></div>

--0000000000002533880635c38f1c--

--===============1510386310483924890==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1510386310483924890==--
