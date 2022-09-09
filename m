Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 50ADC5B2DDE
	for <lists+usrp-users@lfdr.de>; Fri,  9 Sep 2022 07:00:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E836C383EA1
	for <lists+usrp-users@lfdr.de>; Fri,  9 Sep 2022 01:00:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662699630; bh=t2maO3dl7VAfHYMbZk4Nkrs8zCEffDjCmeyf8ZXlbzI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=DCQQPuBTImxz1QWvWH9kHFibkgHn7/T4GBiu7stL1RY7zlcH8labKXK9BV9c17yuh
	 Se/8yFW9Y64NTLYNOQ2kY/g9d+InygxXUrGNBUh7PLZy4zFKpUbUwJEwHW41Prn95o
	 7Br5EE+uk7KlKekYBAkiu2ixZUiLZwOQw6lEBg3vA7X14SXxlSlAk4i6cqIOdti3ic
	 359q/hojacO1elwHaqDruYiEymy1PE7a/u1mz/aYRlQAOZY834EYcM317HisHgLr8E
	 +u9TGc4JvEKctHpk94xT4nntP7+BRlnGcYjYSueoEUMKUCGo8YtcjgxyBdTfDgMg56
	 +laiuVkvCAAdg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ACC903813DB
	for <usrp-users@lists.ettus.com>; Fri,  9 Sep 2022 00:59:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662699575; bh=5ZfuwmwLEImEMCe4pkV2KMxdx7dEBYAk43Zh6cdEWNI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=fvUZFaZhJlqtKwjpO2g2jiGN6wDRzrS3pjzkaxea275CUMt1S+Iabr1DklqXnJjhp
	 cylvB7Q2NYhSjtJqtfOHLRtmisHzgp5oknxWda3Dj0dCYIG8Qn5SwdGsvxSx2tE7QO
	 KXuki7q/AQ7ZN/j0h0QHBXhKccUVAOD0wGwRjxuBxQB2bOVubVzoJ9/jiE3FnyjSaY
	 1Rird+Wdn3bTLJZzUJO24fvpfylD4huJJt4UnuwiRVcESGSTB8NpjxdQzgoVvPWxf/
	 8GZpsRpqxXwV3A7j9fV/GAgVyeaQXhBvWhXYuT/w7pxt0iM/xHZxO0N76q7KuqnCu4
	 a22QezgY1sT6w==
Date: Fri, 9 Sep 2022 04:59:35 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <u4HHGTVa5Hqj39nTNDiBDX01T3CQ5cslzAWc9k02cjM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: YJiDKxkrsvUbHgSRejsJx8CNdas6bTkjVDPFtVyQGI@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: MJ4PH7LYVCOVOT242EVOHH5BICTGYJBK
X-Message-ID-Hash: MJ4PH7LYVCOVOT242EVOHH5BICTGYJBK
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320: Periodic phase jumps w/ any external clock?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MJ4PH7LYVCOVOT242EVOHH5BICTGYJBK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8553319940799930776=="

This is a multi-part message in MIME format.

--===============8553319940799930776==
Content-Type: multipart/alternative;
 boundary="b1_u4HHGTVa5Hqj39nTNDiBDX01T3CQ5cslzAWc9k02cjM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_u4HHGTVa5Hqj39nTNDiBDX01T3CQ5cslzAWc9k02cjM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

perper@o2.pl wrote:

> Ha!
>
> It=E2=80=99s there on E320 and you can control it with device argument:
>
> enable_gps          | Enable/disable power to the GPSDO.               =
                            | N3xx, E320        | enable_gps=3D0
>
> Here in the table at the bottom:
>
> https://files.ettus.com/manual/page_configuration.html

In case you try turning off GPSDO on E320 please share info if it helps.

Best Regards,\
Piotr Krysik

--b1_u4HHGTVa5Hqj39nTNDiBDX01T3CQ5cslzAWc9k02cjM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>perper@o2.pl wrote:</p><blockquote><p>Ha!</p><p>It=E2=80=99s there on =
E320 and you can control it with device argument:</p><p>enable_gps       =
   | Enable/disable power to the GPSDO.                                  =
         | N3xx, E320        | enable_gps=3D0</p><p>Here in the table at =
the bottom:</p><p>https://files.ettus.com/manual/page_configuration.html<=
/p></blockquote><p>In case you try turning off GPSDO on E320 please share=
 info if it helps.</p><p>Best Regards,<br>Piotr Krysik</p>


--b1_u4HHGTVa5Hqj39nTNDiBDX01T3CQ5cslzAWc9k02cjM--

--===============8553319940799930776==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8553319940799930776==--
