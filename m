Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 446F35E9E57
	for <lists+usrp-users@lfdr.de>; Mon, 26 Sep 2022 11:51:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D0E12381918
	for <lists+usrp-users@lfdr.de>; Mon, 26 Sep 2022 05:51:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1664185896; bh=6ejCNyPgCIHsYGmLdSSTTak4ayxAbxK7FKadFa1zhJc=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PXmDVrYwFODXQWDeM/g6yKGG8UTNkljr4Pr5p7A1WCkVSyxoGZCs+Gvr5R4lcz4QM
	 OEpOOeeLpmdB5ijUr2Xzhdh6s6kZC0SbaS0liw2IUdstZb/wVsiPPQza9p60ODyor7
	 aNRd5mrSVYobNya9045zOCmpbZl+RuQW12CwTozZgTXZ/VeAdH2Kv/9NZt66FJzWZR
	 f+xnqdCgDV2ZTHxRUhi8aIVp4zyJfomcZCxeqvLRoyyiyOOY8Mal+GdOqAxhcyc5CD
	 UcSp5qdNrp7ldpHgQTU+WEzIbPFEPAqFkwjFMcrrAb5BN1ioqOXj+5olk4f5acsXzj
	 mTGZQCzHwLt0w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 84FA5380C2C
	for <usrp-users@lists.ettus.com>; Mon, 26 Sep 2022 05:49:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1664185795; bh=WrCvxKDvix/TBYRpW51t5bwjgokyhP6ZfXZB5zLYVvU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=O/szryJ6br80pAj3ZNK3LJO+FUZP004VMaK+7CjvxgF5KBfogeTZ2Qp+iJMByYs/y
	 i5VXXO1XB2QKTKx7qADDOzKa0mEMR7d0JzTOW+I5pm1y6jAKoVmVuyPRyrKLy7h9rD
	 AXPzyO8BtfQD/4wxA9xi6VwQsdepVDXHD/tKdf7ql6o6uvtG+WxvudI+WDZhqmWTyO
	 aC3FfbsocXWI8GOPdrlZTl56JWuM/MrSk6g0J6tE/ezdL9wTUWBiQv3R7Tj+nxLtIx
	 5bkejw3FhXM+F3zVU1SNAUtXAYt7Y7OwTg8GhCRWUrgMkYa/UNvNEQmzYqouuGLovy
	 Fx1vTkg31B6SQ==
Date: Mon, 26 Sep 2022 09:49:55 +0000
To: usrp-users@lists.ettus.com
From: eduard.sivolenko@ni.com
Message-ID: <YFAlQVVeUhbzsWI0ns4EpSU3HEDt7qHzPb1yNHAIcRU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAGM_aqw7VmAS4Wy4HH-TT8bb_YDykK2kQq2H2iFiZOU8_AQeUg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 6W56DXHSQ5OP6YXV6SOGT4544QTTARYS
X-Message-ID-Hash: 6W56DXHSQ5OP6YXV6SOGT4544QTTARYS
X-MailFrom: eduard.sivolenko@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GrCon2022 workshop
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6W56DXHSQ5OP6YXV6SOGT4544QTTARYS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4373123010615205256=="

This is a multi-part message in MIME format.

--===============4373123010615205256==
Content-Type: multipart/alternative;
 boundary="b1_YFAlQVVeUhbzsWI0ns4EpSU3HEDt7qHzPb1yNHAIcRU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_YFAlQVVeUhbzsWI0ns4EpSU3HEDt7qHzPb1yNHAIcRU
Content-Type: text/plain; charset=us-ascii

Hi John Hodgins,

Unfortunately, the workshop session will be in person. However, I will try to check the requested information and provide the updates.

Thanks,

Eduard

--b1_YFAlQVVeUhbzsWI0ns4EpSU3HEDt7qHzPb1yNHAIcRU
Content-Type: text/html; charset=us-ascii

<p>Hi John Hodgins,</p><p><br></p><p>Unfortunately, the workshop session will be in person. However, I will try to check the requested information and provide the updates.</p><p><br></p><p>Thanks,</p><p>Eduard</p>


--b1_YFAlQVVeUhbzsWI0ns4EpSU3HEDt7qHzPb1yNHAIcRU--

--===============4373123010615205256==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4373123010615205256==--
