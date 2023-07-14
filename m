Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BAC753188
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jul 2023 07:51:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F8FE383B8C
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jul 2023 01:51:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689313901; bh=xf0IaieYaLWEb5aGdSbLKLgeUqI1/t7bM+dxoNuCctE=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=SmEGSqAdYz3ZocFp49feqp6RfwbYh06tPMYG7FOlMuzjq+165JUzySa4AknSO3xuO
	 1V/BoS1O5f+5mZAeEX25vloHyr45YDml1+Ep7UaSN4rcE1nQyAMRmBiJ52R4VIfC44
	 VJwLGhY7FdpAmgMfHdoVVRALs2gBa+vJM/xACSr/6uUryLHDPok8Rxuuv5W0L93U2C
	 yVpw845VyBNkstImfVDfUS4nNh+cyqLgVKgc2epYWJ1kaKWpK9mpaHamjCA60xJJxX
	 KnlFXa3xjHAYxdx+dG2F3rl9QNOr7h9lefxmWVB1owiPMAVACQpP6jxApR3xFWswHX
	 w/6u1ChoPpliA==
Received: from sender4-of-o55.zoho.com (sender4-of-o55.zoho.com [136.143.188.55])
	by mm2.emwd.com (Postfix) with ESMTPS id CC263384529
	for <usrp-users@lists.ettus.com>; Fri, 14 Jul 2023 01:51:04 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; t=1689313861; cv=none;
	d=zohomail.com; s=zohoarc;
	b=M2mrUVTL/u+Ne1ND529OnfJVPZKKfczM2HPd4lX8hC5Tz6tYz1SPxHYzZ+oWmd0Fcxn2UA5C14zGfuybAIySLN0p+AeH6C+WdPbMcbGpfRXCFUXZynF4a8L61Muk8m1QijenTSvw01bW5wzmTzqNWiPoPxxH7Ck9X0bC9DkUfX0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1689313861; h=Content-Type:Date:From:MIME-Version:Message-ID:Subject:To;
	bh=WXl+S3DTI/symfzcDQsvjeITvf4DbJJpWiEZFC+ZAyI=;
	b=T4tvaAKjky8QynxFEDXSi3DTnwf+LV3QyvL4BrgmqzpDPYoH131l3qAR0lHCpTryvMF0al/DNLVgD/lqt82qHg6SBhBbywhDX1ozHyjGkQHQj6kc8ipU39CRtzAiFxLeFQGvhEAoGZJWWlAMvMLjpxXRFc/GP0kloluSL62RoZI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	spf=pass  smtp.mailfrom=jgallegos@uberasch.com;
	dmarc=pass header.from=<jgallegos@uberasch.com>
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1689313854379161.89571958981935; Thu, 13 Jul 2023 22:50:54 -0700 (PDT)
Date: Thu, 13 Jul 2023 22:50:54 -0700
From: Jack Gallegos <jgallegos@uberasch.com>
To: "usrp-users" <usrp-users@lists.ettus.com>
Message-Id: <18952f3c350.b3f8b5c9203231.324478805634366465@uberasch.com>
In-Reply-To: 
MIME-Version: 1.0
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Message-ID-Hash: PFXVDVLY4C6JOWTTTI6PR5T7OBMLY3ES
X-Message-ID-Hash: PFXVDVLY4C6JOWTTTI6PR5T7OBMLY3ES
X-MailFrom: jgallegos@uberasch.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] sc8 OTW Format supported on X310?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PFXVDVLY4C6JOWTTTI6PR5T7OBMLY3ES/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2944226553533305507=="

--===============2944226553533305507==
Content-Type: multipart/alternative;
	boundary="----=_Part_661027_2016772731.1689313854288"

------=_Part_661027_2016772731.1689313854288
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I am trying to understand the OTW formats available on the X310. Does it support signed complex 8-bit sampling (sc8 wire format) for a receive stream? I am reading forum/listserv posts from ~2018 saying X310 does not support it on account of the 10Gig link being enough to stream at 200Msps @ 16 bit sampling, thus 8 bit sampling to get a higher sample rate being irrelevant, but I wonder if that has changed since then. 



Jack Gallegos
------=_Part_661027_2016772731.1689313854288
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head><meta content="text/html;charset=UTF-8" http-equiv="Content-Type"></head><body ><div style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10pt;"><div><div style="font-family :  Verdana,  Arial,  Helvetica,  sans-serif; font-size :  10pt;"><div>I am trying to understand the OTW formats available on the X310. Does it support signed complex 8-bit sampling (sc8 wire format) for a receive stream? I am reading forum/listserv posts from ~2018 saying X310 does not support it on account of the 10Gig link being enough to stream at 200Msps @ 16 bit sampling, thus 8 bit sampling to get a higher sample rate being irrelevant, but I wonder if that has changed since then. <br></div><div><br></div><div class="x_1509065667zmail_signature_below"><div id="x_1509065667"><div>Jack Gallegos<br></div><div><br></div></div></div><div><br></div></div><div><br></div></div><div><br></div></div><br></body></html>
------=_Part_661027_2016772731.1689313854288--

--===============2944226553533305507==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2944226553533305507==--
