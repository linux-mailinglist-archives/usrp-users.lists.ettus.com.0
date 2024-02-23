Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB7A860884
	for <lists+usrp-users@lfdr.de>; Fri, 23 Feb 2024 02:52:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 60B58384A7B
	for <lists+usrp-users@lfdr.de>; Thu, 22 Feb 2024 20:52:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708653127; bh=eUT/tiq8zD5EpntQu/3c1d0/OEDpdvMHtoZO8ANjj+8=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vD9OnByS1KNIxEW703d4L/pQofaNlv0gFgtmf9TkG54gO8RUTF9hYGHHfF4zuoQbh
	 JFr/ZbSUxSBdeEul6cWfSR3a1iBQ3y6m2YGDIGXja7tM8WfMYXbXbdr7gVl2EyICoh
	 oP4X7YniAYWV2Lcbj704BfvQISvgCIwBNw686GM1aURCROr1p6uOSHJDO8rFZkqZfm
	 yM6be6uyp2FDiMTxsOw8yhLXuFG/AOkeakKgigvAB1mmyHawsTGSrt4fMcN2a3BtFp
	 dqnvsyJAXloENostue/pHcj+dmbxCzH49Q75EOkdpMmX2W8bmzUztuUXXHG0i+DC9h
	 JEFnHMyC9wgcQ==
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 6ACC7384E2B
	for <usrp-users@lists.ettus.com>; Thu, 22 Feb 2024 20:51:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hf5vysnP";
	dkim-atps=neutral
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-33d2b354c72so258583f8f.1
        for <usrp-users@lists.ettus.com>; Thu, 22 Feb 2024 17:51:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708653109; x=1709257909; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=y+RKonMZREf+/jZdWFKhGl/rtt54ktCSC5+KY4HA58A=;
        b=hf5vysnPZLi0DVpM5i3rCxU/oVpvhwTbioHtifZMi6dQqAkwKk4dPXOsrYFSc6cZtj
         37fprzEqWkCZSFYSW++2g3VTUqi+J8gLjq8tJ+uq78tg/EjjaUs5FRJhaHIrr3hfiixl
         WpGhT1V7AYKHlsgQgkq/qa+tSc9qyVytBJjmMUY7ItTBZ1krrgwT4TwoquJ2qMPA16c2
         8CJQ/8d/IUVtBodC/RrebGTdsbJQDKMhWsMuSAeMma6fEXHFzl6gcUBQ96sR1zGwZrCa
         nGvBm2ambmYCedCtPWWKoMswxD1XSxf3kUZwDHuQJhVN4tqn/FQ6Mb2ehXfuKx6z1mHS
         WM+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708653109; x=1709257909;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y+RKonMZREf+/jZdWFKhGl/rtt54ktCSC5+KY4HA58A=;
        b=NJqW2yAwujY8LeD1TsXt2PDlZqrP29ele9t4v6rrtnYDhLNUTmIrzhVFRwyeSoGE2+
         b8ErIRF69mTlAr5fkT3TZVugEOGvMjKHPY+xsLrXT66ldKP5TroKSPtldYJIo/wqutp8
         4MJ+A7xWspBpP1Au++/8LL+lNCXav/sx0I5WAsyAnRaJGpPowGfrenoAhfcIKFAdIJ0F
         +qHws9btOtKrKsaJqL21MJkCdc84nSOc+xzdpyF7zXkr2aaeZblmk7IaPPyFujt/lxub
         MKfIGRnO8D3shtYTKcOqCE2Flh690zBq1XMsF3jTvGKj7sWePDCndRs0r0no3cqNlLzF
         3usQ==
X-Gm-Message-State: AOJu0YwiCJnMGlH10lxQ8e51i7NiAk8Y11y72MWxb0PIkyBxHKPcCXqK
	Y3uv9gPztyNty9r/RpYp3aUxwZY6hYmOKir1cfwmw2LLtJJtwXadCr8Mj+G8cVMJI5xQbTZkj37
	x1F54b99fGLKKMTKnOMWQTq56e2cWPaTID6Q=
X-Google-Smtp-Source: AGHT+IG5NjdC5w5qfncqGWXF1X+A9eb/buubdSX1cZiBW0YRdvLUAyPFO8GkNDTCmv0pWrt64GvKu9AmwTjua7FBxQw=
X-Received: by 2002:adf:db4c:0:b0:33d:4d7e:3dd5 with SMTP id
 f12-20020adfdb4c000000b0033d4d7e3dd5mr502230wrj.40.1708653108903; Thu, 22 Feb
 2024 17:51:48 -0800 (PST)
MIME-Version: 1.0
From: Pedro Vieira <pav.vieira@gmail.com>
Date: Thu, 22 Feb 2024 22:51:37 -0300
Message-ID: <CAO_U4K7iMNWLhLRdWozsXxNQHd0xvp611f7LXQQhSe=-hz+ong@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: Z36JBUAKEC65JPWON2NTQ2PAYTD4TYTW
X-Message-ID-Hash: Z36JBUAKEC65JPWON2NTQ2PAYTD4TYTW
X-MailFrom: pav.vieira@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] OFDM signal transmission by x310 presents a peak
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z36JBUAKEC65JPWON2NTQ2PAYTD4TYTW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3683935693128213091=="

--===============3683935693128213091==
Content-Type: multipart/alternative; boundary="00000000000099c449061202cdd9"

--00000000000099c449061202cdd9
Content-Type: text/plain; charset="UTF-8"

An ofdm signal, which is generated in python, presents a peak in the
central part of the spectrum.  What could it be?
This same behavior appears on USRP X310 and HackRFOne.

--00000000000099c449061202cdd9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">An ofdm signal, which is generated in python, presents a =
peak in the central part of the spectrum.=C2=A0 What could it be?<div dir=
=3D"auto">This same behavior appears on USRP X310 and HackRFOne.</div></div=
>

--00000000000099c449061202cdd9--

--===============3683935693128213091==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3683935693128213091==--
