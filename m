Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 368B498A69A
	for <lists+usrp-users@lfdr.de>; Mon, 30 Sep 2024 16:05:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F0F82385571
	for <lists+usrp-users@lfdr.de>; Mon, 30 Sep 2024 10:05:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727705148; bh=2ivsgoeDaIp6cgcEX4JCMWByUc1ocX9uUtktifPcd+w=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=Zl83nrVphJ4LSubU8mXPEumyKpv3XbIvqWkkA3AxZYlxeRdFwJ/O/JiRqlJTOwZH4
	 Y0MSYZvDNxf3r5hC1mMB9VFvPR34qu7SMnSPK6IpQlT5CUunpwZh6hByA0KYtlPEaX
	 GpGo7Aqwu1nTCClX+KPYodSUKOlTSIcQbA2cCikTfho1Lrmeb2ZrbZdGBWn0ec5UO9
	 oCl+x2uhkYmYO68H/1C2mXNMlCQGagVDzzwcIkSHBWmMMfZP5O4VjvjhGXA+DgICMS
	 h5Yn84Np8+GC6tSTNAhr8tGKzHMAY30L9js89uo/BIg0tYDoWF8wxKkp1AXMGYA72j
	 qW1OADBkojp5A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1D17D3854A4
	for <usrp-users@lists.ettus.com>; Mon, 30 Sep 2024 10:05:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727705145; bh=JuZrgAr4tO7eHpLOIxtk4ZRYB+0E/rYJWsAxTdlDht4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=0fyD5u5MuPE/cRq0t1K7vodO1ESXAXTw2BkUpdUB4vFJGmUN6s78CIpcRTjR4Vzxc
	 uXaYaYTKNXSr8Bkmtd3AJIy+tIzH5wA9QgC3/CKF+tJwWcOYpGNBqq3Ypu3SJ+vCaD
	 tybcCvobRpOyXT7wp/9Re4XdW+bi88uLPwBVWgmAgzVjkV/XwV8D3OZOaOvlZYJ78k
	 8HAsIPWnDu9p88/UjvlFUfhpYHhoGjWzLluw4ztbAFxgy5qMki+JWlZaDIhiRZsziD
	 JHbpORrM0YeV5IKLDq/9jFlocsAYzC/3TaWknZsfdhbgZM2ELwMF1BcMI/9Y9eloEE
	 8uvUm7ATb68Yw==
Date: Mon, 30 Sep 2024 14:05:45 +0000
To: usrp-users@lists.ettus.com
Message-ID: <Gkl893xWgZWj4UDsn7YJDkQPJN0TR7IO7eROIy5X30@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A7XR4nzaM=Dy56b9_3L7YPZXoFkXkfTBaPo0=w4ABBaPA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: YOSKKGTE5N54KNTNUDYBNOEUNPSZTGGS
X-Message-ID-Hash: YOSKKGTE5N54KNTNUDYBNOEUNPSZTGGS
X-MailFrom: william.haftel@bluehalo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble controlling GPIO on x310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YOSKKGTE5N54KNTNUDYBNOEUNPSZTGGS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Will Haftel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: william.haftel@bluehalo.com
Content-Type: multipart/mixed; boundary="===============2767338466892544403=="

This is a multi-part message in MIME format.

--===============2767338466892544403==
Content-Type: multipart/alternative;
 boundary="b1_Gkl893xWgZWj4UDsn7YJDkQPJN0TR7IO7eROIy5X30"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Gkl893xWgZWj4UDsn7YJDkQPJN0TR7IO7eROIy5X30
Content-Type: text/plain; charset=us-ascii

Yes, I was measuring the pins with an oscilloscope while the application was running.

Maybe I am misunderstanding how the pin mapping works.  Does (1<<2) correspond to Pin 2/Data\[0\] or Pin 4/Data\[2\]? When writing this code, my assumption was the former.

Thanks,

Will

--b1_Gkl893xWgZWj4UDsn7YJDkQPJN0TR7IO7eROIy5X30
Content-Type: text/html; charset=us-ascii

<p>Yes, I was measuring the pins with an oscilloscope while the application was running.</p><p><br></p><p>Maybe I am misunderstanding how the pin mapping works.  Does (1&lt;&lt;2) correspond to Pin 2/Data[0] or Pin 4/Data[2]? When writing this code, my assumption was the former.</p><p><br></p><p>Thanks,</p><p>Will</p>


--b1_Gkl893xWgZWj4UDsn7YJDkQPJN0TR7IO7eROIy5X30--

--===============2767338466892544403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2767338466892544403==--
