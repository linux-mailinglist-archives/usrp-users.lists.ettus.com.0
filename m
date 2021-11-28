Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C9B46060B
	for <lists+usrp-users@lfdr.de>; Sun, 28 Nov 2021 13:08:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA563384786
	for <lists+usrp-users@lfdr.de>; Sun, 28 Nov 2021 07:08:21 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EFE38380B3D
	for <usrp-users@lists.ettus.com>; Sun, 28 Nov 2021 07:05:47 -0500 (EST)
Date: Sun, 28 Nov 2021 12:05:47 +0000
To: usrp-users@lists.ettus.com
From: iw1fnw@gmail.com
Message-ID: <dOFg7mTPfCCQVbTC7lEJO6QTo5o7Aho0wB6DkZ14GFI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: RqvqwTaYpWlnvLPcJ17dpqkuuNXauLkqH71CBdC68Q@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: AL2V3H7VHE5WLLTPQEEL7HAQAXSTRXU2
X-Message-ID-Hash: AL2V3H7VHE5WLLTPQEEL7HAQAXSTRXU2
X-MailFrom: iw1fnw@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AL2V3H7VHE5WLLTPQEEL7HAQAXSTRXU2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9099299819303002597=="

This is a multi-part message in MIME format.

--===============9099299819303002597==
Content-Type: multipart/alternative;
 boundary="b1_dOFg7mTPfCCQVbTC7lEJO6QTo5o7Aho0wB6DkZ14GFI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_dOFg7mTPfCCQVbTC7lEJO6QTo5o7Aho0wB6DkZ14GFI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello all,

Did you manage to solve this and how?

I had similar problem, even without modifying the image. After an update =
of UHD drivers I loaded the new image using the image loader and somethin=
g went wrong (so I could not use the x310 anymore). I get the same error =
as reported in the first post.

To make it working again I had to use Vivado to load the image. But it is=
 not stored in ROM, so every time I switch off, I need to reload with Viv=
ado. I tried different UHD versions and same result. No way to use the UH=
D image loader and store the image in ROM.

I also noticed that when I use GNURadio to generate even a simple signal,=
 I get several underrun errors (lots of =E2=80=98U=E2=80=99) till the tex=
t buffer is completely full and the script crashes. I=E2=80=99m not sure =
it is related to the same issue, but (if I am not wrong) when we used the=
 x310 at beginning it was working fine.

I was wondering it may be a problem of communication on the LAN (i.e. dat=
a transmission from PC to x310) which creates problems with both the imag=
e loading or data transmission (while it is OK loading images via JTAG).

Any idea?

Al

--b1_dOFg7mTPfCCQVbTC7lEJO6QTo5o7Aho0wB6DkZ14GFI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello all,</p><p>Did you manage to solve this and how?</p><p>I had simil=
ar problem, even without modifying the image. After an update of UHD driver=
s I loaded the new image using the image loader and something went wrong (s=
o I could not use the x310 anymore). I get the same error as reported in th=
e first post.</p><p>To make it working again I had to use Vivado to load th=
e image. But it is not stored in ROM, so every time I switch off, I need to=
 reload with Vivado. I tried different UHD versions and same result. No way=
 to use the UHD image loader and store the image in ROM.</p><p>I also notic=
ed that when I use GNURadio to generate even a simple signal, I get several=
 underrun errors (lots of =E2=80=98U=E2=80=99) till the text buffer is comp=
letely full and the script crashes. I=E2=80=99m not sure it is related to t=
he same issue, but (if I am not wrong) when we used the x310 at beginning i=
t was working fine.</p><p>I was wondering it may be a problem of communicat=
ion on the LAN (i.e. data transmission from PC to x310) which creates probl=
ems with both the image loading or data transmission (while it is OK loadin=
g images via JTAG).</p><p>Any idea?</p><p>Al</p><p><br></p>

--b1_dOFg7mTPfCCQVbTC7lEJO6QTo5o7Aho0wB6DkZ14GFI--

--===============9099299819303002597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9099299819303002597==--
