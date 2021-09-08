Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C29D404122
	for <lists+usrp-users@lfdr.de>; Thu,  9 Sep 2021 00:41:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 778B5384A9F
	for <lists+usrp-users@lfdr.de>; Wed,  8 Sep 2021 18:41:18 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 96117381526
	for <usrp-users@lists.ettus.com>; Wed,  8 Sep 2021 18:40:29 -0400 (EDT)
Date: Wed, 8 Sep 2021 22:40:29 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <IeapaCd6hMNdGDb0Avn8oWihmXmQWYWYHr7Q7wJvkm8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 99e42ac6-bf1a-8044-1025-32e3aace08be@olifantasia.com
MIME-Version: 1.0
Message-ID-Hash: ZVYZMM2VTAZCIQAN4FUTTPYVZWTCG4PY
X-Message-ID-Hash: ZVYZMM2VTAZCIQAN4FUTTPYVZWTCG4PY
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 how use the E320 as ntp time server using its internal gpsdo as time source
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZVYZMM2VTAZCIQAN4FUTTPYVZWTCG4PY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5789327612299285658=="

This is a multi-part message in MIME format.

--===============5789327612299285658==
Content-Type: multipart/alternative;
 boundary="b1_IeapaCd6hMNdGDb0Avn8oWihmXmQWYWYHr7Q7wJvkm8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_IeapaCd6hMNdGDb0Avn8oWihmXmQWYWYHr7Q7wJvkm8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Assuming you have ntp on your device (default img from ettus doesn=E2=80=99=
t have it), set /etc/ntp.conf to:

```
# GPS Serial data reference
server 127.127.28.0 minpoll 4 maxpoll 4
fudge 127.127.28.0 time1 0.0 refid GPS

# GPS PPS reference
server 127.127.28.1 minpoll 4 maxpoll 4 prefer
fudge 127.127.28.1 refid PPS

And enable the ntp service in systemd. If you don't have ntp, you'll have=
 to cross compile it.
```

--b1_IeapaCd6hMNdGDb0Avn8oWihmXmQWYWYHr7Q7wJvkm8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Assuming you have ntp on your device (default img from ettus doesn=E2=80=
=99t have it), set /etc/ntp.conf to:</p><pre><code># GPS Serial data refe=
rence
server 127.127.28.0 minpoll 4 maxpoll 4
fudge 127.127.28.0 time1 0.0 refid GPS

# GPS PPS reference
server 127.127.28.1 minpoll 4 maxpoll 4 prefer
fudge 127.127.28.1 refid PPS

And enable the ntp service in systemd. If you don't have ntp, you'll have=
 to cross compile it.</code></pre>


--b1_IeapaCd6hMNdGDb0Avn8oWihmXmQWYWYHr7Q7wJvkm8--

--===============5789327612299285658==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5789327612299285658==--
