Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C6FB2F0D3
	for <lists+usrp-users@lfdr.de>; Thu, 21 Aug 2025 10:18:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 56557386434
	for <lists+usrp-users@lfdr.de>; Thu, 21 Aug 2025 04:18:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755764282; bh=+fSOEKwuA2gj/vnAm5AKIbRlhw7xptE08zHkD7YVgtI=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=H7+5EySnhr75/eqQe1jeNvscg+ZAwFbBufTHPj2zlHgoqT0KGgFPkxSfy/nIrPFAm
	 v/KlzrYUtTREK1y/m2/OF9taH0wOIYZgaUPSM/Us1yLBrtaLtaYLXYCQ/NPKR2AHwb
	 0xUACvlIhJPSTbqLml6lj+W5PEPCS5o0Ok6B81xmfwVeELFRCYzeKYuAjp+NVXBaBv
	 TGjAMT40DVnnvgMc/E1jRzuOz/lS9btJAdwIvfMTb1CfVRLHdQaqrKjVFBEeqlYfDT
	 HnAvLCiFEZAf1z4z1tOlrovFiLAOqi9fsGc1DT1bD++NEujvuiTCHUryvDOcFIfNMk
	 S1M7Jsh4wQiiw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5CC3E38642E
	for <usrp-users@lists.ettus.com>; Thu, 21 Aug 2025 04:17:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755764242; bh=9vNDgOjMOETeK/IBLkNBoad8tfpBg/IQo+P9EjDzAos=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=BAwFYeYUiH6FaxzPTGcUka+hMvxxxVrVlkn7Oplr5EZntPznTMLYLzWBHkNXHvdjH
	 LYrUZONu+xFZkeMnp4Y/h/6SpQ+3mk2HKbyyS4MZxpawkMra/nLSVGEH7UU8pgW/vo
	 Os3hPQSZKXi4fRUNfSqSWVtRpO6bS/YQGOQdjJK7dd3muv2JUgFtK/9m9Ddo+ySKFk
	 DodXzn+6xN/hiO6pQqL9ZXTPs0vVxG7pA7y/g6rLSpzcMKhypDL9BuwvhcEHDEA2Lt
	 i6BBejdY9wzc/5Le1sNJOydCjlSAhi/l2ra7x82ytFjsu2xnJvZqxscWaayFTDuJyF
	 KkLGYnROc0IGw==
Date: Thu, 21 Aug 2025 08:17:22 +0000
To: usrp-users@lists.ettus.com
Message-ID: <mlDiTtuxkKhC3hQWYSTDxmCpseBBuycGoJYbqpoZA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A5enZJ-S8hH3VEUw-Hrn7TD85D0FsA5OZ22X496dyYVyA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: YOZ6WD4POTOI3SAWPUPPO4AI3ABF4ESN
X-Message-ID-Hash: YOZ6WD4POTOI3SAWPUPPO4AI3ABF4ESN
X-MailFrom: alex.sharma1024@proton.me
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Monitor X310 health status
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YOZ6WD4POTOI3SAWPUPPO4AI3ABF4ESN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Alex Sharma via USRP-users <usrp-users@lists.ettus.com>
Reply-To: alex.sharma1024@proton.me
Content-Type: multipart/mixed; boundary="===============3777177763798816115=="

This is a multi-part message in MIME format.

--===============3777177763798816115==
Content-Type: multipart/alternative;
 boundary="b1_mlDiTtuxkKhC3hQWYSTDxmCpseBBuycGoJYbqpoZA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_mlDiTtuxkKhC3hQWYSTDxmCpseBBuycGoJYbqpoZA
Content-Type: text/plain; charset=us-ascii

What about other metrics? For example, is there a way to know through the API if the X310 is under heavy network or processing load?

--b1_mlDiTtuxkKhC3hQWYSTDxmCpseBBuycGoJYbqpoZA
Content-Type: text/html; charset=us-ascii

<p>What about other metrics? For example, is there a way to know through the API if the X310 is under heavy network or processing load?</p>


--b1_mlDiTtuxkKhC3hQWYSTDxmCpseBBuycGoJYbqpoZA--

--===============3777177763798816115==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3777177763798816115==--
