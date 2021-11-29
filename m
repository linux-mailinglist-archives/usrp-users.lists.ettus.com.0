Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AE9461FFD
	for <lists+usrp-users@lfdr.de>; Mon, 29 Nov 2021 20:14:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 75D7A384F55
	for <lists+usrp-users@lfdr.de>; Mon, 29 Nov 2021 14:14:26 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 01E79384BAE
	for <usrp-users@lists.ettus.com>; Mon, 29 Nov 2021 14:13:28 -0500 (EST)
Date: Mon, 29 Nov 2021 19:13:27 +0000
To: usrp-users@lists.ettus.com
From: iw1fnw@gmail.com
Message-ID: <GcHcX3f0MTKeCm5bTF7GTY7aXQG6FqzKDK9hWw17s@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: a2566291-391e-7881-c33a-627e9adda655@gmail.com
MIME-Version: 1.0
Message-ID-Hash: UIZMNCUFWOZKP4XS4NBZPDH3CPGYDJBN
X-Message-ID-Hash: UIZMNCUFWOZKP4XS4NBZPDH3CPGYDJBN
X-MailFrom: iw1fnw@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UIZMNCUFWOZKP4XS4NBZPDH3CPGYDJBN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0429977936574275577=="

This is a multi-part message in MIME format.

--===============0429977936574275577==
Content-Type: multipart/alternative;
 boundary="b1_GcHcX3f0MTKeCm5bTF7GTY7aXQG6FqzKDK9hWw17s"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_GcHcX3f0MTKeCm5bTF7GTY7aXQG6FqzKDK9hWw17s
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

That is what I did (with the help of a colleague). It all went fine till =
almost the end. I managed to get the x310 working (e.g. answering to the =
uhd_usrp_probe command) after programming with Vivado.

But when I try the uhd_image_loader command at the end, I get the error a=
bove (exactly in the same way as explained by Julian in his first post).

So, I am now stuck with the x310 working but just if I do not switch it o=
ff, since the image in ROM is somewhat corrupted.

I=E2=80=99m not sure if the connection is not reliable. The x310 is direc=
tly connected to the PC via two 10G SFP+ cables. Is there a way to test t=
his? I think there is another x310 in the lab, which I could use to test,=
 but I do not want to mess up also that one, since it is not mine.

Al

--b1_GcHcX3f0MTKeCm5bTF7GTY7aXQG6FqzKDK9hWw17s
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>That is what I did (with the help of a colleague). It all went fine ti=
ll almost the end. I managed to get the x310 working (e.g. answering to t=
he uhd_usrp_probe command) after programming with Vivado.</p><p>But when =
I try the uhd_image_loader command at the end, I get the error above (exa=
ctly in the same way as explained by Julian in his first post).</p><p>So,=
 I am now stuck with the x310 working but just if I do not switch it off,=
 since the image in ROM is somewhat corrupted.</p><p>I=E2=80=99m not sure=
 if the connection is not reliable. The x310 is directly connected to the=
 PC via two 10G SFP+ cables. Is there a way to test this? I think there i=
s another x310 in the lab, which I could use to test, but I do not want t=
o mess up also that one, since it is not mine.</p><p>Al</p>


--b1_GcHcX3f0MTKeCm5bTF7GTY7aXQG6FqzKDK9hWw17s--

--===============0429977936574275577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0429977936574275577==--
