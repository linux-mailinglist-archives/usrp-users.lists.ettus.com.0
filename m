Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C8ECE860366
	for <lists+usrp-users@lfdr.de>; Thu, 22 Feb 2024 21:02:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D1FF438505E
	for <lists+usrp-users@lfdr.de>; Thu, 22 Feb 2024 15:02:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708632169; bh=WoYxbYT1uzhSEJFs3dSbIaN5PFBn/M6Y5LyVYToBfdQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Ex7lrd4D7KnV1BeyoEDkaMoR8XptxcBTo9bU7a+uXUpe0/5bNqo7ZM1jSz1WSwrzn
	 ZnwbSJTYt9FYVgcmLuPdl6q+UWMOzxNEdAccGFN3vzVmzt6CNzHGW8vp1thmYqgI3H
	 APMBRiDMfvpIJA8l6eE4e2CcuOHgqAUjWClNDB3VtOpYDfC8ELKiI5F/GHMDd7eiOA
	 RUd6UAqbarRemLYiG1h73W0riH0prlzOFktE7FCzVRzlkLyPhKWo5fl7whAkM0O3w/
	 SIALpBtX/Z0k/DN7lNHEjDZzgOH/jr7+iIHH5caXgZ8epd4k6bRgUy69BgNwCKhUzR
	 Gj4NsOANJ5eLw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9693A385061
	for <usrp-users@lists.ettus.com>; Thu, 22 Feb 2024 15:02:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708632139; bh=qSexigz5FBoXy5M2n6za5aDWWc4fk0uIL0PdMB6yIUM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=crroodPBbbyiAxVJOgbyuHx6sUjxXd/aeWJEkYbGENtC+NWJaDKYXrkqYxKALykUU
	 xKR9gVdYuYMmkMVxGx2d7/6eEpQGDAdtc6RkNMV/VtzWdu1YlEM/FbM3sOOCfHr/RV
	 C0F3XbOaNv0Xg3AiqtTKLCpwWLN82xCc+XSMr6yPGVjVUfcs935fO1p84+abSaGRFv
	 a5Y0w9Sy+wAFiZCc7EgRAjtOeWqnsseLhQoi8LF1PB6dfiLHy4QBeROf0rPwCaP3hy
	 4SUefHjRqoxxJA+F3xgtNKYj+WAzKm2Ev9di9Tpehq6HD9wLgepYO44QcvP9SXPV6l
	 NXzr5pCit71pw==
Date: Thu, 22 Feb 2024 20:02:19 +0000
To: usrp-users@lists.ettus.com
From: yguruprasad@umass.edu
Message-ID: <sgLYQoviDbE4D0bKPSiS8DoUMu3GmqpEZwzthRxU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: dc4RBex73kHOWDTF6WJbKQT3WQ5m2wMRf7FoMY9qBM@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: TTT6A6YADZG7WUJVATXIGD3VXJRYW4GY
X-Message-ID-Hash: TTT6A6YADZG7WUJVATXIGD3VXJRYW4GY
X-MailFrom: yguruprasad@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting started with RFNoc block (adding an additional RFnoc block )
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TTT6A6YADZG7WUJVATXIGD3VXJRYW4GY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4204116785644825523=="

This is a multi-part message in MIME format.

--===============4204116785644825523==
Content-Type: multipart/alternative;
 boundary="b1_sgLYQoviDbE4D0bKPSiS8DoUMu3GmqpEZwzthRxU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_sgLYQoviDbE4D0bKPSiS8DoUMu3GmqpEZwzthRxU
Content-Type: text/plain; charset=us-ascii

Could anyone guide me to fix through the critical warning?

--b1_sgLYQoviDbE4D0bKPSiS8DoUMu3GmqpEZwzthRxU
Content-Type: text/html; charset=us-ascii

<p>Could anyone guide me to fix through the critical warning?</p>


--b1_sgLYQoviDbE4D0bKPSiS8DoUMu3GmqpEZwzthRxU--

--===============4204116785644825523==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4204116785644825523==--
