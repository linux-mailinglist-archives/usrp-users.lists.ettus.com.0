Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F088DAC1539
	for <lists+usrp-users@lfdr.de>; Thu, 22 May 2025 22:04:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B52A2385312
	for <lists+usrp-users@lfdr.de>; Thu, 22 May 2025 16:04:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747944279; bh=DYmdfz3GGlNwpoAzAGMAXIw/DeyrpiGkJJj7/xdLpgg=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Ub9khq2Gt9hCGl9cRa9rFsYk5CJuZ4kJF/TsFQJFuaRDZ8lAFsNPw7PhBv6/aI2Dx
	 iORVHNDqersBiLr0j14zWdMeQmNgQSWl5LNBqiume94bb6fyUHNcVsR2ZZIxunZYQ8
	 tw6ThAFvYOovLvTRsQGjL6rslW9ju8Fr9Rf6wQwW8iBWOwxp9NF4froyGXguqpPsu4
	 fkd/jfIuBBdxAEbVmrJbM14I32OBqfnBEQ/g6LO7pDZ+RC15g1hmgdaq8iGixg72HA
	 k4CSWZd4kXZoxLphqXDfxGC1OX6MMe3TS8mGLYaL5Jh9hlb3dBId5G+aF1gbjCgn1r
	 xNkuMQEqzVrEQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1924D380C58
	for <usrp-users@lists.ettus.com>; Thu, 22 May 2025 16:04:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747944244; bh=+LjSnILCsJRN1lvicVqpt77XTRavgT6E9e908onJ27o=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=N6OvX8GQ0iSUp8R5btK+1vipC+fKcx6OFRSEL4R+RKQ8exuIsC6TV+A6YsXC9Ju84
	 vFB5Zza8Nm7uODDhsWKkcl4fRpHsmd6ccdXUPOf3CYFCvqOOl0xBg04RuM+PhYtL1n
	 0Q8Ij0k9+d3op3+ysWKNZaoC7T5Ul+bJXyj56HXSL9OovmZL/faALbLOB7WHMRvWSi
	 xNTVL2l0yZ6MS1yoVT746xy5sEPP+hVblwyYwIfHWzwNPHNKEywrlR3aSKhSaIewo8
	 V5GP1CBV9d6f/TSzRe/Q9k0J7UuNmKU/BuZaXLnaotjD5Vk8AzdCQ8z/TLaeag2kmO
	 lnt8+C49Y38eQ==
Date: Thu, 22 May 2025 20:04:04 +0000
To: usrp-users@lists.ettus.com
From: carmixdev@gmail.com
Message-ID: <roqHID4GPjFp99y3A26r2S66R4zH5iARi7ZKywjsVM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A6o2+=JjRr3rV0Wv0ySMovGGwoZQ7Z+=yd+Y6M44K1omg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: TU5TDVGQ27BHFRFMDCNNLTTK2JILDTE6
X-Message-ID-Hash: TU5TDVGQ27BHFRFMDCNNLTTK2JILDTE6
X-MailFrom: carmixdev@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Signal quality using RFNoC DUC blocks
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TU5TDVGQ27BHFRFMDCNNLTTK2JILDTE6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2758659380154946528=="

This is a multi-part message in MIME format.

--===============2758659380154946528==
Content-Type: multipart/alternative;
 boundary="b1_roqHID4GPjFp99y3A26r2S66R4zH5iARi7ZKywjsVM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_roqHID4GPjFp99y3A26r2S66R4zH5iARi7ZKywjsVM
Content-Type: text/plain; charset=us-ascii

Effectively I tried and I can avoid step 3 if I get the frequency offset with respect to the radio_control desired frequency and then sum it to the DUC desired frequency. 

Actually there is no problem to me in calling these functions for every channel of the DUC, what I was saying is that at first it is not so clear from documentation and available examples that when using RFNoC this is the right procedure, maybe some more examples would be appreciated,

Thank you for your clarifications!

--b1_roqHID4GPjFp99y3A26r2S66R4zH5iARi7ZKywjsVM
Content-Type: text/html; charset=us-ascii

<p>Effectively I tried and I can avoid step 3 if I get the frequency offset with respect to the radio_control desired frequency and then sum it to the DUC desired frequency. </p><p>Actually there is no problem to me in calling these functions for every channel of the DUC, what I was saying is that at first it is not so clear from documentation and available examples that when using RFNoC this is the right procedure, maybe some more examples would be appreciated,</p><p>Thank you for your clarifications!</p>


--b1_roqHID4GPjFp99y3A26r2S66R4zH5iARi7ZKywjsVM--

--===============2758659380154946528==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2758659380154946528==--
