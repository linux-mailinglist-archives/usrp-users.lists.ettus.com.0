Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D0B85AA65
	for <lists+usrp-users@lfdr.de>; Mon, 19 Feb 2024 18:52:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 588CC380B0B
	for <lists+usrp-users@lfdr.de>; Mon, 19 Feb 2024 12:52:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708365174; bh=Fd0xRo/X3IKLC2vq1mpLlXf2kx6vErPthpUoohko0hQ=;
	h=To:Date:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=jw/PGSATE3L2Z81Sx+Stbi7bKaMFUZvqR5EDIzq7QOWNkLAloFIagoPgXlHz5fkyn
	 Kvsz3bv2H6w2+jj8pmrqH5nwRbvV6EjcQHzboC+7+oVxSInPgCUmwXLvYWXLcdcrXh
	 WzLPtpCN3PQdHKZIYYU6Gbm/FAtEjmXTuh3jFkwJXoD6yFh0GlMCHjks6ZQaQZeSWn
	 6ntiimNMEx2dPIEMRa8nzcphAkNPghWBarUyG94ZpMhVH2eDaGcHBsRydL5RwQq6HW
	 NF1cS6msSQ7qX4a64kFKybThOF47AI9vwbM31TsgZ8hqSIMvzwJ6RlarB5oU+1thbu
	 p/11Z6gN1NGqw==
Received: from qs51p00im-qukt01071502.me.com (qs51p00im-qukt01071502.me.com [17.57.155.5])
	by mm2.emwd.com (Postfix) with ESMTPS id 1F1143809CC
	for <usrp-users@lists.ettus.com>; Mon, 19 Feb 2024 12:51:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=me.com header.i=@me.com header.b="bzHIz/3O";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1708365113; bh=qa0T9/IEOq8yiWHt7/hQ7MYPxpzHe+YQTm2Vh3tLOYY=;
	h=To:From:Subject:Date:Message-id:Content-Type:MIME-Version;
	b=bzHIz/3O5BK3rN12UKsJTMfMf6KTfhNmn8EL5WsdedbgREseEwkauwjBJtjmYktwA
	 W1ro9lmWMAV4jz+0ngpURcxp/8V01QwrmtIzqe1s7lX2NvzswxIGI3fMNhxc0crE4B
	 KINtDnKX/DsqNfGNc3KViK2L97QGRLHLXA3BAnKvbb0XXZtHEQfYxMGvm/9Yko1Fhl
	 Q0UbRb2kYVBNvDnhwsap2/Ok0eaz50H8BN9qZHguBZQ2IFM0f1TtNuPgJNl3WJs6f/
	 rcw9WMI/qlLP5n0HDq/w9c3IBXqXF3MUjdoEEFPXrSaA6RSBYVcsNzMkc2//jC8ngQ
	 +NloMqWaI03eQ==
Received: from qs51p00im-qukt01071502.me.com (unknown [17.57.155.5])
	by qs51p00im-qukt01071502.me.com (Postfix) with ESMTPS id 3472966805EE;
	Mon, 19 Feb 2024 17:51:52 +0000 (UTC)
Received: from p00-mailws2-59788ccdd8-hkrvg (qs51p00im.dlb-asmtpoutvip.me.com [10.112.113.12])
	by qs51p00im-qukt01071502.me.com (Postfix) with ESMTPSA id CEAC666800D8;
	Mon, 19 Feb 2024 17:51:51 +0000 (UTC)
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Date: Mon, 19 Feb 2024 17:51:51 +0000 (UTC)
X-Mailer: iCloud MailClientcurrent MailServer2409B72.10000-master-0-9980a4f196b0
Message-id: <255d47c7-cc93-445e-92f7-4074e1aba83a@me.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: AR64OeY_JiKwEmRW_GbLdXC_mjL91rvY
X-Proofpoint-GUID: AR64OeY_JiKwEmRW_GbLdXC_mjL91rvY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-19_15,2024-02-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=1 phishscore=0 clxscore=1015 adultscore=0
 mlxscore=1 mlxlogscore=201 malwarescore=0 spamscore=1 suspectscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2402190134
Message-ID-Hash: IDJAGLUBLEVY3VI6EARBO3FARNC2UQQR
X-Message-ID-Hash: IDJAGLUBLEVY3VI6EARBO3FARNC2UQQR
X-MailFrom: jimgrubb@me.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD Rules
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IDJAGLUBLEVY3VI6EARBO3FARNC2UQQR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Jim Grubb via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jim Grubb <jimgrubb@me.com>
Content-Type: multipart/mixed; boundary="===============2166454711142001754=="


--===============2166454711142001754==
Content-Type: multipart/alternative; boundary=Apple-Webmail-42--dbd17b17-34dd-4f55-be05-88b71f746453


--Apple-Webmail-42--dbd17b17-34dd-4f55-be05-88b71f746453
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
    charset=utf-8;
    format=flowed

jim@pop-os:~$ grep 022 /usr/lib/udev/rules.d/*uhd* SUBSYSTEMS=3D=3D"usb", =
ATTRS{idVendor}=3D=3D"2500", ATTRS{idProduct}=3D=3D"0022", MODE:=3D"0666" =
jim@ pop-os:/usr/lib/udev/rules.d $ more 60-uhd-host.rules # # Copyright 2=
011,2015 Ettus Research LLC # Copyright 2018 Ettus Research, a National In=
struments Company # # SPDX-License-Identifier: GPL-3.0-or-later # #USRP1 S=
UBSYSTEMS=3D=3D"usb", ATTRS{idVendor}=3D=3D"fffe", ATTRS{idProduct}=3D=3D"=
0002", MODE:=3D"0666" #B100 SUBSYSTEMS=3D=3D"usb", ATTRS{idVendor}=3D=3D"2=
500", ATTRS{idProduct}=3D=3D"0002", MODE:=3D"0666" #B200 SUBSYSTEMS=3D=3D"=
usb", ATTRS{idVendor}=3D=3D"2500", ATTRS{idProduct}=3D=3D"0020", MODE:=3D"=
0666" SUBSYSTEMS=3D=3D"usb", ATTRS{idVendor}=3D=3D"2500", ATTRS{idProduct}=
=3D=3D"0021", MODE:=3D"0666" SUBSYSTEMS=3D=3D"usb", ATTRS{idVendor}=3D=3D"=
2500", ATTRS{idProduct}=3D=3D"0022", MODE:=3D"0666" SUBSYSTEMS=3D=3D"usb",=
 ATTRS{idVendor}=3D=3D"3923", ATTRS{idProduct}=3D=3D"7813", MODE:=3D"0666"=
 SUBSYSTEMS=3D=3D"usb", ATTRS{idVendor}=3D=3D"3923", ATTRS{idProduct}=3D=3D=
"7814", MODE:=3D"0666"
--Apple-Webmail-42--dbd17b17-34dd-4f55-be05-88b71f746453
Content-Type: multipart/related;
    type="text/html";
    boundary=Apple-Webmail-86--dbd17b17-34dd-4f55-be05-88b71f746453


--Apple-Webmail-86--dbd17b17-34dd-4f55-be05-88b71f746453
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
    charset=utf-8;

<html><body><div><div><span class=3D"font" style=3D"font-family: courier new,monospace=
, sans-serif;">jim@pop-os:~$ grep 022 /usr/lib/udev/rules.d/*uhd*</span><s=
pan class=3D"font" style=3D"font-family: courier new,monospace, sans-serif=
;"><br></span></div></div><div><span class=3D"font" style=3D"font-family: =
courier new,monospace, sans-serif;">SUBSYSTEMS=3D=3D"usb", ATTRS{idVendor}=
=3D=3D"2500", ATTRS{idProduct}=3D=3D"0022", MODE:=3D"0666"</span><span cla=
ss=3D"font" style=3D"font-family: courier new,monospace, sans-serif;"><br>=
</span></div><div><span class=3D"font" style=3D"font-family: courier new,m=
onospace, sans-serif;"><br></span></div><div><span class=3D"font" style=3D=
"font-family: courier new,monospace, sans-serif;">jim@<a href=3D"http://po=
p-os:/usr/lib/udev/rules.d" rel=3D"noopener noreferrer">pop-os:/usr/lib/ud=
ev/rules.d</a>$ more 60-uhd-host.rules</span><span class=3D"font" style=3D=
"font-family: courier new,monospace, sans-serif;"><br></span></div><div><s=
pan class=3D"font" style=3D"font-family: courier new,monospace, sans-serif=
;">#</span><span class=3D"font" style=3D"font-family: courier new,monospac=
e, sans-serif;"><br></span></div><div><span class=3D"font" style=3D"font-f=
amily: courier new,monospace, sans-serif;"># Copyright 2011,2015 Ettus Res=
earch LLC</span><span class=3D"font" style=3D"font-family: courier new,mon=
ospace, sans-serif;"><br></span></div><div><span class=3D"font" style=3D"f=
ont-family: courier new,monospace, sans-serif;"># Copyright 2018 Ettus Res=
earch, a National Instruments Company</span><span class=3D"font" style=3D"=
font-family: courier new,monospace, sans-serif;"><br></span></div><div><sp=
an class=3D"font" style=3D"font-family: courier new,monospace, sans-serif;=
">#</span><span class=3D"font" style=3D"font-family: courier new,monospace=
, sans-serif;"><br></span></div><div><span class=3D"font" style=3D"font-fa=
mily: courier new,monospace, sans-serif;"># SPDX-License-Identifier: GPL-3=
.0-or-later</span><span class=3D"font" style=3D"font-family: courier new,m=
onospace, sans-serif;"><br></span></div><div><span class=3D"font" style=3D=
"font-family: courier new,monospace, sans-serif;">#</span><span class=3D"f=
ont" style=3D"font-family: courier new,monospace, sans-serif;"><br></span>=
</div><div><span class=3D"font" style=3D"font-family: courier new,monospac=
e, sans-serif;"><br></span></div><div><span class=3D"font" style=3D"font-f=
amily: courier new,monospace, sans-serif;">#USRP1</span><span class=3D"fon=
t" style=3D"font-family: courier new,monospace, sans-serif;"><br></span></=
div><div><span class=3D"font" style=3D"font-family: courier new,monospace,=
 sans-serif;">SUBSYSTEMS=3D=3D"usb", ATTRS{idVendor}=3D=3D"fffe", ATTRS{id=
Product}=3D=3D"0002", MODE:=3D"0666"</span><span class=3D"font" style=3D"f=
ont-family: courier new,monospace, sans-serif;"><br></span></div><div><spa=
n class=3D"font" style=3D"font-family: courier new,monospace, sans-serif;"=
><br></span></div><div><span class=3D"font" style=3D"font-family: courier =
new,monospace, sans-serif;">#B100</span><span class=3D"font" style=3D"font=
-family: courier new,monospace, sans-serif;"><br></span></div><div><span c=
lass=3D"font" style=3D"font-family: courier new,monospace, sans-serif;">SU=
BSYSTEMS=3D=3D"usb", ATTRS{idVendor}=3D=3D"2500", ATTRS{idProduct}=3D=3D"0=
002", MODE:=3D"0666"</span><span class=3D"font" style=3D"font-family: cour=
ier new,monospace, sans-serif;"><br></span></div><div><span class=3D"font"=
 style=3D"font-family: courier new,monospace, sans-serif;"><br></span></di=
v><div><span class=3D"font" style=3D"font-family: courier new,monospace, s=
ans-serif;">#B200</span><span class=3D"font" style=3D"font-family: courier=
 new,monospace, sans-serif;"><br></span></div><div><span class=3D"font" st=
yle=3D"font-family: courier new,monospace, sans-serif;">SUBSYSTEMS=3D=3D"u=
sb", ATTRS{idVendor}=3D=3D"2500", ATTRS{idProduct}=3D=3D"0020", MODE:=3D"0=
666"</span><span class=3D"font" style=3D"font-family: courier new,monospac=
e, sans-serif;"><br></span></div><div><span class=3D"font" style=3D"font-f=
amily: courier new,monospace, sans-serif;">SUBSYSTEMS=3D=3D"usb", ATTRS{id=
Vendor}=3D=3D"2500", ATTRS{idProduct}=3D=3D"0021", MODE:=3D"0666"</span><s=
pan class=3D"font" style=3D"font-family: courier new,monospace, sans-serif=
;"><br></span></div><div><span class=3D"font" style=3D"font-family: courie=
r new,monospace, sans-serif;">SUBSYSTEMS=3D=3D"usb", ATTRS{idVendor}=3D=3D=
"2500", ATTRS{idProduct}=3D=3D"0022", MODE:=3D"0666"</span><span class=3D"=
font" style=3D"font-family: courier new,monospace, sans-serif;"><br></span=
></div><div><span class=3D"font" style=3D"font-family: courier new,monospa=
ce, sans-serif;">SUBSYSTEMS=3D=3D"usb", ATTRS{idVendor}=3D=3D"3923", ATTRS=
{idProduct}=3D=3D"7813", MODE:=3D"0666"</span><span class=3D"font" style=3D=
"font-family: courier new,monospace, sans-serif;"><br></span></div><div><s=
pan class=3D"font" style=3D"font-family: courier new,monospace, sans-serif=
;">SUBSYSTEMS=3D=3D"usb", ATTRS{idVendor}=3D=3D"3923", ATTRS{idProduct}=3D=
=3D"7814", MODE:=3D"0666"</span><br></div><div><br></div><div><span class=3D=
"font" style=3D"font-family: courier new,monospace, sans-serif;"><br></spa=
n></div><div><div><span class=3D"font" style=3D"font-family: courier new,m=
onospace, sans-serif;"><br></span></div><div><span class=3D"font" style=3D=
"font-family: courier new,monospace, sans-serif;"><br></span></div></div><=
div><br></div></body></html>
--Apple-Webmail-86--dbd17b17-34dd-4f55-be05-88b71f746453--

--Apple-Webmail-42--dbd17b17-34dd-4f55-be05-88b71f746453--

--===============2166454711142001754==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2166454711142001754==--
