Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF546D35D0
	for <lists+usrp-users@lfdr.de>; Sun,  2 Apr 2023 08:38:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 31FEB383D94
	for <lists+usrp-users@lfdr.de>; Sun,  2 Apr 2023 02:38:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680417513; bh=WGw0lrrxtetv3yLTCTVLdcIYcpS/+VjPwUUd2Z1e7K0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MQYKIF8g8MikRMczFJt2kINTIvQ+aYf9R51zvmZOhw1Hv8jBG1stx1Bv0Vilbpnfq
	 RKKbrR0H4JmC30mZPWAepTDXftVoV0VqvGTCbRFxb6fmyKmGa/vqv3BxwgI3mqaJxR
	 IMgyfk4hp/zT36ZwkQl1qv2zswPxaKv6nPp+l5pZuaKpPJEdZKYy5ucJebpuFl/ZI5
	 jeCCCsvwfFKf4zsXYBKHMT/ylpxlcA/PEV2kL9NI6osBo8nYV8EUABbHtK6WRNWHub
	 LT27wqGR9P6hYQewMj4fNKhGegSxv0VFBIGtSpmpcxxql87MXDcDegattQwA9B4XKt
	 CQTGHNYfF+vsQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8AC0F383D94
	for <usrp-users@lists.ettus.com>; Sun,  2 Apr 2023 02:38:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680417507; bh=wDf/iUtvaPmFe63AToUlo8dN0IUE1R8Iz5fuCrv/hG4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=F5U4E+qukUQpgfONRrenXqgtcVdkT+p4jXrxLykYcWU4q+FAnJqFue9krLStHmpnW
	 er+UcoXlndHqIwfqXllX+VocspQdxFfihGgyZQ4ETnMMjd2n1aGmNkfVMjFRONmbqG
	 2OKpxwCDgukW5+yWHwibRdjcHBNjXI8goWiYbEKOuxgc9yv8JEz6cdkcuqNx/XzYxX
	 jNqYEZYLjMsUOTQrewQJbjS8imOBPzwLGMYglSTytfyg68G99QwaStqpb4TvNsNUzn
	 +5Iqfi2AqxKKTyhqFKZsIl4Jl3AtGcfjQcoeYb4rwb+f1aJxIlK2rtZizhZaBTdQKe
	 o73xRaWjF82IQ==
Date: Sun, 2 Apr 2023 06:38:27 +0000
To: usrp-users@lists.ettus.com
From: soring@ayecka.com
Message-ID: <89RTgezBU6hMo7iBqYHTuz8RDcbJOlY33Owz9z7QvA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: f290466f-67a7-c625-a5e7-b2100cda8fa5@gmail.com
MIME-Version: 1.0
Message-ID-Hash: X43UIU5RHUYIZOWO4TKJV4QGFBXF45OI
X-Message-ID-Hash: X43UIU5RHUYIZOWO4TKJV4QGFBXF45OI
X-MailFrom: soring@ayecka.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini i very high lo-leakage, image rejection and aggressive DC correction.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X43UIU5RHUYIZOWO4TKJV4QGFBXF45OI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1459904135575338208=="

This is a multi-part message in MIME format.

--===============1459904135575338208==
Content-Type: multipart/alternative;
 boundary="b1_89RTgezBU6hMo7iBqYHTuz8RDcbJOlY33Owz9z7QvA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_89RTgezBU6hMo7iBqYHTuz8RDcbJOlY33Owz9z7QvA
Content-Type: text/plain; charset=us-ascii

Seems that by mistake I used wirefmt = sc16 instead of sc12. Switching to sc12 made the difference.

--b1_89RTgezBU6hMo7iBqYHTuz8RDcbJOlY33Owz9z7QvA
Content-Type: text/html; charset=us-ascii

<p>Seems that by mistake I used wirefmt = sc16 instead of sc12. Switching to sc12 made the difference.</p>


--b1_89RTgezBU6hMo7iBqYHTuz8RDcbJOlY33Owz9z7QvA--

--===============1459904135575338208==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1459904135575338208==--
