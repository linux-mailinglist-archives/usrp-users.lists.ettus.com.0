Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6545F3E3706
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 22:27:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 48722384ABF
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 16:27:03 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 549E6383E8C
	for <usrp-users@lists.ettus.com>; Sat,  7 Aug 2021 16:26:18 -0400 (EDT)
Date: Sat, 7 Aug 2021 20:26:18 +0000
To: usrp-users@lists.ettus.com
From: xiapeiqing@gmail.com
Message-ID: <sS0Wsm0b949VT4FfgaX5Bu6SkQwZFIOWs3HfAW1zxLI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 610EDB8D.1030606@gmail.com
MIME-Version: 1.0
Message-ID-Hash: GPSTJXSWCJV54GNZKRCCM6SHBC4MTJFN
X-Message-ID-Hash: GPSTJXSWCJV54GNZKRCCM6SHBC4MTJFN
X-MailFrom: xiapeiqing@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 ethernet connection failure
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GPSTJXSWCJV54GNZKRCCM6SHBC4MTJFN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1812214056520548308=="

This is a multi-part message in MIME format.

--===============1812214056520548308==
Content-Type: multipart/alternative;
 boundary="b1_sS0Wsm0b949VT4FfgaX5Bu6SkQwZFIOWs3HfAW1zxLI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_sS0Wsm0b949VT4FfgaX5Bu6SkQwZFIOWs3HfAW1zxLI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi, Marcus,

Thanks for your reply. The clear & precise problem description is an endl=
ess pursuit I should try to do better. My experience is a lot of problem =
get answered by itself when it is described clear enough to the very deta=
il, it=E2=80=99s part of a learning process.

My current guess is the FPGA program after JTAG download runs the ZPU to =
retrieve the existing settings, such as the IP, from EEPROM. The page(s) =
for setting must live outside the pages used for FPGA image, as the uhd_i=
mage_loader process won=E2=80=99t change these settings. This is another =
entry in my TODO list.

Wish everybody a nice weekend.

--b1_sS0Wsm0b949VT4FfgaX5Bu6SkQwZFIOWs3HfAW1zxLI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi, Marcus,</p><p>Thanks for your reply. The clear &amp; precise probl=
em description is an endless pursuit I should try to do better. My experi=
ence is a lot of problem get answered by itself when it is described clea=
r enough to the very detail, it=E2=80=99s part of a learning process.</p>=
<p>My current guess is the FPGA program after JTAG download runs the ZPU =
to retrieve the existing settings, such as the IP, from EEPROM. The page(=
s) for setting must live outside the pages used for FPGA image, as the uh=
d_image_loader process won=E2=80=99t change these settings. This is anoth=
er entry in my TODO list.</p><p>Wish everybody a nice weekend.</p>


--b1_sS0Wsm0b949VT4FfgaX5Bu6SkQwZFIOWs3HfAW1zxLI--

--===============1812214056520548308==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1812214056520548308==--
