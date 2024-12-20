Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9EF9F8D61
	for <lists+usrp-users@lfdr.de>; Fri, 20 Dec 2024 08:40:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2D4D53858EA
	for <lists+usrp-users@lfdr.de>; Fri, 20 Dec 2024 02:40:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734680408; bh=ylf3vrARV/qgTZudsXsGH1BE0iuYEif8yFnMvbs+4gA=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0TfQf3iuvddISFEfKM3wbNT31f86LGgrZCzGGqgVB6xeMP0oGXwk8Ee1T4fJNukW4
	 o6bVObCBm3lHQLnuzV3qzYSaMGe1alZ4B2nj480auuhA4TvLAPfsabYx6h+waPQqbX
	 YCCU6feNURBkkJokvjQSVOfFUUFZX893DeZIsUyc6dbJ2jctUZzL3iAp/RYsfjFzzs
	 8uVtnI803x0K0DiiNAXwRqfr14vAOwHmZ8dkuyZDV7It2tW0LaX00XluuBR05UNbpA
	 PtQle1LMT++Hga4oi9m3pKc+RF5GNok2Sifr/uIiJBEDUW107Yh4o8SGnaCFyyy5VI
	 f5txDfkyTaoew==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DE30838589A
	for <usrp-users@lists.ettus.com>; Fri, 20 Dec 2024 02:39:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734680354; bh=G6y0nXmCaqGVsnV1rxAjipdeyQm+xjVmcuDKtuwDqo8=;
	h=Date:To:From:Subject:From;
	b=yjSzO9pwYko3c3KSdo3sEk4Hg8H3GydUmUED1FBhNP7+Ow0STOC3xBv0JfV8Cz/Ts
	 r1k3xzbESAAfs1dgW1oRT+ymGzP1yjoRGIg0+vhASG9s4U/TcG+g3KzAL1syM0wJhU
	 OsIiJvO11ewqND2sapk4cSGjYbTDPxGwBhsUbZjpUzEu2ImEAAhwdZzPe9wdoVxtcQ
	 A22EHf2ReC7BigtzKo34OGp1y87nAnM00XLP6UEUN84KU/hFfJ9L5KN9A7a9llJW/t
	 fZZOtwb2pykzrbbOfiEvBqIQQZzSF25sSpd/hHQlMVhGtlc+z7wIKfQswe51KWWG32
	 acc6FRuuNRWbA==
Date: Fri, 20 Dec 2024 07:39:14 +0000
To: usrp-users@lists.ettus.com
From: steve.wakelam@roke.co.uk
Message-ID: <1X6xsdqwhYYYpw2tmztnnqe6t8BUiNXMcFHr4nu0co@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: CA3FHJGPDVXLIVMTCTHOQZFCRKOUYYCH
X-Message-ID-Hash: CA3FHJGPDVXLIVMTCTHOQZFCRKOUYYCH
X-MailFrom: steve.wakelam@roke.co.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNOC 4 equivalent of clear_tx_seqnum
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CA3FHJGPDVXLIVMTCTHOQZFCRKOUYYCH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5541678518247855314=="

This is a multi-part message in MIME format.

--===============5541678518247855314==
Content-Type: multipart/alternative;
 boundary="b1_1X6xsdqwhYYYpw2tmztnnqe6t8BUiNXMcFHr4nu0co"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_1X6xsdqwhYYYpw2tmztnnqe6t8BUiNXMcFHr4nu0co
Content-Type: text/plain; charset=us-ascii

Hi

In our RFNOC3 system we used clear_tx_seqnum to clear the input FIFOs of our system when the application started. However I believe it was for AXI_Wrapper and this was a useful side-effect?

What can we do in RFNOC4 to achieve the same functionality?

Thanks

--b1_1X6xsdqwhYYYpw2tmztnnqe6t8BUiNXMcFHr4nu0co
Content-Type: text/html; charset=us-ascii

<p>Hi</p><p><br></p><p>In our RFNOC3 system we used clear_tx_seqnum to clear the input FIFOs of our system when the application started. However I believe it was for AXI_Wrapper and this was a useful side-effect?</p><p><br></p><p>What can we do in RFNOC4 to achieve the same functionality?</p><p><br></p><p>Thanks</p>


--b1_1X6xsdqwhYYYpw2tmztnnqe6t8BUiNXMcFHr4nu0co--

--===============5541678518247855314==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5541678518247855314==--
