Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3943F2442
	for <lists+usrp-users@lfdr.de>; Fri, 20 Aug 2021 02:56:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CCF0E384390
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 20:56:15 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 824043818DA
	for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 20:55:28 -0400 (EDT)
Date: Fri, 20 Aug 2021 00:55:28 +0000
To: usrp-users@lists.ettus.com
From: km5es@virginia.edu
Message-ID: <kkqx77a9aqRuLNMeoRht7b0qga8MkEbkuiF36pZU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: WVZFTTWQQWIIYMUBSD55ARWEJLHEF7R3
X-Message-ID-Hash: WVZFTTWQQWIIYMUBSD55ARWEJLHEF7R3
X-MailFrom: km5es@virginia.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Frequency synchronization with B205-mini and B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WVZFTTWQQWIIYMUBSD55ARWEJLHEF7R3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8163984953592018381=="

This is a multi-part message in MIME format.

--===============8163984953592018381==
Content-Type: multipart/alternative;
 boundary="b1_kkqx77a9aqRuLNMeoRht7b0qga8MkEbkuiF36pZU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_kkqx77a9aqRuLNMeoRht7b0qga8MkEbkuiF36pZU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

For my application I need to *frequency* synchronize a B205-mini transmit=
ter with a B210 receiver. Is this possible? I can=E2=80=99t seem to get i=
t to work with the units I have. Can someone shed some light on why that =
might be the case?

Note, that I am not asking about phase synchronization. I have been able =
to get 2x B210s to phase synchronize in post using higher order software =
calibration but the same does not work in the case of 1x B205-mini + 1x B=
210. In both cases I was using a common 10 MHz reference.

--b1_kkqx77a9aqRuLNMeoRht7b0qga8MkEbkuiF36pZU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>For my application I need to <em>frequency</em> synchronize a B205-min=
i transmitter with a B210 receiver. Is this possible? I can=E2=80=99t see=
m to get it to work with the units I have. Can someone shed some light on=
 why that might be the case?</p><p>Note, that I am not asking about phase=
 synchronization. I have been able to get 2x B210s to phase synchronize i=
n post using higher order software calibration but the same does not work=
 in the case of 1x B205-mini + 1x B210. In both cases I was using a commo=
n 10 MHz reference.</p>


--b1_kkqx77a9aqRuLNMeoRht7b0qga8MkEbkuiF36pZU--

--===============8163984953592018381==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8163984953592018381==--
