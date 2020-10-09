Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E84D2889DB
	for <lists+usrp-users@lfdr.de>; Fri,  9 Oct 2020 15:31:31 +0200 (CEST)
Received: from [::1] (port=60276 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQsUY-0002TY-FH; Fri, 09 Oct 2020 09:31:26 -0400
Received: from eu21-002mrg.atmailcloud.com ([89.45.227.9]:44424)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <drtaylor@manx.net>) id 1kQsUU-0002Oo-OH
 for usrp-users@lists.ettus.com; Fri, 09 Oct 2020 09:31:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=manx.net;
 s=20160330; h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID;
 bh=xKeNW996B2dbTq4xdnTD8tmEbNh3c+Ma8fUC5Oecz2E=; b=WUPU2Rj7C34J4KlOtcEvkAd7c1
 SgYHiLUL9WPEHvl5Rsh3CKX5RmzmMDF0XBsBIzWqwR7/fzalCI0gbPkIUYeOGNr8DzxI9RXUTvOWY
 L6eif08Ui0zISGnah72jnDoUGG64FoigaorP5ixiveoLqof32anUXNYL9BXqgyVEWNY8=;
Received: from pc2-cc-fra1-mrr-001.internal.atmailcloud.com ([10.20.30.45])
 by ssi-cc-fra1-mro-002.internal.atmailcloud.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>)
 id 1kQsTp-0002uR-8X; Fri, 09 Oct 2020 23:30:41 +1000
Received: from pc2-cc-fra1-mrc-005.internal.atmailcloud.com ([10.20.30.55])
 by pc2-cc-fra1-mrr-001.internal.atmailcloud.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>)
 id 1kQsTp-0007Wa-5H; Fri, 09 Oct 2020 23:30:41 +1000
Received: from [87.254.66.171] (helo=PC1)
 by pc2-cc-fra1-mrc-005.internal.atmailcloud.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>)
 id 1kQsTo-0000JX-Q4; Fri, 09 Oct 2020 23:30:41 +1000
Message-ID: <6249823C72E244DD9001466CBCA8DA74@PC1>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, <usrp-users@lists.ettus.com>
References: <977DB5BC614A438B9066262CBAEDBC75@PC1> <5F7DF8FA.707@gmail.com>
 <1316B17C73CD4E78A29C851758B9424F@PC1> <5F7F603B.3040102@gmail.com>
 <8BDDB039BE74418FA519715D5BB4062B@PC1> <5F7F6B9B.708@gmail.com>
In-Reply-To: <5F7F6B9B.708@gmail.com>
Date: Fri, 9 Oct 2020 14:30:40 +0100
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
Content-Type: multipart/mixed; boundary="===============1379039304106939921=="
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

--===============1379039304106939921==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_002A_01D69E48.C339D730"

This is a multi-part message in MIME format.

------=_NextPart_000_002A_01D69E48.C339D730
Content-Type: text/plain;
	charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Marcus,

Thanks again.

I am using the GRC as a test-bed for writing gr-code as the flow-graph =
method promotes well defined partitioning of the signal processing =
functions, including of course the UHD interface.

The project which I may have mentioned previously is Direct Sequence =
Spread Spectrum based and GRC C++ OOT blocks have been developed. These =
generate PRN sequences for transmission and then acquire and track the =
carrier and PRN code phases in a modular receiver.
Much of the concept development can therefore be done using the GRC =
stand-alone or using the USRP in RF loopback with a simple BPSK =
modulator/demodulator pair.

I am aware of the GRC scheduler shortcomings particularly in terms of =
throughput timing stability, however for now, some form of primitive =
access to the UHD hardware is required for external timing event =
signalling through the GPIO.

I will have look at some of Balint Seeber=92s old code and run some of =
the UHD test code as suggested.

Finally to add to my woes, the B210 is no longer =93found=94 after my =
vid and pid experiment.
USB finds the device with the vid and pid as written, but it can no =
longer be accessed through UHD application. I have tried carefully =
editing the uhd-usrp.rules file to comply with the new pid value, but =
without success.
Perhaps a cautionary warning should be added to the EEPROM on USRP =
devices note!

Regards,
David



From: Marcus D. Leech via USRP-users=20
Sent: Thursday, October 8, 2020 8:42 PM
To: usrp-users@lists.ettus.com=20
Subject: Re: [USRP-users] B210 USRP object creation

On 10/08/2020 03:33 PM, David Taylor (manx.net) via USRP-users wrote:

  Point taken. - I didn=92t actually check the original default values =
of the VID and PID, but they were reset according to the table provided, =
so that they could be tested as arguments in the make statement below.
  =93About the Motherboard and Daughtercard EEPROM on USRP Devices (5th =
August 2020)=94

  The aim is to be able to manipulate some GPIO bits in the block work =
function and to align events using the 1PPS input.

  Regards,
  David GD4FMB

Ok, so presumably you're using Gnu Radio, since you're talking about =
"block work functions".

So this issue straddles the two universes--UHD/USRP and Gnu Radio.

I'd encourage you to use the UHD test tools to confirm sanity of your =
setup and then move on to a stupid-simple flow-graph with standard
  blocks.  Once THAT works, then one can think about grabbing the usrp =
source/sink "object" and being able to use it in your own
  processing "block".   There used to be a way to do this even within =
GRC but I fear that it was a custom block (perhaps from the old
  gr-balint set of blocks) that would allow you to grab an object handle =
and pass it as a variable into your own functions.

It's something I've wanted to do myself from time to time.   Of course =
if you're coding in "naked" GR, without using GRC, it's easy.
  But GRC uses a "data flow" model, and is less "procedural", so it =
gives an added layer of abstraction that makes it difficult to do
  what you want to do.   The gr-uhd module provides GPIO functions:

https://www.gnuradio.org/doc/doxygen-v3.7.9.1/classgr_1_1uhd_1_1usrp__blo=
ck.html#ab09502e1c8c43a546616b9a998f137f1

But they aren't exposed in any meaningful way into GRC that I know of.

I'll note that in GR3.9, there is support for something called "code =
snippets" which would let you "dip down into the lower layers" without
  having to post-facto edit generated Python code.





-------------------------------------------------------------------------=
-------
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

------=_NextPart_000_002A_01D69E48.C339D730
Content-Type: text/html;
	charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<META content=3D"text/html; charset=3Dwindows-1252" =
http-equiv=3DContent-Type></HEAD>
<BODY dir=3Dltr text=3D#000000 bgColor=3D#ffffff>
<DIV dir=3Dltr>
<DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: #000000">
<DIV>Marcus,</DIV>
<DIV>&nbsp;</DIV>
<DIV>Thanks again.</DIV>
<DIV>&nbsp;</DIV>
<DIV>I am using the GRC as a test-bed for writing gr-code as the =
flow-graph=20
method promotes well defined partitioning of the signal processing =
functions,=20
including of course the UHD interface.</DIV>
<DIV>&nbsp;</DIV>
<DIV>The project which I may have mentioned previously is Direct =
Sequence Spread=20
Spectrum based and GRC C++ OOT blocks have been developed. These =
generate PRN=20
sequences for transmission and then acquire and track the carrier and =
PRN code=20
phases in a modular receiver.</DIV>
<DIV>Much of the concept development can therefore be done using the GRC =

stand-alone or using the USRP in RF loopback with a simple BPSK=20
modulator/demodulator pair.</DIV>
<DIV>&nbsp;</DIV>
<DIV>I am aware of the GRC scheduler shortcomings particularly in terms =
of=20
throughput timing stability, however for now, some form of primitive =
access to=20
the UHD hardware is required for external timing event signalling =
through the=20
GPIO.</DIV>
<DIV>&nbsp;</DIV>
<DIV>I will have look at some of Balint Seeber=92s old code and run some =
of the=20
UHD test code as suggested.</DIV>
<DIV>&nbsp;</DIV>
<DIV>Finally to add to my woes, the B210 is no longer =93found=94 after =
my vid and=20
pid experiment.</DIV>
<DIV>USB finds the device with the vid and pid as written, but it can no =
longer=20
be accessed through UHD application. I have tried carefully editing the=20
uhd-usrp.rules file to comply with the new pid value, but without =
success.</DIV>
<DIV>Perhaps a cautionary warning should be added to the EEPROM on USRP =
devices=20
note!</DIV>
<DIV>&nbsp;</DIV>
<DIV>Regards,</DIV>
<DIV>David</DIV>
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
<DIV><B>Sent:</B> Thursday, October 8, 2020 8:42 PM</DIV>
<DIV><B>To:</B> <A=20
title=3Dusrp-users@lists.ettus.com>usrp-users@lists.ettus.com</A> </DIV>
<DIV><B>Subject:</B> Re: [USRP-users] B210 USRP object=20
creation</DIV></DIV></DIV>
<DIV>&nbsp;</DIV></DIV>
<DIV=20
style=3D'FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
"Calibri"; FONT-WEIGHT: normal; COLOR: #000000; FONT-STYLE: normal; =
DISPLAY: inline'>
<DIV class=3Dmoz-cite-prefix>On 10/08/2020 03:33 PM, David Taylor =
(manx.net) via=20
USRP-users wrote:<BR></DIV>
<BLOCKQUOTE cite=3Dmid:8BDDB039BE74418FA519715D5BB4062B@PC1 =
type=3D"cite">
  <DIV dir=3Dltr>
  <DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: =
#000000">
  <DIV>Point taken. - I didn=92t actually check the original default =
values of the=20
  VID and PID, but they were reset according to the table provided, so =
that they=20
  could be tested as arguments in the make statement below.</DIV>
  <DIV>=93About the Motherboard and Daughtercard EEPROM on USRP Devices =
(5th=20
  August 2020)=94</DIV>
  <DIV>&nbsp;</DIV>
  <DIV>The aim is to be able to manipulate some GPIO bits in the block =
work=20
  function and to align events using the 1PPS input.</DIV>
  <DIV>&nbsp;</DIV>
  <DIV>Regards,</DIV>
  <DIV>David GD4FMB</DIV>
  <DIV>&nbsp;</DIV></DIV></DIV></BLOCKQUOTE>Ok, so presumably you're =
using Gnu=20
Radio, since you're talking about "block work functions".<BR><BR>So this =
issue=20
straddles the two universes--UHD/USRP and Gnu Radio.<BR><BR>I'd =
encourage you to=20
use the UHD test tools to confirm sanity of your setup and then move on =
to a=20
stupid-simple flow-graph with standard<BR>&nbsp; blocks.&nbsp; Once THAT =
works,=20
then one can think about grabbing the usrp source/sink "object" and =
being able=20
to use it in your own<BR>&nbsp; processing "block".&nbsp;&nbsp; There =
used to be=20
a way to do this even within GRC but I fear that it was a custom block =
(perhaps=20
from the old<BR>&nbsp; gr-balint set of blocks) that would allow you to =
grab an=20
object handle and pass it as a variable into your own =
functions.<BR><BR>It's=20
something I've wanted to do myself from time to time.&nbsp;&nbsp; Of =
course if=20
you're coding in "naked" GR, without using GRC, it's easy.<BR>&nbsp; But =
GRC=20
uses a "data flow" model, and is less "procedural", so it gives an added =
layer=20
of abstraction that makes it difficult to do<BR>&nbsp; what you want to=20
do.&nbsp;&nbsp; The gr-uhd module provides GPIO functions:<BR><BR><A=20
class=3Dmoz-txt-link-freetext=20
href=3D"https://www.gnuradio.org/doc/doxygen-v3.7.9.1/classgr_1_1uhd_1_1u=
srp__block.html#ab09502e1c8c43a546616b9a998f137f1">https://www.gnuradio.o=
rg/doc/doxygen-v3.7.9.1/classgr_1_1uhd_1_1usrp__block.html#ab09502e1c8c43=
a546616b9a998f137f1</A><BR><BR>But=20
they aren't exposed in any meaningful way into GRC that I know =
of.<BR><BR>I'll=20
note that in GR3.9, there is support for something called "code =
snippets" which=20
would let you "dip down into the lower layers" without<BR>&nbsp; having =
to=20
post-facto edit generated Python code.<BR><BR><BR>
<P>
<HR>
_______________________________________________<BR>USRP-users mailing=20
list<BR>USRP-users@lists.ettus.com<BR>http://lists.ettus.com/mailman/list=
info/usrp-users_lists.ettus.com<BR></DIV></DIV></DIV></BODY></HTML>

------=_NextPart_000_002A_01D69E48.C339D730--



--===============1379039304106939921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1379039304106939921==--


