Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 700E8AB9382
	for <lists+usrp-users@lfdr.de>; Fri, 16 May 2025 03:11:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 331D9385D06
	for <lists+usrp-users@lfdr.de>; Thu, 15 May 2025 21:11:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747357876; bh=oGZK1FpuxZfgOQVfRVtHFEr4g3XZLcKW0ZQb6RgPWTs=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VLutWoYNGXUww4hh8qwG5MvKmqZEItYRZXjqTabtUVBA8SOUve6KrEUgCpAexwASj
	 OgURKjR+ukbocV0Kyhgmfhqx5jNAfG7ceovMMmYWxoq/C6XdW85Efj8RnV9cZ/omoK
	 d98hepNMs4DGG2wGB7oghAwC40EePbLvqXMPVxptxSa7qncvhZF58Qu8WtErMvrj3R
	 XFtyvc3ZIYYW9tsyt2hr/AYLQ/YqCq8XtrVOkNInbz2PK9gBwnw7lcsKvxT3yshKYq
	 iufjXApnruWIfx8RaE46f5U+jE0FJKpFoqcKoJ2kOX9m2kD1jY7fnQV+p7hGxL2t/0
	 f15BcXvjk3L2Q==
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
	by mm2.emwd.com (Postfix) with ESMTPS id AA225385CAF
	for <usrp-users@lists.ettus.com>; Thu, 15 May 2025 21:10:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="T78fdpRD";
	dkim-atps=neutral
Received: by mail-io1-f48.google.com with SMTP id ca18e2360f4ac-86135ad7b4cso70981839f.1
        for <usrp-users@lists.ettus.com>; Thu, 15 May 2025 18:10:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1747357834; x=1747962634; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3YUd502eJh66iPfz/1Qp1bz/O4GPAdmlAW51UljT28I=;
        b=T78fdpRD9Nl3bIAKNVwDIB2BTHKu6AzpEo8/GT7eB5411D44WeIXEqVcuietr/9s5O
         gjvbqjuyofrMLEFAV+ST8oXviKb/xGtT2t98JCCW4sMazfdmCtKhMBNozXwXTTk0QVxx
         dYYv5GJnmuC2RTFubFLoq6b99mvDmaPptV0bGcYag+qtl+JzuwarQC0v8HzR/kcOSiv6
         7pHAeL8ZfhncKLIB3Hf8fOibu572C0j/46eoJzSTI3x/32MmarwzqedDxvFzDAXmmLPD
         Z216hWkt1O7EMA0N30zTy609OnNKVEkLu/AJgoOsL4VbeG3aw/U+rND7VOd4CGvp7ABI
         0NBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747357834; x=1747962634;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3YUd502eJh66iPfz/1Qp1bz/O4GPAdmlAW51UljT28I=;
        b=dfej8ze1Cq8kvey54qpxtOTOnTRaYeqeuRjHcBwDRnwAP4XZUbQH9pscsTZ3bhtyMA
         0zwjHxJBijBgNSZg/fhWOFh1CHJvxo8J1KTglE2ktPKrEHvVD2WopRiGTEUDr+BDAEZQ
         /6pVT5Ko0mVDH2QhZ6pZDYIq2A6g/4No2yY4ywDKGrXcoOUnXSUrLzcHkV72jRSFy7Sb
         lO5nwC0WAc2O//r9iiZmSxFRcRpoTVaF18zeVpAJakEkoMvsiptDQVkx51Ami+bzDRt6
         j+zHGlS85qQuqbxiJWWzP9L8wZC3dO1LSLtpqYNIo5ILoAObpX/x9yPTcog6q8x8gDB4
         wmRA==
X-Gm-Message-State: AOJu0YxI5SM0xHE63e0TS6L9a4CXLJX4mkYD/RUUQGQcQOMHQBwC3Xsi
	TEtzOpJB14deel8bmtsDWecaCt9Tly/rlNC/dDTcOAK0mq9Opw8akIgAVAHcLAR38maiVMdWh9s
	E1EutWBmAQhe6CYGzyvMfjqBngxPxsMvXkNtLcgEOCWoIWm0X3paEKJgTJg==
X-Gm-Gg: ASbGncs5TyCeOCywgEediqyRyTRj4cUsQuNaPojIOmfimH/jTiDKghSHIpO3mzBul8U
	qnoLgudJ5R8GEGTEXUygQS69BBicCtY+bX5AdtiYpipYouOe1MzJgToT5kLe2alG33GhjTuNaDT
	ejWFjm8T8CnsZWalZZgzs1Jhuv6NvJLUMqMKi0C2GOIlE=
X-Google-Smtp-Source: AGHT+IEsTp3DXFbJLergqP4zIqGQmu1JsSZlUSBvXI2LetUgDDzlH1+40WtatutZjgfdkYN1DiVSJnZKJQ9nTD7PoVE=
X-Received: by 2002:a05:6602:4802:b0:864:48eb:30fd with SMTP id
 ca18e2360f4ac-86a23227308mr253790139f.11.1747357834137; Thu, 15 May 2025
 18:10:34 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Thu, 15 May 2025 20:09:57 -0500
X-Gm-Features: AX0GCFut9s0uqcI0YF0stVkfB0tW4eaFUkbmVaNC9sq-mDlwgzwLEwZuAHQGzcY
Message-ID: <CACaXmv9ntO8C+eTppThg_ncFGD+mN+ughnAGBKiDb141rUsuTQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: H4LEXDWAGA3ACIOVDTS4TMQS2FL6KZ3R
X-Message-ID-Hash: H4LEXDWAGA3ACIOVDTS4TMQS2FL6KZ3R
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] NEWSDR on May 29-30 at WPI in Worcester, Massachusetts (Greater Boston)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H4LEXDWAGA3ACIOVDTS4TMQS2FL6KZ3R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4400249418007797644=="

--===============4400249418007797644==
Content-Type: multipart/alternative; boundary="000000000000ffe59606353672fb"

--000000000000ffe59606353672fb
Content-Type: text/plain; charset="UTF-8"

We would like to announce the 15th annual New England Workshop on Software
Defined Radio (NEWSDR) event on Friday May 30, to be hosted in-person at
Worcester Polytechnic Institute (WPI), in Worcester, Massachusetts, USA.
There will also be a set of tutorials and workshops on the evening of
Thursday May 29.


*https://newsdr.org/workshops/newsdr-2025/
<https://newsdr.org/workshops/newsdr-2025/>*
There will be presentations on Friday May 30 from people at MIT, Eurecom,
UMass-Boston, UMass-Dartmouth, DeepSig, WPI, and MIT Haystack Observatory,
in addition to several tutorials during the evening of Thursday May 29 from
Eurecom / Northeastern University, Pi-Radio, and National Instruments.

We are very excited and honored to have as our 2025 keynote speaker
Professor J. Nicholas Laneman, Professor of Electrical Engineering at the
University of Notre Dame and the Director of SpectrumX, an NSF Spectrum
Innovation Center.

The event is free to attend, but advanced registration is required.  Please
see the link below.

https://docs.google.com/forms/d/e/1FAIpQLSdwb_PunhWMBG-d8x-3TMU1nK8ff5blA3OL2wF58qkYF-50FQ/viewform?pli=1

If you are interested in presenting your research and any results related
to wireless communications and/or SDR (even preliminary findings) to the
community, then please consider submitting a poster abstract.  Please see
the link below.

https://docs.google.com/forms/d/e/1FAIpQLSeJUxZE5294_0hlmL91omHg2rBga2P-KdFF-lTnZwan8mls2A/viewform

We look forward to seeing you all at the event!!

--000000000000ffe59606353672fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"verd=
ana, sans-serif">We would like to announce the 15th annual New England Work=
shop on Software Defined Radio (NEWSDR) event on Friday May 30, to be hoste=
d in-person at Worcester Polytechnic Institute (WPI), in Worcester, Massach=
usetts, USA.=C2=A0 There will also be a set of tutorials and workshops on t=
he evening of Thursday May 29.</font></div><font face=3D"verdana, sans-seri=
f"><br><b><span class=3D"gmail_default" style=3D"font-family:verdana,sans-s=
erif"></span><a href=3D"https://newsdr.org/workshops/newsdr-2025/">https://=
newsdr.org/workshops/newsdr-2025/</a><br></b><br>There will be presentation=
s on Friday May 30 from people at MIT, Eurecom, UMass-Boston, UMass-Dartmou=
th, DeepSig, WPI, and MIT Haystack Observatory, in addition to several tuto=
rials during the evening of Thursday May 29 from Eurecom / Northeastern Uni=
versity, Pi-Radio, and National Instruments.<br><br>We are very excited and=
 honored to have as our 2025 keynote speaker Professor J. Nicholas Laneman,=
 Professor of Electrical Engineering at the University of Notre Dame and th=
e Director of SpectrumX, an NSF Spectrum Innovation Center.<br><br>The even=
t is free to attend<span class=3D"gmail_default" style=3D""></span>, but ad=
vanced registration is required.=C2=A0 Please see the link below.<br><br><a=
 href=3D"https://docs.google.com/forms/d/e/1FAIpQLSdwb_PunhWMBG-d8x-3TMU1nK=
8ff5blA3OL2wF58qkYF-50FQ/viewform?pli=3D1">https://docs.google.com/forms/d/=
e/1FAIpQLSdwb_PunhWMBG-d8x-3TMU1nK8ff5blA3OL2wF58qkYF-50FQ/viewform?pli=3D1=
</a><br><br>If you are interested in presenting your research and any resul=
ts related to wireless communications and/or SDR (even preliminary findings=
) to the community, then please consider submitting a poster abstract.=C2=
=A0 Please see the link below.<br><br><a href=3D"https://docs.google.com/fo=
rms/d/e/1FAIpQLSeJUxZE5294_0hlmL91omHg2rBga2P-KdFF-lTnZwan8mls2A/viewform">=
https://docs.google.com/forms/d/e/1FAIpQLSeJUxZE5294_0hlmL91omHg2rBga2P-KdF=
F-lTnZwan8mls2A/viewform</a><br><br>We look forward to seeing you all at th=
e event!!<br></font><div><font face=3D"verdana, sans-serif"><br></font></di=
v><div><br></div></div>

--000000000000ffe59606353672fb--

--===============4400249418007797644==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4400249418007797644==--
