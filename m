Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8090463B748
	for <lists+usrp-users@lfdr.de>; Tue, 29 Nov 2022 02:31:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 042DC384016
	for <lists+usrp-users@lfdr.de>; Mon, 28 Nov 2022 20:31:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669685482; bh=hAezt3LyyyFyGc1Dcs1hJIdsIqIpiH48m4fI6OSO8kU=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=xiUDceInYPxajHNctVEP76Knoa2SNZ6kkaIM/5iMadhAnUXGK4LM/KkdDZk2xOp7A
	 LAGME1VG51LV/L2mHwsu5B2mZaPqfMMr+A9cRPLsOse4HG6CI1I/jwhRIe9vXacTRb
	 drv9Q/kaLZfpw+oZzY7EYaGuABXwqT2CWx7l/OezzxLUXoIEg1a2ypIkZdWRSXVrM2
	 vu594e6apw1doLXTAWy7zkHHvRYOaj8bWjqIdGxdtA0ppQ0y4Edavswp2cLMDE6l3Q
	 rDjaz2JoIOiBNZi8DclE2UF229NiqVbk34KuK/IJs5iKuaGnch6BrCfC1EsnKFg3HR
	 D3+aw/MMD/5Uw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E7D6038400E
	for <usrp-users@lists.ettus.com>; Mon, 28 Nov 2022 20:29:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669685398; bh=OfWACxD9ALB1gMxGhfuK+EMwkBWWsteWWSlwGQhFObs=;
	h=Date:To:From:Subject:From;
	b=c03x+K0VzGIt9rCw7MzEfB5mZWQ7IpnBpsOvGnhD7IE/NeicxSFldunA2tzo4ppt6
	 V35v6vuHuz8KFqFIAYjexLLPQDuo0PBQE6BdzTn/nDut0RquGpOhzwr6uiwnCV8U8W
	 DHMdziCLJYrVUPVA+TQgf14oCiaVicD6K4GEKzunCXMT+Hcze1L/in6OqoUctlQ1v8
	 ++zQBnxLYIiGFKPtaNIXiMMAEuLWdvGjzIkG2BHJdExZb/5PaARYO7WAMI4qJfbWgw
	 pLl1dlst8cEfe7er/1ewbigE0HbP/ehqzpf9/IoaIvZ6Zz+rk17bj+uYwoaXjn+7eK
	 9tAV4a4dSlLAw==
Date: Tue, 29 Nov 2022 01:29:58 +0000
To: usrp-users@lists.ettus.com
Message-ID: <MD7U6L3Js9JcHnIQw5DtSDnJAdG9XRQUjlLmPqTbKSw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: E2BJKVK4S3UOMC4OYHA6EZAPA4MJRDQY
X-Message-ID-Hash: E2BJKVK4S3UOMC4OYHA6EZAPA4MJRDQY
X-MailFrom: km5es@virginia.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B210 temperature sensor calibration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E2BJKVK4S3UOMC4OYHA6EZAPA4MJRDQY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Krishna Makhija via USRP-users <usrp-users@lists.ettus.com>
Reply-To: km5es@virginia.edu
Content-Type: multipart/mixed; boundary="===============8023310950119835638=="

This is a multi-part message in MIME format.

--===============8023310950119835638==
Content-Type: multipart/alternative;
 boundary="b1_MD7U6L3Js9JcHnIQw5DtSDnJAdG9XRQUjlLmPqTbKSw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_MD7U6L3Js9JcHnIQw5DtSDnJAdG9XRQUjlLmPqTbKSw
Content-Type: text/plain; charset=us-ascii

Hello,

I intend to calibrate the gain of my B210 across different temperatures so I can make adjustments to my data in post-processing. Has anyone ever attempted something like this? I have some questions:

1. Where is the temperature sensor physically located on the B210? Is it representative of the RF front-end?

2. Is there a  GNURadio way of getting temperature sensor data and saving it to a separate file as metadata? I have this working somewhat but it is a very roundabout Rube Goldberg implementation. Is there some GNURadio Companion block that will let me output this data and save to a separate file?

Thanks!

--b1_MD7U6L3Js9JcHnIQw5DtSDnJAdG9XRQUjlLmPqTbKSw
Content-Type: text/html; charset=us-ascii

<p>Hello,</p><p><br></p><p>I intend to calibrate the gain of my B210 across different temperatures so I can make adjustments to my data in post-processing. Has anyone ever attempted something like this? I have some questions:</p><p><br></p><ol><li><p>Where is the temperature sensor physically located on the B210? Is it representative of the RF front-end?</p></li><li><p>Is there a  GNURadio way of getting temperature sensor data and saving it to a separate file as metadata? I have this working somewhat but it is a very roundabout Rube Goldberg implementation. Is there some GNURadio Companion block that will let me output this data and save to a separate file?</p></li></ol><p>Thanks!</p>


--b1_MD7U6L3Js9JcHnIQw5DtSDnJAdG9XRQUjlLmPqTbKSw--

--===============8023310950119835638==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8023310950119835638==--
