Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DE56E6587
	for <lists+usrp-users@lfdr.de>; Tue, 18 Apr 2023 15:11:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D1D99383DE6
	for <lists+usrp-users@lfdr.de>; Tue, 18 Apr 2023 09:11:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681823467; bh=V6Zg8y3GyiD2z4SCymchD3w/lCbT/SB77PMqDGVaGak=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=fIUCXBp3CkBQlCRBtHaUSsOK+mXGWXgBa0EymxTNsOSDaGuo8GswiZ38F6ypYuEwN
	 JmFpJBcmA5r/H7VFxwGD844tZdEspjRQcJjdvMKGNDbLEhXsBx1892YYO/+4tz6Wu8
	 YUJnozA+CQs2K6ah66X54BEJ/GzAW/y46PotXCXMAVpxHpaL84LlGesRPPqZl5ZM7m
	 JWzej2KtwnvQe8E6aW/qhbWQLSDntcfZlhLL0Fp+KDu3+Va8sc/nMFJJEgrSwgjou7
	 01EAl24axaGBTVQd5p5vT9VEQhF7gdSerLhEAka8IhSMqqyzIhnwi1k7yqMXuBV7Ws
	 0bQmwiSLSbPRg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2085B380CE5
	for <usrp-users@lists.ettus.com>; Tue, 18 Apr 2023 09:10:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681823425; bh=iY0bo9/gqZUfqVG2RHIjnRIYhTmjPFPt0PtbHe/wtFE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=rMnTcfJJB2A/MIYjtXVtuaN4Dwv/umr6h+rp5coyLFfPqbXcyqk9GHNjHdHKSzcZW
	 fwd4drvQiZwHiuyXomzCbwEZfmb8BielZZmIAH4OuRZy3fZ1kjVQtHyNbSlOxGb0dE
	 wOg+ShDyNR+zsOF0zwsiHXJFUKkAF2AhpEC53wJzRhC+Ubpfc4UXwI0TrfqNpm3DKP
	 X9gtj+M+Va58zCNF8hx8AWJ9pGMrHd2yZshZvmpgQgHBAh0Nn8pxgsfc0l2eoksOug
	 OUJ2OCZVbLZlp2HoilwWzHdpHW3v9dhIlP9nJomUlI3Vwge68lV8b3b44/w7LbZLCx
	 18SjjQhdRvivA==
Date: Tue, 18 Apr 2023 13:10:25 +0000
To: usrp-users@lists.ettus.com
From: mamuki92@gmail.com
Message-ID: <cTP1TtPMiJonsOBo3o49irLHhqoSmt2VLCkk4WmdRk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 5b303415-ae20-774e-f874-20bc81279f5e@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 6UE6MROZHXLZ4WQM4IP2BCGZNEQMINJQ
X-Message-ID-Hash: 6UE6MROZHXLZ4WQM4IP2BCGZNEQMINJQ
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 not powering on
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6UE6MROZHXLZ4WQM4IP2BCGZNEQMINJQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1681015690282473935=="

This is a multi-part message in MIME format.

--===============1681015690282473935==
Content-Type: multipart/alternative;
 boundary="b1_cTP1TtPMiJonsOBo3o49irLHhqoSmt2VLCkk4WmdRk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_cTP1TtPMiJonsOBo3o49irLHhqoSmt2VLCkk4WmdRk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thanks for the answer, I=E2=80=99ll try it.

Kind Regards

--b1_cTP1TtPMiJonsOBo3o49irLHhqoSmt2VLCkk4WmdRk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p><br></p><p>Thanks for the answer, I=E2=80=99ll try it=
.</p><p><br></p><p>Kind Regards</p>


--b1_cTP1TtPMiJonsOBo3o49irLHhqoSmt2VLCkk4WmdRk--

--===============1681015690282473935==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1681015690282473935==--
