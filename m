Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A25C7A32918
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 15:50:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A9FB3861CC
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 09:50:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739371800; bh=eu+pFOr6j5tzoVHzjJgXq/wPL2yJx7/rr2ajY5eQYO0=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RXkLoxOT12uDx7eFXKt655Sn17QqWVvjz2Gx4ZGq2TSBvET9vgunAb/v87PDGi0fP
	 HRnPs6DXigwGYLxJYXmkSJdfzBUBniUmYMcGaVxXkmET+pNUjJXI6y6CFRDWmcRvyE
	 NNtUPBq0t6KxrWr7zyO6PTLl865w69Pg+/JyMx9KHeMTd3OnGPBJivz8PNZeN5joam
	 VWOBUNv1XkLATd5mP25GkIk1EF8sxsWC8Yve8Ye3r3CsHFf3j9zbakepc0ADG1iO8d
	 cNdIQrUiTRq0GvibqePqU0+nAwc9i63O5pmbgqXzxt1guBObPjEX0qnaIcgi30jM+J
	 H/j5SWvLrmz8Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C682B385E86
	for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2025 09:49:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739371753; bh=un2aFeDNO6GZXTd7Tva27TyxrBVAEj5aslN7iUhqMfU=;
	h=Date:To:From:Subject:From;
	b=da1mxp5cTBL+agoODxeM/E2t5fphxq7x9s3HGBXEluZOyjaOmedzW2d4jw8Ed9cuh
	 cRTEUtpwhRGbnHDLoKPv9qAruT/D3qsgl1ZSKhHHZsgUxY9f0N0STqLWCSYSwwInec
	 U8fqFsu/83g/Y/pFvx4gd8s6DvFIF54oVT+qKfCtcZmqB7a2Zw2HWjjt9KAkrpRgDH
	 KfnOFr95VmwknyymESlJjE1O6APxhiPGu0ceRnHB0kwYkkCQKfxAGOCVM7Mh1r/KIe
	 4BXpAxxjlvusN6cKgcTgcwox1Ms/Envohy319GGet715mhGC2wZswOV/H/YKLwKpvo
	 r16NzARAK8t0g==
Date: Wed, 12 Feb 2025 14:49:13 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <IbnMnc2dvJ2ZpRQxyQ2HZEHApFAoqUsuG6JaDKH4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 42XPIQUIGJD2BGM43YJ3DQDUVPBX7UUO
X-Message-ID-Hash: 42XPIQUIGJD2BGM43YJ3DQDUVPBX7UUO
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Is it OK to build with DPDK but not use the feature
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/42XPIQUIGJD2BGM43YJ3DQDUVPBX7UUO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1784409189400819799=="

This is a multi-part message in MIME format.

--===============1784409189400819799==
Content-Type: multipart/alternative;
 boundary="b1_IbnMnc2dvJ2ZpRQxyQ2HZEHApFAoqUsuG6JaDKH4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_IbnMnc2dvJ2ZpRQxyQ2HZEHApFAoqUsuG6JaDKH4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi=20

We have a OOT RFNOC project and have built the UHD framework with DPDK in=
stalled but we don=E2=80=99t use DPDK.  Is there any side-effect in doing=
 so?  Would it be better to not have the DPDK libs installed at all?

Thank you,

Marino

--b1_IbnMnc2dvJ2ZpRQxyQ2HZEHApFAoqUsuG6JaDKH4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi </p><p>We have a OOT RFNOC project and have built the UHD framework=
 with DPDK installed but we don=E2=80=99t use DPDK.  Is there any side-ef=
fect in doing so?  Would it be better to not have the DPDK libs installed=
 at all?</p><p><br></p><p>Thank you,</p><p>Marino</p><p><br></p>


--b1_IbnMnc2dvJ2ZpRQxyQ2HZEHApFAoqUsuG6JaDKH4--

--===============1784409189400819799==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1784409189400819799==--
