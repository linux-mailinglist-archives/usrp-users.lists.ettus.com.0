Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C8637391275
	for <lists+usrp-users@lfdr.de>; Wed, 26 May 2021 10:36:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A7788384104
	for <lists+usrp-users@lfdr.de>; Wed, 26 May 2021 04:36:55 -0400 (EDT)
Received: from mxout2.rambler.ru (mxout2.rambler.ru [81.19.78.101])
	by mm2.emwd.com (Postfix) with ESMTPS id 9B7643842AE
	for <usrp-users@lists.ettus.com>; Wed, 26 May 2021 04:36:01 -0400 (EDT)
Received: from localhost (0vm0040.prod.mail.rambler.tech [10.132.200.30])
	by mxout2.rambler.ru (Postfix) with ESMTP id 617BB8DC0ED
	for <usrp-users@lists.ettus.com>; Wed, 26 May 2021 11:35:57 +0300 (MSK)
Date: Wed, 26 May 2021 08:35:57 +0000
Mime-Version: 1.0
Message-Id: <67191df6f65206451d126fc00aafc3f6@mail.rambler.ru>
In-Reply-To: <a638ffa1235ad3f3f0b58a401ed1669b@mail.rambler.ru>
References: <a638ffa1235ad3f3f0b58a401ed1669b@mail.rambler.ru>
	<830ab06b95e9d2802b0a4a2455f6b301@mail.rambler.ru>
	<0f34e1d2b5e7b77bc818377793c427dd@mail.rambler.ru>
	<2a9683d393b9962474a1e25b84853e3a@mail.rambler.ru>
To: "Usrp Users" <usrp-users@lists.ettus.com>
X-Mailer: Rambler Compose (1018495), https://mail.rambler.ru
Message-ID-Hash: ZITOHP4PBSFZE7OK4YDJPAGF2VODQZSS
X-Message-ID-Hash: ZITOHP4PBSFZE7OK4YDJPAGF2VODQZSS
X-MailFrom: andrew4010@rambler.ru
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tune speed
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZITOHP4PBSFZE7OK4YDJPAGF2VODQZSS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?b?0JDQvdC00YDQtdC5INCQIHZpYSBVU1JQLXVzZXJz?= <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?b?0JDQvdC00YDQtdC5INCQ?= <andrew4010@rambler.ru>
Content-Type: multipart/mixed; boundary="===============0674201728664119646=="

--===============0674201728664119646==
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative;
	boundary="==bound.0.0937d4958da1a072333c9812b0231460.mail.rambler.ru=="

--==bound.0.0937d4958da1a072333c9812b0231460.mail.rambler.ru==
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Content-Type: text/plain; charset=utf-8

Hello
I am applying uhd_sensor_value_to_bool (hSensor, & lo_locked) function in o=
rder to be sure that the new frequency is already precisely tuned and you c=
an take the data with the command uhd_rx_streamer_issue_stream_cmd.
If this is a slow function, why is it faster for the b200 board? How, then,=
 do you know that the synthesizer is tuned to a new frequency?
Thank you

--==bound.0.0937d4958da1a072333c9812b0231460.mail.rambler.ru==
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Content-Type: text/html; charset=utf-8

<div>Hello</div><div><br data-mce-bogus=3D"1"></div><div>I am applying uhd_=
sensor_value_to_bool (hSensor, &amp; lo_locked) function<br>in order to be =
sure that the new frequency is already precisely tuned and you can take the=
 data with the command<br>uhd_rx_streamer_issue_stream_cmd.</div><div>If th=
is is a slow function, why is it faster for the b200 board?<br>How, then, d=
o you know that the synthesizer is tuned to a new frequency?</div><div><br =
data-mce-bogus=3D"1"></div><div>Thank you</div>
--==bound.0.0937d4958da1a072333c9812b0231460.mail.rambler.ru==--

--===============0674201728664119646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0674201728664119646==--
