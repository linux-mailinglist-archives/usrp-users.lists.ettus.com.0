Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2C19FC52D
	for <lists+usrp-users@lfdr.de>; Wed, 25 Dec 2024 12:58:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CAAB638588F
	for <lists+usrp-users@lfdr.de>; Wed, 25 Dec 2024 06:58:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1735127907; bh=oN+hRZZO8FejBJpePdhWs3wcuLzUXk90jkwR6SHkzgg=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=id1l9QBnXIaTTFFa8g+nP0IdQdBWcfH846j1ysw53zuFQUzUyX8HmXYZxKEGbLFiD
	 +djoryhIvWyYeLYwTWbCq0LgJUCoBpNVk/zpwN30ABACcR8zuJKoZsewNe+FMJ62Ms
	 +zQJFU+2WWrGnM9oPClDoRzCj7c7sHaL/LMRkHqtYAHMXAqhXbzkG0RPXIbICCbKgb
	 ZP+l7wY0cO3JkeqAIDPXmcWG8IlFpHUSEX57KoQ30vn64HtSykeV43yCyA3PSJ2kRw
	 XpYRyznpwk17VQhYLEcx0XRl9EfCjVUgkG5C1Kl1ySiYlrazalfVMXSg2D4GJhZLaZ
	 3oifq3sW4mpUw==
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 38B73380DD6
	for <usrp-users@lists.ettus.com>; Wed, 25 Dec 2024 06:58:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1735127903; bh=LD1dijpwo6dqlWFe16OfUG494NzoYPUEoYFdup4s+8U=;
	h=Date:To:From:Subject:From;
	b=KlUDU1+AKrZL3VIW6I8zkv3dG7Ax9loclngaE3bCEexyPPyy8INqX395t2H8iWbRE
	 +fex4MFAVawpVPlTvCqJHqtyZUIugH9Gdgj0V6BroAevCpfBAW8ENg/BXtntplSLCT
	 W+9nl0p7497W8KFBvwQydPWsLQy+ml7TQVLONJPhhyaXs49UtNkEH2A6cFrUAYYZn+
	 W2mzJ6PrMebci0kf5K/HM3hGQ53e1OeLU5y31Wxlzf7WDVYDib+6LbnrZTFaqs8Obu
	 tQj7MjM+3RIJ7b3XBr/aw1zWDstriL/ga4no6Z2AWWOf4octsm8RQSw78aStbTX0wS
	 JrFPATHcQOoGA==
Date: Wed, 25 Dec 2024 11:58:23 +0000
To: usrp-users@lists.ettus.com
From: elkana443@gmail.com
Message-ID: <uemw288PZzJIQnh46YTBMIbaOzotjiFoNP4XHW6DSfo@mm2.emwd.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: FEJH2VYKF7OV5SLLBLICLLXML3EPSD4K
X-Message-ID-Hash: FEJH2VYKF7OV5SLLBLICLLXML3EPSD4K
X-MailFrom: elkana443@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Adding a new block and building an image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FEJH2VYKF7OV5SLLBLICLLXML3EPSD4K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6263935808108737587=="

This is a multi-part message in MIME format.

--===============6263935808108737587==
Content-Type: multipart/alternative;
 boundary="b1_uemw288PZzJIQnh46YTBMIbaOzotjiFoNP4XHW6DSfo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_uemw288PZzJIQnh46YTBMIbaOzotjiFoNP4XHW6DSfo
Content-Type: text/plain; charset=us-ascii

Hi, I'm working on the new version of the UHD (master version) and I need support in building a new block and adding it to a new image

I would appreciate your help.

--b1_uemw288PZzJIQnh46YTBMIbaOzotjiFoNP4XHW6DSfo
Content-Type: text/html; charset=us-ascii

<p>Hi, I'm working on the new version of the UHD (master version) and I need support in building a new block and adding it to a new image</p><p>I would appreciate your help.</p>


--b1_uemw288PZzJIQnh46YTBMIbaOzotjiFoNP4XHW6DSfo--

--===============6263935808108737587==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6263935808108737587==--
