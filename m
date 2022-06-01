Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B2953A01C
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jun 2022 11:13:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1003238418D
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jun 2022 05:13:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654074818; bh=qtnYWXAMt5iw9e8TQNpDRQ0yd/hSSSvB8/aKR8bKoOs=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=UoPoUqri2O6MQPPDJh4QQ7Y8lfq3PYCr/avovsTq2iTSSKoNDL80gaytDOMcWSYat
	 0kznYVC6Wd0pX38xk2Y1R0Zc73lbX9fGG9rlDuNvVaN/asgB8423crk1xSFfhVrciF
	 fMV4FdJF12Y6YbPxI/dOb9WTM63k3AfCGa331InJQo9jVUhAYGMTco6Wpak+oTG35f
	 BMEP9z1ePaNoqhmnmW3R77ZwbsHX0wglwBD4pjPqGlyfbmTCko43zUorcZ1j1Voeop
	 mebWPPAk5KnP9E4MW21bDTPVDJ+0e0VWAlIF7vNR0rpyvVibFappaQ2UJEi6TZ5oRD
	 3j/uQkyWSQH+g==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 2F036383DF0
	for <usrp-users@lists.ettus.com>; Wed,  1 Jun 2022 05:12:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ldn7VdA8";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id v25so1284919eda.6
        for <usrp-users@lists.ettus.com>; Wed, 01 Jun 2022 02:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=tik8cU+M9ML4ExIK7HBvFOIAN/cfg14NdP1esRJI1ws=;
        b=Ldn7VdA8lCrKo0120fREG+PI/XaPd/DONXL1nZcYmcks7sURgtLffjI0oKG7m3ARgi
         la+s40bl8WVXflUQC7dx9xM9DLbWloZxYzekc0j4b19zVGu/sRqDGHV79aeIgGxoafvu
         8kHHuwn64TX88aBYA/bSygzh/e9PvQOgTttuix37qiVyziYItjY5kNzZuRdathvZaVxn
         lw75aot5jyoFh2o/7QqylaOkZXlZP9BggMW9m4qZARxS8xfjlMVjScWX9ZGb1EwRloFB
         03Q/jUybdIyzScAfrjTjQQNpZxQnaxL36jfAySuVwsdwvZ436AIf1slAaGLYPbIK21vi
         iK2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=tik8cU+M9ML4ExIK7HBvFOIAN/cfg14NdP1esRJI1ws=;
        b=wfMFziBQ1e2hl7PkDFVqAF4BKcUOB72bHiyf9ggx/YYda2SLZAAe7YJqN5bfB9Z/gg
         vISu85jHDTtTm4rk0Q4vjoYBa9pqqONUHflTCvEVDLlMbpMrTQf4buxs1GozOm5nL+u9
         6Eadt8by/cWKIVpbdH9pTBJaA/5SikZDuX3NA3l6JKJqtV/jI/cfIoBQZly/EgE5pUWs
         bFAJxVVdH1FwswoiSOqQbVeCBILtar1oyuqL9ucnpsS2mpSV6yPKJ5Hckjbrc0mncC2E
         +EwfQBMva2HI9ctC4XG1jTOF+VWYGt9jHtFtFKH8WG04VWQkygsPWCYSlgxhYLlDaPuG
         fjOA==
X-Gm-Message-State: AOAM5318JV8KdnFC1jdFSuyPwDocac13QhCAzpE0YoLjHrNLVTNvO2TJ
	XIg9J9HjU8IeTykKQS6tjogxvRjvUYBEowePIcMhW/GlZ7Q=
X-Google-Smtp-Source: ABdhPJxMSabWSxq67EnbCjELSK0qN81n2qEVD6+UAAWe0z1CQAhfJ/XoxVsjJquE0VbmWUZE1maVuMvGY+CMz1Zl1wE=
X-Received: by 2002:a05:6402:42c1:b0:42d:fba6:d5c5 with SMTP id
 i1-20020a05640242c100b0042dfba6d5c5mr1079964edc.295.1654074749908; Wed, 01
 Jun 2022 02:12:29 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Wed, 1 Jun 2022 11:12:18 +0200
Message-ID: <CAG16vQXYKCytT_8vzQwrJw=mRpNOfEyP93iHBVMfU59VtHEUZQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 2QPQEUIXPZXT47Q7QLPEJ7SH64V3OGKT
X-Message-ID-Hash: 2QPQEUIXPZXT47Q7QLPEJ7SH64V3OGKT
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to add an ip core to rfnoc OOT block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2QPQEUIXPZXT47Q7QLPEJ7SH64V3OGKT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6287020773480850851=="

--===============6287020773480850851==
Content-Type: multipart/alternative; boundary="000000000000e6790b05e05f49ba"

--000000000000e6790b05e05f49ba
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm trying to synthesize a design that includes a vivado ip core inside.
Normally, I add my .vhd/.v source files to the Makefile.srcs inside my
block like this:

RFNOC_OOT_SRCS += $(addprefix $(dir $(abspath $(lastword
$(MAKEFILE_LIST)))), \
source1.vhd \
source2.v \
source3.v \
)

But adding the .xci file of my IP core does not work.

What is the process to include this file in the makefile chain to compile
it?

Kind Regards,

Maria.

--000000000000e6790b05e05f49ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><div><br></div><div>I&#39;m trying to synthesiz=
e a design that includes a vivado ip core inside.=C2=A0</div><div>Normally,=
 I add my .vhd/.v source files to the Makefile.srcs inside my block like th=
is:</div><div><br></div><div>RFNOC_OOT_SRCS +=3D $(addprefix $(dir $(abspat=
h $(lastword $(MAKEFILE_LIST)))), \<br>source1.vhd \<br></div><div>source2.=
v \<br>source3.v \<br>)<br></div><div><br></div><div>But adding the .xci fi=
le of my IP core does not work.</div><div><br></div><div>What is the proces=
s to include this file in the makefile chain to compile it?</div><div><br><=
/div><div>Kind Regards,</div><div><br></div><div>Maria.</div></div>

--000000000000e6790b05e05f49ba--

--===============6287020773480850851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6287020773480850851==--
