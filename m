Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5973428B039
	for <lists+usrp-users@lfdr.de>; Mon, 12 Oct 2020 10:27:26 +0200 (CEST)
Received: from [::1] (port=60532 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kRtAx-0008D1-BC; Mon, 12 Oct 2020 04:27:23 -0400
Received: from ssi-cc-fra1-mro-003.atmailcloud.com ([89.45.227.180]:39246)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <drtaylor@manx.net>) id 1kRtAt-00084S-MK
 for usrp-users@lists.ettus.com; Mon, 12 Oct 2020 04:27:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=manx.net;
 s=20160330; h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID;
 bh=mI/K2AE2153uwVvGBlE1nZfnIKAwIQ619LZPy8uz8Xs=; b=pOWGrJ+C49iko8LfaCBGuOTidm
 E8k4rItdLbOdaYA+SDDrIUdLYMFrxufs3cqZbdrofYoXrYbSQTMpd+5N/0JeuDhXZT/Ic0XSn8Jdv
 uQD0PEsb13V/3veOiwmIlWOxzSV9RkVQjnc6MCZ6QkRwsH652jGi7Ol61Safz41hRRGw=;
Received: from pc2-cc-fra1-mrr-004.internal.atmailcloud.com ([10.20.30.48])
 by ssi-cc-fra1-mro-003.internal.atmailcloud.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>)
 id 1kRtAD-0000pc-Tm; Mon, 12 Oct 2020 18:26:37 +1000
Received: from pc2-cc-fra1-mrc-005.internal.atmailcloud.com ([10.20.30.55])
 by pc2-cc-fra1-mrr-004.internal.atmailcloud.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>)
 id 1kRtAD-00024W-Q5; Mon, 12 Oct 2020 18:26:37 +1000
Received: from [87.254.66.171] (helo=PC1)
 by pc2-cc-fra1-mrc-005.internal.atmailcloud.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>)
 id 1kRtAD-0004In-AB; Mon, 12 Oct 2020 18:26:37 +1000
Message-ID: <4D7830E71A9B4DAC9568290F3BEF1CBC@PC1>
To: "Sam Reiter" <sam.reiter8@gmail.com>
References: <977DB5BC614A438B9066262CBAEDBC75@PC1> <5F7DF8FA.707@gmail.com>
 <1316B17C73CD4E78A29C851758B9424F@PC1> <5F7F603B.3040102@gmail.com>
 <8BDDB039BE74418FA519715D5BB4062B@PC1> <5F7F6B9B.708@gmail.com>
 <6249823C72E244DD9001466CBCA8DA74@PC1>
 <CADBWrHj=QU-+f_KOKWji8UGSKmWOMVC1KY+KneyRM4A6cox4ig@mail.gmail.com>
 <E81BD8070DEC40989C2B48A6071FC4E0@PC1>
 <CADBWrHg1_yssvB_EUqV-Le1mcfH_-7tUC-bdk0-6TC_5p-y=yQ@mail.gmail.com>
In-Reply-To: <CADBWrHg1_yssvB_EUqV-Le1mcfH_-7tUC-bdk0-6TC_5p-y=yQ@mail.gmail.com>
Date: Mon, 12 Oct 2020 09:26:36 +0100
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
Content-Type: multipart/mixed; boundary="===============0814018701184312795=="
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

--===============0814018701184312795==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0010_01D6A079.C87BECA0"

This is a multi-part message in MIME format.

------=_NextPart_000_0010_01D6A079.C87BECA0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sam.

The B210 is now up an running once again.

The fix was only possible by:-
1). Re-compiling b2xx_fx_utils with a modified b200_iface.hpp include =
file containing the incorrectly programmed B200 pid value.
2). The udev rules had to be temporarily matched allowing the PC USB =
transport to connect and gain access to the device.
3). The B210 could then be =E2=80=9Cfactory re-configured=E2=80=9D and =
initialised using the programmer options.

4). Reversion of the programmer include header and re-compile, followed =
by a udev rules reset completed the job.

So many thanks again for your input. It=E2=80=99s not a job I would wish =
to do again in a hurry..!!

Regards,

David Taylor GD4FMB / University Researcher.

From: Sam Reiter=20
Sent: Saturday, October 10, 2020 2:41 PM
To: David Taylor (manx.net)=20
Cc: Marcus D. Leech ; usrp-users@lists.ettus.com=20
Subject: Re: [USRP-users] B210 USRP object creation

Actually, I think you just need to configure and reload your udev rules =
as noted in this KB under =E2=80=9Cconfiguring USB=E2=80=9D:

https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolcha=
in_(UHD_and_GNU_Radio)_on_Linux#Configuring_USB


-Sam

On Sat, Oct 10, 2020 at 3:20 AM David Taylor (manx.net) =
<drtaylor@manx.net> wrote:













  Sam,







  Thanks for your input.



  In my rather foolhardy attempt at obtaining a UHD device handle in my =
GRC=20

  code, I used UHD b2xx_fx3_utils to alter the USB pid value on my B210.



  The App note [2] (page 10/14) is slightly conflicting in the =
specification=20

  of the B2xx pid values, giving two value options. Having a genuine NI =
part, I=20

  tried 0x7814.!







  uhd_find_devices fails with =E2=80=9CNo UHD Devices=20

  Found=E2=80=9D







  however



  ./b2xx_fx3_utils =E2=80=93init-device =E2=80=93write-vid 0x2500=20

  =E2=80=93write-pid 0x7814



  responds with



  Device opened (VID=3D0x2500, PID=3D0x7814)



  B2xx detected...Failed to communicate with the device!



  ...



  and UHD 3.15.0 response



  [ERROR [USB] USB open failed: insufficient permissions.



  See the application notes for your device.







  Perhaps a very cautious patch to the programmer code might help as a=20

  workaround?



  I will take a look.







  Best regards,



  David Taylor























  From: Sam=20

  Reiter=20



  Sent: Friday, October 9, 2020 10:01 PM



  To: David Taylor (manx.net)=20



  Cc: Marcus D. Leech ; usrp-users (usrp-users@lists.ettus.com)=20





  Subject: Re: [USRP-users] B210 USRP object=20

  creation









  David,=20






  To clarify, you used "write-vid" and "write-pid" arguments with UHD=20

  b2xx_fx3_utils  [1] to convert your NI-2901 to a B210 using the VID =
and PID=20

  values found in the "About the Motherboard and Daughtercard EEPROM on =
USRP=20

  Devices" KB [2]. Correct? And after changing these values, you are no =
longer=20

  able to reach the device using uhd_find_devices? Does the behavior =
change if you=20

  feed in arguments for the unit's serial number? e.g. uhd_find_devices =
--args=20

  serial=3D<xxxxx>







  If memory serves, I'd expect you to still be able to find the device =
with=20

  uhd_find_devices irrespective of the programmed VID and PID. However, =
those=20

  values are necessary for basically anything else as they're used to =
determine=20

  the FPGA image that is loaded onto the unit at runtime.







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







    I am using the GRC as a test-bed for writing gr-code as the =
flow-graph=20

    method promotes well defined partitioning of the signal processing =
functions,=20

    including of course the UHD interface.







    The project which I may have mentioned previously is Direct Sequence =


    Spread Spectrum based and GRC C++ OOT blocks have been developed. =
These=20

    generate PRN sequences for transmission and then acquire and track =
the carrier=20

    and PRN code phases in a modular receiver.



    Much of the concept development can therefore be done using the GRC=20

    stand-alone or using the USRP in RF loopback with a simple BPSK=20

    modulator/demodulator pair.







    I am aware of the GRC scheduler shortcomings particularly in terms =
of=20

    throughput timing stability, however for now, some form of primitive =
access to=20

    the UHD hardware is required for external timing event signalling =
through the=20

    GPIO.







    I will have look at some of Balint Seeber=E2=80=99s old code and run =
some of the=20

    UHD test code as suggested.







    Finally to add to my woes, the B210 is no longer =
=E2=80=9Cfound=E2=80=9D after my vid and=20

    pid experiment.



    USB finds the device with the vid and pid as written, but it can no=20

    longer be accessed through UHD application. I have tried carefully =
editing the=20

    uhd-usrp.rules file to comply with the new pid value, but without=20

    success.



    Perhaps a cautionary warning should be added to the EEPROM on USRP=20

    devices note!







    Regards,



    David























    From: Marcus D. Leech via=20

    USRP-users=20



    Sent: Thursday, October 8, 2020 8:42 PM



    To: usrp-users@lists.ettus.com=20



    Subject: Re: [USRP-users] B210 USRP object=20

    creation









    On 10/08/2020 03:33 PM, David Taylor (manx.net) via USRP-users =
wrote:













      Point taken. - I didn=E2=80=99t actually check the original =
default values of=20

      the VID and PID, but they were reset according to the table =
provided, so=20

      that they could be tested as arguments in the make statement =
below.



      =E2=80=9CAbout the Motherboard and Daughtercard EEPROM on USRP =
Devices (5th=20

      August 2020)=E2=80=9D







      The aim is to be able to manipulate some GPIO bits in the block =
work=20

      function and to align events using the 1PPS input.







      Regards,



      David GD4FMB




    Ok, so presumably you're using Gnu=20

    Radio, since you're talking about "block work functions".

    So this issue=20

    straddles the two universes--UHD/USRP and Gnu Radio.

    I'd encourage you=20

    to use the UHD test tools to confirm sanity of your setup and then =
move on to=20

    a stupid-simple flow-graph with standard
      blocks.  Once THAT=20

    works, then one can think about grabbing the usrp source/sink =
"object" and=20

    being able to use it in your own
      processing "block".  =20

    There used to be a way to do this even within GRC but I fear that it =
was a=20

    custom block (perhaps from the old
      gr-balint set of blocks) that=20

    would allow you to grab an object handle and pass it as a variable =
into your=20

    own functions.

    It's something I've wanted to do myself from time to=20

    time.   Of course if you're coding in "naked" GR, without using GRC, =


    it's easy.
      But GRC uses a "data flow" model, and is less=20

    "procedural", so it gives an added layer of abstraction that makes =
it=20

    difficult to do
      what you want to do.   The gr-uhd module=20

    provides GPIO functions:

    =
https://www.gnuradio.org/doc/doxygen-v3.7.9.1/classgr_1_1uhd_1_1usrp__blo=
ck.html#ab09502e1c8c43a546616b9a998f137f1

    But=20

    they aren't exposed in any meaningful way into GRC that I know of.

    I'll=20

    note that in GR3.9, there is support for something called "code =
snippets"=20

    which would let you "dip down into the lower layers" without
      having=20

    to post-facto edit generated Python code.





-------------------------------------------------------------------------=
---


    _______________________________________________
    USRP-users mailing=20

    list
    USRP-users@lists.ettus.com
    http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

    _______________________________________________
    USRP-users=20

    mailing list
    USRP-users@lists.ettus.com
    http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com




------=_NextPart_000_0010_01D6A079.C87BECA0
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD></HEAD>
<BODY dir=3Dltr>
<DIV dir=3Dltr>
<DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: #000000">
<DIV>Sam.</DIV>
<DIV>&nbsp;</DIV>
<DIV>The B210 is now up an running once again.</DIV>
<DIV>&nbsp;</DIV>
<DIV>The fix was only possible by:-</DIV>
<DIV>1). Re-compiling b2xx_fx_utils with a modified b200_iface.hpp =
include file=20
containing the incorrectly programmed B200 pid value.</DIV>
<DIV>2). The udev rules had to be temporarily matched allowing the PC =
USB=20
transport to connect and gain access to the device.</DIV>
<DIV>3). The B210 could then be =E2=80=9Cfactory re-configured=E2=80=9D =
and initialised using=20
the programmer options.</DIV>
<DIV>&nbsp;</DIV>
<DIV>4). Reversion of the programmer include header and re-compile, =
followed by=20
a udev rules reset completed the job.</DIV>
<DIV>&nbsp;</DIV>
<DIV>So many thanks again for your input. It=E2=80=99s not a job I would =
wish to do=20
again in a hurry..!!</DIV>
<DIV>&nbsp;</DIV>
<DIV>Regards,</DIV>
<DIV>&nbsp;</DIV>
<DIV>David Taylor GD4FMB / University Researcher.</DIV>
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
<DIV><B>Sent:</B> Saturday, October 10, 2020 2:41 PM</DIV>
<DIV><B>To:</B> <A title=3Ddrtaylor@manx.net>David Taylor (manx.net)</A> =
</DIV>
<DIV><B>Cc:</B> <A title=3Dpatchvonbraun@gmail.com>Marcus D. Leech</A> ; =
<A=20
title=3Dusrp-users@lists.ettus.com>usrp-users@lists.ettus.com</A> </DIV>
<DIV><B>Subject:</B> Re: [USRP-users] B210 USRP object=20
creation</DIV></DIV></DIV>
<DIV>&nbsp;</DIV></DIV>
<DIV=20
style=3D'FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
"Calibri"; FONT-WEIGHT: normal; COLOR: #000000; FONT-STYLE: normal; =
DISPLAY: inline'>
<DIV>Actually, I think you just need to configure and reload your udev =
rules as=20
noted in this KB under =E2=80=9Cconfiguring USB=E2=80=9D:</DIV>
<DIV>&nbsp;</DIV>
<DIV>
<DIV><A=20
href=3D"https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source=
_Toolchain_(UHD_and_GNU_Radio)_on_Linux#Configuring_USB">https://kb.ettus=
.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_=
Radio)_on_Linux#Configuring_USB</A></DIV>
<DIV>&nbsp;</DIV></DIV>
<DIV>&nbsp;</DIV>
<DIV>-Sam</DIV>
<DIV>
<DIV>&nbsp;</DIV>
<DIV class=3Dgmail_quote>
<DIV class=3Dgmail_attr dir=3Dltr>On Sat, Oct 10, 2020 at 3:20 AM David =
Taylor (<A=20
href=3D"http://manx.net">manx.net</A>) &lt;<A>drtaylor@manx.net</A>&gt;=20
wrote:<BR></DIV>
<BLOCKQUOTE class=3Dgmail_quote=20
style=3D"PADDING-LEFT: 1ex; BORDER-LEFT: rgb(204,204,204) 1px solid; =
MARGIN: 0px 0px 0px 0.8ex"><BR><BR>
  <DIV dir=3Dltr><BR><BR>
  <DIV dir=3Dltr><BR><BR>
  <DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: calibri; COLOR: =
rgb(0,0,0)"><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">Sam,</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">Thanks for your =
input.</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">In my rather foolhardy attempt at =
obtaining=20
  a UHD device handle in my GRC <BR><BR>code, I used UHD b2xx_fx3_utils =
to alter=20
  the USB pid value on my B210.</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">The App note [2] (page 10/14) is =
slightly=20
  conflicting in the specification <BR><BR>of the B2xx pid values, =
giving two=20
  value options. Having a genuine NI part, I <BR><BR>tried=20
0x7814.!</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri"><FONT=20
  style=3D"FONT-FAMILY: calibri; COLOR: =
rgb(0,0,255)">uhd_find_devices</FONT>=20
  fails with =E2=80=9CNo UHD Devices =
<BR><BR>Found=E2=80=9D</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">however</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri"><FONT=20
  style=3D"FONT-FAMILY: calibri; COLOR: rgb(0,0,255)">./b2xx_fx3_utils=20
  =E2=80=93init-device =E2=80=93write-vid 0x2500 =
<BR><BR>=E2=80=93write-pid 0x7814</FONT></DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">responds with</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">Device opened (VID=3D0x2500,=20
  PID=3D0x7814)</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">B2xx detected...Failed to =
communicate with=20
  the device!</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">...</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">and UHD 3.15.0 =
response</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">[ERROR [USB] USB open failed: =
insufficient=20
  permissions.</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">See the application notes for your =

  device.</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">Perhaps a very cautious patch to =
the=20
  programmer code might help as a <BR><BR>workaround?</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">I will take a look.</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">Best regards,</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">David =
Taylor</DIV></DIV></DIV></DIV>
  <DIV dir=3Dltr>
  <DIV dir=3Dltr>
  <DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: calibri; COLOR: =
rgb(0,0,0)"><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
  <DIV=20
  style=3D"FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
calibri; FONT-WEIGHT: normal; COLOR: rgb(0,0,0); FONT-STYLE: normal; =
DISPLAY: inline"><BR><BR>
  <DIV=20
  style=3D"FONT-SIZE: 10pt; FONT-FAMILY: tahoma; FONT-WEIGHT: normal; =
FONT-STYLE: normal; LINE-HEIGHT: normal; font-variant-caps: normal; =
font-stretch: normal"><BR><BR>
  <DIV style=3D"FONT-FAMILY: tahoma">&nbsp;</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: tahoma; BACKGROUND-COLOR: =
rgb(245,245,245)"><BR><BR>
  <DIV style=3D"FONT-FAMILY: tahoma"><B style=3D"FONT-FAMILY: =
tahoma">From:</B> <A=20
  title=3Dsam.reiter8@gmail.com style=3D"FONT-FAMILY: tahoma">Sam =
<BR><BR>Reiter</A>=20
  </DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: tahoma"><B style=3D"FONT-FAMILY: =
tahoma">Sent:</B>=20
  Friday, October 9, 2020 10:01 PM</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: tahoma"><B style=3D"FONT-FAMILY: =
tahoma">To:</B> <A=20
  title=3Ddrtaylor@manx.net style=3D"FONT-FAMILY: tahoma">David Taylor=20
  (manx.net)</A> </DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: tahoma"><B style=3D"FONT-FAMILY: =
tahoma">Cc:</B> <A=20
  title=3Dpatchvonbraun@gmail.com style=3D"FONT-FAMILY: tahoma">Marcus =
D. Leech</A>=20
  ; <A title=3Dusrp-users@lists.ettus.com style=3D"FONT-FAMILY: =
tahoma">usrp-users=20
  (usrp-users@lists.ettus.com)</A> <BR><BR></DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: tahoma"><B style=3D"FONT-FAMILY: =
tahoma">Subject:</B>=20
  Re: [USRP-users] B210 USRP object =
<BR><BR>creation</DIV></DIV></DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV></DIV><BR><BR>
  <DIV=20
  style=3D"FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
calibri; FONT-WEIGHT: normal; COLOR: rgb(0,0,0); FONT-STYLE: normal; =
DISPLAY: inline"><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri" dir=3Dltr>David, <BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">To clarify, you used "write-vid" =
and=20
  "write-pid" arguments with UHD <BR><BR>b2xx_fx3_utils&nbsp; [1] to =
convert=20
  your NI-2901 to a B210 using the VID and PID <BR><BR>values found in =
the=20
  "About the Motherboard and Daughtercard EEPROM on USRP =
<BR><BR>Devices" KB=20
  [2]. Correct? And after changing these values, you are no longer =
<BR><BR>able=20
  to reach the device using uhd_find_devices? Does the behavior change =
if you=20
  <BR><BR>feed in arguments for the unit's serial number? e.g. =
uhd_find_devices=20
  --args <BR><BR>serial=3D&lt;xxxxx&gt;</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">If memory serves, I'd expect you =
to still be=20
  able to find the device with <BR><BR>uhd_find_devices irrespective of =
the=20
  programmed VID and PID. However, those <BR><BR>values are necessary =
for=20
  basically anything else as they're used to determine <BR><BR>the FPGA =
image=20
  that is loaded onto the unit at runtime.</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">[1] <A style=3D"FONT-FAMILY: =
calibri"=20
  =
href=3D"https://github.com/EttusResearch/uhd/blob/master/host/utils/b2xx_=
fx3_utils.cpp"=20
  =
target=3D_blank>https://github.com/EttusResearch/uhd/blob/master/host/uti=
ls/b2xx_fx3_utils.cpp</A></DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">[2] <A style=3D"FONT-FAMILY: =
calibri"=20
  =
href=3D"https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPRO=
M_on_USRP_Devices#USB_VID.2FPID"=20
  =
target=3D_blank>https://kb.ettus.com/About_the_Motherboard_and_Daughterca=
rd_EEPROM_on_USRP_Devices#USB_VID.2FPID</A></DIV></DIV><BR><BR>
  <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
  <DIV class=3Dgmail_quote style=3D"FONT-FAMILY: calibri"><BR><BR>
  <DIV class=3Dgmail_attr style=3D"FONT-FAMILY: calibri" dir=3Dltr>On =
Fri, Oct 9, 2020=20
  at 10:09 AM David Taylor (<A style=3D"FONT-FAMILY: calibri"=20
  href=3D"http://manx.net" target=3D_blank>manx.net</A>) via USRP-users=20
  <BR><BR>&lt;<A style=3D"FONT-FAMILY: =
calibri">usrp-users@lists.ettus.com</A>&gt;=20
  wrote:<BR></DIV><BR><BR>
  <BLOCKQUOTE class=3Dgmail_quote=20
  style=3D"FONT-FAMILY: calibri; PADDING-LEFT: 1ex; BORDER-LEFT: =
rgb(204,204,204) 1px solid; MARGIN: 0px 0px 0px 0.8ex"><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri" dir=3Dltr =
bgcolor=3D"#ffffff"><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri" dir=3Dltr><BR><BR>
    <DIV=20
    style=3D"FONT-SIZE: 12pt; FONT-FAMILY: calibri; COLOR: =
rgb(0,0,0)"><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">Marcus,</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">Thanks again.</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">I am using the GRC as a test-bed =
for=20
    writing gr-code as the flow-graph <BR><BR>method promotes well =
defined=20
    partitioning of the signal processing functions, <BR><BR>including =
of course=20
    the UHD interface.</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">The project which I may have =
mentioned=20
    previously is Direct Sequence <BR><BR>Spread Spectrum based and GRC =
C++ OOT=20
    blocks have been developed. These <BR><BR>generate PRN sequences for =

    transmission and then acquire and track the carrier <BR><BR>and PRN =
code=20
    phases in a modular receiver.</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">Much of the concept development =
can=20
    therefore be done using the GRC <BR><BR>stand-alone or using the =
USRP in RF=20
    loopback with a simple BPSK <BR><BR>modulator/demodulator=20
pair.</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">I am aware of the GRC scheduler=20
    shortcomings particularly in terms of <BR><BR>throughput timing =
stability,=20
    however for now, some form of primitive access to <BR><BR>the UHD =
hardware=20
    is required for external timing event signalling through the=20
    <BR><BR>GPIO.</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">I will have look at some of =
Balint=20
    Seeber=E2=80=99s old code and run some of the <BR><BR>UHD test code =
as=20
    suggested.</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">Finally to add to my woes, the =
B210 is no=20
    longer =E2=80=9Cfound=E2=80=9D after my vid and <BR><BR>pid =
experiment.</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">USB finds the device with the =
vid and pid=20
    as written, but it can no <BR><BR>longer be accessed through UHD=20
    application. I have tried carefully editing the =
<BR><BR>uhd-usrp.rules file=20
    to comply with the new pid value, but without =
<BR><BR>success.</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">Perhaps a cautionary warning =
should be=20
    added to the EEPROM on USRP <BR><BR>devices note!</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">Regards,</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">David</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
    <DIV=20
    style=3D"FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
calibri; FONT-WEIGHT: normal; COLOR: rgb(0,0,0); FONT-STYLE: normal; =
DISPLAY: inline"><BR><BR>
    <DIV=20
    style=3D"FONT-SIZE: 10pt; FONT-FAMILY: tahoma; FONT-WEIGHT: normal; =
FONT-STYLE: normal; LINE-HEIGHT: normal; font-variant-caps: normal; =
font-stretch: normal"><BR><BR>
    <DIV style=3D"FONT-FAMILY: tahoma">&nbsp;</DIV><BR><BR>
    <DIV=20
style=3D"FONT-FAMILY: tahoma; BACKGROUND-COLOR: =
rgb(245,245,245)"><BR><BR>
    <DIV style=3D"FONT-FAMILY: tahoma"><B style=3D"FONT-FAMILY: =
tahoma">From:</B> <A=20
    title=3Dusrp-users@lists.ettus.com style=3D"FONT-FAMILY: =
tahoma">Marcus D. Leech=20
    via <BR><BR>USRP-users</A> </DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: tahoma"><B style=3D"FONT-FAMILY: =
tahoma">Sent:</B>=20
    Thursday, October 8, 2020 8:42 PM</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: tahoma"><B style=3D"FONT-FAMILY: =
tahoma">To:</B> <A=20
    title=3Dusrp-users@lists.ettus.com=20
    style=3D"FONT-FAMILY: tahoma">usrp-users@lists.ettus.com</A> =
</DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: tahoma"><B style=3D"FONT-FAMILY: =
tahoma">Subject:</B>=20
    Re: [USRP-users] B210 USRP object =
<BR><BR>creation</DIV></DIV></DIV><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV></DIV><BR><BR>
    <DIV=20
    style=3D"FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
calibri; FONT-WEIGHT: normal; COLOR: rgb(0,0,0); FONT-STYLE: normal; =
DISPLAY: inline"><BR><BR>
    <DIV style=3D"FONT-FAMILY: calibri">On 10/08/2020 03:33 PM, David =
Taylor (<A=20
    style=3D"FONT-FAMILY: calibri" href=3D"http://manx.net"=20
    target=3D_blank>manx.net</A>) via USRP-users =
wrote:<BR></DIV><BR><BR>
    <BLOCKQUOTE style=3D"FONT-FAMILY: calibri" type=3D"cite"><BR><BR>
      <DIV style=3D"FONT-FAMILY: calibri" dir=3Dltr><BR><BR>
      <DIV=20
      style=3D"FONT-SIZE: 12pt; FONT-FAMILY: calibri; COLOR: =
rgb(0,0,0)"><BR><BR>
      <DIV style=3D"FONT-FAMILY: calibri">Point taken. - I =
didn=E2=80=99t actually check=20
      the original default values of <BR><BR>the VID and PID, but they =
were=20
      reset according to the table provided, so <BR><BR>that they could =
be=20
      tested as arguments in the make statement below.</DIV><BR><BR>
      <DIV style=3D"FONT-FAMILY: calibri">=E2=80=9CAbout the Motherboard =
and Daughtercard=20
      EEPROM on USRP Devices (5th <BR><BR>August =
2020)=E2=80=9D</DIV><BR><BR>
      <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
      <DIV style=3D"FONT-FAMILY: calibri">The aim is to be able to =
manipulate some=20
      GPIO bits in the block work <BR><BR>function and to align events =
using the=20
      1PPS input.</DIV><BR><BR>
      <DIV style=3D"FONT-FAMILY: calibri">&nbsp;</DIV><BR><BR>
      <DIV style=3D"FONT-FAMILY: calibri">Regards,</DIV><BR><BR>
      <DIV style=3D"FONT-FAMILY: calibri">David GD4FMB</DIV><BR><BR>
      <DIV style=3D"FONT-FAMILY: =
calibri">&nbsp;</DIV></DIV></DIV></BLOCKQUOTE>Ok,=20
    so presumably you're using Gnu <BR><BR>Radio, since you're talking =
about=20
    "block work functions".<BR><BR>So this issue <BR><BR>straddles the =
two=20
    universes--UHD/USRP and Gnu Radio.<BR><BR>I'd encourage you =
<BR><BR>to use=20
    the UHD test tools to confirm sanity of your setup and then move on =
to=20
    <BR><BR>a stupid-simple flow-graph with standard<BR>&nbsp; =
blocks.&nbsp;=20
    Once THAT <BR><BR>works, then one can think about grabbing the usrp=20
    source/sink "object" and <BR><BR>being able to use it in your =
own<BR>&nbsp;=20
    processing "block".&nbsp;&nbsp; <BR><BR>There used to be a way to do =
this=20
    even within GRC but I fear that it was a <BR><BR>custom block =
(perhaps from=20
    the old<BR>&nbsp; gr-balint set of blocks) that <BR><BR>would allow =
you to=20
    grab an object handle and pass it as a variable into your =
<BR><BR>own=20
    functions.<BR><BR>It's something I've wanted to do myself from time =
to=20
    <BR><BR>time.&nbsp;&nbsp; Of course if you're coding in "naked" GR, =
without=20
    using GRC, <BR><BR>it's easy.<BR>&nbsp; But GRC uses a "data flow" =
model,=20
    and is less <BR><BR>"procedural", so it gives an added layer of =
abstraction=20
    that makes it <BR><BR>difficult to do<BR>&nbsp; what you want to=20
    do.&nbsp;&nbsp; The gr-uhd module <BR><BR>provides GPIO =
functions:<BR><BR><A=20
    style=3D"FONT-FAMILY: calibri"=20
    =
href=3D"https://www.gnuradio.org/doc/doxygen-v3.7.9.1/classgr_1_1uhd_1_1u=
srp__block.html#ab09502e1c8c43a546616b9a998f137f1"=20
    =
target=3D_blank>https://www.gnuradio.org/doc/doxygen-v3.7.9.1/classgr_1_1=
uhd_1_1usrp__block.html#ab09502e1c8c43a546616b9a998f137f1</A><BR><BR>But =

    <BR><BR>they aren't exposed in any meaningful way into GRC that I =
know=20
    of.<BR><BR>I'll <BR><BR>note that in GR3.9, there is support for =
something=20
    called "code snippets" <BR><BR>which would let you "dip down into =
the lower=20
    layers" without<BR>&nbsp; having <BR><BR>to post-facto edit =
generated Python=20
    code.<BR><BR><BR><BR><BR>
    <HR style=3D"FONT-FAMILY: calibri">
    =
<BR><BR>_______________________________________________<BR>USRP-users=20
    mailing <BR><BR>list<BR><A=20
    style=3D"FONT-FAMILY: calibri">USRP-users@lists.ettus.com</A><BR><A=20
    style=3D"FONT-FAMILY: calibri"=20
    =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m"=20
    =
target=3D_blank>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com</A><BR></DIV></DIV></DIV></DIV>________________________________=
_______________<BR>USRP-users=20
    <BR><BR>mailing list<BR><A=20
    style=3D"FONT-FAMILY: calibri">USRP-users@lists.ettus.com</A><BR><A=20
    style=3D"FONT-FAMILY: calibri"=20
    =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m"=20
    rel=3Dnoreferrer=20
    =
target=3D_blank>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com</A><BR></BLOCKQUOTE></DIV></DIV></DIV></DIV></DIV><BR><BR></BLO=
CKQUOTE></DIV></DIV></DIV></DIV></DIV></BODY></HTML>

------=_NextPart_000_0010_01D6A079.C87BECA0--



--===============0814018701184312795==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0814018701184312795==--


