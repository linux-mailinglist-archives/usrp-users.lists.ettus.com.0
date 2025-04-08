Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D236AA80F95
	for <lists+usrp-users@lfdr.de>; Tue,  8 Apr 2025 17:17:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A196A38555D
	for <lists+usrp-users@lfdr.de>; Tue,  8 Apr 2025 11:17:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744125441; bh=CHC5muGM8pjE+PThCyh3I7pIzkGKzMtGMrKi0nrGRf4=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ZZ1q31TUwnEGQKiZbp6jXbT5+U7Fz/fymtZSJEdS3BK8hqV1yXU6oKmBAGU3Ct67Q
	 hA3Lr8mM3QXEbtoM/EHn+k4hYxwqMlZd2r269gZpralpX3RpXZ+YGH4V4OfYJe34a2
	 3ZJ8tSxRvZm3riHNQLWzCxJmzHPlLPjqehURLrQAyvYTnef/OoSOfRtfvQmN+4D1Jy
	 yOT3lYY4GP4mqDj/+efz9fVmnfM1+ZImPXzMPgQVoHX85pSegdjDLveIw47/GZ88Cv
	 Vb3W2eiCguubX0XX+8XJQaCG+h7jEEMSyrw+4pfFLnypVP1uvXIjsWZPdm2BMyiPhP
	 s70mNeYH7qclQ==
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id D12B53854E7
	for <usrp-users@lists.ettus.com>; Tue,  8 Apr 2025 11:17:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MnZuewag";
	dkim-atps=neutral
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ac2bb7ca40bso650435766b.3
        for <usrp-users@lists.ettus.com>; Tue, 08 Apr 2025 08:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744125433; x=1744730233; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GqGLR9P8jc9j1xOu8TfIPEIty0j17HwfK0p5gifJ59g=;
        b=MnZuewaga7a7TvSRveIZ/i0dw6Icf11gkN9ih9pgMbeOEzI83SPlcr8a0hDLTl45vc
         XsRnYleTzo45ekLHDUNUjzpagrQoSGLaVj4WoUbhtywVZhuR9xM3Eg7JLh7RncglABCG
         ZLwlthr4ZWuqb6Zqyf51lF3JuLwVru1AZb3A2RINiy3Mdd/7mlgnqmy3CM1IRQG7hO+o
         QjrEYxpOumDVmxAC7yOeWu1ztXadwmPBJuuS/sgLGN0zYYuLgMg3DOlU5KlNN6cbFFu/
         V/52XDJqO+A3lJUat8LQZu7yHo1D24BTnGchUdzFt+3Bb/jYd8ZUJCQ1jRl14Mcjzif0
         eUbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744125433; x=1744730233;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GqGLR9P8jc9j1xOu8TfIPEIty0j17HwfK0p5gifJ59g=;
        b=I7IN8Km1sduUJpDpQgeafZRH5GGTGK4+hG4YI9gCRp7kGY2jrNRiOp9ScAUO1VHzr1
         3JsGkhbpLWZVDM5gVcfU5LyNCcaGYeMH+C7rKc5gfnRyAq3erfa5zu28B11By1oYjeZi
         BUP88MSHnkfNnK869V1zNDM3/xkfL71oxmRwfGLyri70rvr+Z0lLaCaH/gHD5oTmlBSg
         SNJDzfWqOFeGw3y/4wmwo9LX0B3ssMnN32rnhP9MtdJvPQsoXQAPjeiDJUHJ3KHJAX8i
         pF6TPUNFf0YhkbrwBcgpMCGJhDBjSgJfDk/ifbHmcL7qEPJwKsYLtPm6iI7OzfmfAd2W
         +jiA==
X-Gm-Message-State: AOJu0YzZpfXg2D8MnJxubPeJxfds49Id17XQKCMEO3DAdBEvKIPagvbA
	K+IhYC1SVfSO4F8dAWpFYkt1Z7Ffuo4FFqtgYG/gYN9Q6Cy6A6gsXYth8yqAMgkxFbKfU1m22+h
	/mpfnwKsUW76j1UbYptQirG7Lg9XyGNUF
X-Gm-Gg: ASbGncvwlWU67BfLHnQJOUGHd6XL3e+d3PC3ZYHyEiOaefvJVwCEhDfl8zJXq73LNkJ
	sXnYQsTKNPJGURDF6jLgyQaaZd5tZvgCbZkYNI7OIsDyR5BbuGOdX+eE2mrE545MGdUC5+SSQpJ
	8LmSJ6hJSaSPpazKPs4YaRgOJCI/qDOcKbCsS/
X-Google-Smtp-Source: AGHT+IGjKMD0bYdydcAsQjon8knwUviTFCcDaZ1LKp/oksJmMaqNPjP4V7kQfAB+1xlOP4Y+kpoNJ7y4alVdBgwnu3o=
X-Received: by 2002:a17:907:7ba7:b0:ac1:dd6f:f26c with SMTP id
 a640c23a62f3a-ac7d1c3aa9fmr1418109366b.46.1744125433092; Tue, 08 Apr 2025
 08:17:13 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 8 Apr 2025 11:17:00 -0400
X-Gm-Features: ATxdqUHbOalMBZqjNYBSNVWFeEkkPDn22VkuOBXUs71hwiKppRCvtKpHo-Yr6MQ
Message-ID: <CAEXYVK5URPMSAzY0tM1WC9hFT_1PP+nGDoBaJT394spHmwekhA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: KKFMJA4N42JR47D4CV5J4DSU2L6RLMWC
X-Message-ID-Hash: KKFMJA4N42JR47D4CV5J4DSU2L6RLMWC
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC CHDR Metadata and CHDR_W
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KKFMJA4N42JR47D4CV5J4DSU2L6RLMWC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0397053547549701559=="

--===============0397053547549701559==
Content-Type: multipart/alternative; boundary="000000000000e22759063245d81c"

--000000000000e22759063245d81c
Content-Type: text/plain; charset="UTF-8"

I am targeting the X440 with a design that has a CHDR_W of 512 and I'd like
to use the metadata inside my AXIS stream associated with it.

In the RFNoC specification (
https://files.ettus.com/app_notes/RFNoC_Specification.pdf), table 1 shows
the CHDR packet with the Metadata being CHDR_W wide. I see the metadata
listed in the chdr_packet here is a vector of uint64_t:


https://files.ettus.com/manual/classuhd_1_1utils_1_1chdr_1_1chdr__packet.html#aa294b5e5291ae8250dab05f2f0339d3f

Are there any examples of building a chdr packet with custom metadata that
I can reference? Especially one that might use a different CHDR_W than
64-bits and how that might affect things?

Am I venturing into untested territory which may have a lot of potential
issues?

Any insights would be appreciated.

Thanks,
Brian

--000000000000e22759063245d81c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am targeting the X440 with a design that has a CHDR_W of=
 512 and I&#39;d like to use the metadata inside my AXIS stream associated =
with it.<div><br></div><div>In the RFNoC specification (<a href=3D"https://=
files.ettus.com/app_notes/RFNoC_Specification.pdf">https://files.ettus.com/=
app_notes/RFNoC_Specification.pdf</a>), table 1 shows the CHDR packet with =
the Metadata being CHDR_W wide. I see the metadata listed in the chdr_packe=
t here is a vector of uint64_t:</div><div><br></div><div>=C2=A0=C2=A0<a hre=
f=3D"https://files.ettus.com/manual/classuhd_1_1utils_1_1chdr_1_1chdr__pack=
et.html#aa294b5e5291ae8250dab05f2f0339d3f">https://files.ettus.com/manual/c=
lassuhd_1_1utils_1_1chdr_1_1chdr__packet.html#aa294b5e5291ae8250dab05f2f033=
9d3f</a></div><div><br></div><div>Are there any examples of building a chdr=
 packet with custom metadata that I can reference? Especially one that migh=
t use a different CHDR_W than 64-bits and how that might affect things?</di=
v><div><br></div><div>Am I venturing into untested territory which may have=
 a lot of potential issues?</div><div><br></div><div>Any insights would be =
appreciated.</div><div><br></div><div>Thanks,</div><div>Brian</div></div>

--000000000000e22759063245d81c--

--===============0397053547549701559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0397053547549701559==--
