Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA36E75F8F3
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jul 2023 15:54:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6BFD0383EB1
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jul 2023 09:54:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690206854; bh=V+eaSon46ufR47QFC2kRSrQnYWIupxg4li5IHElTnRQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=NsQwYUp4glOXgjL3vKhpiHTuIdzHP07nldlOZqVEA7hl24mwUg2ojLQnlu228e5UE
	 oF+ZApVQyc49xI77DxlOKAjdeYK/oPoweSup4Hut6qe7ULmPAVQdpMFp8Uqhqqljig
	 V6XNLigavU1j9pHUtSrqoBFgn362/F0s6/2bwILSvi0rtmNXuZ52nVqwZFuncwb91D
	 XmMDL1Tg0UhNwxK3Bj5UfyKRI+X35EzhBFX4EQqI/z/NVXdu6PCGmnFJxWtwnwF3bP
	 X0mLi0KkUfGOsdpO/EwA/Y95Pf4Qfdg2uMWUMhKeJbMPn72LesnBvK/9My7jjd7tIg
	 t4lsMpjtKPo+A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 47B19380F19
	for <usrp-users@lists.ettus.com>; Mon, 24 Jul 2023 09:53:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690206838; bh=H0dtNxZ4RytX6zkDAXf9+ESxzDVRtIhjDBTJpPby90Q=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=FmQ8tGqTr80KTItgbFiqXjCwektjFdAtqGEHUImR5gaXY0L82ZRGtpzmIc9AMPqXz
	 LmzWfXX/kyIpndcs8pLSFRTbiOST8VdJqzVStHBfkQm7c3LXk9ldTmH6DvkVED/M4Q
	 zuGpc2Re6DWYtFXwo60zssij9QVNYWf3EZ8xJhB/Q/+Pktk2bpgvW2pUZZbmwS2MDa
	 xtzRTvKTiEwUl1TGuJQY8JFkafox4uP9BgfqOEAU+pKZ0qeQdNMqB2CW4XcfFz1hbg
	 6c46c5ItMqqtco+9erb+qZlk+yky9VdqAYTYGszpjikX4sLKvEzZvqJE8qRo2zxq7/
	 0zjVOK5H+jjQg==
Date: Mon, 24 Jul 2023 13:53:58 +0000
To: usrp-users@lists.ettus.com
From: david.fernandes@viveris.fr
Message-ID: <9XyKVsBtoUT7SLXHKEMLVGI0HsaCr0w5iHveiLByHPQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 64ac7448-9e4a-215e-3906-ebc654bb0269@gmail.com
MIME-Version: 1.0
Message-ID-Hash: QHKWDKKXB4IUMXASHARHJWKY4Y3S63DI
X-Message-ID-Hash: QHKWDKKXB4IUMXASHARHJWKY4Y3S63DI
X-MailFrom: david.fernandes@viveris.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: num_recv_frames
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QHKWDKKXB4IUMXASHARHJWKY4Y3S63DI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2684010377479698397=="

This is a multi-part message in MIME format.

--===============2684010377479698397==
Content-Type: multipart/alternative;
 boundary="b1_9XyKVsBtoUT7SLXHKEMLVGI0HsaCr0w5iHveiLByHPQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_9XyKVsBtoUT7SLXHKEMLVGI0HsaCr0w5iHveiLByHPQ
Content-Type: text/plain; charset=us-ascii

Hi Marcus,

The value returned is 2426666

--b1_9XyKVsBtoUT7SLXHKEMLVGI0HsaCr0w5iHveiLByHPQ
Content-Type: text/html; charset=us-ascii

<p>Hi Marcus,</p><p>The value returned is 2426666</p>


--b1_9XyKVsBtoUT7SLXHKEMLVGI0HsaCr0w5iHveiLByHPQ--

--===============2684010377479698397==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2684010377479698397==--
