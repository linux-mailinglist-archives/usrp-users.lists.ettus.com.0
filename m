Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5F4459EDD
	for <lists+usrp-users@lfdr.de>; Tue, 23 Nov 2021 10:06:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 29B7D38442E
	for <lists+usrp-users@lfdr.de>; Tue, 23 Nov 2021 04:06:49 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0AC45383FBA
	for <usrp-users@lists.ettus.com>; Tue, 23 Nov 2021 04:05:52 -0500 (EST)
Date: Tue, 23 Nov 2021 09:05:52 +0000
To: usrp-users@lists.ettus.com
From: emanuele.tolomei@intecs.it
Message-ID: <m34SbAp7uXvcUdPHRQT4inJeEBEtBNHul7UXTWUDk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 109c2c37-16b7-f8d9-e0cd-d11a4104a6ea@gmail.com
MIME-Version: 1.0
Message-ID-Hash: PER5GLBKTGEXPJXZQGME4F2IJRV5WAPW
X-Message-ID-Hash: PER5GLBKTGEXPJXZQGME4F2IJRV5WAPW
X-MailFrom: emanuele.tolomei@intecs.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble with TwinRX frequency tuning
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PER5GLBKTGEXPJXZQGME4F2IJRV5WAPW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4127818635729919165=="

This is a multi-part message in MIME format.

--===============4127818635729919165==
Content-Type: multipart/alternative;
 boundary="b1_m34SbAp7uXvcUdPHRQT4inJeEBEtBNHul7UXTWUDk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_m34SbAp7uXvcUdPHRQT4inJeEBEtBNHul7UXTWUDk
Content-Type: text/plain; charset=us-ascii

Hi Marcus, thank you

I tried both changing the command-time (up to 1 second) and using UHD version 3.15.0.0.

The application still crashes with the same error.

terminate called after throwing an instance of 'uhd::io_error'

what():  EnvironmentError: IOError: \[0/DDC_0\] sr_write() failed: EnvironmentError: IOError: Block ctrl (CE_03_Port_60) no response packet - AssertionError: bool(buff)

in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) \[with uhd::endianness_t _endianness = (uhd::endianness_t)0u; uint64_t = long unsigned int\]

at /home/emanuele/uhd/host/lib/rfnoc/ctrl_iface.cpp:151

--b1_m34SbAp7uXvcUdPHRQT4inJeEBEtBNHul7UXTWUDk
Content-Type: text/html; charset=us-ascii

<p>Hi Marcus, thank you</p><p>I tried both changing the command-time (up to 1 second) and using UHD version 3.15.0.0.</p><p>The application still crashes with the same error.</p><p><br></p><p>terminate called after throwing an instance of 'uhd::io_error'</p><p>what():  EnvironmentError: IOError: [0/DDC_0] sr_write() failed: EnvironmentError: IOError: Block ctrl (CE_03_Port_60) no response packet - AssertionError: bool(buff)</p><p>in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double) [with uhd::endianness_t _endianness = (uhd::endianness_t)0u; uint64_t = long unsigned int]</p><p>at /home/emanuele/uhd/host/lib/rfnoc/ctrl_iface.cpp:151</p>


--b1_m34SbAp7uXvcUdPHRQT4inJeEBEtBNHul7UXTWUDk--

--===============4127818635729919165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4127818635729919165==--
