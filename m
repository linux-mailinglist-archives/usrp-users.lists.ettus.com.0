Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D81589B50
	for <lists+usrp-users@lfdr.de>; Thu,  4 Aug 2022 14:01:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BCE09383BCC
	for <lists+usrp-users@lfdr.de>; Thu,  4 Aug 2022 08:01:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659614466; bh=qG3euSgwLpNIGX9IVYMo5JreiuDQKZBaCyutT0DJcuY=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=yWyQQOGorp4/hm04adldzDLOIRx5ygUdMwJYxoKDvo6NmxS69wqDA7q6/O4yKwdwa
	 ZlC8NHoLRcVqQp7fiGtPJO+n3YYXae/GXqHmf59lwnP4ZNDZDLsIqXQEArp9hZ2Bsy
	 /zS3Vs33Drh4lKLUFVZp78v7+rXOU3si22X7xlPW3HuRIMViDa51xVB97ceTacXRIp
	 DBGgyc3PJ/2h1DGGvLEkwpjx3DjJdNncd3am2+OXHqM/sRchyqFxCv2jiIH2m0Adm/
	 BpsraCvGaKevMKAxJHIyAXIU2g20WRbBpO21gt+lTtTr68hJmf/6LBveNyzoxMMzY7
	 8PToSCvDWsPfg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 14B41383846
	for <usrp-users@lists.ettus.com>; Thu,  4 Aug 2022 07:59:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659614387; bh=r8sXT+Xav4hXx7KXeRhJq7vdPG1yPw1LF2OvO1QyUMY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=yD3L4ZONPBroehNGOufKAMwQixZA32o8j2Y3y829/K5I6s7Cplstvrmmf6kf9NdB1
	 cN5p3m92Kmyrd4V2lylYI5WPu/DD87hNgPlw8NbtFRsCnjupJmke3MGGY5viNdtR77
	 rzQgFqYZBQAFQ/+QCshwBIcDGfUBX+Pj2vYl4qNjzSsVo9QlI33EdrQWMGGckIWCH0
	 TX9VbKfJ6Dt/QLHWQLe73LEr978e3aAa/Q2Mz9p85lCAcAaMAAqIVI6Q5ZxxOv+/P3
	 l0h88hw+CAWMWyYiYBij7x9faNRFAAxON1bnTgpsYhdHpsHTYBl3j8rENh04gWZVRf
	 No/ldabaMhwtw==
Date: Thu, 4 Aug 2022 11:59:47 +0000
To: usrp-users@lists.ettus.com
From: henry.powell.xx@gmail.com
Message-ID: <Cgl4ujGqfFEb7EnpD2l6KQVk3itGjw4v0XBhMrZtENk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAAxXO2G65Td7RVEfWZcPHb43VEjRX3=zjm-J0H6UrRS4Fe2vqQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: HH5DRN7DOWRT7TQHGIQR7473BO77DODS
X-Message-ID-Hash: HH5DRN7DOWRT7TQHGIQR7473BO77DODS
X-MailFrom: henry.powell.xx@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Decreasing Power at Higher Frequencies
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HH5DRN7DOWRT7TQHGIQR7473BO77DODS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2661802308805878374=="

This is a multi-part message in MIME format.

--===============2661802308805878374==
Content-Type: multipart/alternative;
 boundary="b1_Cgl4ujGqfFEb7EnpD2l6KQVk3itGjw4v0XBhMrZtENk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Cgl4ujGqfFEb7EnpD2l6KQVk3itGjw4v0XBhMrZtENk
Content-Type: text/plain; charset=us-ascii

Sorry for misunderstanding. I think this is my fault. But as i mentioned my first question, when i say cable connection, i mean i connected tx port to rx port with cable. To see the device settings clearly, i did this. Also, I have b200.

--b1_Cgl4ujGqfFEb7EnpD2l6KQVk3itGjw4v0XBhMrZtENk
Content-Type: text/html; charset=us-ascii

<p>Sorry for misunderstanding. I think this is my fault. But as i mentioned my first question, when i say cable connection, i mean i connected tx port to rx port with cable. To see the device settings clearly, i did this. Also, I have b200.</p>


--b1_Cgl4ujGqfFEb7EnpD2l6KQVk3itGjw4v0XBhMrZtENk--

--===============2661802308805878374==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2661802308805878374==--
