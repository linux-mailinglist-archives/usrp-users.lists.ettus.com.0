Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FD884F88F
	for <lists+usrp-users@lfdr.de>; Fri,  9 Feb 2024 16:30:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA3C7384FFB
	for <lists+usrp-users@lfdr.de>; Fri,  9 Feb 2024 10:30:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707492603; bh=XtQ/tce+/pR7ACbR/z5a4joN+e9E9yCAZZ/Ua9qdOMM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=HN7a6C7NuasEGyPfs0upewfvAZwnDgo4PyYuBCH9ic1rew6h3GlxQBXC6oFLsfBgM
	 sjxI9PC7d1e9oLPssr62/YBRpQncub3kK0uabCBRP4sM63dydPQEqz4EAN5JaPoBKN
	 vdeWXlviFvJD7CiImd2eouw1gY4em/4ZY9Wl3sg4+LWV9LimRinYjvvCaN79We5z8S
	 fTEIeUOkxnXFjH2pK7fRJXeUdy3SJ+jcTQ7qy9NyzHxm7SRfGQclcfp0w0+dQ43VZV
	 cShxKZO6dqmw64fskwmttMb3Zg1risZQ9Vb+4OXcMP4Go9ZFBq3EB6e3SHY5YUsDrV
	 uPv54Ttmy6mQg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B8EC384E45
	for <usrp-users@lists.ettus.com>; Fri,  9 Feb 2024 10:29:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707492589; bh=uHPQzdXlXyjFaZ7sMeP07oQ3of9tjBS70QDNxV0gMno=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ac3NLIl2Aso1fy1Bm0aqNpmlBLOWRoVmBAOh/4VttbcPRzQf+H+/CEQEEqoQ8zjgt
	 4b/t7E7EoH1tu4tPQynxxzY2B4/Zm7+aB4lPoKV8pMZnqXMMgcs6XMV3+p5hFKAy9v
	 R/8aOLn4pukpBZwwYdMmPp8NMDZ9LgPDrUlHpH8U7ZRZlpMKaN8/58jiz4dYXyGkxp
	 Eg9eBkXCQJzuV2V/oqECYBgvypal7OBMDh/RdDFDl0BIJE7P6SOZdx1LUlf0fG7fyx
	 I+YmOYPTPs+uM4F8lcwmiyfxYBSV0ftxd/vAxUkIynv8dn75cyjjV+x5K0bEtiHkF0
	 siV5hJfRSgP/A==
Date: Fri, 9 Feb 2024 15:29:49 +0000
To: usrp-users@lists.ettus.com
From: speik@hs-bremen.de
Message-ID: <P6yvVNjmUeSK6Lzm17nnokGxeTv6acaF5nOAS6Ec3s@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: b70389b0-ae5c-45d7-9b5e-037cc2637980@gmail.com
MIME-Version: 1.0
Message-ID-Hash: CM3S56H7PETKJEEIYXUSSZF7GK7UUUL6
X-Message-ID-Hash: CM3S56H7PETKJEEIYXUSSZF7GK7UUUL6
X-MailFrom: speik@hs-bremen.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310/UBX Tx tuning issue introduced UHD 4.4?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CM3S56H7PETKJEEIYXUSSZF7GK7UUUL6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3330276116932883540=="

This is a multi-part message in MIME format.

--===============3330276116932883540==
Content-Type: multipart/alternative;
 boundary="b1_P6yvVNjmUeSK6Lzm17nnokGxeTv6acaF5nOAS6Ec3s"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_P6yvVNjmUeSK6Lzm17nnokGxeTv6acaF5nOAS6Ec3s
Content-Type: text/plain; charset=us-ascii

Thanks so much 

I was not aware that there is a version 4.6. I am using the uhd bundled with Gnuradio in Ubuntu. This is version 4.4

I will build  the 4.6 version now and this should solve the isssue. 

Soren

--b1_P6yvVNjmUeSK6Lzm17nnokGxeTv6acaF5nOAS6Ec3s
Content-Type: text/html; charset=us-ascii

<p>Thanks so much </p><p>I was not aware that there is a version 4.6. I am using the uhd bundled with Gnuradio in Ubuntu. This is version 4.4</p><p>I will build  the 4.6 version now and this should solve the isssue. </p><p>Soren </p><p><br></p>


--b1_P6yvVNjmUeSK6Lzm17nnokGxeTv6acaF5nOAS6Ec3s--

--===============3330276116932883540==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3330276116932883540==--
