Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCA56E6F17
	for <lists+usrp-users@lfdr.de>; Wed, 19 Apr 2023 00:06:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D8F88384120
	for <lists+usrp-users@lfdr.de>; Tue, 18 Apr 2023 18:06:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681855585; bh=iUAaNLiDBXlvA/L4EhvH0lI75l9XEPIch+Qy7nDAxPk=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=zxvBwJtM5ptFzkyqvMdvmcPMzRHvlCvpHcW9JPVlIK2cHItSp8b18RGsDu4fTcBmL
	 OdeAHQB16FpGI4Lx7z57zxvoa4u3toHP8Ow0UCTbct7tEnFXES+91QYXFlFKY6bUhw
	 2hz/hMbUSKrN95tcwjnJfWYGfzW+EyAJNIoq0Qnsq1cjAxgssrvSCk4iCcffL6+LKE
	 ljlxxihrb8d7FtKR09Qi2HWvTVfmvqab/ed6n63ThXOacYpZnFEx5OSLDBIg4jQiVS
	 wwuzFO07ITQRRbczK34eB8kFM0LP9dLxvPffnRyalOUX29UYHafUsksbcJ4qoyT8IO
	 GbP6W5oFe8W0g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 63CDD383FC0
	for <usrp-users@lists.ettus.com>; Tue, 18 Apr 2023 18:05:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681855543; bh=sv3l4vOy96AWkQx7UUwGjB1eXzGjudk1UHdLjLJafg0=;
	h=Date:To:From:Subject:From;
	b=r04LxKScptc2kFPtM0sxhjAQ69NpKSVBGLjIPwvb6fr1SO6R/0Bv4CVhb22ekov3P
	 8iauRoKH8B1WsBKNN5q3p41WZnOLDYdow7gmhZZnoLTS/opU7v2hC+h7TbIUNk6Hry
	 tYmqwLE39lbd/vrj7u9XR+znKsqZgObI7zainZs6+QKd8cmxAphcQEBcuwkBXsVxNW
	 uUmuzSrDj3Z30Z6H2ZcOWIQ6fnmhepzG2YDiva7lrzOnKPQBL7UrGe1KVcL0yytHgI
	 pOm3euCeYp2Bfew5To2wEsh1O3Tdw3Nrr+o1L7HKngInFGRI/dFcoAu0NsHCgO594K
	 8OvX+OWXSo66w==
Date: Tue, 18 Apr 2023 22:05:43 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <Dc8IBNpeZ0yTvGJZLMHZpXFs7rAz9153L2vHlXlN88@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: Y2MYS35UR4BYK2VHDVA4RBYWXXK3D5DB
X-Message-ID-Hash: Y2MYS35UR4BYK2VHDVA4RBYWXXK3D5DB
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Trouble recieving data from antenna
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y2MYS35UR4BYK2VHDVA4RBYWXXK3D5DB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5949643928402698316=="

This is a multi-part message in MIME format.

--===============5949643928402698316==
Content-Type: multipart/alternative;
 boundary="b1_Dc8IBNpeZ0yTvGJZLMHZpXFs7rAz9153L2vHlXlN88"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Dc8IBNpeZ0yTvGJZLMHZpXFs7rAz9153L2vHlXlN88
Content-Type: text/plain; charset=us-ascii

Hello,

I have currently using my own custom RFNOC image. It appears that samples are being collected from the ADC, however, when I connect an input through the antenna, my data samples to not change at all. It seems the data I receive corresponds to when I change the frequency on my local oscillators however. 

Ive tested collecting data with the default images, and noticed that the light turns on next to the antenna on those images, versus on my own image, no light is turned on. 

I am wondering if anyone else has experienced a similar issue and how they troubleshooted it.

Thanks,

Joe

--b1_Dc8IBNpeZ0yTvGJZLMHZpXFs7rAz9153L2vHlXlN88
Content-Type: text/html; charset=us-ascii

<p>Hello,</p><p>I have currently using my own custom RFNOC image. It appears that samples are being collected from the ADC, however, when I connect an input through the antenna, my data samples to not change at all. It seems the data I receive corresponds to when I change the frequency on my local oscillators however. </p><p>Ive tested collecting data with the default images, and noticed that the light turns on next to the antenna on those images, versus on my own image, no light is turned on. </p><p>I am wondering if anyone else has experienced a similar issue and how they troubleshooted it.</p><p>Thanks,</p><p>Joe</p>


--b1_Dc8IBNpeZ0yTvGJZLMHZpXFs7rAz9153L2vHlXlN88--

--===============5949643928402698316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5949643928402698316==--
