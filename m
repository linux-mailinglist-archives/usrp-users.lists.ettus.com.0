Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F76099371B
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 21:19:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E06E0385AEB
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 15:19:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728328744; bh=0/G31otIbyHaqEhcUnelM2CWPGqbZMpaqf1jH+UZivY=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Ls+ucC96khzjsBPLYsfmzBaTRSCPe1noG8UQCc3Iymi1UgOUdgsco+Vy12fn5UOHQ
	 JIHQ/QTlgkslJs+EeDLz3rObddWPIwYtnqQdXX8L4zwX8GDNB6lJX+KuKS8sKuvxex
	 b2ina0lbHVZQdB7tkkrn0ldavwxJ76kswXUFSqRrTRIkWgF+5imfvpElctYthZ2Zr+
	 dVKMxqA/LRl+hE0VQC1AKwkpnEYZmVz2sBYHOZmq6ozf4wfdh+qRA+M717GNcnrZuX
	 CH+61nBHpzwTz/avULWgk2KW9IW1cAo5knNtsylaU/5iMvtbTErpRcxNbZ+6IHQsJA
	 KUi97O6uX4HWw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A1A0A385A06
	for <usrp-users@lists.ettus.com>; Mon,  7 Oct 2024 15:18:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728328688; bh=0OXbcr5sUMPAKk80ZAt7mPXj+nwb3XFPVB29c7vCkqE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Xj3lGTYxxbO9Dh3XzAGLw89hczCo3/Oksz0e4YO5g0+ET3WMP9KTfLnMKjXJY2xgQ
	 w+b8oFQUxgCBwMimYaMWKcrsqyyw5iQLObxpist+iJ3iimY8lnQ8FsIopTvHENv3bp
	 tI0vDHW2pYZU9/uPA6DPXzlmCV7dJlClfklC0TNWvt+7dvqPvlPmIIusr7bS8X5JZV
	 sC2uQrNUcGjNPfFDttVDYqKozeUnTKFPYQImu/nW3G+/kxVWtjBmjHj596rhn4017W
	 USxgXCp/cmhZ8WXPpaoSUpYSQE1p83w8lO6tnOynbdUyGd+Uht41ddAc+O/qxgpo/S
	 hHkPalaCqfxMg==
Date: Mon, 7 Oct 2024 19:18:08 +0000
To: usrp-users@lists.ettus.com
From: mgarrett@garrett-tech.com
Message-ID: <AQxBA8f9gJJVIoqtdJGLMgzzbYLuLS8VwhgVXzZerc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: iy61ntpl3fkdcDehP1UGblOCRI2WaNGtZWxzQX44n0@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: IW7ZSFOBRLH6AYV75F23CMF5LRF3QENS
X-Message-ID-Hash: IW7ZSFOBRLH6AYV75F23CMF5LRF3QENS
X-MailFrom: mgarrett@garrett-tech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC e310 block yaml and bit image file examples
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IW7ZSFOBRLH6AYV75F23CMF5LRF3QENS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0275200039246497142=="

This is a multi-part message in MIME format.

--===============0275200039246497142==
Content-Type: multipart/alternative;
 boundary="b1_AQxBA8f9gJJVIoqtdJGLMgzzbYLuLS8VwhgVXzZerc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_AQxBA8f9gJJVIoqtdJGLMgzzbYLuLS8VwhgVXzZerc
Content-Type: text/plain; charset=us-ascii

I just realized that this docuement, <https://kb.ettus.com/Getting_Started_with_RFNoC_Development>, and are specific to the e310. is Obsolete,

and reference to the old architecture. 

I will continue to create a custome image.

Thank you Ettus Team!!

--b1_AQxBA8f9gJJVIoqtdJGLMgzzbYLuLS8VwhgVXzZerc
Content-Type: text/html; charset=us-ascii

<p>I just realized that this docuement, <a href="https://kb.ettus.com/Getting_Started_with_RFNoC_Development">https://kb.ettus.com/Getting_Started_with_RFNoC_Development</a>, and are specific to the e310. is Obsolete,</p><p>and reference to the old architecture. </p><p><br></p><p>I will continue to create a custome image.</p><p><br></p><p>Thank you Ettus Team!!</p>


--b1_AQxBA8f9gJJVIoqtdJGLMgzzbYLuLS8VwhgVXzZerc--

--===============0275200039246497142==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0275200039246497142==--
