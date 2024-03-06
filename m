Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 050D8874252
	for <lists+usrp-users@lfdr.de>; Wed,  6 Mar 2024 23:02:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E68F9385482
	for <lists+usrp-users@lfdr.de>; Wed,  6 Mar 2024 17:02:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709762574; bh=otP5o3+guOn7P5x4u6VUnNml2JFlFWu27Txi/a0Y1tU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=veWIQAQkgYIVjQZBTFV8PwWUkk7vfQNL18Lp/5hu/KCK5axE9VnIZ02DyERb28quq
	 dPI+6EkjfzCX6qaEa6gOissTbw8QnG9Tz4TM4EV5E9E8h4kw5RPe8d17IUjo1wH/TF
	 LCBEGb6pNbAbfyXZ6uUbZMCqW1oeKN56iDhn02qcxteLPnkqe4b/67KgAKxY3DK3QS
	 SYRRglAfOmy/LTktY4qAn0OMnpc9kIczhURw70gYqwnq4Lp9LBQGgw5dZgv9yiNjp7
	 iCz5MwITrD7rLyoTbz/zhPExmw/iv+zsCwhx3/8CNV9X4hzUt49DnlQI4/hS3GQ4zg
	 Az7eXuD7iA27w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 14250385576
	for <usrp-users@lists.ettus.com>; Wed,  6 Mar 2024 17:02:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709762523; bh=hY/UjtEdMbXyDxiljTJ03Goo3whHZW6Yuf/FWYjkJBY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=iSi/1kFtT3CBUaOLK4zSo3SByOvaqlMt7uRSHlHNyjmJFNq6WNiCNprv8VxTm+7pL
	 SZP6UD+RO13OralnnjkqgI1W/pDa0pnLfWgjdE1i5n/Lje6ClcU4LZWOJdmu6qVXIo
	 JtLDUh2PV5clTSOWzYnNSzUKBcOQ2/y1WuWeAdPfhXKjbl2oRLzg2qFyD3rsparANC
	 98Ks3R1GgwrtH6eo7yvLmQa9M/OrdgB3TShuOBoVz77cwYoZnWRRV4QK4FvSqYZieC
	 XFKRtQoUp9f0C5cBP1BnCPzPVGYl/wzGr5R/TMdsQJLMyxtIRl13ZpL4NS1cuQgear
	 uuvGteCOGv/+g==
Date: Wed, 6 Mar 2024 22:02:03 +0000
To: usrp-users@lists.ettus.com
From: pav.vieira@gmail.com
Message-ID: <DXqddbquXjsPjnaVFxPY9x2JfSaayRo4pHfgsSnjqs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: nbyxsho653l7zdicq47vtmjxy2ryocmtyu3znw4a4ex4augemd@es2frdzrnmro
MIME-Version: 1.0
Message-ID-Hash: WRPIYFTAQ3YTOHGSZGTSQD2EKOIRHZSJ
X-Message-ID-Hash: WRPIYFTAQ3YTOHGSZGTSQD2EKOIRHZSJ
X-MailFrom: pav.vieira@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OFDM signal transmission by x310 presents a peak
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WRPIYFTAQ3YTOHGSZGTSQD2EKOIRHZSJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1882282231005617310=="

This is a multi-part message in MIME format.

--===============1882282231005617310==
Content-Type: multipart/alternative;
 boundary="b1_DXqddbquXjsPjnaVFxPY9x2JfSaayRo4pHfgsSnjqs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_DXqddbquXjsPjnaVFxPY9x2JfSaayRo4pHfgsSnjqs
Content-Type: text/plain; charset=us-ascii

Hello Cedric,

Thank you for the comments and observations.

I'd like to know if you managed to obtain information about the calibration process?

--b1_DXqddbquXjsPjnaVFxPY9x2JfSaayRo4pHfgsSnjqs
Content-Type: text/html; charset=us-ascii

<p>Hello Cedric,</p><p>Thank you for the comments and observations.</p><p>I'd like to know if you managed to obtain information about the calibration process?</p>


--b1_DXqddbquXjsPjnaVFxPY9x2JfSaayRo4pHfgsSnjqs--

--===============1882282231005617310==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1882282231005617310==--
