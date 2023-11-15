Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3B77ED1C4
	for <lists+usrp-users@lfdr.de>; Wed, 15 Nov 2023 21:05:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8AAE8384FB5
	for <lists+usrp-users@lfdr.de>; Wed, 15 Nov 2023 15:05:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700078720; bh=sDZiv8rBcGc/6sQ1Y3W//hoY8T1PdoNxwNuCgWGHc2Q=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=mS04LRiPwhW66lvam+Ivk4QqTQkldSO9/AUatjEgT7KPQBcTpK82mBbAtVCR4rRy8
	 8z12LkApP2wnS94XrLb9wGW22xuAJbAZRT79aeyT7IZfnmaUDAstL63egb5PWoN4xu
	 vvLBrWghYE/J5XCGt/86dWSfCt5pvf5NS/K8qnE1eNcXL+vFZvCBfZ3T5n706mgxqm
	 7TtLH+JwGIhnAeRm+UzOQtmKv1pyTro1MsMqVLJawR03CU2EI8hFmHDhupYBvUjTYX
	 KWVI2bLHpq9j6midHwQJlrJBAfpMLn8oCSTms0dUYvStVmFYPcXJN2w8HSxKp7CQsK
	 iQsay2Tjf7x8w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BA92C384FB5
	for <usrp-users@lists.ettus.com>; Wed, 15 Nov 2023 15:04:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700078683; bh=k45/Xjq3W9jCyXJm1MiUHPGTLCehEZPw7QqR2DMfDhs=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Axf8Fq+ju20kcKT2cVuZtWsOkd8buiFugogHNwZJ6OdNH7s3bp+1ULIk+qxhf4mF1
	 xjOrQqf2xWaIDHZX15gOhzyRWeC4hFHH9ag7HvpJHS5vTg17v963cF/9JrVvN6JEpi
	 VK+rrHIc5b8YjHu2X6N/9SJlv2b1xsJRIGTLc0vxa+2G3p9CjdSS3gVsZDzzKbn+r3
	 fgN8SDpKaLs47uTGyoxwBNg0IGAHGzPZWQgkfJxfe8Tr9HpfL4H/YwGZtNQrI2o/U9
	 5gt+W87IBh/0InhaHW/f1gKlqz7HAm1IGgmsgcakeVP5EEpjEniH3A+N1lUsbkVWVb
	 ZbdZ3WfNa52Hw==
Date: Wed, 15 Nov 2023 20:04:43 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <6OabWBqAFfljlWmi7V5FCHldD2U9fyWhNMNyDVJ24o@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: e01ec84f-559f-4e09-97fa-13de71a19a91@gmail.com
MIME-Version: 1.0
Message-ID-Hash: ZQNJSO3MZCYNKSLFEGKT5WR3W52BWXQU
X-Message-ID-Hash: ZQNJSO3MZCYNKSLFEGKT5WR3W52BWXQU
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 stuck in reboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZQNJSO3MZCYNKSLFEGKT5WR3W52BWXQU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1221658851702239413=="

This is a multi-part message in MIME format.

--===============1221658851702239413==
Content-Type: multipart/alternative;
 boundary="b1_6OabWBqAFfljlWmi7V5FCHldD2U9fyWhNMNyDVJ24o"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_6OabWBqAFfljlWmi7V5FCHldD2U9fyWhNMNyDVJ24o
Content-Type: text/plain; charset=us-ascii

I can not ping the non-working device even, either through RJ-45 or the SFP port. To be clear, everything I am doing to network into the non-working device is through console JTAG. Before this problem started, I was able to ssh into the processing system(Embedded linux) through either RJ-45 port and the SFP ports just fine.

In general, the x410 automatically sets the SFP ports 1-4 to 192.168.10.1-4 respectively. This is something I generally rely to not only log into the device, but when I want to run UHD software. If I ever want to use the RJ-45 port, I usually have to manually set the ip address using ifconfig, but this is pretty trivial. 

Now, the device does not set the SFP addresses automatically, and I suspect it has something to do with the ssh service not starting. Additionally, if I use the Console JTAG port to manually set the address of the RJ-45 port, then try to ping that address from my host device, the address is not reachable.

--b1_6OabWBqAFfljlWmi7V5FCHldD2U9fyWhNMNyDVJ24o
Content-Type: text/html; charset=us-ascii

<p>I can not ping the non-working device even, either through RJ-45 or the SFP port. To be clear, everything I am doing to network into the non-working device is through console JTAG. Before this problem started, I was able to ssh into the processing system(Embedded linux) through either RJ-45 port and the SFP ports just fine.</p><p>In general, the x410 automatically sets the SFP ports 1-4 to 192.168.10.1-4 respectively. This is something I generally rely to not only log into the device, but when I want to run UHD software. If I ever want to use the RJ-45 port, I usually have to manually set the ip address using ifconfig, but this is pretty trivial. </p><p>Now, the device does not set the SFP addresses automatically, and I suspect it has something to do with the ssh service not starting. Additionally, if I use the Console JTAG port to manually set the address of the RJ-45 port, then try to ping that address from my host device, the address is not reachable.</p>


--b1_6OabWBqAFfljlWmi7V5FCHldD2U9fyWhNMNyDVJ24o--

--===============1221658851702239413==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1221658851702239413==--
