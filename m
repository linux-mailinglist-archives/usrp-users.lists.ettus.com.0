Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D2500949F10
	for <lists+usrp-users@lfdr.de>; Wed,  7 Aug 2024 07:20:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97352384179
	for <lists+usrp-users@lfdr.de>; Wed,  7 Aug 2024 01:20:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723008042; bh=+kbN+OhdUjYe/9+SN+wsRkd/iCOA/egwzkFZWuKaJZk=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=nuTXSAkZlbWGreOKFs8vFOt7H9heAdsWuWpMDfMoHCYqpnECzpiFwI3CuutOQNvvL
	 50v+SgoNZ/DgE0UFSQC/acQfL8Ot6623JLJT2UI9wpv0DARMCwMYzgC5JhUU3CcaWr
	 zEZLCMmzzg7tqrNHRhZbNrPfA59LijN5sOGaIQuB5+DBlorq9+SpdOiei8RisTBLjD
	 HCfiFQeqbmuN+AnZzt7jsb2qgqak0sdznDVt5aLQMmlaxdgt1F1SXss28QxK2qMFrw
	 3QaAxhN+gTl+xp3E1WOkbm77k3oY4n+gGWGgAL72IP782DkH7VM95FM0UhKx8Di4yN
	 RwFEL/dllrqvQ==
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	by mm2.emwd.com (Postfix) with ESMTPS id DE345380F89
	for <usrp-users@lists.ettus.com>; Wed,  7 Aug 2024 01:20:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ETteWqWW";
	dkim-atps=neutral
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-4928fa870a9so502322137.2
        for <usrp-users@lists.ettus.com>; Tue, 06 Aug 2024 22:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723008014; x=1723612814; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NzOueJgAhnyml4bqTZZ9Fnjl701XS0TpqQy3TXyT7Eg=;
        b=ETteWqWWJ6NeEtlTNJZWs3Olz1DpbwLm/scaWVs2Jw0g+vHQkRtEPwIMaf5Opk6A7p
         RRE7IXUr/ctD7wSXxbG76yEnnb74ZxCFoM2Blc8KO4lM8ydN2eCcGmYgNoxzwD/+JOEj
         NNmbDFgWVa7ja9Lv9mUXzgZwczEQoidBHNz9G223eLWMu5oxH211peyHQMnui5xu8DgR
         6+zFbbvc45e0W+PtDnR3eceWVOBCfKaP/tydtOFab0VYE3EzOfGMroGL+1Ec6EdlAAJk
         gvHhz7RcVuOg6zpPlsd+CiZVZ2lRWVqOsqjYsSfpw/LmMbPo+eM6E4cNJmUv9iIVZib4
         xNPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723008014; x=1723612814;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NzOueJgAhnyml4bqTZZ9Fnjl701XS0TpqQy3TXyT7Eg=;
        b=JA2ZXUSQKZl7uVVBiwp/5sDOvfWZEnGvj8/MHi9QLSyRxU/Vzp9mdeMykMo4aNnRsM
         v9OMKGGptGCPtbkEgdX+mpg5tAneP69P5C6zgTyRGU1KMHANUcQ02FQcHG97l/3Ka16X
         iAw+L9Q5vmuKczVvWp15i/WZK/xsunVIxuQTzpLiCPpNUYziX2i6G4rdYn0G93fmB47N
         LIkmjzMkFTyMsg+HTqwOD/wufznPhndfI16Guy63HOR0S9JV6aFEUNRKRPnzNWL7mmOw
         oxICONmlhhjucLCO7OuP2kc2vZsNG2vrjttEH/Hn6YZXCtrLQOmDqE/RdaJghypCz2QS
         hyiQ==
X-Gm-Message-State: AOJu0YzbuVitcxXVlBcK5wXNXD+Am2g6IemVWqg/lR/uQcM+mbyR/DtC
	f6MC4rljeqHvLbmnHHoyJIEAf9wEOUGg14NOmPHBo77zPo5Ev5BQ7c1NefyKb9q70hwEKJiFgzx
	qDDi+7DSbVZbw+SlPz8+GlOiyBitohNqZ7NdPAOma
X-Google-Smtp-Source: AGHT+IFJhB2Zat1gUlL04ZbWnOvQmMNpjQko4HNn8xmwsTmIDnuQVvOlxbEbomgkEkGAqHU9feslnbx32/+X55GDQ0o=
X-Received: by 2002:a05:6102:162c:b0:493:dbbc:7d56 with SMTP id
 ada2fe7eead31-4945be0a4e3mr13681605137.8.1723008013895; Tue, 06 Aug 2024
 22:20:13 -0700 (PDT)
MIME-Version: 1.0
From: Mehran Memarnejad <memarnejadm74@gmail.com>
Date: Wed, 7 Aug 2024 08:50:02 +0330
Message-ID: <CAER1B8J9GXfy2xOL-0GjGEVrhajmFzOsCSytU2c7WUUSOxXkgQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: P7F53J5N4FJATWRF2PLQD2IZF4NT2QAT
X-Message-ID-Hash: P7F53J5N4FJATWRF2PLQD2IZF4NT2QAT
X-MailFrom: memarnejadm74@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] AXI DMA in USRP E310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P7F53J5N4FJATWRF2PLQD2IZF4NT2QAT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1878919505326830785=="

--===============1878919505326830785==
Content-Type: multipart/alternative; boundary="0000000000009d11a4061f11105a"

--0000000000009d11a4061f11105a
Content-Type: text/plain; charset="UTF-8"

Hi all,
According to the presentation on "Fixing the E3xx DMA Bottleneck" on this
link
<https://www.gnuradio.org/grcon/grcon19/presentations/Fixing_the_E310_Bottleneck_Implementing_a_High-Rate_Heterogeneous_FPGA_DMA_Transport/EJ%20Kreinar%20-%20GRCon2019-HE360-Heterogenous-DMAs-Kreinar-Metzger-CaJacob.pdf>,
How can I use the solution for USRP E310? How can I access solution
materials, i.e. yocto layers?
Thanks in advance

--0000000000009d11a4061f11105a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div>According to the presentation on &q=
uot;Fixing the E3xx DMA Bottleneck&quot; on this <a href=3D"https://www.gnu=
radio.org/grcon/grcon19/presentations/Fixing_the_E310_Bottleneck_Implementi=
ng_a_High-Rate_Heterogeneous_FPGA_DMA_Transport/EJ%20Kreinar%20-%20GRCon201=
9-HE360-Heterogenous-DMAs-Kreinar-Metzger-CaJacob.pdf">link</a>, How can I =
use the solution for USRP E310? How can I access solution materials, i.e. y=
octo layers?</div><div>Thanks in advance<br></div></div>

--0000000000009d11a4061f11105a--

--===============1878919505326830785==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1878919505326830785==--
