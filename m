Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3186DCC04
	for <lists+usrp-users@lfdr.de>; Mon, 10 Apr 2023 22:05:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 867943844C6
	for <lists+usrp-users@lfdr.de>; Mon, 10 Apr 2023 16:05:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681157132; bh=96TnZXroMx/P55b6hbp1X/mSbUDCVmVdt0p2JrNRh+o=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Rmk+tHbRoYKtwQlXH8oKUsbcDJfTxR4DWOGpYKXbCRxpt3E+S30cFX/eh+nfDYRrn
	 Fqn1vr6aFZ7rqh/qUT5oU9MvFG+c8WHFbahf8I4DD5o18oHTp7nWTab5XN3UQb2/ac
	 u6EmxnDyBCnq/SXwEvDvZNp4kAKjUx8Pr9xiSDAbIgfIC1DG8n1iQNwM+6pKFXaNZ+
	 FfUGagsQ9ZajSmlKmKr26yGBzVHGP57n4G+BNFMURaJqx7w8FhDD5x8XWwmV09WjrB
	 h2H6jf3OAjS2y9kWBY+1OCd8cpmjRoTFrbvaKwTDYFwHVDYeRhmCsV/DLGDaa2LULR
	 jbypLbBnL/3sg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D8CB3844C6
	for <usrp-users@lists.ettus.com>; Mon, 10 Apr 2023 16:05:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681157127; bh=BKMQ1Up6mX2RjMdCTBS6GcDtEuMheqjxV+CLePzUfS0=;
	h=Date:To:From:Subject:From;
	b=X4n6QAySYi4IniWtdDbI9snX1CLVqRUbMhkHG+UqxPwPsGGvW84LYebRu8F2qERPs
	 rMzlxoeUJUJ00GP/Ro7qEnKlpvyTeeIQr7j2cqfveq8QDD/6o0F9jBFZRz8dZ05hMI
	 Zxl7HKDNMMZjzQ4EuqjCH4AfEJd3dWq7t4AeylQiCbLsr/KANguoCVFYFW3QyCAlZT
	 sfINeqrEwKZ79CbDxdIvjEAuHe0aFW5MsP1sT6Wsy1+csQvn10N1oUM/TgeVR41W8l
	 YtfaoDrahjCRGNtYNaQADvDGgNJLTs1kceESzxN8pG9SxPvhtvI/695qGo5zuVt4tO
	 N4k+HJMe4SnkA==
Date: Mon, 10 Apr 2023 20:05:27 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <gUDft9N9yvYDckG3aB4fwToRFd6kCIUc8jqcdfD4Wc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: YPDMBXEVY6WYI5LT4YRHORK4NUHLN7SL
X-Message-ID-Hash: YPDMBXEVY6WYI5LT4YRHORK4NUHLN7SL
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] intel X710DA4 NIC card and breakout cable
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YPDMBXEVY6WYI5LT4YRHORK4NUHLN7SL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2873927329504663209=="

This is a multi-part message in MIME format.

--===============2873927329504663209==
Content-Type: multipart/alternative;
 boundary="b1_gUDft9N9yvYDckG3aB4fwToRFd6kCIUc8jqcdfD4Wc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_gUDft9N9yvYDckG3aB4fwToRFd6kCIUc8jqcdfD4Wc
Content-Type: text/plain; charset=us-ascii

Hi, Does any one can share the link to purchase intel X710DA4 NIC card and breakout cable that they purchased and actually it worked with USRPX410 or other USRP. It is not clear very well through https://kb.ettus.com/X410 or other online resources. Thank you.

--b1_gUDft9N9yvYDckG3aB4fwToRFd6kCIUc8jqcdfD4Wc
Content-Type: text/html; charset=us-ascii

<p>Hi, Does any one can share the link to purchase intel X710DA4 NIC card and breakout cable that they purchased and actually it worked with USRPX410 or other USRP. It is not clear very well through https://kb.ettus.com/X410 or other online resources. Thank you.</p>


--b1_gUDft9N9yvYDckG3aB4fwToRFd6kCIUc8jqcdfD4Wc--

--===============2873927329504663209==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2873927329504663209==--
