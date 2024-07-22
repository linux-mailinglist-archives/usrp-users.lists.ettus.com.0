Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C229938FF0
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2024 15:31:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 25998385180
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2024 09:31:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721655112; bh=sW8RWGkbLDoR7DOieqO7SJx47LK8UXq5GU09sDd2+mE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=wMjVWkjv4JiW6+bUiRyWon67iuvsJ5s+fCT4dpYrj6xORAETGza1t/TL/0KAK0C7B
	 7dTH1BzE8f6kDk8laiDV9zOasEI06+Atk73iWrNzJ3Z8lG0ZPbmeEcF7nHNXTWsEep
	 TwUotBXIOlLq9+mLLI5RwKpvq+1JgeM+kTttVsPKpYZXB0kmoLKBefdktKM6AXNHrF
	 1pdW34B2my5hFI3jS1AUcjn4hG+TpdrXINLaYWMMjp4RUzCsg+BLt691+4G7YDtxHw
	 zbl2aFZSj33Fc2ccMiDRGu0QK+nCqXfn5RWA7AhM6cqBWNil3tQuGbAz/7WnrJLUXf
	 DrgS1l2mzjvCw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C985E381410
	for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2024 09:31:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721655073; bh=Y51UAJlQCt8YKBUKfWPpRHu9ePQ6N14GNL8Cytq0zcQ=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=l5SgHJVerWEjMvYfdtpaFuQdTpsit3A32RwTpYES0owZ1XN/Kiq2OIhowqbSN9Rqz
	 LTFBoPctC1PJyqpR3zDb3DlsFL7YZvFfrXBWVWVDwKMv0tYh1brOZKS3RDRggkr0PM
	 mzaau1yfbA/M9lqp977wdeGRkVMv2ri1GmCn7ObRQbM27Ds4H4oIRxq/404cTQcDDc
	 0GOQVoNjo0phGIInG4EURndnTAZ0MvBYIq8T0dflhImzUDzwrBRnI3TeuAUdBbW0J5
	 884rLK1+jLR5ub7WA4pszuEbrdsNa31ACHDyoCEKrlXgCSy8HbrcvP9IE0d39p03lP
	 hLE/zQkghtFjQ==
Date: Mon, 22 Jul 2024 13:31:13 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <2si54p3O7ZEPgU3Sqb6ANlYM0MnrN9GMgBIVkjMx5eM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 82dcadcf-c91e-4a20-8183-908b9e9bc754@gmail.com
MIME-Version: 1.0
Message-ID-Hash: LSMQ6K26ZKS6X4FVSBDA45LBVW32LB5R
X-Message-ID-Hash: LSMQ6K26ZKS6X4FVSBDA45LBVW32LB5R
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Buffers - 200Msps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LSMQ6K26ZKS6X4FVSBDA45LBVW32LB5R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7554098300229826881=="

This is a multi-part message in MIME format.

--===============7554098300229826881==
Content-Type: multipart/alternative;
 boundary="b1_2si54p3O7ZEPgU3Sqb6ANlYM0MnrN9GMgBIVkjMx5eM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_2si54p3O7ZEPgU3Sqb6ANlYM0MnrN9GMgBIVkjMx5eM
Content-Type: text/plain; charset=us-ascii

Hi,

Thanks for the answer in 2).

What about 1) **FPGA Rx Buffer Size:**

* What is the FPGA Rx buffer size on the X310?

--b1_2si54p3O7ZEPgU3Sqb6ANlYM0MnrN9GMgBIVkjMx5eM
Content-Type: text/html; charset=us-ascii

<p>Hi,</p><p>Thanks for the answer in 2).</p><p>What about 1) <strong>FPGA Rx Buffer Size:</strong></p><ul><li><p>What is the FPGA Rx buffer size on the X310?</p></li></ul>


--b1_2si54p3O7ZEPgU3Sqb6ANlYM0MnrN9GMgBIVkjMx5eM--

--===============7554098300229826881==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7554098300229826881==--
