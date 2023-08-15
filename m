Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4505577C9E5
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 10:59:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4BC85384989
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 04:59:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692089988; bh=5YVwMQ8ZTk4KjSA1XZdknLov3mGj88jqXqzYnKM8sl8=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=WWBWwGExNG6Rayv2sOoaPqCvSKIqD4fUVB8hd3XtBYKgGrKkaCoXiKvowaP8/UG2C
	 V/3MHBm4ioaJEOzcAciXI7LYqIiRBSJIMhkDoLjw+SqcKJjW9yC3BC7I7QkInFAkqC
	 44g2bssZmfZHghfCw43IG0hlTv+BQb4VX11E60p/3hSvxf+yHhfcGonRr1zInXsO41
	 okcZwTO0Pbp1zgsD9vEUEBOURT2xwt2VZ6W3hsc3GbOfZMpijRb+FpdPQtUuNdcg5W
	 KmUpeKA/krjS8vMBAd+nkzFQvFQsd807Md+7LjA/X8l8heoXJe56V1tCPja/zSdFWP
	 LxrbsmZSGAPOw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 67E8F384218
	for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 04:59:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692089976; bh=5UMA2dD3o3BjiFre84nQ7A+YuhvpPEfGJXGjix2jlp4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=vxquABxKgDRUCluvx5UL07FK2QD1RmukarlkM2vc7VCZc/wPI5zHDsXjFZEEBfN0s
	 rwWU6dvQE2mSLOwjxc1jToCmX1b+yMPZblWMCVr+wldap+R0kBb/H5apXGejc/8OPd
	 AUOJ5U5pvs7ofkJYas5z8pG/6e9xhn/tgMLunSxoIAd21QZ4k/I/AZCH4yiIbz7Drn
	 9R6Clu4mIGgJcQrC1KMQVtHJJPc0ZYeUOf10jOkK/WjtWgdIr5X6mooUBSkRsiJjI3
	 HZ5y9CMnJC2NVvMvYneeIjaTPEyEIXy3JVdtLfjKhnyAX9bWszqh7jvtfbCDvymHZK
	 uRjEEsXOpjQGQ==
Date: Tue, 15 Aug 2023 08:59:36 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <HA4er9edQROsDVH0nr98fPmvbH4qRoTG2yIw2p9Ow@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAEtk-vU2oUedb9wutZLcQhJBSXJN0Gob6WAxmUtVTs-66sa3Cg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: WF6E63HFG7OA57HCYEZLOOFSV5CY4KRH
X-Message-ID-Hash: WF6E63HFG7OA57HCYEZLOOFSV5CY4KRH
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B210 not found and power cycle needed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WF6E63HFG7OA57HCYEZLOOFSV5CY4KRH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3471886539074767538=="

This is a multi-part message in MIME format.

--===============3471886539074767538==
Content-Type: multipart/alternative;
 boundary="b1_HA4er9edQROsDVH0nr98fPmvbH4qRoTG2yIw2p9Ow"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_HA4er9edQROsDVH0nr98fPmvbH4qRoTG2yIw2p9Ow
Content-Type: text/plain; charset=us-ascii

Hi Fran,

Check out this thread, I think it might give you some ideas:

Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210.

Regards,

Eden.

--b1_HA4er9edQROsDVH0nr98fPmvbH4qRoTG2yIw2p9Ow
Content-Type: text/html; charset=us-ascii

<p>Hi Fran,</p><p><br></p><p>Check out this thread, I think it might give you some ideas:</p><p>Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210.</p><p><br></p><p>Regards,</p><p>Eden.</p>


--b1_HA4er9edQROsDVH0nr98fPmvbH4qRoTG2yIw2p9Ow--

--===============3471886539074767538==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3471886539074767538==--
