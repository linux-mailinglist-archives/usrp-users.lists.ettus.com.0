Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8633483894
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 22:37:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA3883854A4
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 16:37:22 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 58FA13851B8
	for <usrp-users@lists.ettus.com>; Mon,  3 Jan 2022 16:36:24 -0500 (EST)
Date: Mon, 3 Jan 2022 21:36:24 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <QfJPxXyqK4NbTgAA6pCIF4hSP0VA1ncJKhPrhcNRjU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: a6c2c2c9-d830-d535-6366-46eb6848a0da@gmail.com
MIME-Version: 1.0
Message-ID-Hash: OSN4RV2BOXRJV3CRLJ6WRPSS36UIQ35J
X-Message-ID-Hash: OSN4RV2BOXRJV3CRLJ6WRPSS36UIQ35J
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Propagating late and overflow messages in software
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OSN4RV2BOXRJV3CRLJ6WRPSS36UIQ35J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5127449577751004934=="

This is a multi-part message in MIME format.

--===============5127449577751004934==
Content-Type: multipart/alternative;
 boundary="b1_QfJPxXyqK4NbTgAA6pCIF4hSP0VA1ncJKhPrhcNRjU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_QfJPxXyqK4NbTgAA6pCIF4hSP0VA1ncJKhPrhcNRjU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

I=E2=80=99ve attempted to use uhd::tx_streamer::recv_async_msg() before, =
but it slowed down my application and caused frequent lates on the tx_str=
eamer. I=E2=80=99m unclear on the intended usage. I tried creating a sepa=
rate thread that polls in an infinite while loop looking for async messag=
es. Am I inadvertently adding contention over a mutex hidden somewhere in=
side tx_streamer? If I handle the async message, does that prevent UHD fr=
om printing =E2=80=9CL=E2=80=9D to stdout?

This only handles part of my issue. What about the Rx side? For my applic=
ation, I am not issuing individual Rx stream commands, only a single one =
on startup to constantly receive. I then call uhd::rx_streamer::recv() in=
 an infinite loop. I check the error code returned in the form of a uhd::=
rx_metadata_t. How do I prevent it from printing =E2=80=9CD=E2=80=9D to s=
tdout in the event where I drop a packet?

As a side note, why should I upgrade? Normally I would just try to stay u=
p to date with libraries I=E2=80=99m using, but for this particular appli=
cation I have a bunch of air gapped systems that are difficult to release=
 new libs onto for largely bureaucratic reasons. I haven=E2=80=99t notice=
d any new features in the release notes I need, and my application has go=
od enough performance, so I never bothered updating UHD.=20

Thanks,

Richard

--b1_QfJPxXyqK4NbTgAA6pCIF4hSP0VA1ncJKhPrhcNRjU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p>I=E2=80=99ve attempted to use uhd::tx_streamer::recv_as=
ync_msg() before, but it slowed down my application and caused frequent lat=
es on the tx_streamer. I=E2=80=99m unclear on the intended usage. I tried c=
reating a separate thread that polls in an infinite while loop looking for =
async messages. Am I inadvertently adding contention over a mutex hidden so=
mewhere inside tx_streamer? If I handle the async message, does that preven=
t UHD from printing =E2=80=9CL=E2=80=9D to stdout?</p><p><br></p><p>This on=
ly handles part of my issue. What about the Rx side? For my application, I =
am not issuing individual Rx stream commands, only a single one on startup =
to constantly receive. I then call uhd::rx_streamer::recv() in an infinite =
loop. I check the error code returned in the form of a uhd::rx_metadata_t. =
How do I prevent it from printing =E2=80=9CD=E2=80=9D to stdout in the even=
t where I drop a packet?</p><p><br></p><p>As a side note, why should I upgr=
ade? Normally I would just try to stay up to date with libraries I=E2=80=
=99m using, but for this particular application I have a bunch of air gappe=
d systems that are difficult to release new libs onto for largely bureaucra=
tic reasons. I haven=E2=80=99t noticed any new features in the release note=
s I need, and my application has good enough performance, so I never bother=
ed updating UHD. </p><p>Thanks,</p><p>Richard</p>

--b1_QfJPxXyqK4NbTgAA6pCIF4hSP0VA1ncJKhPrhcNRjU--

--===============5127449577751004934==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5127449577751004934==--
