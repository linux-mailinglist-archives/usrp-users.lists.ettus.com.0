Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D407ABBE32
	for <lists+usrp-users@lfdr.de>; Mon, 19 May 2025 14:45:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 38BF33853A4
	for <lists+usrp-users@lfdr.de>; Mon, 19 May 2025 08:45:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747658756; bh=ShMahdCT9ClSZvAyaTcV6IDd2l+AkSVdg5Q5NJ6EjUs=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VQj01G3rD0DawsZ/5sDjhwVdYApo8qMwAATDPy0ClR2/QKT17Hfy7sM+tpLvTIbp8
	 txmFTrgs9+xde+jcZSn3MWUvnHQ9X0d8ZwXQfVGk3qkGlpHfDpUTalh18EHqPQ70o1
	 NV2Ku57dEaIe+78phfxF3yW5WWsKm0mQI/UmyQD9zY6iuq7iJwNgj+ITk9dKoLaLW0
	 0d1mIb6lY42PLVNn0l3+O8CjQAJewsnPcDnbO3I7HgZiK16fVsYtJqY8ZeTA0TH0eY
	 RgoTeAvsZGRMlRjRAbAZstYqSTet6gYbcb+9xd7TtaSg2poECYbc1I3T5UiKnLS/ZC
	 3PkaTQzyUAPCQ==
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	by mm2.emwd.com (Postfix) with ESMTPS id B03843853A4
	for <usrp-users@lists.ettus.com>; Mon, 19 May 2025 08:45:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="qPM1SWZq";
	dkim-atps=neutral
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-3da73df6b6bso14095235ab.3
        for <usrp-users@lists.ettus.com>; Mon, 19 May 2025 05:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1747658739; x=1748263539; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xEPakN3qWN51K3VbwFfPctZq0AEi5UIcaC+07O+gwxM=;
        b=qPM1SWZqNTtMBJ8FuiYoAms+ylHw/7MVsUJJ1IhTxSCl02ULHQHAr++9VUSfD4itQ7
         oxe1DZoNF3LKSpxrFggktIcInfe4IYHQb7opPB0VZp0jXzCh9SP4QqQ8zxdOm0PeYwqd
         SSTLA734clbA3BAJ2BrsqteWuhqoH9E9XZXKNDI8cjU39vWkN3+u2ezifHTTU0XNi0Qj
         brHCgCIEyJzuE/f4fbp8ldKgBVKKKCitGiYUXcoswqD062PdinqfSm3LnXhX/NwUir2z
         P/V9UQTT7t0rH1fWb6ZTlQv/9L47T8CKyMYygj2uvzpRyuRv2FuKEoIGV5b+5YKrcb6r
         tczw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747658739; x=1748263539;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xEPakN3qWN51K3VbwFfPctZq0AEi5UIcaC+07O+gwxM=;
        b=gI69O68L0TvlHatulmngiUr6uF3nOTqT/0k/JxDDJVFTAmJLI98wVBnYPbRYIl3+QR
         1vKp8X8ubkHGcg0jI2tn6og8I9lhCVECgnpGIBphNvqmvsB3agLPrHE/5ltePl1igmo5
         qb6PIEMmhdCw91fu96Paj/FtDyZVPuBB/i/FbYmotyfmvzcKGsvPDTJzLWxE8dqMm71F
         3bZR2zNc67hzLSU2WJ5b/rVMt2bcDFM5JeSxQSaFbEPFb90SsAOWW79ol3KaaH7gul7z
         DvE6xIngavdpWAqwXSF2gqMR5TPmSHK6dUZSammMaxIYeaS/XZ5HvIWBUYuYpwVO1Vxe
         qCdA==
X-Gm-Message-State: AOJu0YzUPvOojPRs0i629Kp+/drBkGojUP0NEHdZaStxpYw0YkxqbMKf
	1Nh7RD4okTueDXVFFaz3Enn9wR+HEF+kg4l4Mmfm9AqjX0r8dHqttph4QwViHV9RwozCC86JmRD
	YPEXG5YpgwLZISRgEi3jXF0CrXko5TsIxfyzO0WB3ZDwYoc8yP5O3aPbT0g==
X-Gm-Gg: ASbGncuqO8WHJHSxLIJlZHr9GBVnSorqujB15sjnVRoYRDAs+AiZ0tbNLMBruc43TIz
	vs0EuC9VI2H1tXndcaaD3KSUZAIY5oIweoyZX3mB+eUxYxmogQjL3Fzu6QZWdqgQkI719qhhCuW
	uklVGCIs2aFVdEjknc87YkFs7vHGe+dbN8oyExGw276Wg=
X-Google-Smtp-Source: AGHT+IHmLM95aB7RWxAKnSNejyfN6/fCV3WjCMDYfg7EDqTddSbvbl3k84reGimhJX5DSe/nkrrOwennxGeCuNs0gsM=
X-Received: by 2002:a05:6e02:178f:b0:3dc:76c6:4391 with SMTP id
 e9e14a558f8ab-3dc76c6473amr8433785ab.20.1747658738548; Mon, 19 May 2025
 05:45:38 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Mon, 19 May 2025 07:45:02 -0500
X-Gm-Features: AX0GCFvAcWdCJD8IlW6ZrvNmLz7T7HWzLpqGz3v88eU199uLcjNo9o-9ar5MNQE
Message-ID: <CACaXmv_53EMy2i4tSizn0LTYG7VyQ4YvEewnMUx+jEbVfkOk7g@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: CLLVXA2M3GQD5TZBNMXR4SWPTWZWTQIG
X-Message-ID-Hash: CLLVXA2M3GQD5TZBNMXR4SWPTWZWTQIG
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] NEWSDR on May 29-30, at WPI in Worcester, Massachusetts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CLLVXA2M3GQD5TZBNMXR4SWPTWZWTQIG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3353370953596736850=="

--===============3353370953596736850==
Content-Type: multipart/alternative; boundary="0000000000004cd66c06357c8279"

--0000000000004cd66c06357c8279
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

--0000000000004cd66c06357c8279
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
e Director of SpectrumX, an NSF Spectrum Innovation Center.<span class=3D"g=
mail_default" style=3D""></span><br><br>The event is free to attend, but ad=
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
e event!!<br></font><br></div>

--0000000000004cd66c06357c8279--

--===============3353370953596736850==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3353370953596736850==--
