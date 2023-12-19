Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4AD818552
	for <lists+usrp-users@lfdr.de>; Tue, 19 Dec 2023 11:29:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C96343850F9
	for <lists+usrp-users@lfdr.de>; Tue, 19 Dec 2023 05:29:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702981785; bh=I9KI4j7JLwMnVWM0YJ3yOruhETx/1qljwTcCMagJALg=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=M2EOHdWzMH5EDrG8LXUxjrkxUaOF73xzLJwT951rFB+jqHPJG61WBtM8x1sjCx/oW
	 npMmLxFBoSF3yDxxZ6QvruqmHzvvyLsHF6MSIHIP1awZfgYRvZuuXk329prgoLSbES
	 HqZ0gtcKVqN8DPsi8qloL8KZAKOy6h4eb7noRuyuzq92n8Tvd3/yx/yJc7gAn0hGNh
	 DkOifTXMpaDViP0/qe/54ARGnEkW9L/9bN7EIGFWAmm3XR32m32gaY69TAQ1+aZj6d
	 CmzJmVxBfd/H4NaqSvnmu9pMpx3CdoIQp+k0wMyh32GKI7z8H5cGw5CEBpULpqGXk3
	 LFZO2QfVR6Fcw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5F7A5384989
	for <usrp-users@lists.ettus.com>; Tue, 19 Dec 2023 05:29:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702981743; bh=d2MqkwW7ACAxSDhIHzE2TBAxhm/zX1/onjWE4TEF/4g=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=IAmYUjNgRyvT9NgogecNi5DWPuNsRg23U5aNY4+/yOnyFo4BBh6YRimJUEqWeKo+D
	 BhgjJwaW/GNW9mb9v+yEEKdm4omiNOallMU6vRqx0kIwO9OaUIFeeIAYBFx+wCY/TD
	 SjWqMqdLg/b57l0K/s/zegZCOdncgTv9O5dMrribLTny6u+MuUfBYVzJMlRZWfQacr
	 kbS6zU5K3+JAfET9mDLeDOlNwSC9BWC+Uil5osfMqQgmUhYtZJSXXTkKYAb5AgvFMN
	 wuXzZDunPWw3jBe7yC+FU4s2UApHyaIYICRoT2IQKuesGzkzlrY37Dkw9wAaoYVbeD
	 ZoM5NnmYyb68w==
Date: Tue, 19 Dec 2023 10:29:03 +0000
To: usrp-users@lists.ettus.com
From: purva.joshi@phd.unipi.it
Message-ID: <PtUNt3hkwnABMWDDpfL56fQ3y5UVwyad7HBBya9VPSQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 7b622ac7-9a29-4df2-83a5-31454dd60558@ettus.com
MIME-Version: 1.0
Message-ID-Hash: CURCQX4FVYFXOHAKVVBEI7XR6LX5CXSC
X-Message-ID-Hash: CURCQX4FVYFXOHAKVVBEI7XR6LX5CXSC
X-MailFrom: purva.joshi@phd.unipi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 A timeout event occured!
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CURCQX4FVYFXOHAKVVBEI7XR6LX5CXSC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3573037262505909265=="

This is a multi-part message in MIME format.

--===============3573037262505909265==
Content-Type: multipart/alternative;
 boundary="b1_PtUNt3hkwnABMWDDpfL56fQ3y5UVwyad7HBBya9VPSQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_PtUNt3hkwnABMWDDpfL56fQ3y5UVwyad7HBBya9VPSQ
Content-Type: text/plain; charset=us-ascii

Dear Marcus,

Kindly help me with step by step procedure if possible. You mentioned :

1\.) Make sure `uhd_usrp_probe --args 'arguments as specified in srsRAN'` works (please \
redirect the output into a file and attach that!). The arguments, if any, are specified in \
your srsran config under `ru_sdr:`, `device_args`. Generally, please also attach your \
srsRAN config .yml file

Please can you guide me with this if possible?

--b1_PtUNt3hkwnABMWDDpfL56fQ3y5UVwyad7HBBya9VPSQ
Content-Type: text/html; charset=us-ascii

<p>Dear Marcus,</p><p>Kindly help me with step by step procedure if possible. You mentioned :</p><p>1.) Make sure <code>uhd_usrp_probe --args 'arguments as specified in srsRAN'</code> works (please <br>redirect the output into a file and attach that!). The arguments, if any, are specified in <br>your srsran config under <code>ru_sdr:</code>, <code>device_args</code>. Generally, please also attach your <br>srsRAN config .yml file</p><p><br></p><p>Please can you guide me with this if possible?</p><p><br></p>


--b1_PtUNt3hkwnABMWDDpfL56fQ3y5UVwyad7HBBya9VPSQ--

--===============3573037262505909265==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3573037262505909265==--
