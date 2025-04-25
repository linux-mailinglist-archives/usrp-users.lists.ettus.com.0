Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 743CEA9CF37
	for <lists+usrp-users@lfdr.de>; Fri, 25 Apr 2025 19:11:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4A017386486
	for <lists+usrp-users@lfdr.de>; Fri, 25 Apr 2025 13:11:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745601101; bh=+60T+fxe09Ky95bfrE77kRV0YptC5BpTFCttQ6LlYMs=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=jRFCF2zyKVOFKUvTxo1GY9FJzKuTzseWxv5ubdmVa1K32zF2sIqhUaevSR57TMU9Y
	 UT5xSLhqUtIz6mxXfM3Is/j31Beuq/lHYvJ5djqoi+XvU4qqhRL1wkLItShPu3nTkG
	 64H9FFMY4PdSmeVmMNeSrqJLXABW4qkPp6TxzA4tbzQGukqD6Br+hGbxx+x0ivnADk
	 W1avTfGWT6zhZ6FJqo79Mjx+KsMhcbDi+6D6IKuj6LPFLh46eCA404jTSICd/4VYpx
	 uqQiIJEcCrpn+BFyZI5Mi4USEovYZJ3uftPa4tRVUIM07R5oqsnM7yOeVbkokI2+xy
	 aV56djRxp0lvw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EA4D33863ED
	for <usrp-users@lists.ettus.com>; Fri, 25 Apr 2025 13:10:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745601036; bh=Jdb2YAsRqScBoIDx7RscPgLUJsCl5hbZXmhi+poW1Tk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=cMLj9X0Cg1BJIOyT9ORvauU1xGczBNgCqKg6PkGR/7ZqCBRIiwJjfqtqCBYsrsxJu
	 39/cVmDbG6Uexej36hXTRfEY7zM0wbSQaLNN85H+cNTfBV1G2G+NeFu8URUdQ28EFP
	 FSfizKsDxddER7EBwlDm4Vr/XKGxbmLcG8+0ee4J+PxleFe1VDrhvHzD5NNuCKeGxC
	 AANDiFVzGh8TulzHjf65fYfuUj7f1ZOjaXmReoB34SCmzA6wcVf2q+RzPXG9Reg/XH
	 uI5qgmkuqFse2m8sdpw5veN5jKpiOuUWQUIYKGIy6gDtE/SQn4gARybR84K+IZnEAQ
	 MI6carvI8pfHg==
Date: Fri, 25 Apr 2025 17:10:36 +0000
To: usrp-users@lists.ettus.com
From: danielmay83@gmail.com
Message-ID: <VScPoBqdSL1pu7ahJFd2HDH7u61czGhwpeyAhhfqk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: O2CigEgJ8a7bLGXktQhKzOD13gEJky2kI91eo1lycTs@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: ZP2Z2WE5JRGHDS6HQAO7M2FTXZZQ2VC3
X-Message-ID-Hash: ZP2Z2WE5JRGHDS6HQAO7M2FTXZZQ2VC3
X-MailFrom: danielmay83@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: "Connection refused" error with 100G ports on X440
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZP2Z2WE5JRGHDS6HQAO7M2FTXZZQ2VC3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2499901196907622325=="

This is a multi-part message in MIME format.

--===============2499901196907622325==
Content-Type: multipart/alternative;
 boundary="b1_VScPoBqdSL1pu7ahJFd2HDH7u61czGhwpeyAhhfqk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_VScPoBqdSL1pu7ahJFd2HDH7u61czGhwpeyAhhfqk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This was a user error on my part.  My QSFP=E2=80=99s were swapped. =20

My host machine was routing traffic to the correct port, which allowed pi=
ngs and SSH to work over the swapped ports.  This fooled me into thinking=
 it was connected correctly initially.

--b1_VScPoBqdSL1pu7ahJFd2HDH7u61czGhwpeyAhhfqk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>This was a user error on my part.  My QSFP=E2=80=99s were swapped.  </=
p><p>My host machine was routing traffic to the correct port, which allow=
ed pings and SSH to work over the swapped ports.  This fooled me into thi=
nking it was connected correctly initially.</p>


--b1_VScPoBqdSL1pu7ahJFd2HDH7u61czGhwpeyAhhfqk--

--===============2499901196907622325==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2499901196907622325==--
