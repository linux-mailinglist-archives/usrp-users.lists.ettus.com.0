Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8D29390B2
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2024 16:31:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8FCE73850EC
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2024 10:31:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721658708; bh=JzbsuMHRMOk4gS1qyr6THnF0HH6PprQJZf8CVNLoDSI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=g4QNGrq+IxRaZIZdx0C6j1MrxAtJ5s55Ls2Qyc2pQE2N552lT90Ny9+B15NLvBSuu
	 fsS5SGlMogyzDU5K9fBSwFCt5KRSnliyGxyUOPU1nY98V1op3V35+V0iI2VNE7cssG
	 SFwSW5ywdt2c/5aCTH12m79RIJbvCrP99Kh0LsT1L4jSfo9A7vrJ3S/n0N65q2BOm3
	 nCwWd/I+KUFhQRLEdG00tXBiu4NbrfBvU+GSVcGBdn4/HEqphE8CWBVJJ2DLecZ0qi
	 nuSOQGjFsDik0U59EZu9egTWc0SwvqJPY77odp36YOV/9U+0uvaecWXN0I4fbr0lYk
	 rjZClrXpSXd4w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 78D06384DF4
	for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2024 10:31:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721658671; bh=HVvCmuQ1TNrpah6zrLvalzTzKsTq+LtcKyHsAOcTiDk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=iIaXBULSYobBed//XWqVH4xbMndC0rRzB7N2Ph+zPoyvyTf6CBzQ9q/OlI+E1Y997
	 X5709euuo0v7laS+77aYvkG7hM0L+QokaUqoEPgumLf1CwBnuEFo+KGeD+vhKy5cbv
	 uYjEZVl5Teava3f9YPD6gDpMNseSKDGts/6jGd9o86NCjSISWZj+bBRI6HgK+bBu0H
	 LFmUty//NV8a1jazqhqZ2vy4NJEMqy2/fMm++18set5qbMTfXWPphjHIkSpYqAjJVE
	 xph+0Jt+bF9YP1KWnQiZSWmzqxFPY1NjUMSipJ5yRrIu/aFa2KHQmsWcolX31xWtBQ
	 wXbLbblIVSdKA==
Date: Mon, 22 Jul 2024 14:31:11 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <wJhGq44g3AP5afWy4vBErkkWDPuRPgLxnjVxbjUD7c@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=j+6mzzWoTvQQNQSLxobzQ9QrN9dAvDemrafW5h=swTyw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: MWFJS2YWOVD75ZFA2ZDWJ6MOK3HUW7TG
X-Message-ID-Hash: MWFJS2YWOVD75ZFA2ZDWJ6MOK3HUW7TG
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fwd: UHD 4.7 - Building X310_XG FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MWFJS2YWOVD75ZFA2ZDWJ6MOK3HUW7TG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1127587015997250797=="

This is a multi-part message in MIME format.

--===============1127587015997250797==
Content-Type: multipart/alternative;
 boundary="b1_wJhGq44g3AP5afWy4vBErkkWDPuRPgLxnjVxbjUD7c"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_wJhGq44g3AP5afWy4vBErkkWDPuRPgLxnjVxbjUD7c
Content-Type: text/plain; charset=us-ascii

Thanks for your reply. I resolved it once I updated Vivado with the patch from Xilinx/AMD 

https://support.xilinx.com/s/article/76780?language=en_US

--b1_wJhGq44g3AP5afWy4vBErkkWDPuRPgLxnjVxbjUD7c
Content-Type: text/html; charset=us-ascii

<p>Thanks for your reply. I resolved it once I updated Vivado with the patch from Xilinx/AMD </p><p>https://support.xilinx.com/s/article/76780?language=en_US</p>


--b1_wJhGq44g3AP5afWy4vBErkkWDPuRPgLxnjVxbjUD7c--

--===============1127587015997250797==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1127587015997250797==--
