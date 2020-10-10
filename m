Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB43289F48
	for <lists+usrp-users@lfdr.de>; Sat, 10 Oct 2020 10:21:31 +0200 (CEST)
Received: from [::1] (port=40372 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kRA82-0000iF-OA; Sat, 10 Oct 2020 04:21:22 -0400
Received: from eu21-002mrg.atmailcloud.com ([89.45.227.9]:54798)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <drtaylor@manx.net>) id 1kRA7y-0000dd-GH
 for usrp-users@lists.ettus.com; Sat, 10 Oct 2020 04:21:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=manx.net;
 s=20160330; h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID;
 bh=3DhQjBb5bESY0fVAIVhn9ETD79fyu+RBIlpRY+FikAw=; b=DifKq51ZrUbfc8FebTf/AO69Vj
 Rns6sYHSKL9noJvxCIRXmKuRLlmuXVxpqV2iomgfyFlbJCLuiGGx00ByeyKafEbqY7syZvFvLbXHh
 ZAK1RV50flovaUC6oWnw+rrefPTMo1NaKisHgGSCrNsxMs9MA3+HuQHVyuUS9rBuS2l8=;
Received: from pc2-cc-fra1-mrr-002.internal.atmailcloud.com ([10.20.30.46])
 by ssi-cc-fra1-mro-002.internal.atmailcloud.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>)
 id 1kRA7I-0000Hz-P7; Sat, 10 Oct 2020 18:20:36 +1000
Received: from pc2-cc-fra1-mrc-004.internal.atmailcloud.com ([10.20.30.54])
 by pc2-cc-fra1-mrr-002.internal.atmailcloud.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>)
 id 1kRA7I-0000cu-M1; Sat, 10 Oct 2020 18:20:36 +1000
Received: from [87.254.66.171] (helo=PC1)
 by pc2-cc-fra1-mrc-004.internal.atmailcloud.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>)
 id 1kRA7I-0007Kc-7V; Sat, 10 Oct 2020 18:20:36 +1000
Message-ID: <E81BD8070DEC40989C2B48A6071FC4E0@PC1>
To: "Sam Reiter" <sam.reiter8@gmail.com>
References: <977DB5BC614A438B9066262CBAEDBC75@PC1> <5F7DF8FA.707@gmail.com>
 <1316B17C73CD4E78A29C851758B9424F@PC1> <5F7F603B.3040102@gmail.com>
 <8BDDB039BE74418FA519715D5BB4062B@PC1> <5F7F6B9B.708@gmail.com>
 <6249823C72E244DD9001466CBCA8DA74@PC1>
 <CADBWrHj=QU-+f_KOKWji8UGSKmWOMVC1KY+KneyRM4A6cox4ig@mail.gmail.com>
In-Reply-To: <CADBWrHj=QU-+f_KOKWji8UGSKmWOMVC1KY+KneyRM4A6cox4ig@mail.gmail.com>
Date: Sat, 10 Oct 2020 09:20:36 +0100
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
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============3745074711843177890=="
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

--===============3745074711843177890==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0044_01D69EE6.9C9BEF20"

This is a multi-part message in MIME format.

------=_NextPart_000_0044_01D69EE6.9C9BEF20
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Sam,

Thanks for your input.
In my rather foolhardy attempt at obtaining a UHD device handle in my =
GRC code, I used UHD b2xx_fx3_utils to alter the USB pid value on my =
B210.
The App note [2] (page 10/14) is slightly conflicting in the =
specification of the B2xx pid values, giving two value options. Having a =
genuine NI part, I tried 0x7814.!

uhd_find_devices fails with =E2=80=9CNo UHD Devices Found=E2=80=9D

however
./b2xx_fx3_utils =E2=80=93init-device =E2=80=93write-vid 0x2500 =
=E2=80=93write-pid 0x7814
responds with
Device opened (VID=3D0x2500, PID=3D0x7814)
B2xx detected...Failed to communicate with the device!
...
and UHD 3.15.0 response
[ERROR [USB] USB open failed: insufficient permissions.
See the application notes for your device.

Perhaps a very cautious patch to the programmer code might help as a =
workaround?
I will take a look.

Best regards,
David Taylor



From: Sam Reiter=20
Sent: Friday, October 9, 2020 10:01 PM
To: David Taylor (manx.net)=20
Cc: Marcus D. Leech ; usrp-users (usrp-users@lists.ettus.com)=20
Subject: Re: [USRP-users] B210 USRP object creation

David,=20

To clarify, you used "write-vid" and "write-pid" arguments with UHD =
b2xx_fx3_utils  [1] to convert your NI-2901 to a B210 using the VID and =
PID values found in the "About the Motherboard and Daughtercard EEPROM =
on USRP Devices" KB [2]. Correct? And after changing these values, you =
are no longer able to reach the device using uhd_find_devices? Does the =
behavior change if you feed in arguments for the unit's serial number? =
e.g. uhd_find_devices --args serial=3D<xxxxx>

If memory serves, I'd expect you to still be able to find the device =
with uhd_find_devices irrespective of the programmed VID and PID. =
However, those values are necessary for basically anything else as =
they're used to determine the FPGA image that is loaded onto the unit at =
runtime.

[1] =
https://github.com/EttusResearch/uhd/blob/master/host/utils/b2xx_fx3_util=
s.cpp
[2] =
https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on_USR=
P_Devices#USB_VID.2FPID

On Fri, Oct 9, 2020 at 10:09 AM David Taylor (manx.net) via USRP-users =
<usrp-users@lists.ettus.com> wrote:

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

  I will have look at some of Balint Seeber=E2=80=99s old code and run =
some of the UHD test code as suggested.

  Finally to add to my woes, the B210 is no longer =
=E2=80=9Cfound=E2=80=9D after my vid and pid experiment.
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

    Point taken. - I didn=E2=80=99t actually check the original default =
values of the VID and PID, but they were reset according to the table =
provided, so that they could be tested as arguments in the make =
statement below.
    =E2=80=9CAbout the Motherboard and Daughtercard EEPROM on USRP =
Devices (5th August 2020)=E2=80=9D

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
    gr-balint set of blocks) that would allow you to grab an object =
handle and pass it as a variable into your own functions.

  It's something I've wanted to do myself from time to time.   Of course =
if you're coding in "naked" GR, without using GRC, it's easy.
    But GRC uses a "data flow" model, and is less "procedural", so it =
gives an added layer of abstraction that makes it difficult to do
    what you want to do.   The gr-uhd module provides GPIO functions:

  =
https://www.gnuradio.org/doc/doxygen-v3.7.9.1/classgr_1_1uhd_1_1usrp__blo=
ck.html#ab09502e1c8c43a546616b9a998f137f1

  But they aren't exposed in any meaningful way into GRC that I know of.

  I'll note that in GR3.9, there is support for something called "code =
snippets" which would let you "dip down into the lower layers" without
    having to post-facto edit generated Python code.



-------------------------------------------------------------------------=
-----
  _______________________________________________
  USRP-users mailing list
  USRP-users@lists.ettus.com
  http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

  _______________________________________________
  USRP-users mailing list
  USRP-users@lists.ettus.com
  http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

------=_NextPart_000_0044_01D69EE6.9C9BEF20
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD></HEAD>
<BODY dir=3Dltr>
<DIV dir=3Dltr>
<DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: #000000">
<DIV>Sam,</DIV>
<DIV>&nbsp;</DIV>
<DIV>Thanks for your input.</DIV>
<DIV>In my rather foolhardy attempt at obtaining a UHD device handle in =
my GRC=20
code, I used UHD b2xx_fx3_utils to alter the USB pid value on my =
B210.</DIV>
<DIV>The App note [2] (page 10/14) is slightly conflicting in the =
specification=20
of the B2xx pid values, giving two value options. Having a genuine NI =
part, I=20
tried 0x7814.!</DIV>
<DIV>&nbsp;</DIV>
<DIV><FONT color=3D#0000ff>uhd_find_devices</FONT> fails with =
=E2=80=9CNo UHD Devices=20
Found=E2=80=9D</DIV>
<DIV>&nbsp;</DIV>
<DIV>however</DIV>
<DIV><FONT color=3D#0000ff>./b2xx_fx3_utils =E2=80=93init-device =
=E2=80=93write-vid 0x2500=20
=E2=80=93write-pid 0x7814</FONT></DIV>
<DIV>responds with</DIV>
<DIV>Device opened (VID=3D0x2500, PID=3D0x7814)</DIV>
<DIV>B2xx detected...Failed to communicate with the device!</DIV>
<DIV>...</DIV>
<DIV>and UHD 3.15.0 response</DIV>
<DIV>[ERROR [USB] USB open failed: insufficient permissions.</DIV>
<DIV>See the application notes for your device.</DIV>
<DIV>&nbsp;</DIV>
<DIV>Perhaps a very cautious patch to the programmer code might help as =
a=20
workaround?</DIV>
<DIV>I will take a look.</DIV>
<DIV>&nbsp;</DIV>
<DIV>Best regards,</DIV>
<DIV>David Taylor</DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV=20
style=3D'FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
"Calibri"; FONT-WEIGHT: normal; COLOR: #000000; FONT-STYLE: normal; =
DISPLAY: inline'>
<DIV style=3D"FONT: 10pt tahoma">
<DIV>&nbsp;</DIV>
<DIV style=3D"BACKGROUND: #f5f5f5">
<DIV style=3D"font-color: black"><B>From:</B> <A =
title=3Dsam.reiter8@gmail.com>Sam=20
Reiter</A> </DIV>
<DIV><B>Sent:</B> Friday, October 9, 2020 10:01 PM</DIV>
<DIV><B>To:</B> <A title=3Ddrtaylor@manx.net>David Taylor (manx.net)</A> =
</DIV>
<DIV><B>Cc:</B> <A title=3Dpatchvonbraun@gmail.com>Marcus D. Leech</A> ; =
<A=20
title=3Dusrp-users@lists.ettus.com>usrp-users =
(usrp-users@lists.ettus.com)</A>=20
</DIV>
<DIV><B>Subject:</B> Re: [USRP-users] B210 USRP object=20
creation</DIV></DIV></DIV>
<DIV>&nbsp;</DIV></DIV>
<DIV=20
style=3D'FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
"Calibri"; FONT-WEIGHT: normal; COLOR: #000000; FONT-STYLE: normal; =
DISPLAY: inline'>
<DIV dir=3Dltr>David,=20
<DIV>&nbsp;</DIV>
<DIV>To clarify, you used "write-vid" and "write-pid" arguments with UHD =

b2xx_fx3_utils&nbsp; [1] to convert your NI-2901 to a B210 using the VID =
and PID=20
values found in the "About the Motherboard and Daughtercard EEPROM on =
USRP=20
Devices" KB [2]. Correct? And after changing these values, you are no =
longer=20
able to reach the device using uhd_find_devices? Does the behavior =
change if you=20
feed in arguments for the unit's serial number? e.g. uhd_find_devices =
--args=20
serial=3D&lt;xxxxx&gt;</DIV>
<DIV>&nbsp;</DIV>
<DIV>If memory serves, I'd expect you to still be able to find the =
device with=20
uhd_find_devices irrespective of the programmed VID and PID. However, =
those=20
values are necessary for basically anything else as they're used to =
determine=20
the FPGA image that is loaded onto the unit at runtime.</DIV>
<DIV>&nbsp;</DIV>
<DIV>[1] <A=20
href=3D"https://github.com/EttusResearch/uhd/blob/master/host/utils/b2xx_=
fx3_utils.cpp">https://github.com/EttusResearch/uhd/blob/master/host/util=
s/b2xx_fx3_utils.cpp</A></DIV>
<DIV>[2] <A=20
href=3D"https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPRO=
M_on_USRP_Devices#USB_VID.2FPID">https://kb.ettus.com/About_the_Motherboa=
rd_and_Daughtercard_EEPROM_on_USRP_Devices#USB_VID.2FPID</A></DIV></DIV>
<DIV>&nbsp;</DIV>
<DIV class=3Dgmail_quote>
<DIV class=3Dgmail_attr dir=3Dltr>On Fri, Oct 9, 2020 at 10:09 AM David =
Taylor (<A=20
href=3D"http://manx.net">manx.net</A>) via USRP-users=20
&lt;<A>usrp-users@lists.ettus.com</A>&gt; wrote:<BR></DIV>
<BLOCKQUOTE class=3Dgmail_quote=20
style=3D"PADDING-LEFT: 1ex; BORDER-LEFT: rgb(204,204,204) 1px solid; =
MARGIN: 0px 0px 0px 0.8ex">
  <DIV dir=3Dltr bgcolor=3D"#ffffff">
  <DIV dir=3Dltr>
  <DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: calibri; COLOR: =
rgb(0,0,0)">
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
Sequence=20
  Spread Spectrum based and GRC C++ OOT blocks have been developed. =
These=20
  generate PRN sequences for transmission and then acquire and track the =
carrier=20
  and PRN code phases in a modular receiver.</DIV>
  <DIV>Much of the concept development can therefore be done using the =
GRC=20
  stand-alone or using the USRP in RF loopback with a simple BPSK=20
  modulator/demodulator pair.</DIV>
  <DIV>&nbsp;</DIV>
  <DIV>I am aware of the GRC scheduler shortcomings particularly in =
terms of=20
  throughput timing stability, however for now, some form of primitive =
access to=20
  the UHD hardware is required for external timing event signalling =
through the=20
  GPIO.</DIV>
  <DIV>&nbsp;</DIV>
  <DIV>I will have look at some of Balint Seeber=E2=80=99s old code and =
run some of the=20
  UHD test code as suggested.</DIV>
  <DIV>&nbsp;</DIV>
  <DIV>Finally to add to my woes, the B210 is no longer =
=E2=80=9Cfound=E2=80=9D after my vid and=20
  pid experiment.</DIV>
  <DIV>USB finds the device with the vid and pid as written, but it can =
no=20
  longer be accessed through UHD application. I have tried carefully =
editing the=20
  uhd-usrp.rules file to comply with the new pid value, but without=20
  success.</DIV>
  <DIV>Perhaps a cautionary warning should be added to the EEPROM on =
USRP=20
  devices note!</DIV>
  <DIV>&nbsp;</DIV>
  <DIV>Regards,</DIV>
  <DIV>David</DIV>
  <DIV>&nbsp;</DIV>
  <DIV>&nbsp;</DIV>
  <DIV=20
  style=3D"FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
calibri; FONT-WEIGHT: normal; COLOR: rgb(0,0,0); FONT-STYLE: normal; =
DISPLAY: inline">
  <DIV style=3D"FONT: 10pt tahoma">
  <DIV>&nbsp;</DIV>
  <DIV style=3D"BACKGROUND: rgb(245,245,245)">
  <DIV><B>From:</B> <A title=3Dusrp-users@lists.ettus.com>Marcus D. =
Leech via=20
  USRP-users</A> </DIV>
  <DIV><B>Sent:</B> Thursday, October 8, 2020 8:42 PM</DIV>
  <DIV><B>To:</B> <A=20
  title=3Dusrp-users@lists.ettus.com>usrp-users@lists.ettus.com</A> =
</DIV>
  <DIV><B>Subject:</B> Re: [USRP-users] B210 USRP object=20
  creation</DIV></DIV></DIV>
  <DIV>&nbsp;</DIV></DIV>
  <DIV=20
  style=3D"FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
calibri; FONT-WEIGHT: normal; COLOR: rgb(0,0,0); FONT-STYLE: normal; =
DISPLAY: inline">
  <DIV>On 10/08/2020 03:33 PM, David Taylor (<A href=3D"http://manx.net" =

  target=3D_blank>manx.net</A>) via USRP-users wrote:<BR></DIV>
  <BLOCKQUOTE type=3D"cite">
    <DIV dir=3Dltr>
    <DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: calibri; COLOR: =
rgb(0,0,0)">
    <DIV>Point taken. - I didn=E2=80=99t actually check the original =
default values of=20
    the VID and PID, but they were reset according to the table =
provided, so=20
    that they could be tested as arguments in the make statement =
below.</DIV>
    <DIV>=E2=80=9CAbout the Motherboard and Daughtercard EEPROM on USRP =
Devices (5th=20
    August 2020)=E2=80=9D</DIV>
    <DIV>&nbsp;</DIV>
    <DIV>The aim is to be able to manipulate some GPIO bits in the block =
work=20
    function and to align events using the 1PPS input.</DIV>
    <DIV>&nbsp;</DIV>
    <DIV>Regards,</DIV>
    <DIV>David GD4FMB</DIV>
    <DIV>&nbsp;</DIV></DIV></DIV></BLOCKQUOTE>Ok, so presumably you're =
using Gnu=20
  Radio, since you're talking about "block work functions".<BR><BR>So =
this issue=20
  straddles the two universes--UHD/USRP and Gnu Radio.<BR><BR>I'd =
encourage you=20
  to use the UHD test tools to confirm sanity of your setup and then =
move on to=20
  a stupid-simple flow-graph with standard<BR>&nbsp; blocks.&nbsp; Once =
THAT=20
  works, then one can think about grabbing the usrp source/sink "object" =
and=20
  being able to use it in your own<BR>&nbsp; processing =
"block".&nbsp;&nbsp;=20
  There used to be a way to do this even within GRC but I fear that it =
was a=20
  custom block (perhaps from the old<BR>&nbsp; gr-balint set of blocks) =
that=20
  would allow you to grab an object handle and pass it as a variable =
into your=20
  own functions.<BR><BR>It's something I've wanted to do myself from =
time to=20
  time.&nbsp;&nbsp; Of course if you're coding in "naked" GR, without =
using GRC,=20
  it's easy.<BR>&nbsp; But GRC uses a "data flow" model, and is less=20
  "procedural", so it gives an added layer of abstraction that makes it=20
  difficult to do<BR>&nbsp; what you want to do.&nbsp;&nbsp; The gr-uhd =
module=20
  provides GPIO functions:<BR><BR><A=20
  =
href=3D"https://www.gnuradio.org/doc/doxygen-v3.7.9.1/classgr_1_1uhd_1_1u=
srp__block.html#ab09502e1c8c43a546616b9a998f137f1"=20
  =
target=3D_blank>https://www.gnuradio.org/doc/doxygen-v3.7.9.1/classgr_1_1=
uhd_1_1usrp__block.html#ab09502e1c8c43a546616b9a998f137f1</A><BR><BR>But =

  they aren't exposed in any meaningful way into GRC that I know =
of.<BR><BR>I'll=20
  note that in GR3.9, there is support for something called "code =
snippets"=20
  which would let you "dip down into the lower layers" without<BR>&nbsp; =
having=20
  to post-facto edit generated Python code.<BR><BR><BR>
  <HR>
  _______________________________________________<BR>USRP-users mailing=20
  list<BR><A target=3D_blank>USRP-users@lists.ettus.com</A><BR><A=20
  =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m"=20
  =
target=3D_blank>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com</A><BR></DIV></DIV></DIV></DIV>________________________________=
_______________<BR>USRP-users=20
  mailing list<BR><A =
target=3D_blank>USRP-users@lists.ettus.com</A><BR><A=20
  =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m"=20
  rel=3Dnoreferrer=20
  =
target=3D_blank>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com</A><BR></BLOCKQUOTE></DIV></DIV></DIV></DIV></BODY></HTML>

------=_NextPart_000_0044_01D69EE6.9C9BEF20--



--===============3745074711843177890==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3745074711843177890==--


