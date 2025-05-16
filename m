Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C58AB9BAC
	for <lists+usrp-users@lfdr.de>; Fri, 16 May 2025 14:11:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7C850385DC5
	for <lists+usrp-users@lfdr.de>; Fri, 16 May 2025 08:11:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747397492; bh=3hEEq+YLKE2fMBpyUW+DFTO8hP2vwZSdc7TnlqNLwdg=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ERRW95a648Y9uonWo7+HTthaieFr6U+Ekse9lVBRP8b/v6evXXptJJ+lhXQA9qGQc
	 7rCySEPtCe9NRbHtCVhjIGokx5XOYvOI9XN4hE4Hn7KaAxnpgi2m9esAfDZCDWsz93
	 8/tVsO1JvE/vbhgY3J72J24wjnLyV41+aq2x5AwNU4BEwmwJsK/7mh71rYzkwxO2VT
	 VTr+p1xO+Qf4DPpGhPS7ImTFOTn8AYD7+Y443LrqsQD+huoJzNz/vC6rHglmygvHOC
	 pQfFUsEX3EaKnhX15/jXljLE1phnjP9c2BF5KZVa/orBDOxtN27OfSbmkJi2uyCp9g
	 0zJejLa8CIyRA==
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 1F000385CD0
	for <usrp-users@lists.ettus.com>; Fri, 16 May 2025 08:10:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="TYC4HBSL";
	dkim-atps=neutral
Received: by mail-io1-f42.google.com with SMTP id ca18e2360f4ac-861b1f04b99so67751939f.0
        for <usrp-users@lists.ettus.com>; Fri, 16 May 2025 05:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1747397458; x=1748002258; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ocF8uKQfF7ycosXhcQvU+HalZYtGk9SBw5/LEYlSD3g=;
        b=TYC4HBSLzAsLET17R0YXAGwkixOyWtsBkMMfOgxcuXYEt14lKW5qksaQXDu9FCUDwP
         FvIDRE/1gy6fdIsgA1uLFqY4TSezy9YbOijc1QOXcXE3W0GIPAstAzppt3pCC55d/vJd
         EC0127a/NpjhDaomh+t4vib4WbqpKvxAC7okZbP1KSvrhm0I8cftOqXPoyi8/2bbh1h1
         8uv19F8i81SKXYfCoLn4snE382I8afdCmkW2Mb/H40ZpZfBjKPVjhvZwWVyu2p6hK8aq
         /Kv8FOOBTI/256ftvWZN0mO1x8lMmA3jPpvVs+ij3Acc4wfsP5m+M37fyiNrtHndv9h3
         ppIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747397458; x=1748002258;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ocF8uKQfF7ycosXhcQvU+HalZYtGk9SBw5/LEYlSD3g=;
        b=POGW0dklg67P2tIs88XPHfNM2j0cQOBF1mQL8lr5KifOJeAgVO8xkToBweTHskTbN1
         WeSuDaBiJ29YKfn1TMXoc7wtDcXyvHfp3LoBQqE5XMC1vFtPdjkLe6OEmbQJHUvdXpHd
         WsMzSSsyfVQoqepJZAEa+f+P4goPyvS11+OL24cA0+mTVX/4t7Oa6Ftg4g/owod4f9xF
         lAkBcFz+nZOKT/F1hGLhjO069H15Lc+pBBuESszcRGYkPqygXKHmDU4sxZ4Z1kY050s/
         ebxQtd7a0wrWhHfcOqJZAyd8OxA56bmb9lpAFfaqxx1tQ3LQB7bRzXH2XwAPGim5PFiu
         zq3g==
X-Gm-Message-State: AOJu0YwQNBxf5yeHTbUiL/hIEu6WKeEp+xm4/Ij1TLilTkwiTMKYVmSc
	MPmMQqhC098wseSoLtBon9RtwLcyzz+oh8sSX8lVyQW+w4GKZhWeM0gamO3EucbntpLadlRzWVV
	eqB9gPJ37JbMN4+9zcf15/175KLnN2ilojajHyiEDpSHPDHM9pajRenwZdg==
X-Gm-Gg: ASbGncs2T8NTYxP6aKYVV0myKGRbv/3Icbm++6VCGWaW0bC57GMCcwShMarAd3rzPIO
	mZOUCYBvBJNxs6OILIm5s9F1qGhEOImLP3KRIYh2JPLTlZkcy8uNjJuLjRXmcpMiBPphaOWjXDG
	AkM1vYXJd8Htgb1onRoZZeZrhQ+TDMqg/ky7gF8qjS/uo=
X-Google-Smtp-Source: AGHT+IFbZXt0i99CeuoE+HlRtha7jEwh9ZCmalGOhHtGUUKhEG57q2JkLUT5b4hOKHOels12DW9h+w1nP2zQEG1cJUo=
X-Received: by 2002:a5e:881a:0:b0:86a:256e:12e1 with SMTP id
 ca18e2360f4ac-86a256e1661mr206150439f.2.1747397457972; Fri, 16 May 2025
 05:10:57 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Fri, 16 May 2025 07:10:21 -0500
X-Gm-Features: AX0GCFv3xhPkZNNkEa4BBRxwPdFqx5L4457qoECMMJwKWu_9Qg0BwyrB-dEHhGA
Message-ID: <CACaXmv_eafeOr29xHG1EzTYskY_LDirNwoin6AG0Yb7v-Yq8xQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: RRFQAS343NUDXEUUZQQWT545P5BS5NQA
X-Message-ID-Hash: RRFQAS343NUDXEUUZQQWT545P5BS5NQA
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] NEWSDR on May 29-30 at WPI in Worcester, Massachusetts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RRFQAS343NUDXEUUZQQWT545P5BS5NQA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1100831093766108067=="

--===============1100831093766108067==
Content-Type: multipart/alternative; boundary="000000000000c3b24706353fac9c"

--000000000000c3b24706353fac9c
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

--000000000000c3b24706353fac9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif"><span style=3D"font-family:Arial,Helvetica,sans-serif">We would=
 like to announce the 15th annual New England Workshop on Software Defined =
Radio (NEWSDR) event on Friday May 30, to be hosted in-person at Worcester =
Polytechnic Institute (WPI), in Worcester, Massachusetts, USA.=C2=A0 There =
will also be a set of tutorials and workshops on the evening of Thursday Ma=
y 29.</span></div><br><b><span class=3D"gmail_default" style=3D"font-family=
:verdana,sans-serif"></span><a href=3D"https://newsdr.org/workshops/newsdr-=
2025/">https://newsdr.org/workshops/newsdr-2025/</a><br></b><br>There will =
be presentations on Friday May 30 from people at MIT, Eurecom, UMass-Boston=
, UMass-Dartmouth, DeepSig, WPI, and MIT Haystack Observatory, in addition =
to several tutorials during the evening of Thursday May 29 from Eurecom / N=
ortheastern University, Pi-Radio, and National Instruments.<br><br>We are v=
ery excited and honored to have as our 2025 keynote speaker Professor J. Ni=
cholas Laneman, Professor of Electrical Engineering at the University of No=
tre Dame and the Director of SpectrumX, an NSF Spectrum Innovation Center.<=
br><br>The event is free to attend, but advanced registration is required.=
=C2=A0 Please see the link below.<br><br><a href=3D"https://docs.google.com=
/forms/d/e/1FAIpQLSdwb_PunhWMBG-d8x-3TMU1nK8ff5blA3OL2wF58qkYF-50FQ/viewfor=
m?pli=3D1">https://docs.google.com/forms/d/e/1FAIpQLSdwb_PunhWMBG-d8x-3TMU1=
nK8ff5blA3OL2wF58qkYF-50FQ/viewform?pli=3D1</a><br><br>If you are intereste=
d in presenting your research and any results related to wireless communica=
tions and/or SDR (even preliminary findings) to the community, then please =
consider submitting a poster abstract.=C2=A0 Please see the link below.<br>=
<br><a href=3D"https://docs.google.com/forms/d/e/1FAIpQLSeJUxZE5294_0hlmL91=
omHg2rBga2P-KdFF-lTnZwan8mls2A/viewform">https://docs.google.com/forms/d/e/=
1FAIpQLSeJUxZE5294_0hlmL91omHg2rBga2P-KdFF-lTnZwan8mls2A/viewform</a><br><b=
r>We look forward to seeing you all at the event!!<br><br><div><br></div></=
div>

--000000000000c3b24706353fac9c--

--===============1100831093766108067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1100831093766108067==--
