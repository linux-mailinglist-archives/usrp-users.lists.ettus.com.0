Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA09EAD5F8F
	for <lists+usrp-users@lfdr.de>; Wed, 11 Jun 2025 21:56:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 98497385EDB
	for <lists+usrp-users@lfdr.de>; Wed, 11 Jun 2025 15:56:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749671811; bh=O4qONarKXTm9gxu/NjekDPpZqbzu01bVFtni+0kI0EI=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=CNQTei3jQm1H8JJzCa6tMyrQ+vJvPeAe9Tr5rYXEsk01AgUu/KhaIM5xOSZqhlF0/
	 /z8sjaml13rXPEBkxltRGXd9vG500M4y5jXdwmoo9cbpSg+M+q0ztxET/8r189xYfX
	 rPEYLsnIZjKTA6prSs14zesyDU2hM5OtlKBP4EnivtwFD1ahHNO8lwRMpONW28MPze
	 R2Z3fWU9GhNEz+mhsqN75Zf8z4S+72Rs+m7QgWjZlGNmfWMD1Op5UtFMq6z2vrDLOh
	 F0DrBxL1N++Zfw6hH368sN39U/jlhc2uhR3O/mnpHz0BNBpPmmtFVy11nJGH/gTuiJ
	 0Xm1uGrpNgUAg==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 6AAF3385E7A
	for <usrp-users@lists.ettus.com>; Wed, 11 Jun 2025 15:56:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Sqv+IAFz";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-607cf70b00aso576446a12.2
        for <usrp-users@lists.ettus.com>; Wed, 11 Jun 2025 12:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1749671787; x=1750276587; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zcDhx1yWEjH85armXJIeddmVqXRHX2skIh9LkDUDVNY=;
        b=Sqv+IAFzLehrwwV0gcWxFNotBMOOKlvTKygJETSWBcdAf6vQH1aQysGRuButmUd/JN
         NxmzsCLC0qZiCwRSksiHJdh3XhkUVc/JLjw6PHDAxf/bGVH6L0GPkpWRWI1oRCDeEDJB
         5Q0rZMia9Hli2rNeZdeGuT+DxsdG6Mb/t5b8FyphfEwt1PQ0tqiy/lusblZ5c9cLwjTM
         JXZ+/KPClMjVyaNSz/3eFliBqFeBAFvjgdOASLw2anH70OULHtQvYYS+Sr09at1tv+Nt
         lFjtEKi8A/vTXzAajfgn7vsimKWOQP5xkJ9EuNF4Cko1EEaRSy1cPPgw+9hWf61Bw6ok
         T9Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749671787; x=1750276587;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zcDhx1yWEjH85armXJIeddmVqXRHX2skIh9LkDUDVNY=;
        b=RgI2lbEuBHe721p11bxUQMOGXUrWTJkL5uyTSUkQeP0ylqYFhZrQCqHk4orXzBIyt1
         arxMWab1gTBEP8pAId0xKni0P5Z0A81QZekQ/11FHaB8935FFmi4lgx7MfOxYNcsKiiv
         KAC9DGlz7Yf2KbWbKhpxNUVQngtmz/gfMl2youXsQlq3s5uRJLszavXQ/9JggZR4CsYC
         1o/vRXtpCOi3osyyXTU2O1rWqQ2ix75yisCSFVjYvB7sPPSNrO1seNJs+Ogmhh60Bihw
         rjzb09MsiVTUhNrnzNM1SVz2ZKL1fy9TCWOeQvzH5FJiLXZbZ19KGiCfzL2XVbYL6T//
         iLUg==
X-Gm-Message-State: AOJu0YwkEBbjq2s8oju5IzCmqdEw+pgU/oqeWFoEMRfKHgpOY0e0/xFf
	pNBNvI//2YYpuT3F3HxJAy9Rj5tBC3KgeX+kbkKftodeRFxusJ0ZY7dLBeBDjS6hRewpmMTUUKa
	kMjIaUHPu3eJuefG7sx3hZ1xqj+rf2+xzAUaD04y5NN00CTP4qac=
X-Gm-Gg: ASbGncsM8nC7siDpSrSeYQfzPXY7xmWMD71GqMDQ6VqTOy1NYKapgU90AUWOtAFJgvO
	HA0EwhU1/1DRqNgMYbQNBwaXWS4I+U0rlvSUXplAVyaIeDKAckVT6JMkpZips5vyruDonp6HOGM
	s96XPjgQtFB7dtiGMqteXDeOfVAMfQWl/JEnqhrF3W9Vo=
X-Google-Smtp-Source: AGHT+IF/R03J0OaKfWHh/RPRb2T0LIW83sA+JQie+DOB9f2AfpI2iVKBwijWsFdtqkFAjobY9bYnYvHUVzBcZyQjjhg=
X-Received: by 2002:a05:6402:520a:b0:607:434d:bc2c with SMTP id
 4fb4d7f45d1cf-60846b80209mr3756715a12.23.1749671787401; Wed, 11 Jun 2025
 12:56:27 -0700 (PDT)
MIME-Version: 1.0
References: <Zp4Rg9AsXZCz5VncOWxiQ4fj6IWFVUV0n4CqrBX90@lists.ettus.com>
In-Reply-To: <Zp4Rg9AsXZCz5VncOWxiQ4fj6IWFVUV0n4CqrBX90@lists.ettus.com>
Date: Wed, 11 Jun 2025 15:56:16 -0400
X-Gm-Features: AX0GCFvOdOMNCZr2jSTJs4fRNPF0edR_QATXVxMqDPVuRjPoB6PvNKK1uppn6k4
Message-ID: <CAB__hTQzQFJFzyaVR6O=nymQEjLm_MbO5TP7Y=RANpAXxDAM7Q@mail.gmail.com>
To: tommytsui@w5tech.com
Message-ID-Hash: UAZ6MAEZCJGNSEOJVT43XS3EFNL4DZD2
X-Message-ID-Hash: UAZ6MAEZCJGNSEOJVT43XS3EFNL4DZD2
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 UBX Tx issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UAZ6MAEZCJGNSEOJVT43XS3EFNL4DZD2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============0157272511169230774=="

--===============0157272511169230774==
Content-Type: multipart/alternative; boundary="0000000000005cac8e06375135cc"

--0000000000005cac8e06375135cc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

you mentioned wbx and ubx, but each of these have 2 variants: wbx-40,
wbx-120 and ubx-40, ubx-160.  If you were previously using wbx-120 and you
switched to ubx-40, then this would explain your problem with LO offset of
22 MHz since the analog bandwidth is only 40 MHz on this card.

On Wed, Jun 11, 2025 at 3:44=E2=80=AFPM <tommytsui@w5tech.com> wrote:

> Hi,
>
> I know this is an old post some years ago. I am curious if the UBX patch
> provided by Michael West still required for the latest UHD 4.8 release?
>
> Would running uhd calibration utilities be able to resolve the issue
> without applying any patch?
>
> We recently switched from WBX to UBX daughter cards but we experienced a
> different issue on UBX card. A 22MHz lo offset applied to WBX was fine bu=
t
> not for UBX. Somehow UBX doesn=E2=80=99t like such high lo offset. Reduci=
ng lo
> offset to a much smaller value (12MHz) resolved the issue, but that low
> lo_offset value doesn=E2=80=99t meet our requirements.
>
>
> Thank you,
>
> Tom
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005cac8e06375135cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">you mentioned wbx and ubx, but each of these have 2 varian=
ts: wbx-40, wbx-120 and ubx-40, ubx-160.=C2=A0 If you were previously using=
 wbx-120 and you switched to ubx-40, then this would explain your problem w=
ith LO offset of 22 MHz since the analog bandwidth is only 40 MHz on this c=
ard.</div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"=
ltr" class=3D"gmail_attr">On Wed, Jun 11, 2025 at 3:44=E2=80=AFPM &lt;<a hr=
ef=3D"mailto:tommytsui@w5tech.com">tommytsui@w5tech.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi,</p><p>I know =
this is an old post some years ago. I am curious if the UBX patch provided =
by Michael West still required for the latest UHD 4.8 release?</p><p>Would =
running uhd calibration utilities be able to resolve the issue without appl=
ying any patch?</p><p>We recently switched from WBX to UBX daughter cards b=
ut we experienced a different issue on UBX card. A 22MHz lo offset applied =
to WBX was fine but not for UBX. Somehow UBX doesn=E2=80=99t like such high=
 lo offset. Reducing lo offset to a much smaller value (12MHz) resolved the=
 issue, but that low lo_offset value doesn=E2=80=99t meet our requirements.=
 </p><p><br></p><p>Thank you,</p><p>Tom</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005cac8e06375135cc--

--===============0157272511169230774==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0157272511169230774==--
