Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C56472C9B
	for <lists+usrp-users@lfdr.de>; Mon, 13 Dec 2021 13:51:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F6943852E0
	for <lists+usrp-users@lfdr.de>; Mon, 13 Dec 2021 07:51:01 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 60109384BAE
	for <usrp-users@lists.ettus.com>; Mon, 13 Dec 2021 07:50:02 -0500 (EST)
Date: Mon, 13 Dec 2021 12:50:02 +0000
To: usrp-users@lists.ettus.com
From: iw1fnw@gmail.com
Message-ID: <pDx8ClDRgOJoYyr1t8oX3pYgHfcCNhdvqGXmAlOjXU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: f6882ec6-07a3-1851-530b-13beaf28e038@gmail.com
MIME-Version: 1.0
Message-ID-Hash: EJSSLUKLBPTQAKWF54ME3LETZ3YGDQJ7
X-Message-ID-Hash: EJSSLUKLBPTQAKWF54ME3LETZ3YGDQJ7
X-MailFrom: iw1fnw@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EJSSLUKLBPTQAKWF54ME3LETZ3YGDQJ7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5534897054595836292=="

This is a multi-part message in MIME format.

--===============5534897054595836292==
Content-Type: multipart/alternative;
 boundary="b1_pDx8ClDRgOJoYyr1t8oX3pYgHfcCNhdvqGXmAlOjXU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_pDx8ClDRgOJoYyr1t8oX3pYgHfcCNhdvqGXmAlOjXU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

We received the board at end of June 2020 and not used that much due to C=
ovid restriction in accessing the lab.

I think it was working with =E2=80=9Cold=E2=80=9D GNU-Radio (version 2), =
but in May 2021 we updated everything to GNU-Radio 3 (including Linux dis=
tribution, etc.). At that point, I had problem since GNU-Radio was compla=
ining that the FPGA image was not in line with the USRP drivers, and it a=
sked to upgrade it using the image loader.

I did it, and the USPR stopped working (i.e. the image loading was not su=
ccessful, with same above error). We recovered using Vivado, and this is =
where we are now.

I may try to upload the image using the PCIe interface on another machine=
. That is the only other thing that I can think about now.

--b1_pDx8ClDRgOJoYyr1t8oX3pYgHfcCNhdvqGXmAlOjXU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>We received the board at end of June 2020 and not used that much due t=
o Covid restriction in accessing the lab.</p><p>I think it was working wi=
th =E2=80=9Cold=E2=80=9D GNU-Radio (version 2), but in May 2021 we update=
d everything to GNU-Radio 3 (including Linux distribution, etc.). At that=
 point, I had problem since GNU-Radio was complaining that the FPGA image=
 was not in line with the USRP drivers, and it asked to upgrade it using =
the image loader.</p><p>I did it, and the USPR stopped working (i.e. the =
image loading was not successful, with same above error). We recovered us=
ing Vivado, and this is where we are now.</p><p>I may try to upload the i=
mage using the PCIe interface on another machine. That is the only other =
thing that I can think about now.</p>


--b1_pDx8ClDRgOJoYyr1t8oX3pYgHfcCNhdvqGXmAlOjXU--

--===============5534897054595836292==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5534897054595836292==--
