Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 718967E6C67
	for <lists+usrp-users@lfdr.de>; Thu,  9 Nov 2023 15:27:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 513E33859E4
	for <lists+usrp-users@lfdr.de>; Thu,  9 Nov 2023 09:27:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699540039; bh=OkFNAsC2Mmqj24h2wB6WFOukrhX+aM515hH6t/VKr/U=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=G1dYLaaqzDDr0Ki2F5shI/z+ZIyC0yMqaDt1TEj4d8nOskA2kBuL2Ufhv+smFQVe/
	 +M4xFF4UTVN7PeQN9nSjhwvzt+FTungMeyha+FmtkWudQKCDJUDtCfrdc4Qmv2Czmu
	 HfNAqV64vzdP3FQ5norHKcOJlYxQACVNso7JC9HgH3d69OBEtKGa1LiYXPkUwnM1JX
	 4858lBkixVZntcF2zYn6DhcCIllubMm1neWrT8NYqVuLnmmVZlxT06m2A7Vs+iOFiY
	 QLM/NrlBSWGAOAeaJjdXnHbt3+2s4FuKZCObBfvXpp/M+qYasD+TnQqI+2WUm8K/sc
	 ktyv+oYgfqVEA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 940363859DB
	for <usrp-users@lists.ettus.com>; Thu,  9 Nov 2023 09:26:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699540001; bh=RTSx14NDRdHJBKTWLD2jRWig6ANVjGk2qazTarvR2HE=;
	h=Date:To:From:Subject:From;
	b=VUE1gUntX5VKhzTHsGoRKfJbjD+GO1I2yWTM5w9ME/LF4fX0Wv7JJcq1sj63wpOUk
	 UTxMk7T2zoqMEuPeSHpmDstZ0AkDIMUGRNNjJHlRTjtcF8EI3j2c4OO+/YPR2TB2/v
	 +Qu6iP5H3VcHuDhS9xighd0eIXRrV2K5pooXtREk472eu332KpdU2HVOP4wvfUUKiw
	 OE1onjS/yJT72IKGFZc+e9TuATVmXzwHiC7W1yYuusFQguPNQO9MszD03ObLkqmAtE
	 wOeAUJI3GqNqzXrRUd47mhmSLxM2XwjCile4izygkuKhYrSV/fqqpYokb+t4Cwg4j7
	 941H1D6BLV5mQ==
Date: Thu, 9 Nov 2023 14:26:41 +0000
To: usrp-users@lists.ettus.com
From: dixitmn6@gmail.com
Message-ID: <nM70OdyxB4MaincaXfOdQwE1C1tTDpJkUaJE1C4OKK0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 4DG47LCOU6ELV23QHIPBAYSRO2WKMTSL
X-Message-ID-Hash: 4DG47LCOU6ELV23QHIPBAYSRO2WKMTSL
X-MailFrom: dixitmn6@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 not working
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4DG47LCOU6ELV23QHIPBAYSRO2WKMTSL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5245122300093294645=="

This is a multi-part message in MIME format.

--===============5245122300093294645==
Content-Type: multipart/alternative;
 boundary="b1_nM70OdyxB4MaincaXfOdQwE1C1tTDpJkUaJE1C4OKK0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_nM70OdyxB4MaincaXfOdQwE1C1tTDpJkUaJE1C4OKK0
Content-Type: text/plain; charset=us-ascii

Hello support team and members,

Recently tested the USRP x310 using uhd_usrp_probe command. However, it did not seem to work.\
The SFP port does not seem to blink after connected to LAN cable. The USRP was also not pingable.\
Hence I tried the [device recovery manual](https://kb.ettus.com/X300/X310_Device_Recovery). After successfully programming through the JTAG port, the ping didnt work so did not proceed with the uhd_image downloader flashing. However the lsusb was finally able to detect the network change, but even after setting the ip of the host machine as 192.168.10.1, the USRP is still not pingable. The wireshark is also not able to detect any ARP requests from the USRP. I am pretty sure that the SFP is reliable since it is purchased from the ettus support itself.

What could be the issue?

--b1_nM70OdyxB4MaincaXfOdQwE1C1tTDpJkUaJE1C4OKK0
Content-Type: text/html; charset=us-ascii

<p>Hello support team and members,</p><p>Recently tested the USRP x310 using uhd_usrp_probe command. However, it did not seem to work.<br>The SFP port does not seem to blink after connected to LAN cable. The USRP was also not pingable.<br>Hence I tried the <a href="https://kb.ettus.com/X300/X310_Device_Recovery" title="">device recovery manual</a>. After successfully programming through the JTAG port, the ping didnt work so did not proceed with the uhd_image downloader flashing. However the lsusb was finally able to detect the network change, but even after setting the ip of the host machine as 192.168.10.1, the USRP is still not pingable. The wireshark is also not able to detect any ARP requests from the USRP. I am pretty sure that the SFP is reliable since it is purchased from the ettus support itself.</p><p>What could be the issue?</p>


--b1_nM70OdyxB4MaincaXfOdQwE1C1tTDpJkUaJE1C4OKK0--

--===============5245122300093294645==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5245122300093294645==--
