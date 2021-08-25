Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5353F7EB8
	for <lists+usrp-users@lfdr.de>; Thu, 26 Aug 2021 00:39:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 26CC43844DD
	for <lists+usrp-users@lfdr.de>; Wed, 25 Aug 2021 18:39:00 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C8D79383EC4
	for <usrp-users@lists.ettus.com>; Wed, 25 Aug 2021 18:38:11 -0400 (EDT)
Date: Wed, 25 Aug 2021 22:38:11 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <b2W84EhzAMnaQ7H2SemdwcYj4CsAnZf3waB9s2J4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: e025fa07-4a3f-1516-ecc1-d96f7c3ac9a9@gmail.com
MIME-Version: 1.0
Message-ID-Hash: M7YY56AIYPQEGZSY6CHKMMZPU4GTNHIT
X-Message-ID-Hash: M7YY56AIYPQEGZSY6CHKMMZPU4GTNHIT
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Python documentation / interfacing with GPSDO
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M7YY56AIYPQEGZSY6CHKMMZPU4GTNHIT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3698012320602273638=="

This is a multi-part message in MIME format.

--===============3698012320602273638==
Content-Type: multipart/alternative;
 boundary="b1_b2W84EhzAMnaQ7H2SemdwcYj4CsAnZf3waB9s2J4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_b2W84EhzAMnaQ7H2SemdwcYj4CsAnZf3waB9s2J4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Ok, I ended up getting it to work, but I had to add the function wrappers=
 to the gr-ettus library in rfnoc_graph_impl.cc. Now the next struggle is=
 getting it to update its time based off of gps=E2=80=A6

--b1_b2W84EhzAMnaQ7H2SemdwcYj4CsAnZf3waB9s2J4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Ok, I ended up getting it to work, but I had to add the function wrapp=
ers to the gr-ettus library in rfnoc_graph_impl.cc. Now the next struggle=
 is getting it to update its time based off of gps=E2=80=A6</p>


--b1_b2W84EhzAMnaQ7H2SemdwcYj4CsAnZf3waB9s2J4--

--===============3698012320602273638==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3698012320602273638==--
