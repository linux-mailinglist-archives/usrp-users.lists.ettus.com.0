Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C666CD151
	for <lists+usrp-users@lfdr.de>; Wed, 29 Mar 2023 06:56:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ED238384521
	for <lists+usrp-users@lfdr.de>; Wed, 29 Mar 2023 00:56:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680065785; bh=X5lNwfcDKDIVJz4m6/pqKZgvQbZi+3DSlYoAArOgs6g=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=sjLKwHKG+r2fMZm3o3zQNo6SHJ7qDBSYbwTO+gAXtjd3IuQLjkFSYE2vrCkWKXKYc
	 Cs14Vt4mTLy7OA+U62Z2b1vQ6cbMQEevaUjt4qjAbbbgDeWSx7aUcl7LFHzudBgNrV
	 knz1hY4OQuSU9WhgUz2v4pqDnD7Vk/6ZhXKVS0+Bg546lGIf/Rac+NBsVuCBNZi2g9
	 oQcQfWOs8sqwwotVw+XDJpsVkBQzH0qyV1axOnaVmIJdxH+qVL4NdsbdWLIl52EffO
	 KSHP20qWm/JaB8n7bufOTFXgDO0NsSNcjs7+zA7d7EKSSdVA+GJnNjBLyOgdsVwrjy
	 FuvRIt6GWzmMw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E45A63844C6
	for <usrp-users@lists.ettus.com>; Wed, 29 Mar 2023 00:55:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680065732; bh=aFaoa3dri+uZ+MBlc6a7bBXmcAiHrx6bBK1aPv0yvgU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=IKQLrH9RHxrpSmeAOL1/hzgE1LlWhtpG8idfn/dcTBTTYlTGUrM0Xk6UQk+/2Lylg
	 BmGjVeeGbPZcR2VnAGpXsI/zslf9HtGRpFKwVI7kCI/Tz3sr591rSVqyuqQeGCUs+a
	 jZiUHv4yV2Zy9Oql1MvaHH393N3Co+AI6dFPnLp6njKkwJ03x3KCAoI5CZW0LUDpkC
	 zF8BXDEcCttQiMBM8tb7o8ISFEG0tZHF1f/EBmkrGD0GnpEXrAvrGZbAbDP55HWJuL
	 OjtByzAkeV1M2mQUTktNdgZQb2hkq2/7K4W2vf0amKULYgFxM9/niqk3Xhn6EpbiXP
	 TUvoxQ8socaaw==
Date: Wed, 29 Mar 2023 04:55:32 +0000
To: usrp-users@lists.ettus.com
From: soring@ayecka.com
Message-ID: <MPjnaCSAM6hIS109EGVUdRi6T27gn9G1erdzzFrDR4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTTPrPhwXKH2Zj3hq6Ba+ZkWkd4-MAsRy-=6rNWczfuA3w@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 2ZBTJ6ZB454YXDXSHXVQ2WCZSS2UUZFK
X-Message-ID-Hash: 2ZBTJ6ZB454YXDXSHXVQ2WCZSS2UUZFK
X-MailFrom: soring@ayecka.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini i very high lo-leakage, image rejection and aggressive DC correction.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2ZBTJ6ZB454YXDXSHXVQ2WCZSS2UUZFK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4155526375716629865=="

This is a multi-part message in MIME format.

--===============4155526375716629865==
Content-Type: multipart/alternative;
 boundary="b1_MPjnaCSAM6hIS109EGVUdRi6T27gn9G1erdzzFrDR4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_MPjnaCSAM6hIS109EGVUdRi6T27gn9G1erdzzFrDR4
Content-Type: text/plain; charset=us-ascii

Thank you!

--b1_MPjnaCSAM6hIS109EGVUdRi6T27gn9G1erdzzFrDR4
Content-Type: text/html; charset=us-ascii

<p>Thank you!</p>


--b1_MPjnaCSAM6hIS109EGVUdRi6T27gn9G1erdzzFrDR4--

--===============4155526375716629865==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4155526375716629865==--
