Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A516DAFFEC1
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jul 2025 12:09:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A9F7238640C
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jul 2025 06:09:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752142171; bh=vjpr68+jwlYxdRLuVfbsNzxKX28kdb9nTHvju9kzztA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=L6VQjplrMpriGvAU5zxeOczv3z4me/T++GfcpxSh0p9xvRl9tABfgeaQZAsEYvr8l
	 rCLXat80+ULj6bl9/C5FCXtoqoUVeL+jbS4j7CN4HNHnxgWo52wEdN+IZQEWcX6DtQ
	 jHN5eyVYV2X1czattddwYDymujKh2Uc9GSbCX2xlW/qzjbSgHFICa6VSGwZE55eQ9Q
	 AdukHaHWZeOX8k3a6lq9wZa9tssuj8Qm72vGOy0NKWNIeVTqDjjbbxOjugNvQoVblO
	 rfa1+hlLwcZKMIs++JjtZUzijH4yWWz3pta7h3Va164FK4tMKTuosgwTEX0qZRisCg
	 wI9RW78fuMm+w==
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 0FD49386354
	for <usrp-users@lists.ettus.com>; Thu, 10 Jul 2025 06:08:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="fTCIjyH6";
	dkim-atps=neutral
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-60c79bedc19so1221938a12.3
        for <usrp-users@lists.ettus.com>; Thu, 10 Jul 2025 03:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1752142118; x=1752746918; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dKymRwnFT9qMvG0sgVCc2RbQhBCh2HcFm9F2gf2/P7k=;
        b=fTCIjyH6QIbyQSbE4/P1I3mM8o9ypwn5FUwdQ1VCsS2+LtYw4gEwABtmYhMIq3TEdY
         pScgDzfTChr6vl3URYL5VWbBXDloV2C18gM4rC9j9RlYF7bxmTEm5HMqcOF3DzzQwyrV
         MVGHTH1NK+uX3mGRzAIsxT/FEwqr56Z0mzigUK2lOivZFaSz0mE2ASC2C5QI0FFmmLt4
         t/ToW6lELkloAMtZhtpi8qmAA/1iHAubeF5iBhRuUpcD8F1c7+ASD0Ia7IlP8H2Snw7C
         hJcNojCUNZ+whIfmZM28bKrRoxdsaXyodnVfKI1weK+tlfE1m1Jmw2A51k2/Ova4Ey3P
         NkNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752142118; x=1752746918;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dKymRwnFT9qMvG0sgVCc2RbQhBCh2HcFm9F2gf2/P7k=;
        b=ihb6Znm40nhiZ227I9P45rrW378pxNRaCauUpKWMvonPwUexYguM1k9oS2+erN9Qia
         va/U/sRPjdCZbjBbJlsJV1+xFK0VxWJvLf9ZZ0tIpkTeShMiRQcL3sGXybFcAtRHjsQy
         Kbsrdt+1DGcmMczBKKRGNpxjLpEWQY+ou7G0IniqSQKK7SZu4aYFE8dvfc2hmYdkp9VJ
         Wx4qnne7DcKtlBLa8enqvlaR4zQT57xj+qlqPzgSpDVMANuSPHcoln71hhofvfXTNbbO
         w7g5EG4gIrI4sOzEOnofPw26MUQJ2A+akc6dqe9rkbFfSuAciEnlBKXK2Zptikx9AR9a
         4qiQ==
X-Gm-Message-State: AOJu0Yy1zydLN9Uc8FK7aNPJEAJJNNQRdAtbSaQp41ijFIMPDxrUXo8A
	cBWbX2YcZTYM/0bsTNE0Ix6avoQZzuqzgtHzR2WfDT4/Q+O6zlssNQd/LkoIG7KfbudwMMOYCCK
	q+gDwOdmnogA3sn1/wBrGaqf+UiNzs0F7/gC5HQqtoVcS
X-Gm-Gg: ASbGncvBAiDGVDnrW6Ouhbbz7PIX4BuDsSg0alnMVAFayf/s2+y3yULnu7jN/2LO1uR
	VeD7G7lywZ5N7t4DVfEMF9vbJwRmzc8iHhLD4q19WbN34sxVT/D8sZduw8ZG0EU58KwkWFbQkkA
	MntkzBGl/T0ErA0384ks6Pipq5qfTHFPzTYstt564txg==
X-Google-Smtp-Source: AGHT+IGSeRGoNGpNd4NUwWGiI22IlASKOu3gT3PVHsTQ81bCWnurG5EenFWtagOy9CoQn+0yg5IZLkn0/ylSNF5N6zQ=
X-Received: by 2002:a17:906:f5a8:b0:ae0:c943:785c with SMTP id
 a640c23a62f3a-ae6e1250017mr324396466b.35.1752142116246; Thu, 10 Jul 2025
 03:08:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2EaJ+bkxSGJkpBJV+3F=prauS1=RtgE17WdfTks3OB17Q@mail.gmail.com>
In-Reply-To: <CAAxXO2EaJ+bkxSGJkpBJV+3F=prauS1=RtgE17WdfTks3OB17Q@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 10 Jul 2025 12:08:25 +0200
X-Gm-Features: Ac12FXyvNTviR647H7yN_EZSlXY3a-ZyqMAxreX-49FOFVss-Qz7haul-1tf3oM
Message-ID: <CAFOi1A5KYE_PMAoY4ig3YrAqd4oALspwGohKjaU+y_Lsi4Fp2Q@mail.gmail.com>
To: Nikos Balkanas <nbalkanas@gmail.com>
Message-ID-Hash: 2PFMI2DQWKC6HCDVKSBY6HXXGNWQYZNI
X-Message-ID-Hash: 2PFMI2DQWKC6HCDVKSBY6HXXGNWQYZNI
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Minimum number of dropped samples when changing frequency?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2PFMI2DQWKC6HCDVKSBY6HXXGNWQYZNI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2319099292876963843=="

--===============2319099292876963843==
Content-Type: multipart/alternative; boundary="0000000000006f6ebc06399060e0"

--0000000000006f6ebc06399060e0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Nikos,

there is no one answer for this, it depends on hardware used, which
specific frequencies, how your signal is flowing...
Another important thing is: are you using timed commands or not. If you are
using timed commands (and the device supports timed-tuning), then you can
wait exactly for the sample that should be the first sample after the tune
request is processed, then wait a given, deterministic time depending on
your hardware and frequencies (old and new). If your device does not
support timed-tuning, or you're not using timed commands, then you must
wait several milliseconds after submitting a tune request.

If you are doing timed tunes, then I believe none of the hardware has an LO
lock time that is worse than 100=C2=B5s (many are better).

--M

On Thu, Jul 10, 2025 at 4:25=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.com=
> wrote:

> Hello,
>
> What is the minimum number of samples to drop to flush uhd buffers when
> changing frequencies?
>
> TIA
> Nikos
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006f6ebc06399060e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Nikos,</div><div><br></div><div>there is no one answe=
r for this, it depends on hardware used, which specific frequencies, how yo=
ur signal is flowing...</div><div>Another important thing is: are you using=
 timed commands or not. If you are using timed commands (and the device sup=
ports timed-tuning), then you can wait exactly for the sample that should b=
e the first sample after the tune request is processed, then wait a given, =
deterministic time depending on your hardware and frequencies=C2=A0(old and=
 new). If your device does not support timed-tuning, or you&#39;re not usin=
g timed commands, then you must wait several milliseconds after submitting =
a tune request.</div><div><br></div><div>If you are doing timed tunes, then=
 I believe none of the hardware has an LO lock time that is worse than 100=
=C2=B5s (many are better).</div><div><br></div><div>--M</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 10=
, 2025 at 4:25=E2=80=AFAM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gm=
ail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_default" style=3D"font-size:small">Hello,</div><div class=3D"gmai=
l_default" style=3D"font-size:small"><br></div><div class=3D"gmail_default"=
 style=3D"font-size:small">What is the minimum number of samples to drop to=
 flush uhd buffers when changing frequencies?</div><div class=3D"gmail_defa=
ult" style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=
=3D"font-size:small">TIA</div><div class=3D"gmail_default" style=3D"font-si=
ze:small">Nikos</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006f6ebc06399060e0--

--===============2319099292876963843==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2319099292876963843==--
