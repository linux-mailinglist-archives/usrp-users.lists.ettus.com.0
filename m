Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F76ABA36B
	for <lists+usrp-users@lfdr.de>; Fri, 16 May 2025 21:08:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E45A3385D91
	for <lists+usrp-users@lfdr.de>; Fri, 16 May 2025 15:08:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747422505; bh=q2L5QVMTHEd1Q7Nfyq8quyP8tOcFrgHB95HZs+h+ZAQ=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=AF34LCf2Hg10yubiiGg4A7cGE/iKvKO20oqfyEEi4qJ1SogJ/VNhfmkqPjOq+AX42
	 05w9BFU1yiKdgNUqibaaaG4wWmGkVK87cfZh/5wSLvZ7efr3mffWWl03bhjF3nwoLj
	 EpSvL/h2zj/pT4v+BMrlbtVL8koVfEGCSmRIUtfjQQfwEfRGOVvHu97f8cOfhzrKZ/
	 l9CICCmfFxMfpIULVlxjybmd2Jx6fB3MV61Jh2GD9u4Uls19tEPiHYkH9d4AoCDUn8
	 yGhcG8mRw1M3CB4qxE+TTchbMCqL8ek3LAVoQzKDz3uKQl+H6ZQt8Fxd79p3bUi1iL
	 /+ZRxt58FjEWg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A00DC385CD6
	for <usrp-users@lists.ettus.com>; Fri, 16 May 2025 15:07:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747422462; bh=j6DNrd1penjUEz2Azo5/q6uj/3SVnDhPzONnuo3jXzM=;
	h=Date:To:From:Subject:From;
	b=DDAQBnzhnH/i6zH+wkIjtVb8C4Xlbo1DpTyrKZC2hLJ/CMBhIw3mjaFBhArfoFYOX
	 lkmHfKN16p+N/zCCiQtPuUGB7JQD58mCNT5tYVTdKYwzB8+6rc1Bte+II3Y2E/vG8S
	 PEKdorPvzI7t8AsRjEMjfawMhKdugBB99OI/42x56J+Og/uQQAPAaFTFc/gZM/FV81
	 hApbaFDM+n3O31K76m1MjAzHXhLnuP5M00cCAeplMfg0x1EfFxEWiuan7p5YN4cvfd
	 XeKknJ9kI4GeHIlP3pdxna6zAh51vmTk0ZiX8IBVwcH2i5OhUCPqcm/w6gjy6uMRze
	 uloFRrF4praSg==
Date: Fri, 16 May 2025 19:07:42 +0000
To: usrp-users@lists.ettus.com
From: kurz.reido@gmail.com
Message-ID: <wjrztTOvjAWiFfXlyJoOcxVqfBLParQGr8Fm8ODfo8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 3U4UQR3EWHENOTE4JM3TZ6A5EGSD7566
X-Message-ID-Hash: 3U4UQR3EWHENOTE4JM3TZ6A5EGSD7566
X-MailFrom: kurz.reido@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Simple way to clear RFNoC Replay input buffer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3U4UQR3EWHENOTE4JM3TZ6A5EGSD7566/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5231625790725171332=="

This is a multi-part message in MIME format.

--===============5231625790725171332==
Content-Type: multipart/alternative;
 boundary="b1_wjrztTOvjAWiFfXlyJoOcxVqfBLParQGr8Fm8ODfo8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_wjrztTOvjAWiFfXlyJoOcxVqfBLParQGr8Fm8ODfo8
Content-Type: text/plain; charset=us-ascii

Hello all,

A simplified diagram of my setup is as follows

Vector Source (Repeat) -> RFNoC Tx Streamer -> RFNoC Replay -> RFNoC Tx Radio

My vector source uses variables that are modified by the host laptop through XMLRPC Client, so the vector output can change if the user issues a change for a parameter through the GRC GUI.

My problem is that the vector source keeps sending the same data until the buffer is full, so when the user issues a change and presses the Record button for RFNoC Replay nothing seems to happen. Depending on buffer size the user may have to press the button several times in order to observe the vector source change on a Time Sink.

**My question:** Is there a simple way to clear the RFNoC Replay Block buffer using some GRC block or embedded python block code?

I have tried using embedded python blocks to make a splitter and a counter that would cut off the flow to the Replay block, but some samples seem to sneak through before the port change and other issues arise.

--b1_wjrztTOvjAWiFfXlyJoOcxVqfBLParQGr8Fm8ODfo8
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello all,</p><p>A simplified diagram of my setup is as follows</p><p>Ve=
ctor Source (Repeat) -&gt; RFNoC Tx Streamer -&gt; RFNoC Replay -&gt; RFNoC=
 Tx Radio</p><p>My vector source uses variables that are modified by the ho=
st laptop through XMLRPC Client, so the vector output can change if the use=
r issues a change for a parameter through the GRC GUI.</p><p>My problem is =
that the vector source keeps sending the same data until the buffer is full=
, so when the user issues a change and presses the Record button for RFNoC =
Replay nothing seems to happen. Depending on buffer size the user may have =
to press the button several times in order to observe the vector source cha=
nge on a Time Sink.</p><p><strong>My question:</strong> Is there a simple w=
ay to clear the RFNoC Replay Block buffer using some GRC block or embedded =
python block code?</p><p><br></p><p>I have tried using embedded python bloc=
ks to make a splitter and a counter that would cut off the flow to the Repl=
ay block, but some samples seem to sneak through before the port change and=
 other issues arise. </p><p><br></p>

--b1_wjrztTOvjAWiFfXlyJoOcxVqfBLParQGr8Fm8ODfo8--

--===============5231625790725171332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5231625790725171332==--
