Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6F778C8AA
	for <lists+usrp-users@lfdr.de>; Tue, 29 Aug 2023 17:34:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8C146384B38
	for <lists+usrp-users@lfdr.de>; Tue, 29 Aug 2023 11:34:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693323289; bh=WgJTK/A+5VLGcHII85IBQqPGZi3MUG1fvroYvexDjBE=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=bPJNhqEO7vjmB8hHPU8uMSAlIiSbZpnS7WYlrYcz/1THmxfSN0UpdKAeHLSm0GFer
	 IB9hCzHa7MxJ3VDKWQRixS7dnzIiyMAMWs8J2n+19a7ln3IrC5wpPp6qQffsucQFo9
	 Y/W2gDs/cSrppXXry7y+qtA6UTnjLW+PGQy/E7AKZDdQvYviSPSyV3T/evPkUxabBg
	 bSq1ZGYJV/oH9zDD3l2TWDnFPbp7LCIGCCeY4BGgtKk1MnUDCDh38rz1uX0SITysEW
	 ncQlRvLneQqWeuZQc71WEzuBBx8lOF80fpaXTkDfsDIO2lrbw1sfiA9nOdGdu1f3Ry
	 fvECDs3PBR8ig==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 37662384B0B
	for <usrp-users@lists.ettus.com>; Tue, 29 Aug 2023 11:34:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693323270; bh=+QcmpN5ePScJMhoMUK+wogtRBsndLig7Yc/mgVBR4Uc=;
	h=Date:To:From:Subject:From;
	b=PCQIJUvXGcwSGjWww1ds9HkWIypgb10FkXo85Ea4EIk+CHC/gjGa+wb7fmDoOaOlC
	 tmp0VbKfHfYeOuP7Dl+C5zluRfAUbXw48bnTTFnJ5+4FJ7HMvXaB4RDKoDVA4d0tpD
	 Zqwke+TOXZv7S4iq5gqAWoQ3n1MA54sUIsrHefHNeG8lIo1aBOfvBb1+u5ttPlmdia
	 k5gFZQBLAuqb25N6ffbI4Nf+RPF8wKMdA4Z7fVOBt7YBUzwOY1YTCsnt1X/5AIO6Co
	 pwUPV9vANDiFh1iqFWqwAnhMDu0ItnROAjxr4FZ5ryWMwBTQaUz+bnW4c8ffhJM507
	 BXDZDWF3QZlJQ==
Date: Tue, 29 Aug 2023 15:34:30 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <8HDAKdbuUpu1lNxONDfQeJgOuTGPsP42tgZ2iu7DFg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 57R6YS43JREY4XFZXTJ6HN3ONLBYWWJI
X-Message-ID-Hash: 57R6YS43JREY4XFZXTJ6HN3ONLBYWWJI
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Specifications of host computer for 100 Gb/s streaming with x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/57R6YS43JREY4XFZXTJ6HN3ONLBYWWJI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1808147508127969854=="

This is a multi-part message in MIME format.

--===============1808147508127969854==
Content-Type: multipart/alternative;
 boundary="b1_8HDAKdbuUpu1lNxONDfQeJgOuTGPsP42tgZ2iu7DFg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_8HDAKdbuUpu1lNxONDfQeJgOuTGPsP42tgZ2iu7DFg
Content-Type: text/plain; charset=us-ascii

Hello,

We are shopping around for a new host computer to stream data off an x410 with 100 Gb/s. We could not find any PC recommendations on the x410 website. Does anybody here have any prebuilt recommendations or bought parts separately. Any recommendations is much appreciated

Thanks,

Joe

--b1_8HDAKdbuUpu1lNxONDfQeJgOuTGPsP42tgZ2iu7DFg
Content-Type: text/html; charset=us-ascii

<p>Hello,</p><p>We are shopping around for a new host computer to stream data off an x410 with 100 Gb/s. We could not find any PC recommendations on the x410 website. Does anybody here have any prebuilt recommendations or bought parts separately. Any recommendations is much appreciated</p><p>Thanks,</p><p>Joe </p>


--b1_8HDAKdbuUpu1lNxONDfQeJgOuTGPsP42tgZ2iu7DFg--

--===============1808147508127969854==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1808147508127969854==--
