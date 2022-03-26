Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5074E8337
	for <lists+usrp-users@lfdr.de>; Sat, 26 Mar 2022 19:24:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6D971384ADB
	for <lists+usrp-users@lfdr.de>; Sat, 26 Mar 2022 14:24:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648319086; bh=Xs0KpqqgEiCIKrKz3bG5ibH2tTKzqHdPNxTSi7XhUEA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=k83/bsQnUlTRdYJG9Mo6W1r4GYuqPs8qVsdqlHt1jA2nUDB8V5Vb3jNSDQpqu5Uw/
	 Iesc9mhNZVu/RjRT5HOU+g3PyPBVo1i0fx3jwFp50jZPrYo7+jMDedetyVhwtfZbgJ
	 8vU9jau4hNQ/LjMIFef5Wj1TvpQjP01MxkW9TVEdLAAeRX4qv/M1InZu1En2V+Joz5
	 N03mIhMvB0KsplGhaqM/6a2hS9oELliHxCqaCqlBzVhD+iVj5DUHlfrMH6uaxApaAA
	 uF3U1OhOf+EiuSzDbwChwedSq5B3TJUkCWYHEsBZWnv7/ax5VcSsUew2o+CFUywASO
	 4dLKhvN09N3zg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C11CA384788
	for <usrp-users@lists.ettus.com>; Sat, 26 Mar 2022 14:23:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648319025; bh=O2Ya16IJmXfWgthuZJwGCPOfsDbCxvoD3UPGAJFrhv0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=bU0tHdTeowJhGn/JeORuCq7GeSBnuZ48YAFg+SE1vwdxyGa44urTzoehL5avahIql
	 6jTidXWhQ8rUs+XSeUK9Dkpyzv7UmHMflEIj9LTw0IHK63opaFnmbsDlc6TjmSb5x2
	 XaMtzjPempHNXV7gJ9qvOZyxqdxkzIPD2RULD3VSHi0Ux+Hnxi4oC/rxPqLPb8g1j9
	 xbGjPkoewTjhxQNHn89AYhGqo+WRTcxRNRUi7hNv2AJYH9Cma6pVT/HJj4nFVWJ2jb
	 9dhc9C4Q6pDukeLGsX7R5lT+6qNaJL8GuRe3UqPtipm2gdbVAE2UfFvwyrnAXRSPyj
	 opIPJ6aGWhMOw==
Date: Sat, 26 Mar 2022 18:23:45 +0000
To: usrp-users@lists.ettus.com
From: don@commlargo.com
Message-ID: <rXKQUBubxgDuZnG7F5ZcNXzbs6AyVn7eTnPVrqevPEk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 41a1e0b9-a58c-16f7-f3e4-0fea36e1f49b@gmail.com
MIME-Version: 1.0
Message-ID-Hash: SRWDA445G6L3PQUJTSLVXRABMOWIWDI2
X-Message-ID-Hash: SRWDA445G6L3PQUJTSLVXRABMOWIWDI2
X-MailFrom: don@commlargo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD_IMAGES_DIR and Ubuntu 20.04.3 LTS
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SRWDA445G6L3PQUJTSLVXRABMOWIWDI2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6680024485977511514=="

This is a multi-part message in MIME format.

--===============6680024485977511514==
Content-Type: multipart/alternative;
 boundary="b1_rXKQUBubxgDuZnG7F5ZcNXzbs6AyVn7eTnPVrqevPEk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_rXKQUBubxgDuZnG7F5ZcNXzbs6AyVn7eTnPVrqevPEk
Content-Type: text/plain; charset=us-ascii

Marcus - you are terrific!  Thanks! I had never seen the udev instructions because they were in the gnu radio installation instructions.

--b1_rXKQUBubxgDuZnG7F5ZcNXzbs6AyVn7eTnPVrqevPEk
Content-Type: text/html; charset=us-ascii

<p>Marcus - you are terrific!  Thanks! I had never seen the udev instructions because they were in the gnu radio installation instructions.</p><p><br></p>


--b1_rXKQUBubxgDuZnG7F5ZcNXzbs6AyVn7eTnPVrqevPEk--

--===============6680024485977511514==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6680024485977511514==--
