Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1BB992B16
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 14:07:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4569D38522E
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 08:07:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728302856; bh=ozJ+6VfsgPnKm6WmnhrQIdBZHfhpBkgaGae3HzgG3bg=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=bCjq+rrbY10TBXKIO5t9zvzmYPITxOgEaBr5FTF31peWwasWxCORfVzujP67KFFcI
	 3Q1QNQxT4bvIXxDLyDWdX2n7fvxCi9cgz1nqS0DnwWGFok6bfvwgoGIfU8L8E2CeIt
	 sgPpIynhiM0WKbpZ4s+YZA09QnWxOe0mJXX4hG7bNOUqlNf3nK7aac6AqjblOVzVhG
	 +0n7ncneIDfRl1plRlRN32sEe52XmVTOkUrIuWj3MolU2Ty0FhobmsJCBFzXw3/eNl
	 NtS0y0qE6VvSbWFFMmSMqMTsyYl/hywcIdP7Nhl6w2XIAwePzfhmaMqnz2/D0gefDi
	 uoXJl45y3MBWQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 746DE384DEC
	for <usrp-users@lists.ettus.com>; Mon,  7 Oct 2024 08:06:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728302801; bh=2NvAYkOa29Fp3KsmhGwfWj4NJp+oGms3SbnfQHobJvM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=vLvu/HA4KKdGlVUgj3neusdJF29ap7nqrBu/Qa4TOffUpYu5eVY86kf2wKVAP5mF1
	 wJkpvILbKI5PX7lLKj2LrnxIDQEFYlcRcdFjlA7GGpFWxYu1nOKDRobCSQeg1YqpLu
	 Xh5MkYjSHXTUSyNfFBOBgvrC3aVFnNL8gWH7X/b04e2SoacUQzA3N4srJVvt7eu/Sy
	 YmvNnRE0uE4gwj043s4hZwPVDwSgybE77fTaSizcSxbYUDeYsjqKowZOhS9MPwtiNk
	 l46f4Y4UUhU1VUGCKPajFMN/BeIR/oB9BrFbrp426ITPRemvfVpfHuge1r5IxgfHYT
	 TSZkrOyROBo6Q==
Date: Mon, 7 Oct 2024 12:06:41 +0000
To: usrp-users@lists.ettus.com
From: steve.wakelam@roke.co.uk
Message-ID: <CsoDnGq7XJSkX9uN9trU3nqhdFDXNbCZJsuyfDAgG8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A5ycfN22Hv2QXFYuC5GvU=yLUb+p24dtXS8p43iXUE5fQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: VE4A6BGR6MKLHTU2LB4K4OQLABJBRLAD
X-Message-ID-Hash: VE4A6BGR6MKLHTU2LB4K4OQLABJBRLAD
X-MailFrom: steve.wakelam@roke.co.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using 10GbE to stream receiver data to remote FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VE4A6BGR6MKLHTU2LB4K4OQLABJBRLAD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6812900250379999125=="

This is a multi-part message in MIME format.

--===============6812900250379999125==
Content-Type: multipart/alternative;
 boundary="b1_CsoDnGq7XJSkX9uN9trU3nqhdFDXNbCZJsuyfDAgG8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_CsoDnGq7XJSkX9uN9trU3nqhdFDXNbCZJsuyfDAgG8
Content-Type: text/plain; charset=us-ascii

THanks all, this gives me a way to start I think.

--b1_CsoDnGq7XJSkX9uN9trU3nqhdFDXNbCZJsuyfDAgG8
Content-Type: text/html; charset=us-ascii

<p>THanks all, this gives me a way to start I think.</p>


--b1_CsoDnGq7XJSkX9uN9trU3nqhdFDXNbCZJsuyfDAgG8--

--===============6812900250379999125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6812900250379999125==--
