Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2505C369654
	for <lists+usrp-users@lfdr.de>; Fri, 23 Apr 2021 17:41:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6FA5B3848BA
	for <lists+usrp-users@lfdr.de>; Fri, 23 Apr 2021 11:41:40 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 56B4D38443C
	for <usrp-users@lists.ettus.com>; Fri, 23 Apr 2021 11:37:27 -0400 (EDT)
Date: Fri, 23 Apr 2021 15:37:27 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <XWP5UuOilMHw7cWE2gmglrFm8RD7gpnWwA1PVpjII@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 24ea83c0-5057-6115-765f-c18aaf0f0c01@itsystems.it
MIME-Version: 1.0
Message-ID-Hash: HX2ZVQQIRBWXZWCTMOZ3NA72C3EUE2FS
X-Message-ID-Hash: HX2ZVQQIRBWXZWCTMOZ3NA72C3EUE2FS
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Counting actual samples using RFNoC custom block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HX2ZVQQIRBWXZWCTMOZ3NA72C3EUE2FS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0947460500976772949=="

This is a multi-part message in MIME format.

--===============0947460500976772949==
Content-Type: multipart/alternative;
 boundary="b1_XWP5UuOilMHw7cWE2gmglrFm8RD7gpnWwA1PVpjII"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_XWP5UuOilMHw7cWE2gmglrFm8RD7gpnWwA1PVpjII
Content-Type: text/plain; charset=us-ascii

Paolo - 

I have been chewing over the two cases you mentioned, and I think I am doing the same as your first case, using the 214MHz clock, my counter counts twice when the DDC is set at 100Msps over the duration of the signal m_in_payload_tvalid. When m_in_payload_tvalid is in low state, the counter stops and then keep counting again when the other CHDR packet comes.

Our goal here is count the actual samples or items (according to the RFNoC specification). 

Thank you so much and let me know your thoughts.

Thanks

Julian.

--b1_XWP5UuOilMHw7cWE2gmglrFm8RD7gpnWwA1PVpjII
Content-Type: text/html; charset=us-ascii

<p>Paolo - </p><p><br></p><p>I have been chewing over the two cases you mentioned, and I think I am doing the same as your first case, using the 214MHz clock, my counter counts twice when the DDC is set at 100Msps over the duration of the signal m_in_payload_tvalid. When m_in_payload_tvalid is in low state, the counter stops and then keep counting again when the other CHDR packet comes.</p><p><br></p><p>Our goal here is count the actual samples or items (according to the RFNoC specification). </p><p>Thank you so much and let me know your thoughts.</p><p><br></p><p>Thanks</p><p>Julian.</p>


--b1_XWP5UuOilMHw7cWE2gmglrFm8RD7gpnWwA1PVpjII--

--===============0947460500976772949==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0947460500976772949==--
