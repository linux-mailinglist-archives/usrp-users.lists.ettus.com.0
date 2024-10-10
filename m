Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBF4998DF5
	for <lists+usrp-users@lfdr.de>; Thu, 10 Oct 2024 19:02:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9CF4B38587E
	for <lists+usrp-users@lfdr.de>; Thu, 10 Oct 2024 13:02:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728579778; bh=EYi9vGzh3B0vuVcrgsN4Rh2QiPTeC/qiv2naJrqJe7I=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=anDIOg68vjiwoCBZXsuHMa0+mBpOOzJW1a5p4aNSSNptapUHlFbsScBFS5ywNtbVv
	 t8cXNjgDGdCOcRuBizZD01wCrUbwq3kCiwPe1wKYP3EsEpsx/wTPiGf3aiAV4YJXxP
	 zF76ET+3aQmN1INuz9vRXrjGSOhB0C6gmVsspcPtJI3SyjF5VjmZFm81Yw++wTJiz7
	 Ny59jcDVbQ9yqygVxFMH9e+iBNhJ9nTaaiEC4ldM4Yuc7PmhyUkVRgFmuKUZZeR2AA
	 1GkFVnetrgnkCopEqJ/yIEP1t4bKye0oBkuZxnTM0KlYi5tkVsJtVuMCW1mDB2VSZe
	 7eBgPQ9s5HBAw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 37D9F38587E
	for <usrp-users@lists.ettus.com>; Thu, 10 Oct 2024 13:02:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728579760; bh=mMCKyBRDW0nnctXMw5GSiCBPC4SdhEN2RpASfjQc+k0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=mcqxNRT5HPxpxSGW71rVkRpxzjQxm3+SPXizLBRVOiz0zioII7BeP0o3QG8CWDHfl
	 6Tz6WzEcr1Aw4fcg57GTSdOrpGx8DwTuyax3JnrVXOsz1bF48FcIyU0oILit9rHLuI
	 VswvVFrqJF+IBjyeFVtwu8MgH9Gf9rEsmSZ1WOcwVNyryH2OtT7vMWLGsiPVUVHY5D
	 4z6vLUUAszXsVa3n3tWefRSLn8GVnaOn8ShS34W3EYzYHdo2kPsAOj5xpSEPZc2PgE
	 gsM3j63Y8hNBcAln1Kz3XVzvHaY+FIkJQlHxvqNpCzlrizdgXHtlPjE/dNQ7HvbReM
	 4AfuSBkuPEZLQ==
Date: Thu, 10 Oct 2024 17:02:40 +0000
To: usrp-users@lists.ettus.com
Message-ID: <5ji6SwIyQ3hmlBmPAryXCr56qho63cMtveO3DQYTk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: zCLIwYcY6ADoffbvImLtwRjZkDAy2JYdgumpej9z2Q@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 2HSMDI2LTEGKKXDB7KDTEEHY5DBIQ5ZP
X-Message-ID-Hash: 2HSMDI2LTEGKKXDB7KDTEEHY5DBIQ5ZP
X-MailFrom: mruane@silveredge-gs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Triggering of Rx synchronously with Tx in RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2HSMDI2LTEGKKXDB7KDTEEHY5DBIQ5ZP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mruane--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mruane@silveredge-gs.com
Content-Type: multipart/mixed; boundary="===============2218129769850744052=="

This is a multi-part message in MIME format.

--===============2218129769850744052==
Content-Type: multipart/alternative;
 boundary="b1_5ji6SwIyQ3hmlBmPAryXCr56qho63cMtveO3DQYTk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_5ji6SwIyQ3hmlBmPAryXCr56qho63cMtveO3DQYTk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Piotr,

I just noticed that I had a typo in my reply to you.

Regarding the statement,

> you could just set it to transmit samples as soon as it gets them (i.e.=
 the wr_data_en signal would be equal to the inverted FIFO empty flag)

I called the control signal =E2=80=98wr_data_en=E2=80=98, thinking of the=
 enable signal on the downstream block.   From the perspective of the out=
put of the FIFO, it would be the rd_en signal that is equal to the invert=
ed FIFO empty flag.   So, whenever the FIFO has data in it (i.e. =E2=80=9C=
not empty=E2=80=9C) the rd_enable will be active.   It will be deactivate=
d when the FIFO is empty.   If you need to generate a data_vld signal (to=
 drive =E2=80=98wr_data_en=E2=80=98 on the downstream block), you can do =
so by delaying a copy of rd_enable by a clock tick or two, depending on w=
hether the output of the FIFO is registered.

Cheers,

Mike

--b1_5ji6SwIyQ3hmlBmPAryXCr56qho63cMtveO3DQYTk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Piotr,</p><p>I just noticed that I had a typo in my reply to you.</=
p><p>Regarding the statement,</p><blockquote><p>you could just set it to =
transmit samples as soon as it gets them (i.e. the wr_data_en signal woul=
d be equal to the inverted FIFO empty flag)</p></blockquote><p>I called t=
he control signal =E2=80=98wr_data_en=E2=80=98, thinking of the enable si=
gnal on the downstream block.   From the perspective of the output of the=
 FIFO, it would be the rd_en signal that is equal to the inverted FIFO em=
pty flag.   So, whenever the FIFO has data in it (i.e. =E2=80=9Cnot empty=
=E2=80=9C) the rd_enable will be active.   It will be deactivated when th=
e FIFO is empty.   If you need to generate a data_vld signal (to drive =E2=
=80=98wr_data_en=E2=80=98 on the downstream block), you can do so by dela=
ying a copy of rd_enable by a clock tick or two, depending on whether the=
 output of the FIFO is registered.</p><p>Cheers,</p><p>Mike</p>


--b1_5ji6SwIyQ3hmlBmPAryXCr56qho63cMtveO3DQYTk--

--===============2218129769850744052==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2218129769850744052==--
