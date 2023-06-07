Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD68726A00
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 21:42:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A773F384A63
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 15:42:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686166935; bh=m63XB+cerqCihXArhsRCDobvKUKzXPN59SOHDRjQFW4=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=rHFDDzO5S3mYp9ygwqqiuLr99aZCutkJDkuwZvURs2JLt5q5gp+UUTk1R48EgcaAi
	 90pfYXSGwdMY7kg8VBIg29NTlOXVLuHZwW/Ep9cmbhRRX7OkIQTUUPXp1JnNLucII9
	 UzATVv05FD5+C8eFARAW2PZu5E66GFdMn8ufIQl5w1Caasn6cfOJTlbMg/Kb7G2kNC
	 otXmVu155DTbhv69TEdLZ+hBlG09hI+OVKBPtO+2yPe28s5TfizxUzzK9jzsvxF7wv
	 GA+f7O30elF+KAf0mlXbBsnmjoq2UL9Ls5eyid35W1mRPjVXik/T+4Sq3MTGZExmMq
	 skerGE5J2qMYw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 116F2384256
	for <usrp-users@lists.ettus.com>; Wed,  7 Jun 2023 15:41:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686166879; bh=hIwPKBxSfmV/5b/D+52YWUpklDEzYktBW61e171tcPE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=mx+mE7JJIsYr5UNSQrIRddaY0hXF8MRFLzJW9POLcH34aVo69Oji01J0IXYXD8WNz
	 aekauYd7ZWC7b8K2zZEaH48BMCbAqjc4f8myl5Q0Ir3XZ13bDJy+MIVYKlkS1pXC94
	 9KjjHIHksI7PR2r0jDnVSCgEuA7vGr4IZwcwgfAVmx7x3/sWGd0gj4UZKpfzw/yhm0
	 W1GZDr5cs2A6XubNQzeOmANdV1K3gH8d1mTe4EphJfYBUclsxnIEZ/toT4sNwP9tsD
	 Hv/QL5PM3hfD6aGZWyMG5DVBtIlbJivqiToRfwaU1h56Xvvwku80dQqJJ+TdXLGaaK
	 pci5c0Yaeh+Og==
Date: Wed, 7 Jun 2023 19:41:19 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <3LlMFM2W3kL21bdENzXWV24Ln7Q251RSjnkC9DOuMo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTQMmnKOgHUsPaD6Wk9dV6dFdCndyT3GoUMyDiT9p9tMJg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 2QPQHQK3C6YYPALF7HLR4B62TJD42QBK
X-Message-ID-Hash: 2QPQHQK3C6YYPALF7HLR4B62TJD42QBK
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 TX issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2QPQHQK3C6YYPALF7HLR4B62TJD42QBK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6912146995323417420=="

This is a multi-part message in MIME format.

--===============6912146995323417420==
Content-Type: multipart/alternative;
 boundary="b1_3LlMFM2W3kL21bdENzXWV24Ln7Q251RSjnkC9DOuMo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_3LlMFM2W3kL21bdENzXWV24Ln7Q251RSjnkC9DOuMo
Content-Type: text/plain; charset=us-ascii

Yes, I tried to using that example as well but still nothing transmits(no light indicator either).

I just compiled the default image(x410_200_rfnoc_image_core.yml) on my end and still things work just fine also. My custom yml is more similar to the x410_400_128_rfnoc_image_core.yml, so I am going to try and compile that next and see if it works.

In my custom image, I had to do some customization in the Vivado GUI, but it was only on the receive path, and the rfdc was left untouched, so its hard to imagine that this affected something on the transmission side, though not impossible.

--b1_3LlMFM2W3kL21bdENzXWV24Ln7Q251RSjnkC9DOuMo
Content-Type: text/html; charset=us-ascii

<p>Yes, I tried to using that example as well but still nothing transmits(no light indicator either).</p><p><br></p><p>I just compiled the default image(x410_200_rfnoc_image_core.yml) on my end and still things work just fine also. My custom yml is more similar to the x410_400_128_rfnoc_image_core.yml, so I am going to try and compile that next and see if it works.</p><p><br></p><p>In my custom image, I had to do some customization in the Vivado GUI, but it was only on the receive path, and the rfdc was left untouched, so its hard to imagine that this affected something on the transmission side, though not impossible.</p>


--b1_3LlMFM2W3kL21bdENzXWV24Ln7Q251RSjnkC9DOuMo--

--===============6912146995323417420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6912146995323417420==--
