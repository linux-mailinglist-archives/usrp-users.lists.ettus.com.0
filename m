Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC2DA32D94
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 18:34:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 108D738613D
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 12:34:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739381674; bh=gKQPBHF5QdGe8eCK8+x5aeC0v23PJaVtXykAdUBgmFs=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MS67yon+jW2jGl403XP6UJjfJCJAnGY+B6zao4Wi/QCgnV2VXer0y4L/Zf2TBBMpx
	 U3HOq9LXhhQtKHCqW8ah1Dggw2tif2oXVJWhpcJM6kzd8dcUhODUwNFILe9VV+z4dG
	 zhxZDBFV7MazU7gmkFqz33DpgS+Nlh5cAC/6Xrxq8AzKH7k4nq+LV+1gsy5xCuQrUX
	 MRTuNfSkY5qQnujcsdCNDlZyJdxji/H1+hTks5pIQNYDAO8qtM54EE2Kd8HWOZ7ZMk
	 EgfCZMfa4+5mqIgCYIiCWE3Js7DSO3Mx11P3OJrWzHrpAKf8ogQ82W2mH6/wj95Ctx
	 9tDYXdonn3Shg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3C7C1385FCD
	for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2025 12:33:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739381628; bh=DHDa4FEFBYkBFxSaBlSWYeGlLQpRfrvWN0V2ZCIGJ08=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=HwLYcwgbRj2bi6Rbi8X//jgfmJWM2zNjSl7qVM79r79GHZU8E/OA0Sq2dVX5jqMe8
	 hJMs0za1x/KBK4mLGy7I8gt7/4Emc2xGKLax/KuiBKhETtAld1ap+UStj1ykGymden
	 xbAUoZMmYnKQvmCg4MsjXCAjOWAoxbBNJnx3xdGZcKOmn3voztQndMSFIEXBTxETIm
	 t5/PhhiECWi3sDKeIWAMk5QKKKI9qMUg7Bnr2yT4kbCi9l+Of6cu8ibzKTiHPAK9lN
	 6E452PfEl8gHVb/WNn0XK8ZWsO2n7+wB96zCPXCNqbNoCzdg7qdmdcZ+Lk1nwhDJRk
	 F91ygIfEy0iFQ==
Date: Wed, 12 Feb 2025 17:33:48 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <5XpijmrlVZgyHKY7aCbGgLP6MLOFZxBvoRwGWX8Nfk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 3a5a0683-0d3c-41ff-a270-79669564b4f4@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 7DNFCDJV55VCE6I44QXM7OSNVVZO33AT
X-Message-ID-Hash: 7DNFCDJV55VCE6I44QXM7OSNVVZO33AT
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Is it OK to build with DPDK but not use the feature
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7DNFCDJV55VCE6I44QXM7OSNVVZO33AT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0332706280574308280=="

This is a multi-part message in MIME format.

--===============0332706280574308280==
Content-Type: multipart/alternative;
 boundary="b1_5XpijmrlVZgyHKY7aCbGgLP6MLOFZxBvoRwGWX8Nfk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_5XpijmrlVZgyHKY7aCbGgLP6MLOFZxBvoRwGWX8Nfk
Content-Type: text/plain; charset=us-ascii

Hi Marcus,

Thank you for your quick response.

best regards

M.

--b1_5XpijmrlVZgyHKY7aCbGgLP6MLOFZxBvoRwGWX8Nfk
Content-Type: text/html; charset=us-ascii

<p>Hi Marcus,</p><p>Thank you for your quick response.</p><p>best regards</p><p>M.</p>


--b1_5XpijmrlVZgyHKY7aCbGgLP6MLOFZxBvoRwGWX8Nfk--

--===============0332706280574308280==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0332706280574308280==--
