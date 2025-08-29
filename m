Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E3DB3BE8E
	for <lists+usrp-users@lfdr.de>; Fri, 29 Aug 2025 16:52:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BBC41385C1A
	for <lists+usrp-users@lfdr.de>; Fri, 29 Aug 2025 10:52:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1756479134; bh=4dLqKTU2/2fq2GM7I1CPvu3I35UBKxT7dHEwu29NFA8=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0kQnFvFMxFa+ZFlfw8g+dAlQczhBkKEUFQlBo9bu7NlQYXjRkfTEZBGbz+p+bmw+u
	 BZqsfk3ZqT5gVyKgfV9TwZWvk9m2dGB5+447En40kq4wqXxe308IQNIbtmtT0Klfuk
	 eVV+IHLPm8OFWnw4GQQkFZsHYiDw6+lVczm2oiHetN07nzyg1lKmOb+QUhhF4MuFA4
	 80qDFKwVy3b+Aq49W5HstemkA2fn78uBdCkyq9eBAp4uqjxeJug7odQBFOGCVODlzT
	 0ULi173VMj4gXsLVeFfQlMCODXqM57YhOJv9OV6JYRN4UArFjNBkbU3uL8c4e/485n
	 Sx798IuaPWhKg==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 745BF3859F6
	for <usrp-users@lists.ettus.com>; Fri, 29 Aug 2025 10:52:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="XyMG2xE7";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-61c51f57224so3108357a12.2
        for <usrp-users@lists.ettus.com>; Fri, 29 Aug 2025 07:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1756479129; x=1757083929; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=grGCb3aRMBRgG2vpyI/HTgzcA83SCP8NrROXIEPu174=;
        b=XyMG2xE7PFRf+5YAQ3ay/a7V+6H0E9p3cWgwQpmldy1dhEafw6SxrODB6PId8MKM0A
         YGpoewLSttV7XhzsGS2RR0d1dg5ZquwMjhWcuBsmYmXxZDVfgi/2ka17EIB9xg0HDKGT
         aYV3EcO77VMoP34Tr5+ya3bmiL4NHktA1YpS8auIBCg15dF7aQGZuhKZpQMwaKZKQ2RO
         JmFONhF6TeCRLNrKQ8E0Tmb05JbJNPtvIEX3azi9XQih6MAmDzCkUD1PVJJPUUHam16d
         hJWsonjun8poH+vcYzibNLr1t49x19jaNzfwSsdhrd/gyTiUzmJpMBRZSbvNb92JrcQx
         RBIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756479129; x=1757083929;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=grGCb3aRMBRgG2vpyI/HTgzcA83SCP8NrROXIEPu174=;
        b=SvhjKhCn0GjYuOJp6duxAndZsoMDzxNaq1e8e5TGTukZcrG91T2HJ7YeifHXRIpG7Y
         DQ4HksM0ToEbYjB1WHRETktYW96R6JtxchNpvIKqsmhDDAUq9aW1ApH4MpQuN447Nt3o
         UPnXquTpP1VcYgSEwQAzIfreUAYRw8JFUAzyCGBf3cLfQ4a2ylN/f87Fc6EkzBt2C04e
         Opr6wo5x5wJDRROpmcuZbVHj//jrs2N3s2WZgFxNNzUNO1xoEgYnkysUZLQCeHUSdnJa
         LfbuC8QezdsMNdHR2bN5TgYTdnYgzjpfI6dfjNJGlX47YIhUhzv6pFxzhecgoxZ2VPyV
         peDQ==
X-Gm-Message-State: AOJu0Yy2dxrNHnJHVk8UUCqlZiTpD+rvzm7KeU3n+G7goBes60CwKgkY
	JlDSOr3v2wiKU9crxBYL5TnX7p3UyuUFrMwWJE1PrJYHrUqWjTPBpQ0vM863vHXF0vf4q1J3i8v
	g9WYiIVyZQGnhOIkDceIqecsCI7EfDqqzmmcX2eshbXcJErWY4gfubTbm7A==
X-Gm-Gg: ASbGncs1JY60fiaL4hNvG1ATqbOjQBY8rV2VRIwhFkdMhbOh/t4y97R0dVMvqCOVgOU
	HgOHhJDE89P6qFM5bpiBAN4c9mRuCQqmjwo8dDY2U2Eru+V0BM+/3OF/U9Wb4YdCCTXayGkJWya
	o2Zi3cK8oks7nJX8dCbcAiPG37h3M8+mlj3JY0O4OdfMIglYg0i5fNqg02uu6Zmj/aHrNXbAYDZ
	aDgeQL7Uay70ceSlA==
X-Google-Smtp-Source: AGHT+IFPw5+74AM/s/VV/bMpgaP48pbeFuyDHQcZmMoIG/fgWI2HBgY8+raRdFjBrIrKKR7p7wX/PNbnBkoWgZWiwb8=
X-Received: by 2002:a05:6402:52ca:b0:618:afa:70f7 with SMTP id
 4fb4d7f45d1cf-61c1b490275mr22772773a12.12.1756479128852; Fri, 29 Aug 2025
 07:52:08 -0700 (PDT)
MIME-Version: 1.0
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 29 Aug 2025 16:51:58 +0200
X-Gm-Features: Ac12FXyppkdJkmp5QGOZkEjKPhof-3pUOuGaDEBfC6zLs-V4BSwo0PYd7GBNNgY
Message-ID: <CAFOi1A5nRD3wU3edy+EmXzk8d1qkkeDPwECkcX=6O9GxHY4FGw@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: PSJIY6RKEXSDEWFTTPRSRLI762SIWDSU
X-Message-ID-Hash: PSJIY6RKEXSDEWFTTPRSRLI762SIWDSU
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Out-of-tree RFNoC modules on github
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PSJIY6RKEXSDEWFTTPRSRLI762SIWDSU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4308589285806713250=="

--===============4308589285806713250==
Content-Type: multipart/alternative; boundary="00000000000087e83b063d822af9"

--00000000000087e83b063d822af9
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

question: Does anyone in this community have RFNoC blocks published to
github (or some other public location) and would like to talk about it?

Background to this question is that we are thinking about creating a
publicly available list of RFNoC blocks, similar to CGRAN for GNU Radio OOT
modules. If you would like to be included in this list, please respond to
this email with a git repo location! Note that we will only be including
repositories compatible with recent versions of UHD.

On that topic: we recently released an out-of-tree RFNoC blocks repository
ourself: https://github.com/EttusResearch/rfnoc-oot-blocks

Going forward, we will be using that repository for blocks that are not
part of core UHD. There is a potential future where we move blocks from UHD
to this repo, but we don't want to break anyone's code so that's not really
a priority. New blocks, however, will be put here.

This serves multiple purposes:

- We cut down on the complexity of UHD itself
- We provide an example repository for how to publish blocks out-of-tree

At the moment, there is one block in this new OOT module, the Aurora block.
This is a block that allows connecting to a USRP via Aurora instead of
Ethernet.

Cheers,
Martin

--00000000000087e83b063d822af9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div></div><div>Hi everyone,</div><div><br></div><div>ques=
tion: Does anyone in this community have RFNoC blocks published to github (=
or some other public location) and would like to talk about it?</div><div><=
br></div><div>Background to this question is that we are thinking about cre=
ating a publicly available list of RFNoC blocks, similar to CGRAN for GNU R=
adio OOT modules. If you would like to be included in this list, please res=
pond to this email with a git repo location! Note that we will only be incl=
uding repositories compatible with recent versions of UHD.</div><div><br></=
div><div>On that topic: we recently released an out-of-tree RFNoC blocks re=
pository ourself:=C2=A0<a href=3D"https://github.com/EttusResearch/rfnoc-oo=
t-blocks">https://github.com/EttusResearch/rfnoc-oot-blocks</a></div><div><=
br></div><div>Going forward, we will be using that repository for blocks th=
at are not part of core UHD. There is a potential future where we move bloc=
ks from UHD to this repo, but we don&#39;t want to break anyone&#39;s code =
so that&#39;s not really a priority. New blocks, however, will be put here.=
</div><div><br></div><div>This serves multiple purposes:</div><div><br></di=
v><div>- We cut down on the complexity of UHD itself</div><div>- We provide=
 an example repository for how to publish blocks out-of-tree</div><div><br>=
</div><div>At the moment, there is one block in this new OOT module, the Au=
rora block. This is a block that allows connecting to a USRP via Aurora ins=
tead of Ethernet.</div><div><br></div><div>Cheers,</div><div>Martin</div><d=
iv><br></div><div><br></div><div><br></div></div>

--00000000000087e83b063d822af9--

--===============4308589285806713250==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4308589285806713250==--
