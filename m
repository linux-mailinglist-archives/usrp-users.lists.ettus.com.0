Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 099CEA73DB2
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 19:04:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4FDE9385A97
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 14:04:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743098681; bh=ZZo0wkm/t1blyPOs5fnIb65Jzczkv8t66wS17VeZDbc=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=XTDBHfxDtUDr5i4f8zCHhrrPIIbdh6k8dNn2xz+AeVat3hNrvHTjA2YZlRQhFmJ6M
	 4/HLqHoaAK/R0+RzQCCqC8UKmMGobdSUrbX1lnB/ZmUiRRsWgOxOa9+OyxDFhDAugl
	 iS0f15vzi9jjtG/UTQgFtY7d08cnKjdYDfGUQwMdK/W0DuTZzLH9jIRaYXrl6Wz7NQ
	 SqTSw8S8mAwSK6MiOKAH3avDtZ1wt51GfLqGxTar8x85Kaz7senxMQB2fSbq8KTB4D
	 cueVYD95Cmbh7gh6pU3B8paZbYUba3rFu00SY1TZ42wFoW/vGb4NKpaAKq1v1jLWFP
	 tZ6e+5ftV6yrw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A1BA8385631
	for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 14:03:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743098620; bh=Z88QeHt80KfAc4UX4Y35gD8kZQzd7D04ZSm24S5v3Cg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=i4OHE5qzoVwz+zRWAqgAAZlQLOlpXGpbEvtWK03TWkr/nUdZd15KDe8WiL/JAMAvg
	 444Rjs97Gtm2DRstbCXl8P8hbViVLM9K167mTBfLXSA6kmP/8elEUZRvA2Rw79bohV
	 Bn5krJAxBVkZNWCEP1CAPJ/nfHdad1ciQHYw7eBcRwvIHXDGZcZkFv9aotEa9yqQQX
	 LL2AdhpP5TpPlrhynhF2eM1XMzl4O8AUtmu4ePC7C5rEPCKIAGFekCveZtjqicET00
	 iS/dWy+Zfi5eFVxJFaZ8WgjeI164I39zWjfXpVaMKTHcy7q//FRsShBvmZ+vl+Z9U6
	 LRHBkWsKE2y1g==
Date: Thu, 27 Mar 2025 18:03:40 +0000
To: usrp-users@lists.ettus.com
From: heath.j.stamm@gmail.com
Message-ID: <h1IGU1dKBSYyzgM0MVJ4UXaEQ5NdM48p061Suc0ucI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAOEzSFTb_RoOYxYuDzR4HHYQjL_rZz2oXKB9F3qHQ9op3xis+g@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: L4FNITIHCLMST3CYSD2LFFIIN7I6GU2C
X-Message-ID-Hash: L4FNITIHCLMST3CYSD2LFFIIN7I6GU2C
X-MailFrom: heath.j.stamm@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Phase Coherent but not Phase Aligned
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L4FNITIHCLMST3CYSD2LFFIIN7I6GU2C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8962259618119174230=="

This is a multi-part message in MIME format.

--===============8962259618119174230==
Content-Type: multipart/alternative;
 boundary="b1_h1IGU1dKBSYyzgM0MVJ4UXaEQ5NdM48p061Suc0ucI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_h1IGU1dKBSYyzgM0MVJ4UXaEQ5NdM48p061Suc0ucI
Content-Type: text/plain; charset=us-ascii

Great, thank you!  Will upgrade to UHD 4.8 and give it a shot.

--b1_h1IGU1dKBSYyzgM0MVJ4UXaEQ5NdM48p061Suc0ucI
Content-Type: text/html; charset=us-ascii

<p>Great, thank you!  Will upgrade to UHD 4.8 and give it a shot.</p>


--b1_h1IGU1dKBSYyzgM0MVJ4UXaEQ5NdM48p061Suc0ucI--

--===============8962259618119174230==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8962259618119174230==--
