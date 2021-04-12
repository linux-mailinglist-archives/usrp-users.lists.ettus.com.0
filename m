Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AACCC35D0E5
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 21:16:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DA41C38538F
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 15:16:32 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ADBFE3842F0
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 15:15:42 -0400 (EDT)
Date: Mon, 12 Apr 2021 19:15:42 +0000
To: usrp-users@lists.ettus.com
From: paradis@kwesst.com
Message-ID: <7gR7P4ecewRVaZ5OkClnlvHxYvbb83HVVQK8smQoz8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: BC5D55CD-26FB-4ADE-BD0F-A72619DF2B67@gmail.com
MIME-Version: 1.0
Message-ID-Hash: GOOTLA5YRH4L7R3D4I66TZ7VDXBNA7OZ
X-Message-ID-Hash: GOOTLA5YRH4L7R3D4I66TZ7VDXBNA7OZ
X-MailFrom: paradis@kwesst.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini-i isn't found by uhd_find_devices
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GOOTLA5YRH4L7R3D4I66TZ7VDXBNA7OZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1375464776396370910=="

This is a multi-part message in MIME format.

--===============1375464776396370910==
Content-Type: multipart/alternative;
 boundary="b1_7gR7P4ecewRVaZ5OkClnlvHxYvbb83HVVQK8smQoz8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_7gR7P4ecewRVaZ5OkClnlvHxYvbb83HVVQK8smQoz8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This is the output of =E2=80=98dmesg -wH=E2=80=99 after plugging in the B=
205.

\[Apr12 15:14\] usb 1-1: new high-speed USB device number 11 using xhci_h=
cd

\[  +0.148694\] usb 1-1: New USB device found, idVendor=3D2500, idProduct=
=3D0022, bcdDevice=3D 1.00

\[  +0.000006\] usb 1-1: New USB device strings: Mfr=3D1, Product=3D2, Se=
rialNumber=3D3

\[  +0.000003\] usb 1-1: Product: WestBridge=20

\[  +0.000003\] usb 1-1: Manufacturer: Cypress

\[  +0.000003\] usb 1-1: SerialNumber: 0000000004BE

--b1_7gR7P4ecewRVaZ5OkClnlvHxYvbb83HVVQK8smQoz8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>This is the output of =E2=80=98dmesg -wH=E2=80=99 after plugging in th=
e B205.</p><p><br></p><p>[Apr12 15:14] usb 1-1: new high-speed USB device=
 number 11 using xhci_hcd</p><p>[  +0.148694] usb 1-1: New USB device fou=
nd, idVendor=3D2500, idProduct=3D0022, bcdDevice=3D 1.00</p><p>[  +0.0000=
06] usb 1-1: New USB device strings: Mfr=3D1, Product=3D2, SerialNumber=3D=
3</p><p>[  +0.000003] usb 1-1: Product: WestBridge </p><p>[  +0.000003] u=
sb 1-1: Manufacturer: Cypress</p><p>[  +0.000003] usb 1-1: SerialNumber: =
0000000004BE</p>


--b1_7gR7P4ecewRVaZ5OkClnlvHxYvbb83HVVQK8smQoz8--

--===============1375464776396370910==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1375464776396370910==--
