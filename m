Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3782035D0D8
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 21:10:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E2473384FAC
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 15:10:27 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EF36D384241
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 15:09:37 -0400 (EDT)
Date: Mon, 12 Apr 2021 19:09:37 +0000
To: usrp-users@lists.ettus.com
From: paradis@kwesst.com
Message-ID: <AJYWdSUWfCoacfRUMfLJRzMBv3uJ1cgCXBB5ORI5Pwk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: JA2MRIzFOSKLo9kP4Ql6TOblW2j1MCRkMV0mVGcXg@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: EHTHSPFFZGC3D3IE6BSDS4B75AEURKYX
X-Message-ID-Hash: EHTHSPFFZGC3D3IE6BSDS4B75AEURKYX
X-MailFrom: paradis@kwesst.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini-i isn't found by uhd_find_devices
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EHTHSPFFZGC3D3IE6BSDS4B75AEURKYX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8461966043262203054=="

This is a multi-part message in MIME format.

--===============8461966043262203054==
Content-Type: multipart/alternative;
 boundary="b1_AJYWdSUWfCoacfRUMfLJRzMBv3uJ1cgCXBB5ORI5Pwk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_AJYWdSUWfCoacfRUMfLJRzMBv3uJ1cgCXBB5ORI5Pwk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99ve been poking around trying to find out any more information o=
n my issue and I noticed this after running the =E2=80=98usb-devices=E2=80=
=99 command:

T:  Bus=3D01 Lev=3D01 Prnt=3D01 Port=3D01 Cnt=3D02 Dev#=3D 10 Spd=3D480 M=
xCh=3D 0

D:  Ver=3D 2.00 Cls=3D00(>ifc ) Sub=3D00 Prot=3D00 MxPS=3D64 #Cfgs=3D  1

P:  Vendor=3D2500 ProdID=3D0022 Rev=3D01.00

S:  Manufacturer=3DCypress

S:  Product=3DWestBridge=20

S:  SerialNumber=3D0000000004BE

C:  #Ifs=3D 1 Cfg#=3D 1 Atr=3D80 MxPwr=3D200mA

I:  If#=3D0x0 Alt=3D 0 #EPs=3D 0 Cls=3Dff(vend.) Sub=3D00 Prot=3D00 Drive=
r=3D(none)

The VID/PID are 2500:0022 so this is the B205 I have plugged in, but on t=
he very last line it says =E2=80=9CDriver=3D(none).

Could there be something wrong with the UHD installation? Should I try a =
different version than v4.0.0.0?

--b1_AJYWdSUWfCoacfRUMfLJRzMBv3uJ1cgCXBB5ORI5Pwk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I=E2=80=99ve been poking around trying to find out any more informatio=
n on my issue and I noticed this after running the =E2=80=98usb-devices=E2=
=80=99 command:</p><p>T:  Bus=3D01 Lev=3D01 Prnt=3D01 Port=3D01 Cnt=3D02 =
Dev#=3D 10 Spd=3D480 MxCh=3D 0</p><p>D:  Ver=3D 2.00 Cls=3D00(&gt;ifc ) S=
ub=3D00 Prot=3D00 MxPS=3D64 #Cfgs=3D  1</p><p>P:  Vendor=3D2500 ProdID=3D=
0022 Rev=3D01.00</p><p>S:  Manufacturer=3DCypress</p><p>S:  Product=3DWes=
tBridge </p><p>S:  SerialNumber=3D0000000004BE</p><p>C:  #Ifs=3D 1 Cfg#=3D=
 1 Atr=3D80 MxPwr=3D200mA</p><p>I:  If#=3D0x0 Alt=3D 0 #EPs=3D 0 Cls=3Dff=
(vend.) Sub=3D00 Prot=3D00 Driver=3D(none)</p><p><br></p><p>The VID/PID a=
re 2500:0022 so this is the B205 I have plugged in, but on the very last =
line it says =E2=80=9CDriver=3D(none).</p><p>Could there be something wro=
ng with the UHD installation? Should I try a different version than v4.0.=
0.0?</p>


--b1_AJYWdSUWfCoacfRUMfLJRzMBv3uJ1cgCXBB5ORI5Pwk--

--===============8461966043262203054==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8461966043262203054==--
