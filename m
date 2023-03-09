Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE786B1947
	for <lists+usrp-users@lfdr.de>; Thu,  9 Mar 2023 03:41:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 60B0B384CCE
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 21:41:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678329685; bh=bqGb4aB7oL6+gSv4Hq7BWBIl3LePIMzt67Es8wO7sSo=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=gDDmXlLE7MDDbWBG3RvydyhazTHYCl0KLOZPSW7YQ/4AmNRZ+a8OlLluZeGdJkLrc
	 FzHNMqBkqF/Tzw8gfcIa24RF4aeu2w47eWZHhe0SUIC04wuT2p/yUYIjVp9M9YCP9Y
	 w1JiDQOOXKruesDQANujqCpKqTqZYvjJIe87pndHV7Xd2wOpn/PJf/Nz3bxgUBF+p8
	 PfKJYRyJ/gwaGpCpbk1RWu6n4tn+xET/KERqAH26mPR654F4lAp9AsE3V2FN+o8lL7
	 jcDtIGArgfX8RjS3Wggg+AKFCFJ14fSmwMJzyhqtkct0wObE/cPJSmIq4nJAN3ZBUp
	 P327jo4sgwUpg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC56E384CCE
	for <usrp-users@lists.ettus.com>; Wed,  8 Mar 2023 21:41:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678329680; bh=NPBGbuo2Mvp+t2Z7Sx3MUZNEDt3zDVg0g3FGWRpNmYE=;
	h=Date:To:From:Subject:From;
	b=phmZ69dc8GH0r8XOs4qRFgz3cZRI2DbLnHDmacTM7qhNV6Nw0LfleNBtJkDdvBppE
	 k7RZDtnAbm+XvMZXe2hYfb8a/+0ovCnyZF8T6bo2cSSj7Xk33LhcWWBnHFtqWsJHgf
	 6/XwFgCJODv2ATTh878LmTjenJDFRfHhaIwcvecQsBJQUqfTsaKBPAgUIv/5X8KGnw
	 4VlEu+t3quG1nZ1KM88Hdd+CKEuM+tLCkBFOagFIFt1cwp7vVJuOakBmAN/ojltNys
	 8SvE2Jh0e3kM7Xi4TUYvc6rxEDeoVhzl08m6gxmyW5BM0+7rNk0I2gFHiF5C8ERt+i
	 cRFQIKCYmbpyg==
Date: Thu, 9 Mar 2023 02:41:20 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <EofJYHnPQkFzDmTjdBf6o6OmQfDxMmNJuUIX9Wtvk8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: WDMGYEGENOCTYHX3X24BRULOFBHNUDJK
X-Message-ID-Hash: WDMGYEGENOCTYHX3X24BRULOFBHNUDJK
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Tx/RX vs RX2 Ettus N320
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WDMGYEGENOCTYHX3X24BRULOFBHNUDJK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0787480007775963582=="

This is a multi-part message in MIME format.

--===============0787480007775963582==
Content-Type: multipart/alternative;
 boundary="b1_EofJYHnPQkFzDmTjdBf6o6OmQfDxMmNJuUIX9Wtvk8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_EofJYHnPQkFzDmTjdBf6o6OmQfDxMmNJuUIX9Wtvk8
Content-Type: text/plain; charset=us-ascii

Hello,

I am a little confused about the naming regarding the TX/RX ports on the Ettus N321/N320. If I specify a channel(i.e channel 0) for receive, does that mean RX2 will be active, or will TX/RX port be actively receiving? And if TX/RX can recieve, does that mean the N320/N321 has up to 4 RX channels?

Thanks

Joe

--b1_EofJYHnPQkFzDmTjdBf6o6OmQfDxMmNJuUIX9Wtvk8
Content-Type: text/html; charset=us-ascii

<p>Hello,</p><p>I am a little confused about the naming regarding the TX/RX ports on the Ettus N321/N320. If I specify a channel(i.e channel 0) for receive, does that mean RX2 will be active, or will TX/RX port be actively receiving? And if TX/RX can recieve, does that mean the N320/N321 has up to 4 RX channels?</p><p><br></p><p>Thanks</p><p>Joe</p>


--b1_EofJYHnPQkFzDmTjdBf6o6OmQfDxMmNJuUIX9Wtvk8--

--===============0787480007775963582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0787480007775963582==--
