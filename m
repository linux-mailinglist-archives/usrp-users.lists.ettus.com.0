Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D26306D6DCB
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 22:18:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1162F383C09
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 16:18:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680639498; bh=0cbrJ1g+pP9bQ+m4gBGmU0rHxpcwGoQtwslx3tyKV8E=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=TdbUUEUQ572EUnwpiEIqOTbXiL5CTAcKJj0Yf8sxIGKUpYBz/xVexaAxgzpdAmlvd
	 fYpSj/NTESk3GSafKYg79+V3CLaE54YDZeXuEFG7F886jSsuZRzRPF3jpBQtu5yFZC
	 X8tu9gyLyD9o0qqkHthr4cnSUD3ubneU3q8rlvoN/OiY2VI6T+d9hw5bF7tlvqkNIa
	 wUpBIFR4Pk91h+4LU0QNTYaXeWziwmZ/CQGMLqYNJrwjT8cJw1FAF4AiknxOJo6Wu3
	 0cxIN1E+1oZnoJFMo0smjRAItmUBCPaAhkWcFVVhrgV586s62x5vBkv5S0pAeJ7Oil
	 lyoziiRUr/t6A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 35CC8383C09
	for <usrp-users@lists.ettus.com>; Tue,  4 Apr 2023 16:18:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680639493; bh=jmBNvfOagaMjizFBW0oj3fx7X1KhNHLaNBy5AyPqiIY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ooav7e3hivspxDVzmmaeiI51anXlLFgcAac3rbJmk82AgEXQciWIHklzCYXq9JX05
	 u1XdkvZBDIFL8eooP2pORrt+vGgw13xGW+E5Pm6+rTpPGxnzBzljEs+9tPO7XgSSE+
	 SSUQVNVwtpB1oXZa1/swWf00o8aXrydS9pgRATYvyVinyF6s2fA3jlywrw+z+PKTjy
	 WUWx5EjqjjIp/pNT7N6urYwgFdqee0vXa6qvMi/KInu9blsotRw+uJUIvIEJdOdJyY
	 fnsmvYcW9bAZ/QalHQ/uYTvxVw5vyWqXVLEotl2FsUxBCnBfk8WHGe/8LXx3m3LJZo
	 KoxqaNfvZxZsQ==
Date: Tue, 4 Apr 2023 20:18:13 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <Lmp1ZGLqth0m8R2kF97b7tIQnBczJdehIrRpFr88@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTRyJ=379O7m6=Tm1Bfp4b0E2y2mxxw_CmdjLdgQd__09Q@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 6NH7MIL3DQKCSCTK2QRAJ4ZUN6JW6E3S
X-Message-ID-Hash: 6NH7MIL3DQKCSCTK2QRAJ4ZUN6JW6E3S
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Integrate USRP-X410 with XL710 intel PCIe NIC card through QSFP ports
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6NH7MIL3DQKCSCTK2QRAJ4ZUN6JW6E3S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2458207575769485754=="

This is a multi-part message in MIME format.

--===============2458207575769485754==
Content-Type: multipart/alternative;
 boundary="b1_Lmp1ZGLqth0m8R2kF97b7tIQnBczJdehIrRpFr88"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Lmp1ZGLqth0m8R2kF97b7tIQnBczJdehIrRpFr88
Content-Type: text/plain; charset=us-ascii

Thank you so much Rob!

--b1_Lmp1ZGLqth0m8R2kF97b7tIQnBczJdehIrRpFr88
Content-Type: text/html; charset=us-ascii

<p>Thank you so much Rob!</p>


--b1_Lmp1ZGLqth0m8R2kF97b7tIQnBczJdehIrRpFr88--

--===============2458207575769485754==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2458207575769485754==--
