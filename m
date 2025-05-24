Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C872AC2FEB
	for <lists+usrp-users@lfdr.de>; Sat, 24 May 2025 15:49:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 95A993851B5
	for <lists+usrp-users@lfdr.de>; Sat, 24 May 2025 09:49:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748094565; bh=PfV+lr7mCDObuXmvEY6aJ1Tjf6ulHf+dCt8NhdavXJI=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=UXEojEqhlCJVH76KPigiz6+4vVBgMbmG6ijJ0Q7ikZfOedlSy3fsziFpZp2aSeDC0
	 j5RdxYByMTNkBSKztgWC7hr4kB70GY+M4d7cqZEjZKMrm3ULYXnoJCVkC1tQvGYrnQ
	 nkVC7Osvl3K7kj0GZJ/kqCeh9o7kxkmQhYVfr6xjcnTRI0SIwVRj0zE4Y3J8mGjOnz
	 HzzMJdSPMJ2VV5nN2SxKfhGUSOnnBB9LzLZ/5/QTouI1bvsQ3c9nIPbHhbIvGPv2Ob
	 PxVzbm75CMHTq9/1EiJKSj/OeRippFmEYXyOLdivY2Dak6+d4P+D71H34DjvyzxC2M
	 QHw3eAaxd3xEA==
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 3367A38514B
	for <usrp-users@lists.ettus.com>; Sat, 24 May 2025 09:49:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aM5ebEin";
	dkim-atps=neutral
Received: by mail-io1-f42.google.com with SMTP id ca18e2360f4ac-861b1f04b99so24066639f.0
        for <usrp-users@lists.ettus.com>; Sat, 24 May 2025 06:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748094548; x=1748699348; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7rI+O7DY1CPbecoLqLRJ/mzd47Dkw1856C3DQurd1vs=;
        b=aM5ebEin9jxTr44MMoR/eI2xRKNNUrzQft1uc/B9M/w1V7/D35r5hNurcizIqZz0VR
         IjB6OvoYQKO/sAng+n4DhsupKtKzY3TleVXZtOhfJCXCNxsWTv63UDIW5h6TaEmY/4sq
         KFixvVrGhp6qh8lmggjBV32TEFqH/uZ3JwvfqUF2dawd6D9NdNQQAkg5DLm/qy2b66qu
         QmIxcyDWjXwfgLfdlI7wTefxk1t5FrOjqYync0muL2Q2ti8x5Pk9abX9pqqZcVBWOwZA
         cht9tCBWynb2x0GE6i90+Zoi/V9UyJHxqeF6gaGWYRfTk0DJioHpQdUSpsms0c1MIjQx
         fG4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748094548; x=1748699348;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7rI+O7DY1CPbecoLqLRJ/mzd47Dkw1856C3DQurd1vs=;
        b=PuGuFcArQ2ia4Fwb9Wg/KjbBSuwMVdxtT6Y0LDOWJ8r1n8fdKoaS1jOxI+n0HY+5oI
         u7AdjYC/7SyeJPGujUlhdXqcYLOUm2kx/ic/2KpBYBQi9BjinJlNx7hMLJ0YHsD7y8KR
         i2wB7WQFf26BiheyUvTwZx+7hLZVP7gjjCi5xpazxARJhpOwjP+qmoARR5s70+EJgpGl
         yTag1ppFFuVoIxeCUb9qz5QvbmTDs+sB/6jSbF7ZCCvTvhYPRQk8AWxwmFo07fab8oTI
         e5CgNOG6T43DNhwErnYStaoHAY/UJjOP2nlE5bvSdV6povqmXu9unfHQzYCJnGrvyZf1
         EIMg==
X-Gm-Message-State: AOJu0Yz/r2a+riKEyECyvPjSQuvneGvgf2J0EZv1d7Ab7cTh2jb0h5Ov
	netRdR5ij+wtKUN+1tFNbB5/69i2xMH1x0WzlApLp4bLcAmk4lbXFKi27BoA2OodGqwVm7vuxkd
	VMILJW0PTnJCty6rNEBsXs1+NwfmnXOnd0g==
X-Gm-Gg: ASbGncu902aJODlosLDx82DQ/p74SwSXLTuLZ5/UeWeYXHdB+OQ7O2eJ3U7JdfsloMD
	8QaD7cPxQXLpBihDm3/+ah+kvg5OSpndcJbSuv56KNJ2BWXNCmNz73c5EzKxOMautMKoAGjzuik
	nDj5t9nRD7uMe7S6usn6AoMjwIlQ6JyjC7q+89jhA=
X-Google-Smtp-Source: AGHT+IFrICRjKG+QYn33JGc2C27Hv0rRVPpsjHrui7655Vb7AqZTrEp6jJvG1SuKlMyzG7lXRHR8UBTEVGWHfGQsc5I=
X-Received: by 2002:a05:6e02:2486:b0:3dc:8a53:c9c4 with SMTP id
 e9e14a558f8ab-3dc9b6848e1mr20736175ab.6.1748094548104; Sat, 24 May 2025
 06:49:08 -0700 (PDT)
MIME-Version: 1.0
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sat, 24 May 2025 16:48:57 +0300
X-Gm-Features: AX0GCFvy1vSpKRLgdnefV610dhg40rBVofFkI8fb79FUDTV40hqPJMpp46UAS2s
Message-ID: <CAAxXO2GUE4A3Et1f9AYcgDOYJKdaBbVrwFbhuQrhvg84A-u8xA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: O2EHWXIA7H76XGXLKY3UEGBXTHQGXW46
X-Message-ID-Hash: O2EHWXIA7H76XGXLKY3UEGBXTHQGXW46
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Manual Tuning advise
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O2EHWXIA7H76XGXLKY3UEGBXTHQGXW46/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8901340620005353628=="

--===============8901340620005353628==
Content-Type: multipart/alternative; boundary="00000000000092e0100635e1faea"

--00000000000092e0100635e1faea
Content-Type: text/plain; charset="UTF-8"

Hello,

I was reading the 2016 paper by Ibrahim & Galal (ETRI journal 38, 3, 2016)
about tuning hops.
The authors present a tuning algorithm with a sequence of none-manual and
manual-manual tunings. Are their results still valid after 10 yrs or is
there a faster algo?

Is there a way to detect the state of the PLL during tuning?
What are the frequency limits of the SBX-120 LO?

TIA
Nikos

--00000000000092e0100635e1faea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Hel=
lo,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><=
div class=3D"gmail_default" style=3D"font-size:small">I was reading the 201=
6 paper by Ibrahim &amp; Galal (ETRI journal 38, 3, 2016) about tuning hops=
.</div><div class=3D"gmail_default" style=3D"font-size:small">The authors p=
resent a tuning algorithm with a sequence of none-manual and manual-manual =
tunings. Are their results still valid after 10 yrs or is there a faster al=
go?</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><=
div class=3D"gmail_default" style=3D"font-size:small">Is there a way to det=
ect the state of the PLL during tuning?</div><div class=3D"gmail_default" s=
tyle=3D"font-size:small">What are the frequency limits of the SBX-120 LO?</=
div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div c=
lass=3D"gmail_default" style=3D"font-size:small">TIA</div><div class=3D"gma=
il_default" style=3D"font-size:small">Nikos</div></div>

--00000000000092e0100635e1faea--

--===============8901340620005353628==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8901340620005353628==--
