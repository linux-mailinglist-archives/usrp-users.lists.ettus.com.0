Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7B8A78C60
	for <lists+usrp-users@lfdr.de>; Wed,  2 Apr 2025 12:30:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 55453385CD3
	for <lists+usrp-users@lfdr.de>; Wed,  2 Apr 2025 06:30:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743589821; bh=S/R+MplKRvQSaWA2XUo/FBna40m3rdaRykrPVp0QE8g=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=bHG4hCNYSCPnIvStwDZbopZZe5AyiqIqGhL4vwFa2dl6EopWTyXPsI1PFEKPoNnqj
	 3iou/ZTeMwtyUYeRo4GviEdKRSjbuEfhXpuRCf/0Mojmo8UDUjeJ05jrzolWvtWjPJ
	 qz5kf4nsuKGzyj8OqvpEtVIgpmwA9bYJxH6SG4RgxBG+zzDyxqsZFwg/3GrjuUdI3B
	 OqT7oRaCzdnAEOLQNC90ig12WWQEvNY3o/2llRoV0w0uqeIPpYjjjOx3Z9JCt/nyMv
	 dTg3PGYKpFDDkiFvJzOXsYwt9TpMOFuGXKwnlfoSczkqufBiSwrmpCYYdfwPZDZQA5
	 0Js4auNqOvP7g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F00D385B3A
	for <usrp-users@lists.ettus.com>; Wed,  2 Apr 2025 06:29:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743589773; bh=8Eydp542J0uVdEYBHwf5flYXNaXeK+6atuegyCUPAHo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ljLw+k+DGh/JK9opNblYtwzpMZrYqfDkt0k7pnFzaIC3E7K/0FlRt4bWp1hKQYNC5
	 diF9nhoqqSBg/Dr+zx+1UiHKoajyQknG2tda6Fqeycrx1HcaUKLmmEf03MC+VA69TS
	 iL8PCy/C9lVDCvKIJh2xyzBsNI/C0mKybkA6aWRqhplgFbmj3lEnGbzMW6u6bvfXpG
	 frxibl9G1jtGnIBH+YdlCKDXi9tuc6L0QdN5CQBwtDkc9ImxYc+TOvZg0Jcw5GAQLW
	 wKGhY/5JjhDmsY88bF+HsaDWKW25Ki1+PBARKGVsMTKmNx4pORBGCwjQFOvZtHGtHx
	 Sqq8JuiZIrGfQ==
Date: Wed, 2 Apr 2025 10:29:33 +0000
To: usrp-users@lists.ettus.com
From: carmixdev@gmail.com
Message-ID: <JMqWbvSPBRKayyCCDmZIum8iLocHYI7Jm023Zxfc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A5enZJ-S8hH3VEUw-Hrn7TD85D0FsA5OZ22X496dyYVyA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: OGUEWOOHRWROYKDNIOHERP3VX7CVFCTR
X-Message-ID-Hash: OGUEWOOHRWROYKDNIOHERP3VX7CVFCTR
X-MailFrom: carmixdev@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Monitor X310 health status
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OGUEWOOHRWROYKDNIOHERP3VX7CVFCTR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2333020057368515181=="

This is a multi-part message in MIME format.

--===============2333020057368515181==
Content-Type: multipart/alternative;
 boundary="b1_JMqWbvSPBRKayyCCDmZIum8iLocHYI7Jm023Zxfc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_JMqWbvSPBRKayyCCDmZIum8iLocHYI7Jm023Zxfc
Content-Type: text/plain; charset=us-ascii

ok, thank you, but this api is also available in the 4.8.0 stable release?

--b1_JMqWbvSPBRKayyCCDmZIum8iLocHYI7Jm023Zxfc
Content-Type: text/html; charset=us-ascii

<p>ok, thank you, but this api is also available in the 4.8.0 stable release?</p>


--b1_JMqWbvSPBRKayyCCDmZIum8iLocHYI7Jm023Zxfc--

--===============2333020057368515181==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2333020057368515181==--
