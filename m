Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BCD05B5F09
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 19:17:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 174BE380B52
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 13:17:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663003040; bh=g6I9cpXj42RoW1m0VZ92Cz+68F2DTG3ONGy84gUl60M=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=NiYPtUkjLAkEqfagFcDdIJ74n7zKfhiWj+aU1DEXaggFLBUCoT97o/T8YuWQ4HwRg
	 OixcBx9N07eotY8FLsuIl0EN1pMgtnc3oU14n1xr1Bctt9H6Bv/cTaLBgquGEh7kx9
	 EEdl5EmIAJBwDLMMZcnoR9hRU6EeN/ktOZuxPb4QCFqjsqTocV1bQI47/rnoOsnXDb
	 S+YAxPO96JZUgFY+Zj3AaPCP2KKLj4+n9RtGuYwIuuUztSG1xAUU37Jmz1Ale2CfvI
	 JcVlTR+IgzqLNPGUt9yZoxdVz7UuarHedLyozK3tQll0Ce/noF55EKxsiVY/mtOkt5
	 /7YYP3c1450Bg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DEFEF380AA8
	for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 13:14:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663002888; bh=lLGVZYSe3rF6vb7Wdg3/b2qlfHb15VyadAL/GNi9+Z8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Aa4EXHsnj/3AISBQWg3xgV/JS3CqqPWpn+tDjPE0nyL3tZyaRMf2LywZNK1OxikT0
	 IdL9vXpoJk0Ir6g6ZCGXHriV93i0dJ183SobkTLsmngJZBiQsHhg0q8cETCyR0ucF9
	 0hPqY6A7XCSPmBKZi1exGHxn7Ixnf6nTXwbT6iAU/VohiPOwEw9rL12wOwzxDAHBVb
	 l/WEzx6QzVX1xadBKWbi3RDLXnenEOM/46i4NaT2x5pLb5Tg28Q3F2YUVO5b930JvL
	 rYgpoz3phhamWI8G1irP1dAHRiyKM3QZRrucirzfqIen2uTyiXQwZDa8iTa39QoBvF
	 kDn2WVYc+aDfQ==
Date: Mon, 12 Sep 2022 17:14:48 +0000
To: usrp-users@lists.ettus.com
From: jason@gardettoengineering.com
Message-ID: <4o9FjRTD5uVD9qQuuPAzwpsL0qJb6wIJwGwNJmk4A@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: c2cdd76b-629a-93f2-dd98-3559fe4697b4@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 4AYCTS56UEHLBXH32BOSL6FPE6RQHEHC
X-Message-ID-Hash: 4AYCTS56UEHLBXH32BOSL6FPE6RQHEHC
X-MailFrom: jason@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 sample rate change locking-up
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4AYCTS56UEHLBXH32BOSL6FPE6RQHEHC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0433275025117461958=="

This is a multi-part message in MIME format.

--===============0433275025117461958==
Content-Type: multipart/alternative;
 boundary="b1_4o9FjRTD5uVD9qQuuPAzwpsL0qJb6wIJwGwNJmk4A"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_4o9FjRTD5uVD9qQuuPAzwpsL0qJb6wIJwGwNJmk4A
Content-Type: text/plain; charset=us-ascii

OK, thanks.  I was hoping that you were on to something.  Thanks.

--b1_4o9FjRTD5uVD9qQuuPAzwpsL0qJb6wIJwGwNJmk4A
Content-Type: text/html; charset=us-ascii

<p>OK, thanks.  I was hoping that you were on to something.  Thanks.</p>


--b1_4o9FjRTD5uVD9qQuuPAzwpsL0qJb6wIJwGwNJmk4A--

--===============0433275025117461958==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0433275025117461958==--
