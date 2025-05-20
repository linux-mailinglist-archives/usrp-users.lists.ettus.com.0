Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA9BABD429
	for <lists+usrp-users@lfdr.de>; Tue, 20 May 2025 12:05:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E7F183856BB
	for <lists+usrp-users@lfdr.de>; Tue, 20 May 2025 06:05:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747735550; bh=9xyIU2QB5Tn62atGpyCcRL2vbxjLwiWVel5/eymXKTg=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ncGLSNGWe8MdG2+3FWasOid/ns1znfycni4G7tNa1cYzPVlKftJpO1aKownDamFXV
	 gbp9eMw+rnqLgbA47k2oUZHqROxHGlOWqRadxyRwSVEIBEyqMQWGr1Xa+gx9gEgWKO
	 A/kTQZwguqXCPIaYMy881RhuRWIBFW7sy5HsSIlY6SCgdqolRYYY82CRL2h5y5CX3l
	 vLduKtKuWVP7KCddfr1ub1Ub05lOfKupG37BCAsJlOBKTqXFzn6VHdbPbprDkVoLsk
	 A0b5iZBPCcIToej19H499LZBfFuV7k1W0xAyH9V/6pOBkJDwd1SomN3gOs8zWZa0D9
	 llUYbWvN5WKNQ==
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
	by mm2.emwd.com (Postfix) with ESMTPS id A653B38503B
	for <usrp-users@lists.ettus.com>; Tue, 20 May 2025 06:05:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="yv7TN/qZ";
	dkim-atps=neutral
Received: by mail-il1-f173.google.com with SMTP id e9e14a558f8ab-3db6ddcef4eso49331045ab.2
        for <usrp-users@lists.ettus.com>; Tue, 20 May 2025 03:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1747735532; x=1748340332; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5ux7Rkz8q22ek0U7dDCXF8m/bM+OcayuS+mbxClXApE=;
        b=yv7TN/qZrYT5H2lliE5yG2FoFerCMq68YZBtcezsFzsKgDYidfI63HB/a6lIsragQY
         8gijTwSoLtjAv7dV9h97vULam48M+vI4UfeNq4g++08Sue7qZPEHxoc0Q4nfqkDGHsZm
         xxDQOgKFjrRi91R9SK9bPl3k6TPrXFsRVQdPSXlARgU2gS3aaE95VYbqPu9a2aiFGx7R
         nKjUqL7TJhEk+VSYO3FIKmzIfIiUBBsoAOb+fB03ewkYbDfThfOGzcAwSACKqKKKxrbd
         YfU3RAtinjtsd3xH/vxfCh40WjtSTOkdGlgKszpXGntQPyuZL8WvYxryp15R+goARy9g
         lC/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747735532; x=1748340332;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5ux7Rkz8q22ek0U7dDCXF8m/bM+OcayuS+mbxClXApE=;
        b=Tm0tCPRpHmbvmDIq02pTL6yTdJHzsq35rQRxI6BMLSQyaxWBqjFbPaZX5C3xDLIW7L
         dNUSYFZbEQPFUqQlyHpEZoiFDQH0L/LqDq8rCm0xEXwQ5p7+cIqK9a9F6KtwwiZQSXJo
         gV/NMnnYoCPrT6ukSWv3ZH4WzjtsO+1u9VHa0r/ML4Djxa/ag4siE9TJyWRcER6PcdEo
         xeSr0t7evfpT9HS0UpW5mPp011muMJ6yM7vtbVJrHDqbXSOeAJsnkmLk0FNqcDpXMGCW
         GXy2FeQYYLXQ6X/cEnjhK99rlcmlLp+vkBBq2ZpvggplZTq/dMvSE8S1xSGwQztewX/q
         C9hw==
X-Gm-Message-State: AOJu0YxxNO7eS3lVh6+c5d1mxx9tyAjQtH0qD7At2kLTnVk5GEdnQy/p
	XKw1cXwVg6A8tcLCr6p2YfDBx7zj6+3GklTj+det5l854KtJjyGQ79OnqOXE8Y4E05HqOzp6Vkv
	8HS2/g7rlnHMuYCbuxqXAmk+yid6BKIpUR8q/ouG1F2os3uFRyWCFA145Cg==
X-Gm-Gg: ASbGncvPLvpb/ZQ5OnFRTGylbg0omnVuHybQfJ89fnVO8WsHGEq+0uBbLC0xdbF748v
	UFteZpzhICydsDvMW+qhK4+qhA+TvlYrBmyMu8ejFXMRXGeoQr/KwP8ICuCjadunFaDv36t1vrM
	9+y1gS2htoNXz8X8ZbGK1f9Z69Lhgw8lF9
X-Google-Smtp-Source: AGHT+IGFxlyLjVE4uEIhkLREDkisqsI2iJ6RGu9Z5pgx+bQdOVAERfAlcpUx1+jbps8uPUoYOLqlLMu1NwesAHjwXgo=
X-Received: by 2002:a05:6e02:5e07:b0:3dc:757b:3fab with SMTP id
 e9e14a558f8ab-3dc757b4338mr36913965ab.6.1747735532097; Tue, 20 May 2025
 03:05:32 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Tue, 20 May 2025 05:04:55 -0500
X-Gm-Features: AX0GCFtmRQGA33OAWL42ME2d5eEWWcRMrsKVeRsCnu-0koY5OUd9cl-pMdhhmd8
Message-ID: <CACaXmv9324_dPxb-1hLkhBbWdTXQD6CV5qx5XtRkpWCudza-+w@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: YBV5VQXFMVJU6S4NJG45RZZ7MH6QDHAJ
X-Message-ID-Hash: YBV5VQXFMVJU6S4NJG45RZZ7MH6QDHAJ
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] NEWSDR on May 29-30 at WPI in Worcester, MA (next week!)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YBV5VQXFMVJU6S4NJG45RZZ7MH6QDHAJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5774307097377820964=="

--===============5774307097377820964==
Content-Type: multipart/alternative; boundary="0000000000008d652906358e6306"

--0000000000008d652906358e6306
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

--0000000000008d652906358e6306
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
 Profes<span class=3D"gmail_default" style=3D""></span>sor of Electrical En=
gineering at the University of Notre Dame and the Director of SpectrumX, an=
 NSF Spectrum Innovation Center.<br><br>The event is free to attend, but ad=
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

--0000000000008d652906358e6306--

--===============5774307097377820964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5774307097377820964==--
