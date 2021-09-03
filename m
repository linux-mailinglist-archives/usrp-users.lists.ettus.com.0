Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FD74007BD
	for <lists+usrp-users@lfdr.de>; Sat,  4 Sep 2021 00:05:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 360FC384934
	for <lists+usrp-users@lfdr.de>; Fri,  3 Sep 2021 18:05:47 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 46F99384272
	for <usrp-users@lists.ettus.com>; Fri,  3 Sep 2021 18:04:55 -0400 (EDT)
Date: Fri, 3 Sep 2021 22:04:55 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <6SGl7SiQ5U06NCKv9jknwlFGuFud7qXiPqE5wZqPs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 6HQFIQRBJKVA567XS5ZCZCVONYDOBYTY
X-Message-ID-Hash: 6HQFIQRBJKVA567XS5ZCZCVONYDOBYTY
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Radio Application fails to run as service on E310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6HQFIQRBJKVA567XS5ZCZCVONYDOBYTY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1528287983513565861=="

This is a multi-part message in MIME format.

--===============1528287983513565861==
Content-Type: multipart/alternative;
 boundary="b1_6SGl7SiQ5U06NCKv9jknwlFGuFud7qXiPqE5wZqPs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_6SGl7SiQ5U06NCKv9jknwlFGuFud7qXiPqE5wZqPs
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have a python script built with gnuradio, with a few additional goodies=
 added. It runs fine for days if I start it manually. But, if I try to st=
art it with systemd or cron, it gets to:

gr::log :DEBUG: rfnoc_rx_streamer0 - Commiting graph=E2=80=A6

gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start stream command=E2=80=A6

And then=E2=80=A6 nothing. I have put print statements (I know=E2=80=A6) =
all over my code, and everything runs just fine up until this message app=
ears, and then the script just stops. I get the same message when running=
 it manually, but the script continues to run just fine. I=E2=80=99ve tri=
ed executing my code line by line in a python console, but it executes no=
rmally. I=E2=80=99ve tried having it run as different users, as root, I=E2=
=80=99ve tried using =E2=80=9Cbash -l -c =E2=80=98python=E2=80=A6=E2=80=99=
=E2=80=9D, I=E2=80=99ve tried all sorts of different systemd options, but=
 it=E2=80=99s the same result every time no matter if it=E2=80=99s system=
d or cron. Nothing in the log output, journalctl, /var/log/messages, anyt=
hing gives any help on identifying the failure, just that the script isn=E2=
=80=99t running anymore.

Any thoughts on how I might debug this? Something I=E2=80=99m missing?

--b1_6SGl7SiQ5U06NCKv9jknwlFGuFud7qXiPqE5wZqPs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I have a python script built with gnuradio, with a few additional goodie=
s added. It runs fine for days if I start it manually. But, if I try to sta=
rt it with systemd or cron, it gets to:</p><p>gr::log :DEBUG: rfnoc_rx_stre=
amer0 - Commiting graph=E2=80=A6</p><p>gr::log :DEBUG: rfnoc_rx_streamer0 -=
 Sending start stream command=E2=80=A6</p><p><br></p><p>And then=E2=80=
=A6 nothing. I have put print statements (I know=E2=80=A6) all over my code=
, and everything runs just fine up until this message appears, and then the=
 script just stops. I get the same message when running it manually, but th=
e script continues to run just fine. I=E2=80=99ve tried executing my code l=
ine by line in a python console, but it executes normally. I=E2=80=99ve tri=
ed having it run as different users, as root, I=E2=80=99ve tried using =
=E2=80=9Cbash -l -c =E2=80=98python=E2=80=A6=E2=80=99=E2=80=9D, I=E2=80=
=99ve tried all sorts of different systemd options, but it=E2=80=99s the sa=
me result every time no matter if it=E2=80=99s systemd or cron. Nothing in =
the log output, journalctl, /var/log/messages, anything gives any help on i=
dentifying the failure, just that the script isn=E2=80=99t running anymore.=
</p><p><br></p><p>Any thoughts on how I might debug this? Something I=
=E2=80=99m missing?</p><p><br></p>

--b1_6SGl7SiQ5U06NCKv9jknwlFGuFud7qXiPqE5wZqPs--

--===============1528287983513565861==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1528287983513565861==--
