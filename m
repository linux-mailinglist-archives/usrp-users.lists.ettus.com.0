Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDA29FF412
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jan 2025 14:00:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7FAFF385CBB
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jan 2025 08:00:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1735736414; bh=hCKz3cl93VSNoegPVt0ubUlMFUG2JU1qTDpGmnZSP0o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=NH9ecUZVXIPIuwJiN3McXXyX5H/HtnaXh87+cjNXVnfmFt1oKcmTOjhHQNvJdNQFG
	 uj51Ke2DPZzi6mva3nv0fWKXvf86JZE/fKRT8I8ZQwYMRmKxgByYKotwgGU26qNuee
	 r15zHMEElPrEErur3VZrJCEYppD7Gr/SGX1SsyBl8RBDTiAXXizBNEu8VvP/EEx8Hk
	 ie0LdOfheO4jB+VO+nh6rYM2ur4FrghL9+KCc/Aw3r6O+kvY/SxlBTRPxYKtvNGS9p
	 UTStcF1pghB1MIwhNN3KX8DdMlyAPfDpGRXQD2N4VzjpJB10hPXyPh017EoDrCzZUv
	 xHdeeX4L3SHeg==
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.186])
	by mm2.emwd.com (Postfix) with ESMTPS id 3725A385B3E
	for <usrp-users@lists.ettus.com>; Wed,  1 Jan 2025 07:59:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=xs4all.nl header.i=@xs4all.nl header.b="nJ9lAswb";
	dkim-atps=neutral
X-KPN-MessageId: 3e7d4491-c840-11ef-9de4-00505699b430
Received: from smtp.kpnmail.nl (unknown [10.31.155.8])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id 3e7d4491-c840-11ef-9de4-00505699b430;
	Wed, 01 Jan 2025 13:59:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xs4all.nl; s=xs4all01;
	h=content-type:mime-version:message-id:subject:to:from:date;
	bh=3pO8s0/cjVTFxe7FQ8r1RuJf6sjDeP7zQ42f799SSn4=;
	b=nJ9lAswbK7SOARSPd+I/oJmo2dLVnRtNKjfbOKeFsYSxehbEs3zywDPpkkmAppPOK9AKBRygKYvGu
	 LOFSyxKX1hJgW3gzF7xW1wc0R0pAaanuBhPeNBshacCqB/PSS0qve1c/qz2cQaYmzQHxmgD0NrTTA9
	 ElfnronSxj9KPiqjo+vToBw+c+tSv1eu7eL1sd053R0EvwH2ZzPP8frgiXM5xe3jOqEdQgMs7JZ5hn
	 MjEr7YCTgAYrqrrq9D8cs/0lUvnAH7AZ/GEvf9FllYYgO+ovwV+MtBgjY5JrELgMQIbFHEmB9S6llC
	 +StmzayINOxqVWGOSqJqApDHUQY5fxg==
X-KPN-MID: 33|y2H1v13zGx0o2loVElSmKpZtHErYUWKpH0AXPZT72eTK0biocKUjUU3mlzc1Tkv
 GANfB0RG3RwRGUIAvUpwP2f+8gxJ6RVlTs44R/nChsO4=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|ZsMmJIAcnmesV9sxv4w3npZbXS8+BtG3Z1hoto2bBb/wHeJqm26KZDeNQ0JP+5V
 6JHKz6OYoU9WyW6slfldJqQ==
X-Originating-IP: 185.206.232.5
Received: from vm01308.protagio.nl (shell.protagio.nl [185.206.232.5])
	by smtp.xs4all.nl (Halon) with ESMTPSA
	id 3edc1f71-c840-11ef-8940-00505699d6e5;
	Wed, 01 Jan 2025 13:59:34 +0100 (CET)
Date: Wed, 1 Jan 2025 13:59:32 +0100
From: Mark-Jan Bastian <markjan@xs4all.nl>
To: mueller_usrp_users@baseband.digital,
	usrp-users <usrp-users@lists.ettus.com>
Message-ID: <Z3U8NDHWni9sA_Su@vm01308.protagio.nl>
References: <cd7a43dc-2d15-43c8-a4e7-abde149bf497@ettus.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cd7a43dc-2d15-43c8-a4e7-abde149bf497@ettus.com>
Message-ID-Hash: 3SISXI2E27MVV44SHMDNCWYSEYPZEBRJ
X-Message-ID-Hash: 3SISXI2E27MVV44SHMDNCWYSEYPZEBRJ
X-MailFrom: markjan@xs4all.nl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Thanks for a decade of professional fun! (Or: so long, and see you around!)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3SISXI2E27MVV44SHMDNCWYSEYPZEBRJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thanks Marcus!

Mark-Jan
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
