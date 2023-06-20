Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB02C7374EA
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jun 2023 21:09:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BA70E38497A
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jun 2023 15:09:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687288178; bh=Wo0maZMl6SFjxKyL463OGF8qMctKIOyGpa0HM7gNqak=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=sI5W8Ad/H0B3Dg7icYz7TOpMp7CZ6PTf1xPizEROSYWaG/gwv6UZeCsZT+Ib59dOP
	 XhMRkOHDQYltGI0YVKUHV2BY7zkVdc0XvEJSvupQyJn3y2g2mYteJ7rAUKZbudNWpG
	 T7+pl3OerI33WchAFv+IdfDd34Ucq5r9iHERFyIVEN/KDFzh0r6k5Hf0ICGoV+zkNu
	 /MFqqLty1cZyzQnpAPzOVM9gVyCDmPQGLnH2JcTn+w9citm9ucYmiR9vU/kWfEHW94
	 EuV0O2iCoyDOp0OLshXexMBWlP7dTLgLnnNAPJ3/tAl2H0oMHmrbNUDkB9JjFkWGBb
	 EIzDPmGy1g/lQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 327EA3846BE
	for <usrp-users@lists.ettus.com>; Tue, 20 Jun 2023 15:09:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687288154; bh=GKUtDWlcS2uY4fcZL1MgVLNCSR/r7P5mg2w1nDPU4tg=;
	h=Date:To:From:Subject:From;
	b=lH69rw6yWSL14Ukzs7kpxJ91l24T8mKHKGkqS6RYfYFO39jb7F690Q1PlmMuEvjxd
	 OcaXUUXSGcFoa8N/oSJ0hoq0JUVLo/pxCDzPfdqQQDuseLLlRaWvo8eBHLET9X9Lb5
	 x+nn+EGy57uan+KfG68j9J4RS/KCqGrFDh/WfgZUNkjbySgCgynETueuZiCktFqLFu
	 x893PZAeevHak2wLamNLnH2IjRr90hnDEWR7YIQlXGEbZ9FTahzz4MRQ2GG4aQODHL
	 GuAnM9Niq1JHLEKmyIyEIyOtypNemS589oYqA3V/zeTiBuZSz7aukXTR2ZWp1mtAvm
	 H4LQROU1mLprg==
Date: Tue, 20 Jun 2023 19:09:14 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <L3168LldPPbHh6NnDhl9iuy0fAsetR9eg21fSyOgNf8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: YXWZA6T5MQQT3MVAXJTCFENWYB74JENK
X-Message-ID-Hash: YXWZA6T5MQQT3MVAXJTCFENWYB74JENK
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Control operation timed out with custom block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YXWZA6T5MQQT3MVAXJTCFENWYB74JENK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5513031105314154007=="

This is a multi-part message in MIME format.

--===============5513031105314154007==
Content-Type: multipart/alternative;
 boundary="b1_L3168LldPPbHh6NnDhl9iuy0fAsetR9eg21fSyOgNf8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_L3168LldPPbHh6NnDhl9iuy0fAsetR9eg21fSyOgNf8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am currently trying to build an image with a 500 Mhz sampling rate with=
 a custom block. However, I get the following error.

`[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocE=
rror: OpTimeout: Control operation timed out waiting for ACK.`

I do =E2=80=9Ctamper=E2=80=9D with the chdr data before it goes into the =
noc_shell, and with the chdr data that comes out of the noc_shell.=20

Specifically, I only take 64 bits out of the 128 bits coming into the blo=
ck itself(currently 4 SPC is used) and feed it into the noc_shell, which =
is set to work with a CHDR_W of 64.

I do something similar for the chdr output of the noc_shell, except I exp=
and it from 64 to 128.

Could this have an effect on ACK? It seems all acknowledgement protocol i=
s does using the ctrl_data, not the chdr_data, but maybe I am missing som=
ething.

Thanks,

Joe

--b1_L3168LldPPbHh6NnDhl9iuy0fAsetR9eg21fSyOgNf8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I am currently trying to build an image with a 500 Mhz sa=
mpling rate with a custom block. However, I get the following error.</p><=
p><code>[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:=
 RfnocError: OpTimeout: Control operation timed out waiting for ACK.</cod=
e></p><p>I do =E2=80=9Ctamper=E2=80=9D with the chdr data before it goes =
into the noc_shell, and with the chdr data that comes out of the noc_shel=
l. </p><p>Specifically, I only take 64 bits out of the 128 bits coming in=
to the block itself(currently 4 SPC is used) and feed it into the noc_she=
ll, which is set to work with a CHDR_W of 64.</p><p>I do something simila=
r for the chdr output of the noc_shell, except I expand it from 64 to 128=
.</p><p>Could this have an effect on ACK? It seems all acknowledgement pr=
otocol is does using the ctrl_data, not the chdr_data, but maybe I am mis=
sing something.</p><p>Thanks,</p><p>Joe</p>


--b1_L3168LldPPbHh6NnDhl9iuy0fAsetR9eg21fSyOgNf8--

--===============5513031105314154007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5513031105314154007==--
