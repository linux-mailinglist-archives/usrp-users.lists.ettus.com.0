Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D987A5783BB
	for <lists+usrp-users@lfdr.de>; Mon, 18 Jul 2022 15:31:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 67AA6381926
	for <lists+usrp-users@lfdr.de>; Mon, 18 Jul 2022 09:31:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658151097; bh=SlQz+HlOHEhPisEXPx0ZfbytbJ0MWo/ERcGkF0zR/m4=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=EVfDFmPSENY32jBWAcmExWi9Ckfzv+6+JNuH2MRMCY2ozIEa4RISWyAVv7iNl7zM0
	 rs3MTPjusRwLNMHjDbX23ImPSD/jMkmqFUSDSmAwzEuJy41KgUegyhbmKJ2loGQXv6
	 H0UWai/cNX8xO1AkN2fI9j19ugHF0MeA76CNvqJn3gTOoqzWQe7ojz7QFwfT3CNrF6
	 Bb4uF8qkKWSrm0J6CmJHuSgoOH8HbUpUyj7kQA5lzqUl8nDDTQ6ef0HnHkRSoMIVts
	 jJoTMHpM5YwDU1yLl3Wz4oxgWBcf4Mhri7O28Og0jCo2CG+I3Nzu3PJKs9FEyO36Fg
	 mGPn/SbUVqcpg==
Received: from mout.web.de (mout.web.de [212.227.15.14])
	by mm2.emwd.com (Postfix) with ESMTPS id B6711381237
	for <usrp-users@lists.ettus.com>; Mon, 18 Jul 2022 09:29:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=web.de header.i=@web.de header.b="NEcIJbal";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
	s=dbaedf251592; t=1658150981;
	bh=eF5x/JxRz8bcLO0PasZhaXQf32Qk/+3clJjLW+1SOuA=;
	h=X-UI-Sender-Class:From:To:Subject:Date;
	b=NEcIJbalPA+dWA6qLr8QeNe3+OtUus3bVFPeUokMsNApcCCYrbQW6NEdXYUhAdvnI
	 cfTnmGvwfcF7Dt+Qc/muoFbc+5EehuTNFPkDlYPSsH97FW/aDyDV55zceQfGdEmrD2
	 rk9ZTWO9ujddS3523lBq0HseeMRwu66ZCC031UdA=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [188.210.45.230] ([188.210.45.230]) by web-mail.web.de
 (3c-app-webde-bs09.server.lan [172.19.170.9]) (via HTTP); Mon, 18 Jul 2022
 15:29:41 +0200
MIME-Version: 1.0
Message-ID: <trinity-c84770de-8031-4fe8-b3b0-728737351272-1658150981340@3c-app-webde-bs09>
From: Jonas Wenner <j_wenner@web.de>
To: usrp-users@lists.ettus.com
Date: Mon, 18 Jul 2022 15:29:41 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:HAF0tWll/Iuq5hJ6znQMY3NvTqibmhqbRUMAVVWl/L4c64qmljbRoDHPOrIZoICWRN5b6
 PDskP3S8VtFFPixOQz5+k3qNKi7bDnZfzGbBBn7d+xwo+tjbhCoHOFFZ46czliC953sWTurCTu3R
 eab0zUV/hCJi4Z4MpCVddTop1COHehRcKUCIJKZD0v/BJB+uNCjCqZoWRSvcF96JWtZt5IHHGqwP
 lj00duohddbHm46qCquK09NWNDrxuVLNQ30T7AtfxiYPj66OzphqzEisdwwbPo8oNkoP6wuEfmZi
 Fw=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tObfCP5fHQs=:6jOZcEyuvsflsALbNUWQ6W
 Ely1WmcliAZTmvuRb9dA+0AIdK2vQCHEnYHL//iE/ndI8io4OBdjTBrgyqnZ+F5xuVpi6mrL5
 JnqjL6BrLvnQtwcx+fuGB4jwN+o+GleTJLPy41H51U8+QZXvHjLo+jkK35KkPujcpBKxMoICu
 sbmG7ycKTCet1S/V//qkxZmaFksRo69GQlNwRXXGCMakhs2UMrGrzt07JGTu50shBGSLakpNS
 Sv9fcrWVNWGlHabEm0KGsvL7pvZvKOxBlXpiwu6ji9OFv+HDy4WX9uSc+dKJCoHsatlSO64Pv
 czSnBF2PK3DeaqyHT5UCEos7QKP94Z67g4QtD8LLzjg+ow9DJH7Lj6oSH88p4LfuMAZyjBaWy
 FXbqlRvTO6Df+QszJNyUIEnd2+CSyCc8gyXc7kb9E8Ku6WFBRVkFaFryYLK55/lNWIw+SBjOx
 qHVMXKCaj2LpdvVmnnAtotQEjl22gJF/eOXtqVGAbw2uFogL76kbva84nXYT7SjHG5UpcaYIS
 /M/D97dSHAgwriFuobMgAFYsvMAFXecCYONxqLurxhweIShd4eYBmTUrpt5148DDBQgrXVUAc
 7g/2uDckkBPDkyyBlh+JRo1ZQYXvORieXWA2M57qe5mGZC7EFSdw6R6vejwcpvmjoTBgKzokh
 8/OSW+ggIr9clJPnfvEzuuE2mwDJKzsWdIT7SnxOtDD6WQsnA1kE+4f2pTY/TfbaBlBbw7uqq
 mF7oPtZnSh/uTc+Ndi/rrchr5tBclVhE/SLnHtZpdHw78zVuKn/sWORY6wUjXWXTRanSdbj7B
 eTthS7T
Message-ID-Hash: YNRCPDTEX5M32L7QICMQUPIOCFM2XQWN
X-Message-ID-Hash: YNRCPDTEX5M32L7QICMQUPIOCFM2XQWN
X-MailFrom: j_wenner@web.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Bluetooth Decoding using USRP B200mini
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YNRCPDTEX5M32L7QICMQUPIOCFM2XQWN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5785731851221450062=="

--===============5785731851221450062==
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>Hi,</div>

<div>&nbsp;</div>

<div>I&#39;m interested in implementing Bluetooth Decoding using USRP B200mini and GNURadio 3.8.<br/>
Ive seen there is gr_bluetooth, but documentation is very sparse.</div>

<div>Could you point me to ressource to help me find a starting point or maybe recommend other gnuradio module you used before?<br/>
<br/>
Thank you<br/>
JW</div></div></body></html>
--===============5785731851221450062==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5785731851221450062==--
