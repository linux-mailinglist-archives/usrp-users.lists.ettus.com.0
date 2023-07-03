Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB805745FDB
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 17:29:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E93983844FA
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 11:29:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688398173; bh=T9XxMb3UbHiTj0iRXiGwfh5i3/WuH774/jDxKNbLS60=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MiR38tSEerk/xLSUcl1IPbjQfxaKMahISq5wbFwz9vSuh6ZewqLrowet0C9GaKI51
	 bRjtFFS3n877Nk4opByNslIgoLqpjveu2HRP6a8mqvhU0/pevpavH8M9Lfu1jRfzow
	 JpdkZMwZ0lyOEbi0xIQSv5uWuvPa8Ebl0MoxQXA0wN40u6ZrDvoAjk+W7Yn4ryXE2W
	 GndMiB0En1GPH3zhocAHUbCao9+atgjiy83deilIKElN5426yA6YpqCak9vbmygcBK
	 wtzCWXnOofPt7YeNz22n70vnWu9Opls4gHNrUfLcFHhZjKB9XRHFXa4DueWCzO1VOQ
	 AozvVdrO9PS7A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5681B384081
	for <usrp-users@lists.ettus.com>; Mon,  3 Jul 2023 11:28:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688398119; bh=TPk4e8RoR7Gl6uan7nW/VQhR3lqNiwxzI66Fso9yTsQ=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=a7FJx64y+tR6gema9eZUWlc3n/rhv0bRcTtnjdac/eskGmJo1FO0qQc60UumF2ua5
	 u8kS9eD1xBCg+3Ro54DQfoByUvrB6H4+B9xXHMH8i2TDBMMN4G7oVbUUJKjhYiWpIB
	 wDgf1uvtYbcLOSWUUo/CGs/P17j+C5s4ATmWvWSTDMJaFTh8OihtB/OhGMakMdXnOe
	 /HjEYRHAj8iSEu5254UcWtM5w4XMSFkbj4OYBqZN2fft6BdFkOvP6W4gH50Ug06RdM
	 lOlopldP6oiOkmAvYd/zM0o19zFJ+vG/GfXBqvge1wGTo7x00x3KmgXLdGwaakoSIz
	 OqV8Hn8nhbLaA==
Date: Mon, 3 Jul 2023 15:28:39 +0000
To: usrp-users@lists.ettus.com
From: jnunez@cud.uvigo.es
Message-ID: <dbbFgDx8BivXcC3oBO9Colf4By4sxTlVYq9a1S6EPU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 666634be-1d43-aae7-f72e-bfe097227c74@gmail.com
MIME-Version: 1.0
Message-ID-Hash: XPESDL74JVJNLTKWUEDA3J2O2DHNZDKW
X-Message-ID-Hash: XPESDL74JVJNLTKWUEDA3J2O2DHNZDKW
X-MailFrom: jnunez@cud.uvigo.es
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Understanding time differences in rx_time
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XPESDL74JVJNLTKWUEDA3J2O2DHNZDKW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2803908584026514496=="

This is a multi-part message in MIME format.

--===============2803908584026514496==
Content-Type: multipart/alternative;
 boundary="b1_dbbFgDx8BivXcC3oBO9Colf4By4sxTlVYq9a1S6EPU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_dbbFgDx8BivXcC3oBO9Colf4By4sxTlVYq9a1S6EPU
Content-Type: text/plain; charset=us-ascii

Now I understand, Marcus. 

There is some way to improve the synchronization scheme between devices? The multidevice approach can be used with two completly different USRP devices?

--b1_dbbFgDx8BivXcC3oBO9Colf4By4sxTlVYq9a1S6EPU
Content-Type: text/html; charset=us-ascii

<p>Now I understand, Marcus. </p><p>There is some way to improve the synchronization scheme between devices? The multidevice approach can be used with two completly different USRP devices?</p>


--b1_dbbFgDx8BivXcC3oBO9Colf4By4sxTlVYq9a1S6EPU--

--===============2803908584026514496==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2803908584026514496==--
