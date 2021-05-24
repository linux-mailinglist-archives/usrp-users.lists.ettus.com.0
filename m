Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E6C38E7B2
	for <lists+usrp-users@lfdr.de>; Mon, 24 May 2021 15:32:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 896EB384096
	for <lists+usrp-users@lfdr.de>; Mon, 24 May 2021 09:32:37 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5AA75380FD7
	for <usrp-users@lists.ettus.com>; Mon, 24 May 2021 09:31:46 -0400 (EDT)
Date: Mon, 24 May 2021 13:31:46 +0000
To: usrp-users@lists.ettus.com
From: radiogeek381@gmail.com
Message-ID: <ZtLEOVlogPodDBizEXe2WtRP4GTBRX8y1QVZ0y76fw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CADjF3Px5e2rjFJG+CtMwkWFSAPw4eVsvt7sPDcpoDphnmrdjdA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: DK4W2DO6VBQST4EZFNQ3CAMAYEP64H6P
X-Message-ID-Hash: DK4W2DO6VBQST4EZFNQ3CAMAYEP64H6P
X-MailFrom: radiogeek381@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPP requirements for USRP B210 amsat
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DK4W2DO6VBQST4EZFNQ3CAMAYEP64H6P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5458205601674975266=="

This is a multi-part message in MIME format.

--===============5458205601674975266==
Content-Type: multipart/alternative;
 boundary="b1_ZtLEOVlogPodDBizEXe2WtRP4GTBRX8y1QVZ0y76fw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ZtLEOVlogPodDBizEXe2WtRP4GTBRX8y1QVZ0y76fw
Content-Type: text/plain; charset=us-ascii

There are people who have ported SoDaRadio to a raspberry Pi (4?) 

In any case, SoDaRadio has been used for sat coms and as a general purpose transceiver from 10 MHz to 10 GHz. (10 MHz with a UBX module, 10GHz with a B210 or an N200 and a transverter.)  It can talk to FLDIGI and WSJT.  The IF rate to the PC is 625 KSamp/sec, but much of the processing (most filtering, and demod/mod for all but wideband FM are done at 48 KS/s). 

It was originally developed on a 10+ year old I7, and took very little of its processing power.  It might be worth a try on your platform.  [https://kb1vc.github.io/SoDaRadio/](https://kb1vc.github.io/SoDaRadio/ "SoDaRadio GitHub page")

--b1_ZtLEOVlogPodDBizEXe2WtRP4GTBRX8y1QVZ0y76fw
Content-Type: text/html; charset=us-ascii

<p>There are people who have ported SoDaRadio to a raspberry Pi (4?) </p><p><br></p><p>In any case, SoDaRadio has been used for sat coms and as a general purpose transceiver from 10 MHz to 10 GHz. (10 MHz with a UBX module, 10GHz with a B210 or an N200 and a transverter.)  It can talk to FLDIGI and WSJT.  The IF rate to the PC is 625 KSamp/sec, but much of the processing (most filtering, and demod/mod for all but wideband FM are done at 48 KS/s). </p><p>It was originally developed on a 10+ year old I7, and took very little of its processing power.  It might be worth a try on your platform.  <a href="https://kb1vc.github.io/SoDaRadio/" title="SoDaRadio GitHub page">https://kb1vc.github.io/SoDaRadio/</a></p>


--b1_ZtLEOVlogPodDBizEXe2WtRP4GTBRX8y1QVZ0y76fw--

--===============5458205601674975266==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5458205601674975266==--
