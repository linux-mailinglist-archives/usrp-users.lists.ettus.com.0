Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEB36ED65E
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 22:54:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AF1F73848AD
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 16:54:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682369687; bh=ITXItAh0SPm1cpWqEqJp6V8xgcnmMZXKg1qZLyV91HI=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=W9EI01Kfk39SNJP8hXoW+B6nqrwrUalpgRg2rVobArigxv8ICZPeMGRiulOG9qCuZ
	 Ht4izmq/CtzfJEd5Du7im39dRKlTo5TSM1vsJzniHjduNFEHr7Vx6PB4ZqVxIPeA7+
	 NYO/DNxP96/av7OlLvk32Jd13oFvH1IcEFc+3fkrFRW0bHZhc2N7k5zJxeoK3NGxC/
	 g+RIgVYPwx4fU4JT015MAOQKBy3lacXKAzotj/9bioPHGcN2a7MhzwzEGE+at6RaAw
	 wkRSFt+3NXYRNBLSIvJaDPMDz2VUWSdHvN141vTrQfGxwVIaMspuvIS/g+2sigWVgn
	 tkswjxRQg4b+Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F991384821
	for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 16:54:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682369647; bh=S+bE4TB2XpHH/JXLb52vWnJFUjeY5m/G1Mu5UEqHnbU=;
	h=Date:To:From:Subject:From;
	b=kAQ2BNYbVPMHcLWR+G8JcScB0QRwt+/Z++G74Mt8aAcg5UBaJJtsBEjzKQkKIkjSQ
	 LCah6D6Esg0D45HksIHQVH2db84BzVC5/KL0yT0jD+OUZRpdaGhJnQMU2VttqNoV/J
	 lUY3Tp6zRY2eC+gnpzuwaHfkXw4FuIxRtpWTkCn5NFVr8C1kjCQK7Mtrt5/17f28rV
	 Ky+UGagXPC0kIXFxc4OjmmtiL44k8GGUmaDci499bEp4VeGuAHcczoXiivO6Y+J5IX
	 oHDFbb0Mxqn8Jbu0nv7aDB1MvlcLUJpzJndMHUT/+V/CAVcFzeO/h5BPIDREw0LPAM
	 k0tEfUNH+v1NA==
Date: Mon, 24 Apr 2023 20:54:07 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <glIKeyAK64GdXagYHgHjJgB2GSdepWR9IiQpcaqGVfg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: QKP2O2VNXL5IMSKXXPSZWNXKWFJDZV4U
X-Message-ID-Hash: QKP2O2VNXL5IMSKXXPSZWNXKWFJDZV4U
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] setting USRP X410 sampling rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QKP2O2VNXL5IMSKXXPSZWNXKWFJDZV4U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6515380428459180931=="

This is a multi-part message in MIME format.

--===============6515380428459180931==
Content-Type: multipart/alternative;
 boundary="b1_glIKeyAK64GdXagYHgHjJgB2GSdepWR9IiQpcaqGVfg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_glIKeyAK64GdXagYHgHjJgB2GSdepWR9IiQpcaqGVfg
Content-Type: text/plain; charset=us-ascii

Hi,

while master clock in USRP X410 is multiplication of 122880000, how I can set the sample rate exactly to 100M in gnuradio. Thank you.

--b1_glIKeyAK64GdXagYHgHjJgB2GSdepWR9IiQpcaqGVfg
Content-Type: text/html; charset=us-ascii

<p>Hi,</p><p>while master clock in USRP X410 is multiplication of 122880000, how I can set the sample rate exactly to 100M in gnuradio. Thank you.</p>


--b1_glIKeyAK64GdXagYHgHjJgB2GSdepWR9IiQpcaqGVfg--

--===============6515380428459180931==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6515380428459180931==--
