Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 237C348318E
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 14:46:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1194A3852C3
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 08:46:43 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A2D59384F54
	for <usrp-users@lists.ettus.com>; Mon,  3 Jan 2022 08:45:42 -0500 (EST)
Date: Mon, 3 Jan 2022 13:45:42 +0000
To: usrp-users@lists.ettus.com
From: ahmetyilmaz@logdots.com
Message-ID: <7Q0SXWGRveP6JazyGTvXZI3CmihwXdwX1hp6zOax8EQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: CWPB7AY5HBGSVHIC4MUG3F2PIOUGGMOH
X-Message-ID-Hash: CWPB7AY5HBGSVHIC4MUG3F2PIOUGGMOH
X-MailFrom: ahmetyilmaz@logdots.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 Image Flashing Problem: "Error: RuntimeError: Device reported an error during initialization."
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CWPB7AY5HBGSVHIC4MUG3F2PIOUGGMOH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1425406351390384397=="

This is a multi-part message in MIME format.

--===============1425406351390384397==
Content-Type: multipart/alternative;
 boundary="b1_7Q0SXWGRveP6JazyGTvXZI3CmihwXdwX1hp6zOax8EQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_7Q0SXWGRveP6JazyGTvXZI3CmihwXdwX1hp6zOax8EQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello all,

I am using UHD 4.0 and when I look at the FPGA using Vivado over JTAG, I =
see that the FPGA is not programmed. So I send HG bitstream which is down=
loaded with "uhd_images_downloader" via JTAG to X310 (USRP-2945R). I am a=
ble to successfully ping the X310 and observe daughterboards and other in=
formation with "uhd_usrp_probe". With "uhd_fft" I can properly look at th=
e spectrum of the signal.=20

However, when I want to flash the UHD 4.0 X310 HG image with "uhd_image_l=
oader", I keep getting "Error: RuntimeError: Device reported an error dur=
ing initialization.". When I read the contents of the EEPROM with =E2=80=9C=
usrp_burn_mb_eeprom=E2=80=9C, X310 appears to be in revision 7. I tried t=
o write to the flash after updating to the revision 8, but I was unsucces=
sful again.=20

I can't use X310 without JTAG because of this interesting issue.  If you =
can point me towards solution, I would be grateful.

Thank you so much.

--b1_7Q0SXWGRveP6JazyGTvXZI3CmihwXdwX1hp6zOax8EQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello all,</p><p>I am using UHD 4.0 and when I look at the FPGA using =
Vivado over JTAG, I see that the FPGA is not programmed. So I send HG bit=
stream which is downloaded with "uhd_images_downloader" via JTAG to X310 =
(USRP-2945R). I am able to successfully ping the X310 and observe daughte=
rboards and other information with "uhd_usrp_probe". With "uhd_fft" I can=
 properly look at the spectrum of the signal. </p><p>However, when I want=
 to flash the UHD 4.0 X310 HG image with "uhd_image_loader", I keep getti=
ng "Error: RuntimeError: Device reported an error during initialization."=
. When I read the contents of the EEPROM with =E2=80=9Cusrp_burn_mb_eepro=
m=E2=80=9C, X310 appears to be in revision 7. I tried to write to the fla=
sh after updating to the revision 8, but I was unsuccessful again. </p><p=
>I can't use X310 without JTAG because of this interesting issue.  If you=
 can point me towards solution, I would be grateful.</p><p>Thank you so m=
uch.</p>


--b1_7Q0SXWGRveP6JazyGTvXZI3CmihwXdwX1hp6zOax8EQ--

--===============1425406351390384397==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1425406351390384397==--
