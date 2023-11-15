Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A337EC584
	for <lists+usrp-users@lfdr.de>; Wed, 15 Nov 2023 15:40:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 44CF13849B6
	for <lists+usrp-users@lfdr.de>; Wed, 15 Nov 2023 09:40:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700059219; bh=RHl4rmHaKCXy1HuH/0Xh7GFg3V96AY0ycWYDDfr/7OU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=CWQl0GLrYWidn7KQPxaLyeU17KaWDTnAD/sCnrKjiHBsChQmu6onqmY+9Ix385UVJ
	 FeFfk/JT7aSYzlLKYd9UvetjLIJb77LqZLl8bzZm7Sf6/V0gk/osYat/Ie/uTx6t1z
	 0JUfhnIirWZSMg8ciG0lxcjq/pe+qtI3LoesdNRrHaX0leLo+Oa4i7PZLEZTwo7Upz
	 uYUzpeRnA7wyAtPTcGOjmq2CGluITBfU5rBen1xeY4zj+/uotYkSPKrnFP46nCqEr1
	 CGKz8ksRUVNWt3ITLZNUsowJqnmWXl+HkviOJxZJ8ffMXTrny/xUCdLWodtvqvD3z9
	 u9FkdZ1acD9Sg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 314C43818C7
	for <usrp-users@lists.ettus.com>; Wed, 15 Nov 2023 09:40:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700059202; bh=MtqVtv6Ps37f2T4llTyKBCVFV+hWQTCOj3iiUELxA4I=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=0wi6npb3Q1IHW9yB4oJTEkEyOhkRBEtjrg/qD0x3nRZ9kVWCHIXMNtPKF6IsTknMv
	 WXWKusQTJUw1j14SRsg5MvCG+c04owEy6/tIx4Z+XzdMe5YrmIAkla3tjAeOFZ/SyQ
	 Q8q73s9ZrdSa/ys1fxNh+l/fgSNcqfIdrjET+iST2GmgwhG5UYw1spVzig0z+tb/JV
	 FzVf6vhg+yyi2mxBV7kX07Vgl4YvLf52LmvgPAyP2Rzq946FgQu0R8xc3fOh8sHKNx
	 sUiRRZL4AzpJhaSVNdJRWKXkoLn9g5GITEoMoB4KnER7KaE8ErlpZLW7k3JAmFKjeQ
	 IOcB4WFDJ5Bmw==
Date: Wed, 15 Nov 2023 14:40:02 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <Rn55QcvHihsytTc1qHbVmjvphA0dIfwkHBKdEAFmg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: PH0PR04MB8311BCD5113AAED57D47E1F3F3B1A@PH0PR04MB8311.namprd04.prod.outlook.com
MIME-Version: 1.0
Message-ID-Hash: 263BVWVEPCELHIX7DEPFLYOX65EZFWMW
X-Message-ID-Hash: 263BVWVEPCELHIX7DEPFLYOX65EZFWMW
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 stuck in reboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/263BVWVEPCELHIX7DEPFLYOX65EZFWMW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1945747523048633072=="

This is a multi-part message in MIME format.

--===============1945747523048633072==
Content-Type: multipart/alternative;
 boundary="b1_Rn55QcvHihsytTc1qHbVmjvphA0dIfwkHBKdEAFmg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Rn55QcvHihsytTc1qHbVmjvphA0dIfwkHBKdEAFmg
Content-Type: text/plain; charset=us-ascii

Previously I was unable to log into linux due to the boot loop. However, after reflashing the eMMC with the filesystem(https://kb.ettus.com/USRP_X410/X440_Getting_Started_Guide#Flashing_the_eMMC) I am able to now log into linux, but only through Console JTAG

I can NOT however, log in via SFP or the 1Gb ethernet. This whole problem started after I tried to upload an FPGA bitstream to the ettus, is it possible the x410 relies on the FPGA bitstream to communicate over SFP/1 Gb ethernet at all?

--b1_Rn55QcvHihsytTc1qHbVmjvphA0dIfwkHBKdEAFmg
Content-Type: text/html; charset=us-ascii

<p>Previously I was unable to log into linux due to the boot loop. However, after reflashing the eMMC with the filesystem(https://kb.ettus.com/USRP_X410/X440_Getting_Started_Guide#Flashing_the_eMMC) I am able to now log into linux, but only through Console JTAG</p><p>I can NOT however, log in via SFP or the 1Gb ethernet. This whole problem started after I tried to upload an FPGA bitstream to the ettus, is it possible the x410 relies on the FPGA bitstream to communicate over SFP/1 Gb ethernet at all?</p>


--b1_Rn55QcvHihsytTc1qHbVmjvphA0dIfwkHBKdEAFmg--

--===============1945747523048633072==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1945747523048633072==--
