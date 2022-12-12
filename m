Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1CC649F52
	for <lists+usrp-users@lfdr.de>; Mon, 12 Dec 2022 14:01:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 80A2F383F87
	for <lists+usrp-users@lfdr.de>; Mon, 12 Dec 2022 08:01:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1670850104; bh=7pKTus8I5OrgGwpeve5CmlqK+TPoKDcHNy1pSbiICK0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RZh6L5LRUC9Y3MkoNoZgFG6l9QeF3UzVSTUNr2Vvy9zAUotUXAwGgFsaAVSlExi+A
	 vnru9SQ7Qq+fgzx7KW8XvzBMQttH7nKYNisZ1fmmLgbunCMo6Xf3m+FfDckN3TShYC
	 zXBSkCshV5kcu7tvThJqXTzcmOXk2wu/60PGtYJHr2wZBUXjlRttxaCgAeQXhirAGh
	 8qLcv6CglGKiDL7iT7dG3U3Bne9c0Ja6nj51LlYuld4lfz7BGcxjc2maKUjJJg5ctp
	 unbNdcuJkcUl5vYtoBtMdOBfRPucnZrqEswJZ7a20dDTjL5fAHIgw28fz5WIFbnqnt
	 FQLuXrMue1b6Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AE6D4383D87
	for <usrp-users@lists.ettus.com>; Mon, 12 Dec 2022 08:00:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1670850004; bh=cD8MDoyFonWEKBuRRTMWJKdjrLOXaWSkFaq16SiJp3w=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Zjjj4HqHjWQFaQXimaGdc6hYzTG313uH/xAs80SeEGidvxigFOLdyiNrfyn9dhH/0
	 z7H/vyyGJDduTjJ/PXNCGJO4d1lEQE5nvGkQ5+64BZpFhxigPcEfF4k/QXHFf2dxNF
	 WvTVPZLCQUPOFEgVcEr3rixGQYjEJW6dRwLpe/gEo3Di9McgFwoUYWiZi0kaRmQB4o
	 PYDvlPU+4H56QIAHTdRnnSuYVNnwnXHBw1txbQ2juyrlgBg5u6/WevaJapRA0n9z1D
	 HUKFyJwn32XNoEiCDZoY/lq4YiTsjupCj6Xx2r+nB/RvLKx1o0VsKyFN/84Lf2VSfe
	 +EfvRaCrKEyHQ==
Date: Mon, 12 Dec 2022 13:00:04 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <dIW9DX7ULwb2Byt5wRw6sg8JRAravOb8XvFURawJr4U@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAL7q81v51Bp2rGOmKayb9CQHj+0CxK7HpOujWyZ+9skkZSC9hA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: XIODOCURYCSL5RUO75P4AN535FRKUQE2
X-Message-ID-Hash: XIODOCURYCSL5RUO75P4AN535FRKUQE2
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Debugging RFNoC exception "Timed out waiting for ACK"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XIODOCURYCSL5RUO75P4AN535FRKUQE2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8610450349226421443=="

This is a multi-part message in MIME format.

--===============8610450349226421443==
Content-Type: multipart/alternative;
 boundary="b1_dIW9DX7ULwb2Byt5wRw6sg8JRAravOb8XvFURawJr4U"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_dIW9DX7ULwb2Byt5wRw6sg8JRAravOb8XvFURawJr4U
Content-Type: text/plain; charset=us-ascii

On average it happens somewhere between 10,000 and 100,000 calls to set_freq().

--b1_dIW9DX7ULwb2Byt5wRw6sg8JRAravOb8XvFURawJr4U
Content-Type: text/html; charset=us-ascii

<p>On average it happens somewhere between 10,000 and 100,000 calls to set_freq().</p>


--b1_dIW9DX7ULwb2Byt5wRw6sg8JRAravOb8XvFURawJr4U--

--===============8610450349226421443==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8610450349226421443==--
