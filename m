Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A953620F58
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 12:43:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F56C38140E
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 06:43:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667907783; bh=Pje3DAiLwlWyJGX8/2DFzr7b+WkRk/XuocDLtxK4FqM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=wiehhjVZZIuZCVYJF7bh0XcfblcirinkIq3A0bUShurLtqDNLTOqv6rhzpcUaBzql
	 +HkYSFy+A9r/HqGXFOkm/f1swZL7AZKUbxDo30SZpXxr8shGgEB3G8ZRPn15mAOSI7
	 x9C21Y4e5SL5c4e7VvXzm+SmPmePyTUL5JremszGd8h3hX3sNxatXc3A7yi2/K9OAb
	 a+m3bfUzRPyBNxkDrA7pj5oR9hbX/3i/Y5fICcqM56Cp+/nYn8sH8ePMmZ2+I04bBo
	 JdPKc8T/6Dxeo7i2FjrmvPvAN0UxHCZCp/NZ74g2E/Ftt43Ds7SHip3QB9+3uL+80D
	 mtKFcut1IduIw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 49770380E85
	for <usrp-users@lists.ettus.com>; Tue,  8 Nov 2022 06:42:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667907734; bh=31iSkPtje4BbDF9OFwyye7e+c98LzQ5CrbYC6bbUb8Q=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=UL0C94a/V3Kr5AOkXY2p4v5t0VDDhtUdLKFlA2kLdj9F9LQ318mrelEgnz8/16K+U
	 lw+UYSIyuibA3f+41X1j6J6TZw5yNqp7XXadZTiKdNkcBZuw+VZLaGGQk6hUIsvWl7
	 X5Fw+iONwwR4h5enp7xMvoTHai9qgpuw5voNqcnd2fHJSHfC+fo4keqgdN+Rysnhrq
	 HF3eTXx6TYWsBgPrrpvebha0PNhvwvjxyUF2R84rgwmuPjuTk54Yt4sPWUUxPle0Rw
	 0YH8b1nd/GB3e40ekZVBQzygQuapEGnv8CyIEyuJ4R8wDjb6CgHECwRu+QpqfcFxOl
	 SnVu60d44Oy2w==
Date: Tue, 8 Nov 2022 11:42:14 +0000
To: usrp-users@lists.ettus.com
From: ali.mahbas@brunel.ac.uk
Message-ID: <gB1FPqDTwPKsxhSmkvTrAeJZy4ehSpXwCnOTjJBEAg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: fa78104a-bb25-a9f4-7571-62722df10075@ettus.com
MIME-Version: 1.0
Message-ID-Hash: TCMGXRHWHXMNHAFXVQVHPK5WMNUWIZWG
X-Message-ID-Hash: TCMGXRHWHXMNHAFXVQVHPK5WMNUWIZWG
X-MailFrom: ali.mahbas@brunel.ac.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 undetectable
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TCMGXRHWHXMNHAFXVQVHPK5WMNUWIZWG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6746671802970435269=="

This is a multi-part message in MIME format.

--===============6746671802970435269==
Content-Type: multipart/alternative;
 boundary="b1_gB1FPqDTwPKsxhSmkvTrAeJZy4ehSpXwCnOTjJBEAg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_gB1FPqDTwPKsxhSmkvTrAeJZy4ehSpXwCnOTjJBEAg
Content-Type: text/plain; charset=us-ascii

Dear Marcus,

Thank you for your reply. 

I thought the NI-USRP Configuration Utility would detect it even though it has a different IP address.

--b1_gB1FPqDTwPKsxhSmkvTrAeJZy4ehSpXwCnOTjJBEAg
Content-Type: text/html; charset=us-ascii

<p>Dear Marcus,</p><p>Thank you for your reply. </p><p>I thought the NI-USRP Configuration Utility would detect it even though it has a different IP address.</p>


--b1_gB1FPqDTwPKsxhSmkvTrAeJZy4ehSpXwCnOTjJBEAg--

--===============6746671802970435269==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6746671802970435269==--
