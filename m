Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 113BD7A4D81
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 17:51:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 35E44384EB1
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 11:51:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695052305; bh=7vZOM05UYHJKZ6BqklBZQJnRPsFqevtkZ9JI8ciQglw=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=xKvDnm7eApha1Oqsdyzf03eaWGtAFT4WnYOU3HUT/GXdR6U19pau+bnFNlKwJaAq/
	 98uEOwB7sJ8MCsXwoc7mh/ZdCorzBlvBKutTyjzz66rZ+mBgT5XZPd436r2m/XgWXD
	 MQlXI/0huaT7Sae1CVdOjfudt4GhO4jRIhK7XAMdTRCnX8ukxY+v7BoGxkEAEM82Q0
	 3gkwaUthgVq7OtF4LBGbltXT4Pq5Bmzopf+KJmSdAT9Izhy35eoxicFwYPQ5cnLe9w
	 nTDuyFfvLjXJPugurT1AsVMj7ZwcCGPS8hZH8ekBWLW7Nu98ER+Zv9yUx9gNYrBVHc
	 RVbOgSof2r7Pw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EDE3B384E1C
	for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 11:50:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695052252; bh=7UtX5xIBltpSBSeYbKZ8TNbgakQ+tpthv8mhQJNqjZo=;
	h=Date:To:From:Subject:From;
	b=tUxTGKbQ0zWfsOGrX3FsL/DleL9OAMpmTC+gvq0xmNK6JJeYH/5aOs//sSsljdMwh
	 1Y/VWkCnD8DT1XaMfOB1cU1+9WK35ArRF3y25yUhzFX3zz+QZ1S3NsEMNk7hrT6hkv
	 Q+L/CqbglOCeVwW9spJVEI9Mpt1L4FZ8SLWssevfy8IKa4+dN+3Ptb62ksfX7PBP8E
	 iFtJq51ky6udirhllYL0luTlGRYiyrYMcfTOrrqluTASFzkSfRgFksRJUuXEVuo1jt
	 orAwYr6ckQkj6YX/bAvNnPPYqn9xN+sMdF/S8EtVixtlMlopll4wBTLpCKG8x94KIA
	 zF7dRQa5EoIRw==
Date: Mon, 18 Sep 2023 15:50:51 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <ezeGkZeXqJ9D0B9XxsU338piJULEKza2zU97q7Qnhos@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: FD4C6GMEQRLN6MBEMDIDK3DYMSV4OFSC
X-Message-ID-Hash: FD4C6GMEQRLN6MBEMDIDK3DYMSV4OFSC
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Changing sample rate of x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FD4C6GMEQRLN6MBEMDIDK3DYMSV4OFSC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0834495337284587163=="

This is a multi-part message in MIME format.

--===============0834495337284587163==
Content-Type: multipart/alternative;
 boundary="b1_ezeGkZeXqJ9D0B9XxsU338piJULEKza2zU97q7Qnhos"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ezeGkZeXqJ9D0B9XxsU338piJULEKza2zU97q7Qnhos
Content-Type: text/plain; charset=us-ascii

Hello,

I am currently trying to double the sample rate of the RFDC, whilst getting rid of Q data. Presumably, this allows me to have a very similar architecture to the X4_400 image, and thus would not have to change the master clock rate or increase the CHDR width above 128 bits.

It seems the best way forward is to use the rfdc_clk_2x to control the output axi clock of the rfdc, as well as make any other necessary adjustments the rf_core.

However, its unclear if the rfdc_clk is expected anywhere else other than axi-stream coming in/out of the RFDC ADC. For example, the block diagram instantiates pins adc0_clk and adc2_clk, and it is unclear why they are needed when RFDC also has pins m0_axis_aclk and m2_axis_aclk, which are pins actually used to clock the ADC.

Additionally, with the new 4.5 version, the MPM runs self-calibration whenever internal clocking is changed. Do I need to take this into account?

--b1_ezeGkZeXqJ9D0B9XxsU338piJULEKza2zU97q7Qnhos
Content-Type: text/html; charset=us-ascii

<p>Hello,</p><p><br></p><p>I am currently trying to double the sample rate of the RFDC, whilst getting rid of Q data. Presumably, this allows me to have a very similar architecture to the X4_400 image, and thus would not have to change the master clock rate or increase the CHDR width above 128 bits.</p><p>It seems the best way forward is to use the rfdc_clk_2x to control the output axi clock of the rfdc, as well as make any other necessary adjustments the rf_core.</p><p>However, its unclear if the rfdc_clk is expected anywhere else other than axi-stream coming in/out of the RFDC ADC. For example, the block diagram instantiates pins adc0_clk and adc2_clk, and it is unclear why they are needed when RFDC also has pins m0_axis_aclk and m2_axis_aclk, which are pins actually used to clock the ADC.</p><p>Additionally, with the new 4.5 version, the MPM runs self-calibration whenever internal clocking is changed. Do I need to take this into account?</p>


--b1_ezeGkZeXqJ9D0B9XxsU338piJULEKza2zU97q7Qnhos--

--===============0834495337284587163==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0834495337284587163==--
