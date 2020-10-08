Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA560287A5B
	for <lists+usrp-users@lfdr.de>; Thu,  8 Oct 2020 18:51:49 +0200 (CEST)
Received: from [::1] (port=50944 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQZ8t-0002VE-KS; Thu, 08 Oct 2020 12:51:47 -0400
Received: from ssi-cc-fra1-mro-003.atmailcloud.com ([89.45.227.180]:50776)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <drtaylor@manx.net>) id 1kQZ8p-0002Hu-Ss
 for usrp-users@lists.ettus.com; Thu, 08 Oct 2020 12:51:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=manx.net;
 s=20160330; h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID;
 bh=kXSF5IRqE9Ndf8J+9eYNl1d+A/kfbjH7v3qu66xD3hM=; b=haRta4u+WjdoA9wK86hzTRu+0B
 2ix/ML89FZw1gZ3yGN6jD5kdBBPHud2hUKJ0N40Sn5rM54lzxXTJld5k0M+qZ/LZYynZTY6egojVK
 /YPkP1GOOaGGiT3YQKplpOT4qu17O9VS6lMHPoQdj+xB0HXvqSE/m00bWrwpXfPMS4YE=;
Received: from pc2-cc-fra1-mrr-004.internal.atmailcloud.com ([10.20.30.48])
 by ssi-cc-fra1-mro-003.internal.atmailcloud.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>) id 1kQZ8A-0000M0-Au
 for usrp-users@lists.ettus.com; Fri, 09 Oct 2020 02:51:02 +1000
Received: from pc2-cc-fra1-mrc-005.internal.atmailcloud.com ([10.20.30.55])
 by pc2-cc-fra1-mrr-004.internal.atmailcloud.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>) id 1kQZ8A-0005E6-88
 for usrp-users@lists.ettus.com; Fri, 09 Oct 2020 02:51:02 +1000
Received: from [87.254.66.171] (helo=PC1)
 by pc2-cc-fra1-mrc-005.internal.atmailcloud.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>) id 1kQZ89-0001aU-Hs
 for usrp-users@lists.ettus.com; Fri, 09 Oct 2020 02:51:02 +1000
Message-ID: <1316B17C73CD4E78A29C851758B9424F@PC1>
To: <usrp-users@lists.ettus.com>
References: <977DB5BC614A438B9066262CBAEDBC75@PC1> <5F7DF8FA.707@gmail.com>
In-Reply-To: <5F7DF8FA.707@gmail.com>
Date: Thu, 8 Oct 2020 17:51:01 +0100
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
Content-Type: multipart/mixed; boundary="===============0421880762083301903=="
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

--===============0421880762083301903==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0022_01D69D9B.95E8EC10"

This is a multi-part message in MIME format.

------=_NextPart_000_0022_01D69D9B.95E8EC10
Content-Type: text/plain;
	charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Thanks Marcus,

I have had a look at the GPIO example source. It contains some useful =
code, but I have not compiled and run it.
Other example code in =93Synchronising USRP Events using Timed Commands =
(17 April 2020)=94 has been used in the OOT block.

1) I have configured my B210(NI) EEPROM with the correct USB vid =3D =
0x2500 and pid =3D 0x0814.
The device is clearly identifiable and usable over USB3.

2). I have tried to identify the USRP using the following code prior to =
making an object:-
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





From: Marcus D. Leech via USRP-users=20
Sent: Wednesday, October 7, 2020 6:20 PM
To: usrp-users@lists.ettus.com=20
Subject: Re: [USRP-users] B210 USRP object creation

On 10/07/2020 10:08 AM, David Taylor (manx.net) via USRP-users wrote:

  Hi.
  I am trying to exercise the GPIO bits on my B210 and to run other UHD =
member functions in a C++ OOT block.
  Can anyone provide me with a suitable make (object) statement for use =
with this transceiver.
  Many thanks,
  David Taylor

You might look at the "gpio" example code that comes with the UHD =
source.





-------------------------------------------------------------------------=
-------
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

------=_NextPart_000_0022_01D69D9B.95E8EC10
Content-Type: text/html;
	charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<META content=3D"text/html; charset=3Dwindows-1252" =
http-equiv=3DContent-Type></HEAD>
<BODY dir=3Dltr text=3D#000000 bgColor=3D#ffffff>
<DIV dir=3Dltr>
<DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: #000000">
<DIV>Thanks Marcus,</DIV>
<DIV>&nbsp;</DIV>
<DIV>I have had a look at the GPIO example source. It contains some =
useful code,=20
but I have not compiled and run it.</DIV>
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
<DIV>The codes are placed in the OOT constructor, compile and link with =
the=20
appropriate headers.</DIV>
<DIV>In both cases the flow-graph fails to run with the usual =
=91block=92 attribute=20
error message. There are no USRP source or sink blocks in the flow-graph =
that=20
could possibly conflict.</DIV>
<DIV>&nbsp;</DIV>
<DIV>Regards,</DIV>
<DIV>David </DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
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
<DIV><B>Sent:</B> Wednesday, October 7, 2020 6:20 PM</DIV>
<DIV><B>To:</B> <A=20
title=3Dusrp-users@lists.ettus.com>usrp-users@lists.ettus.com</A> </DIV>
<DIV><B>Subject:</B> Re: [USRP-users] B210 USRP object=20
creation</DIV></DIV></DIV>
<DIV>&nbsp;</DIV></DIV>
<DIV=20
style=3D'FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
"Calibri"; FONT-WEIGHT: normal; COLOR: #000000; FONT-STYLE: normal; =
DISPLAY: inline'>
<DIV class=3Dmoz-cite-prefix>On 10/07/2020 10:08 AM, David Taylor =
(manx.net) via=20
USRP-users wrote:<BR></DIV>
<BLOCKQUOTE cite=3Dmid:977DB5BC614A438B9066262CBAEDBC75@PC1 =
type=3D"cite">
  <DIV dir=3Dltr>
  <DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: =
#000000">
  <DIV>
  <DIV=20
  style=3D'FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
"Calibri"; FONT-WEIGHT: normal; COLOR: #000000; FONT-STYLE: normal; =
DISPLAY: inline'>Hi.</DIV></DIV>
  <DIV>
  <DIV=20
  style=3D'FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
"Calibri"; FONT-WEIGHT: normal; COLOR: #000000; FONT-STYLE: normal; =
DISPLAY: inline'>&nbsp;</DIV></DIV>
  <DIV>
  <DIV=20
  style=3D'FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
"Calibri"; FONT-WEIGHT: normal; COLOR: #000000; FONT-STYLE: normal; =
DISPLAY: inline'>I=20
  am trying to exercise the GPIO bits on my B210 and to run other UHD =
member=20
  functions in a C++ OOT block.</DIV></DIV>
  <DIV>
  <DIV=20
  style=3D'FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
"Calibri"; FONT-WEIGHT: normal; COLOR: #000000; FONT-STYLE: normal; =
DISPLAY: inline'>&nbsp;</DIV></DIV>
  <DIV>
  <DIV=20
  style=3D'FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
"Calibri"; FONT-WEIGHT: normal; COLOR: #000000; FONT-STYLE: normal; =
DISPLAY: inline'>Can=20
  anyone provide me with a </DIV>
  <DIV=20
  style=3D'FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
"Calibri"; FONT-WEIGHT: normal; COLOR: #000000; FONT-STYLE: normal; =
DISPLAY: inline'>suitable=20
  make (object) statement for use with this transceiver.</DIV></DIV>
  <DIV>
  <DIV=20
  style=3D'FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
"Calibri"; FONT-WEIGHT: normal; COLOR: #000000; FONT-STYLE: normal; =
DISPLAY: inline'>&nbsp;</DIV></DIV>
  <DIV>
  <DIV=20
  style=3D'FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
"Calibri"; FONT-WEIGHT: normal; COLOR: #000000; FONT-STYLE: normal; =
DISPLAY: inline'>Many=20
  thanks,</DIV></DIV>
  <DIV>
  <DIV=20
  style=3D'FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
"Calibri"; FONT-WEIGHT: normal; COLOR: #000000; FONT-STYLE: normal; =
DISPLAY: inline'>&nbsp;</DIV></DIV>
  <DIV>
  <DIV=20
  style=3D'FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
"Calibri"; FONT-WEIGHT: normal; COLOR: #000000; FONT-STYLE: normal; =
DISPLAY: inline'>David=20
  Taylor</DIV></DIV>
  <DIV>&nbsp;</DIV></DIV></DIV></BLOCKQUOTE>You might look at the "gpio" =
example=20
code that comes with the UHD source.<BR><BR><BR>
<P>
<HR>
_______________________________________________<BR>USRP-users mailing=20
list<BR>USRP-users@lists.ettus.com<BR>http://lists.ettus.com/mailman/list=
info/usrp-users_lists.ettus.com<BR></DIV></DIV></DIV></BODY></HTML>

------=_NextPart_000_0022_01D69D9B.95E8EC10--



--===============0421880762083301903==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0421880762083301903==--


