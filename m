Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB6252C478
	for <lists+usrp-users@lfdr.de>; Wed, 18 May 2022 22:37:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B3EC23840DF
	for <lists+usrp-users@lfdr.de>; Wed, 18 May 2022 16:37:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652906262; bh=9hWXj9r2GR/tOH9ZoV1aC9jK5JpzXl7N30p/euqiYUQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vzjPLshjWIMk4w1y3LySMKNMRJjKi9ksiGm2IVBy3uia93HjM9WO2YzllHK6YwbBV
	 2SLOHkQfpdgk9TldMX7hvykJRaKrQHsmVUT2ouRoQruFwQixhB+xiSNhRk7R9zjX1p
	 3k1BJIqv/UeuZDWJDEqYi3Vf5ba2rSJ1wvura8yD3LRCY1UYG+zKpkZWJ9D7jonh58
	 sY86TD82B4FW6bjazbqSOB8StBD5zna04HC4+dvt7cDETeyfadiIBK15s8Rfyi/1d9
	 EdwanUCE2sBMAci8z8S2BYy3dis5IZcrXyF28iRvuCESEO4xCcvrS0qlK1fASwSiT/
	 s4K/84aW3dy7w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 14B8C38492C
	for <usrp-users@lists.ettus.com>; Wed, 18 May 2022 16:36:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652906197; bh=CJ4gBVQJEIpsLLohEGMeMHPbPA2pVaYlbvmeJLBryag=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=dnMaHNDnsNm5maDRyQbmsjUZRzsMQKorAIXVZC4Ootj3AAUGT0XH4ORbpVrn31Gf8
	 PF03ha0n8C/ETdaOcfH2lmkXEmZwTQ3uaXo23JpkohN8FMNV+6ohaH2FumQ21shh+C
	 6/POsLiBhjagkA1bQH9EJIcimMyMsY1R19775JYiiQCEyE3vOao99ZkGQI4+yyiOe/
	 b0ltdX/QPlDvfgLZCBAP7j+tySiPkHcBW56AN/WkHYhkFW8gf4qVw/IZxxAMW5VcKb
	 2KR76woDeYAzADrIxxUmij++1ALqW08QsI1y9d/e0HpjoNCGtggqvXVFG7/FUSGce7
	 bpTrj0phCjM1A==
Date: Wed, 18 May 2022 20:36:37 +0000
To: usrp-users@lists.ettus.com
From: ahamza1982@gmail.com
Message-ID: <NkUB2JUA0fKgMalVHEMQ3LKOr2UFlovulM5FX0ygw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAEXYVK4e6vn5r73UTpfbrdU4A31pKkgM0AuU2y+cEyTyfxQ5bg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: G5GHQZXDQD63RPHCKBR7YOMM4O2NTLXN
X-Message-ID-Hash: G5GHQZXDQD63RPHCKBR7YOMM4O2NTLXN
X-MailFrom: ahamza1982@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: b200 mini LVDS Vs CMOS
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G5GHQZXDQD63RPHCKBR7YOMM4O2NTLXN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8659010160291628813=="

This is a multi-part message in MIME format.

--===============8659010160291628813==
Content-Type: multipart/alternative;
 boundary="b1_NkUB2JUA0fKgMalVHEMQ3LKOr2UFlovulM5FX0ygw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_NkUB2JUA0fKgMalVHEMQ3LKOr2UFlovulM5FX0ygw
Content-Type: text/plain; charset=us-ascii

Many thanks for both of you for the detailed answer.

Best regards,

Ahmed

--b1_NkUB2JUA0fKgMalVHEMQ3LKOr2UFlovulM5FX0ygw
Content-Type: text/html; charset=us-ascii

<p>Many thanks for both of you for the detailed answer.</p><p><br></p><p>Best regards,</p><p>Ahmed</p>


--b1_NkUB2JUA0fKgMalVHEMQ3LKOr2UFlovulM5FX0ygw--

--===============8659010160291628813==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8659010160291628813==--
