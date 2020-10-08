Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4C1287C87
	for <lists+usrp-users@lfdr.de>; Thu,  8 Oct 2020 21:34:34 +0200 (CEST)
Received: from [::1] (port=52220 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQbgP-0005pY-4R; Thu, 08 Oct 2020 15:34:33 -0400
Received: from ssi-cc-fra1-mro-001.atmailcloud.com ([89.46.80.72]:49296)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <drtaylor@manx.net>) id 1kQbgK-0005gn-7A
 for usrp-users@lists.ettus.com; Thu, 08 Oct 2020 15:34:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=manx.net;
 s=20160330; h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID;
 bh=MtNS24Z3VmesDk2yfIyiQ7qjg136ZYIOe7Z3wVXolSI=; b=ksJIAI9MGqAXuzk4vcd6guHpyh
 sQ4Te2wfNpwscAniZaN9Qs5txRmaLpYXeigb0NF1GwCAzb8RLLms4RiPKtyE+IxgqdOJPEmBo3QTe
 i8j/HVzhz9A+ypegi5mLXJPF6Du258jWKyR96UHCHy41U9xX+8afn5Hcvo5Cn0d5zwn8=;
Received: from pc2-cc-fra1-mrr-001.internal.atmailcloud.com ([10.20.30.45])
 by ssi-cc-fra1-mro-001.internal.atmailcloud.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>) id 1kQbfe-0006Zo-PQ
 for usrp-users@lists.ettus.com; Fri, 09 Oct 2020 05:33:46 +1000
Received: from pc2-cc-fra1-mrc-005.internal.atmailcloud.com ([10.20.30.55])
 by pc2-cc-fra1-mrr-001.internal.atmailcloud.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>) id 1kQbfe-0001Wf-Ma
 for usrp-users@lists.ettus.com; Fri, 09 Oct 2020 05:33:46 +1000
Received: from [87.254.66.171] (helo=PC1)
 by pc2-cc-fra1-mrc-005.internal.atmailcloud.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>) id 1kQbfe-0003mv-D3
 for usrp-users@lists.ettus.com; Fri, 09 Oct 2020 05:33:46 +1000
Message-ID: <8BDDB039BE74418FA519715D5BB4062B@PC1>
To: <usrp-users@lists.ettus.com>
References: <977DB5BC614A438B9066262CBAEDBC75@PC1> <5F7DF8FA.707@gmail.com>
 <1316B17C73CD4E78A29C851758B9424F@PC1> <5F7F603B.3040102@gmail.com>
In-Reply-To: <5F7F603B.3040102@gmail.com>
Date: Thu, 8 Oct 2020 20:33:46 +0100
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
Importance: Normal
X-Mailer: Microsoft Windows Live Mail 16.4.3528.331
X-MimeOLE: Produced By Microsoft MimeOLE V16.4.3528.331
X-Atmail-Id: drtaylor@manx.net
X-atmail-spam-score: 0
X-atmail-spam-action: no action
X-atmailcloud-spam-bar: /
Subject: Re: [USRP-users] B210 USRP object creation
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "David Taylor \(manx.net\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "David Taylor \(manx.net\)" <drtaylor@manx.net>
Content-Type: multipart/mixed; boundary="===============3211124852483721032=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.

--===============3211124852483721032==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0016_01D69DB2.5260BF60"

This is a multi-part message in MIME format.

------=_NextPart_000_0016_01D69DB2.5260BF60
Content-Type: text/plain;
	charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Point taken. - I didn=92t actually check the original default values of =
the VID and PID, but they were reset according to the table provided, so =
that they could be tested as arguments in the make statement below.
=93About the Motherboard and Daughtercard EEPROM on USRP Devices (5th =
August 2020)=94

The aim is to be able to manipulate some GPIO bits in the block work =
function and to align events using the 1PPS input.

Regards,
David GD4FMB



From: Marcus D. Leech via USRP-users=20
Sent: Thursday, October 8, 2020 7:53 PM
To: usrp-users@lists.ettus.com=20
Subject: Re: [USRP-users] B210 USRP object creation

On 10/08/2020 12:51 PM, David Taylor (manx.net) via USRP-users wrote:

  Thanks Marcus,

  I have had a look at the GPIO example source. It contains some useful =
code, but I have not compiled and run it.
  Other example code in =93Synchronising USRP Events using Timed =
Commands (17 April 2020)=94 has been used in the OOT block.

  1) I have configured my B210(NI) EEPROM with the correct USB vid =3D =
0x2500 and pid =3D 0x0814.
  The device is clearly identifiable and usable over USB3.

  2). I have tried to identify the USRP using the following code prior =
to making an object:-
  uhd:: device_addr_t hint;
  hint[=93serial=94] =3D =933150322=94;
  uhd:: device_addrs_t dev_addrs =3D uhd:: device::find(hint);

  3). Or the following to create the object directly:-
  uhd::usrp::multi_usrp:: sptr device =3D =
uhd::usrp::multi_usrp::make(=93vid=3D0x2500, pid=3D0x7814=94);

  The codes are placed in the OOT constructor, compile and link with the =
appropriate headers.
  In both cases the flow-graph fails to run with the usual =91block=92 =
attribute error message. There are no USRP source or sink blocks in the =
flow-graph that could possibly conflict.

  Regards,
  David=20

COuld you just use one of the standard test tools like =
"rx_samples_to_file"  and specify "type=3Db200" in the device arguments?

There should NEVER have been any reason to change the VID and PID on the =
device.





-------------------------------------------------------------------------=
-------
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

------=_NextPart_000_0016_01D69DB2.5260BF60
Content-Type: text/html;
	charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<META content=3D"text/html; charset=3Dwindows-1252" =
http-equiv=3DContent-Type></HEAD>
<BODY dir=3Dltr text=3D#000000 bgColor=3D#ffffff>
<DIV dir=3Dltr>
<DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: #000000">
<DIV>Point taken. - I didn=92t actually check the original default =
values of the=20
VID and PID, but they were reset according to the table provided, so =
that they=20
could be tested as arguments in the make statement below.</DIV>
<DIV>=93About the Motherboard and Daughtercard EEPROM on USRP Devices =
(5th August=20
2020)=94</DIV>
<DIV>&nbsp;</DIV>
<DIV>The aim is to be able to manipulate some GPIO bits in the block =
work=20
function and to align events using the 1PPS input.</DIV>
<DIV>&nbsp;</DIV>
<DIV>Regards,</DIV>
<DIV>David GD4FMB</DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV=20
style=3D'FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
"Calibri"; FONT-WEIGHT: normal; COLOR: #000000; FONT-STYLE: normal; =
DISPLAY: inline'>
<DIV style=3D"FONT: 10pt tahoma">
<DIV>&nbsp;</DIV>
<DIV style=3D"BACKGROUND: #f5f5f5">
<DIV style=3D"font-color: black"><B>From:</B> <A=20
title=3Dusrp-users@lists.ettus.com>Marcus D. Leech via USRP-users</A> =
</DIV>
<DIV><B>Sent:</B> Thursday, October 8, 2020 7:53 PM</DIV>
<DIV><B>To:</B> <A=20
title=3Dusrp-users@lists.ettus.com>usrp-users@lists.ettus.com</A> </DIV>
<DIV><B>Subject:</B> Re: [USRP-users] B210 USRP object=20
creation</DIV></DIV></DIV>
<DIV>&nbsp;</DIV></DIV>
<DIV=20
style=3D'FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
"Calibri"; FONT-WEIGHT: normal; COLOR: #000000; FONT-STYLE: normal; =
DISPLAY: inline'>
<DIV class=3Dmoz-cite-prefix>On 10/08/2020 12:51 PM, David Taylor =
(manx.net) via=20
USRP-users wrote:<BR></DIV>
<BLOCKQUOTE cite=3Dmid:1316B17C73CD4E78A29C851758B9424F@PC1 =
type=3D"cite">
  <DIV dir=3Dltr>
  <DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: =
#000000">
  <DIV>Thanks Marcus,</DIV>
  <DIV>&nbsp;</DIV>
  <DIV>I have had a look at the GPIO example source. It contains some =
useful=20
  code, but I have not compiled and run it.</DIV>
  <DIV>Other example code in =93Synchronising USRP Events using Timed =
Commands (17=20
  April 2020)=94 has been used in the OOT block.</DIV>
  <DIV>&nbsp;</DIV>
  <DIV>1) I have configured my B210(NI) EEPROM with the correct USB vid =
=3D 0x2500=20
  and pid =3D 0x0814.</DIV>
  <DIV>The device is clearly identifiable and usable over USB3.</DIV>
  <DIV>&nbsp;</DIV>
  <DIV>2). I have tried to identify the USRP using the following code =
prior to=20
  making an object:-</DIV>
  <DIV><FONT color=3D#0000ff>uhd:: device_addr_t hint;</FONT></DIV>
  <DIV><FONT color=3D#0000ff>hint[=93serial=94] =3D =
=933150322=94;</FONT></DIV>
  <DIV><FONT color=3D#0000ff>uhd:: device_addrs_t dev_addrs =3D uhd::=20
  device::find(hint);</FONT></DIV>
  <DIV>&nbsp;</DIV>
  <DIV>3). Or the following to create the object directly:-</DIV>
  <DIV><FONT color=3D#0000ff>uhd::usrp::multi_usrp:: sptr device =3D=20
  uhd::usrp::multi_usrp::make(=93vid=3D0x2500, =
pid=3D0x7814=94);</FONT></DIV>
  <DIV>&nbsp;</DIV>
  <DIV>The codes are placed in the OOT constructor, compile and link =
with the=20
  appropriate headers.</DIV>
  <DIV>In both cases the flow-graph fails to run with the usual =
=91block=92=20
  attribute error message. There are no USRP source or sink blocks in =
the=20
  flow-graph that could possibly conflict.</DIV>
  <DIV>&nbsp;</DIV>
  <DIV>Regards,</DIV>
  <DIV>David </DIV>
  <DIV>&nbsp;</DIV></DIV></DIV></BLOCKQUOTE>COuld you just use one of =
the standard=20
test tools like "rx_samples_to_file"&nbsp; and specify "type=3Db200" in =
the device=20
arguments?<BR><BR>There should NEVER have been any reason to change the =
VID and=20
PID on the device.<BR><BR><BR>
<P>
<HR>
_______________________________________________<BR>USRP-users mailing=20
list<BR>USRP-users@lists.ettus.com<BR>http://lists.ettus.com/mailman/list=
info/usrp-users_lists.ettus.com<BR></DIV></DIV></DIV></BODY></HTML>

------=_NextPart_000_0016_01D69DB2.5260BF60--



--===============3211124852483721032==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3211124852483721032==--


