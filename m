Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CEF6F07DC
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 17:05:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C466138455C
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 11:05:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682607906; bh=MrjWxJjeE/LQuJNY8YgNe+Uud1iyNw1jZa/JaNQECiQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=zmoRIph6hQqM4PORv4BxssqtACw/Jgxrm+pfHm0bf7+uDtsprtcnSgc1sOb7JqkGz
	 wvLkPTJbuB7THwjWabpjXXt/ghE1iVAkppGL0Ag0Oz7Uzn4HUthfe/BfbBkRfCmyLz
	 ZAnw4apEPCquhsL3pYJcfr3soVGnTtFEwGkDHzBIva+EYyUtBnIiBVEJXHsdGsW/RW
	 sSOx429ZA7f/HKKQMJQ/l9zn+2LotMFHaCEfDPSPxx9rvWvOzxiGLXZRocDhcAvKMf
	 sH91NZO+/s6C059aba2NCiLQGddrxsCKPuLhBy8M48PgGxFZS1vD3bfXxC6YbORpvB
	 d1lArtb5zxBKw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F344E3813D3
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 11:04:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682607863; bh=QaGfamN1cfAVryCM3lQn1eM7aMIKia2YSlobgL8QNxs=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=bSinXLQXN5Jo2HI8uXoE6yXURTJ3nH4JhVAnc+fdywOm8PCvsoTbWaOEzxlAZvHvl
	 ZSQ8YQai6u4FS77pUzFSAZmtT1m4x0SM9PXq+m80fZ+KIAnI0rbMsVACkRFreQ9vs6
	 MMWZIRO0M8NGoIq5FUGQYyluDH60MW5IHDGGVJU8mbuFwsVEdy8evWWX+2id5NOilz
	 nK2ruOxXvQi4xPW9rog20eF3j4Tzp7emXyIiE3jcnX+GWzq5koMjISFSI8iVfiBnsB
	 8PuNAUICrjk0AMWSMvXtV9z0GbWVO8QWXr401oNkQaD9qbsOz2RMPV6wFnjrB2KVlj
	 cTf+XXDpOmocQ==
Date: Thu, 27 Apr 2023 15:04:22 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <qt6QMGr6VcwOQO6OJE9gmmsIezETsjiaNm3xO7gJaA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 834f7f2c-d14b-924f-3089-44d5c4025274@gmail.com
MIME-Version: 1.0
Message-ID-Hash: ACK52PFEUHNJDBJNJSVTX3KJ4QDTONF5
X-Message-ID-Hash: ACK52PFEUHNJDBJNJSVTX3KJ4QDTONF5
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: configuring X410 USRP to work with higher sampling frequency/band width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ACK52PFEUHNJDBJNJSVTX3KJ4QDTONF5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1063358194579688904=="

This is a multi-part message in MIME format.

--===============1063358194579688904==
Content-Type: multipart/alternative;
 boundary="b1_qt6QMGr6VcwOQO6OJE9gmmsIezETsjiaNm3xO7gJaA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_qt6QMGr6VcwOQO6OJE9gmmsIezETsjiaNm3xO7gJaA
Content-Type: text/plain; charset=us-ascii

Thank you Marcus,

As you suggested I tried ./benchmark_rate, it works well for my USRP X410 even with 122.88 Msps with only one or two underruns. it seems that gnuradio has problem to providing such a fast data rate. thank you.

--b1_qt6QMGr6VcwOQO6OJE9gmmsIezETsjiaNm3xO7gJaA
Content-Type: text/html; charset=us-ascii

<p>Thank you Marcus,</p><p>As you suggested I tried ./benchmark_rate, it works well for my USRP X410 even with 122.88 Msps with only one or two underruns. it seems that gnuradio has problem to providing such a fast data rate. thank you.</p>


--b1_qt6QMGr6VcwOQO6OJE9gmmsIezETsjiaNm3xO7gJaA--

--===============1063358194579688904==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1063358194579688904==--
