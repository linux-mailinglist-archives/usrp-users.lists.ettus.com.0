Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 105D03F89DA
	for <lists+usrp-users@lfdr.de>; Thu, 26 Aug 2021 16:11:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D0DD0384377
	for <lists+usrp-users@lfdr.de>; Thu, 26 Aug 2021 10:11:45 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0088E383CA8
	for <usrp-users@lists.ettus.com>; Thu, 26 Aug 2021 10:10:53 -0400 (EDT)
Date: Thu, 26 Aug 2021 14:10:53 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <XdTYC630llIAfYh8RjEwAvlbMXBzxG8fFbadEsEyc4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: b2W84EhzAMnaQ7H2SemdwcYj4CsAnZf3waB9s2J4@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: YIYC4A4XPOCGPGNHBPSRYCHPLY6UXJ7V
X-Message-ID-Hash: YIYC4A4XPOCGPGNHBPSRYCHPLY6UXJ7V
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Python documentation / interfacing with GPSDO
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YIYC4A4XPOCGPGNHBPSRYCHPLY6UXJ7V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4184632350265311007=="

This is a multi-part message in MIME format.

--===============4184632350265311007==
Content-Type: multipart/alternative;
 boundary="b1_XdTYC630llIAfYh8RjEwAvlbMXBzxG8fFbadEsEyc4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_XdTYC630llIAfYh8RjEwAvlbMXBzxG8fFbadEsEyc4
Content-Type: text/plain; charset=us-ascii

In case anyone is searching this in the future for the E320, I managed to get time sync working in the background by cross compiling NTP and configuring ntp.conf to use the loopback address for the GPSDO:

```
# GPS Serial data reference
server 127.127.28.0 minpoll 4 maxpoll 4
fudge 127.127.28.0 time1 0.0 refid GPS

# GPS PPS reference
server 127.127.28.1 minpoll 4 maxpoll 4 prefer
fudge 127.127.28.1 refid PPS

```

--b1_XdTYC630llIAfYh8RjEwAvlbMXBzxG8fFbadEsEyc4
Content-Type: text/html; charset=us-ascii

<p>In case anyone is searching this in the future for the E320, I managed to get time sync working in the background by cross compiling NTP and configuring ntp.conf to use the loopback address for the GPSDO:</p><p><br></p><pre><code># GPS Serial data reference
server 127.127.28.0 minpoll 4 maxpoll 4
fudge 127.127.28.0 time1 0.0 refid GPS

# GPS PPS reference
server 127.127.28.1 minpoll 4 maxpoll 4 prefer
fudge 127.127.28.1 refid PPS

<br></code></pre>


--b1_XdTYC630llIAfYh8RjEwAvlbMXBzxG8fFbadEsEyc4--

--===============4184632350265311007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4184632350265311007==--
