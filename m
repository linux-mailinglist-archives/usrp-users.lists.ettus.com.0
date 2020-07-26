Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCA522DF99
	for <lists+usrp-users@lfdr.de>; Sun, 26 Jul 2020 16:07:45 +0200 (CEST)
Received: from [::1] (port=34742 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jzhJT-00004q-6I; Sun, 26 Jul 2020 10:07:39 -0400
Received: from ssi-cc-fra1-mro-001.atmailcloud.com ([89.46.80.72]:42752)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <drtaylor@manx.net>) id 1jzhJN-0008Qo-Mx
 for usrp-users@lists.ettus.com; Sun, 26 Jul 2020 10:07:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=manx.net;
 s=20160330; h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID;
 bh=ebESP4ebmhbRnLjDx2Zdzs1iMf042yDu0VhBHjpXbIQ=; b=FoPHCaIkJbnZxa4cp+WH1qR+6V
 /wbhD/hJ3T99gsMSiQHgWYo08hLcEHlP848Z3qcwI5jHSPPVaWP7NMcwCsjfSI7GgSJe2mfHjaeO2
 iXEyNxJfqowGoAU3gNNN2svfAMmnSKFM/X4JQzSoqgarAn53qXDrd/YuFQog2nDSkxR8=;
Received: from pc2-cc-fra1-mrr-004.internal.atmailcloud.com ([10.20.30.48])
 by ssi-cc-fra1-mro-001.internal.atmailcloud.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>) id 1jzhIi-0006AS-6n
 for usrp-users@lists.ettus.com; Mon, 27 Jul 2020 00:06:52 +1000
Received: from pc2-cc-fra1-mrc-004.internal.atmailcloud.com ([10.20.30.54])
 by pc2-cc-fra1-mrr-004.internal.atmailcloud.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>) id 1jzhIi-0000CR-3m
 for usrp-users@lists.ettus.com; Mon, 27 Jul 2020 00:06:52 +1000
Received: from [178.16.9.227] (helo=PC1)
 by pc2-cc-fra1-mrc-004.internal.atmailcloud.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>) id 1jzhIh-0003yG-IL
 for usrp-users@lists.ettus.com; Mon, 27 Jul 2020 00:06:52 +1000
Message-ID: <274815FD178544A4B80B844E5119AFCD@PC1>
To: <usrp-users@lists.ettus.com>
References: <3106CD4CFDE84EF2B512E9D68DC0AFF8@PC1>
 <5EF15135.6050502@gmail.com> <07FCC8E1668F4D4A814BC4DA01DCA8BE@PC1>
 <5EF2585B.1090909@gmail.com>
In-Reply-To: <5EF2585B.1090909@gmail.com>
Date: Sun, 26 Jul 2020 15:06:51 +0100
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
Subject: Re: [USRP-users] GRC up-grade - installation issues
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
Content-Type: multipart/mixed; boundary="===============3651956033170445355=="
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

--===============3651956033170445355==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0022_01D6635E.64960FC0"

This is a multi-part message in MIME format.

------=_NextPart_000_0022_01D6635E.64960FC0
Content-Type: text/plain;
	charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Apologies if this question is out of scope, or if the answer is to be =
found elsewhere in the history.

I have been upgrading the GRC from 3.7.11 (with Ubuntu 18.04) to GRC 9.0 =
(with Ubuntu 20.04 LTS). See previous dialogue below, using =
3.8.1.0~rc12build2



Currently, the synaptic package manager and $sudo apt install gnuradio =
methods both align on GRC version 9.0. So I have persevered at this =
version.

UHD is at v 3.15 and with Python3 the package is basically functional =
using an available B210 over USB3.



--------------



The problem arises with OOT blocks transfer, CMake in its =93modern =
form=94 and with the new dependency of MPIR.

1). MPIR library has been installed independently and built at V3.0 , =
with libraries and header located in /usr/local/lib and =
/usr/local/include respectively.

2). My 3.7.11 code also uses VOLKGNSSSDR in the build. As with the =
3.7.11 version, VOLKGNSSSDR was installed and tested independently with =
libraries and headers located using FindVOLKGNSSSDR  in /cmake/modules =
and a find package reference added to CMakeLists.txt.

I have yet to check whether {VOLK_GNSSSDR_LIBRARIES} has to be added to =
the target_link_libraries, noting the significantly different approach =
now used in .. //my_development/lib/CMakeLists.txt

3). The standard VOLK library is found in CMake configure as it is now =
part of the v 9.0 build package.=20

4). I have tried adapting the older find package method used in 2) for =
MPIR without success, but note the following CMake configure output.

MPIRXX_LIBRARY-NOTFOUND

MPIR_INCLUDE_DIR-NOTFOUND

MPIR_LIBRARY                  /usr/local/lib/libmpir.so



Can anyone help with the MPIR problem please?



As an OOT build requirement at V 9.0., I would have expected expected =
the gr-modtool to generate some boiler-plate code to cover this =
dependency addition!



Is there a more elegant and better way of incorporating VOLKGNSSSDR and =
the MPIR libraries using modern CMake?



Would reversion to 3.8.1 help in the short term, noting  that the output =
from my work might benefit and the later GRC scheduler improvements?



Many thanks.



David

GD4FMB





From: Marcus D. Leech via USRP-users=20
Sent: Tuesday, June 23, 2020 8:30 PM
To: usrp-users@lists.ettus.com=20
Subject: Re: [USRP-users] GRC up-grade - installation issues

On 06/23/2020 03:23 PM, David Taylor (manx.net) via USRP-users wrote:

  Marcus.

  Many thanks for your prompt reply.
  Complete removal of everything from /usr/share/uhd/images, then =
running the images-downloader from /usr/bin works fine.

  I have only managed to try this with a B210 as the other transceivers =
remain in the laboratory under Covid19 university building closure =
measures.
  The N210 is yet to be used, but thanks for the advising on the =
particular EEPROM image load method,=20
OK, so with B2xx, if they already have a loaded FPGA image, they won't =
try to re-load from your host during start-up, unless you
  power-cycle them first.  So, this can result in you having upgraded =
the host side of things, complete with host-resident images,
  and getting a "mis-match" error with B2xx.  The UHD code does NOT =
attempt to re-load the FPGA image if the host side is
  newer than the code resident on the B2xx--only after a power-cycle.


  It was interesting to see the extra console UHD diagnostics, =
particularly about clock sources and the 1 PPS input.
  I have a Rubidium 10 MHz source and 1PPS generator source that will =
eventually be incorporated for USRP synchronisation.

  However, I am now in the process of setting up the toolchain and new =
gr_modtool and transitioning the 3.7x OOT blocks
  The GNU Radio 3.8 OOT Module Porting Guide looks helpful at 16 May =
2020.
  The only real issue I had before was to include FindVOLKGNSSSDRcmake =
and the corresponding library.

  Regards,
  David.




  From: Marcus D. Leech via USRP-users=20
  Sent: Tuesday, June 23, 2020 1:47 AM
  To: usrp-users@lists.ettus.com=20
  Subject: Re: [USRP-users] GRC up-grade - installation issues

  On 06/22/2020 02:45 PM, David Taylor (manx.net) via USRP-users wrote:

    Dear all,

    I have been successfully running a B200/ B210 research project for =
two years based on Ubuntu 18.04 LTS and version 3.7x GRC.

    This includes a number of OOT blocks developed for direct sequence =
spread spectrum, using the Volk GNSSSDR library extensions. An N210 USRP =
is also at my disposal.

    I now have a clean upgrade to Ubuntu 20.04 LTS and wish to refresh =
the GRC & UHD drivers to the latest stable release, taking best advice =
please to ensure project conclusion.

    The issues:-

    1). GRC version 3.8.1.0~rc12build2 works standalone and appears to =
have similar Cmake files structure and content. (3.9.0.0 is listed in =
the package manager as available, but with significant and noticeable =
changes in the software migration and dependencies)?=20

    2). Libuhd-dev at 3.15.0.0-2build5 correctly identifies the B210 =
over USB3. (I note that library-file libuhd003 no longer forms part of =
this package).

    3). Running =93uhd_images_downloader.py=94 fully populates =
/usr/share/images/.

    There is an issue with FPGA compatibility, which I have seen before =
in 3.7x GRC.  =93Expected FPGA compatibility number 16 expected got =
14.=94

    This issue was solved under V3.7x  simply by replacement of the FPGA =
image from archive.=20

  Is this compatibility issue with your N210 or B2xx?  It isn't clear.


    4). I have removed all FPGA images from the /usr/share/images =
directory and have selectively tried installing a number of earlier =
discrete images and boot-loader from the archive, but all without =
success.

    5). A re-run of the uhd-images-downloader now fails to re-populate =
the images folder, however the python(3) script itself runs.

  You might want to simply remove *everything* from =
/usr/share/uhd/images, and re-run:

  sudo uhd_images_downloader.py

  [Making certain it's running the version you think it's running--if =
you installed from pre-packaged, it'll be in /usr/bin]

  If this doesn't work, please share the error messages produced with =
us.


  Also, because I didn't see anything in your work-log about it, for =
N210, you have to run:

  uhd_image_loader --args addr=3D<addr-of-n210>,type=3Dn200

  This loads the appropriate image into the EEPROM of the N210.  The =
N2xxx series, unlike the B2xx series don't do this dynamically at
    runtime.  Once you load an image into them, that image is there =
until it is reprogrammed, even across power-off.  This is different than
    B2xx, which manages this automatically after power-up.





    Many thanks in advance and I look forward to being able to =
contribute to the group.

    Best regards,

    David Taylor

    Ph.D Researcher, Limerick University, Ireland. GD4FMB


    =20

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


-------------------------------------------------------------------------=
-----
  _______________________________________________
  USRP-users mailing list
  USRP-users@lists.ettus.com
  http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


  =20

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com




-------------------------------------------------------------------------=
-------
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

------=_NextPart_000_0022_01D6635E.64960FC0
Content-Type: text/html;
	charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<META content=3D"text/html; charset=3Dwindows-1252" =
http-equiv=3DContent-Type></HEAD>
<BODY dir=3Dltr text=3D#000000 bgColor=3D#ffffff>
<DIV dir=3Dltr>
<DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: #000000">
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
style=3D"FONT-SIZE: 11pt">Apologies if this question is out of scope, or =
if the=20
answer is to be found elsewhere in the history.</FONT></P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt"><FONT=20
style=3D"FONT-SIZE: 11pt">I have been upgrading the GRC from 3.7.11 =
(with Ubuntu=20
18.04) to GRC 9.0 (with Ubuntu 20.04 LTS). See previous dialogue below, =
using=20
</FONT><FONT style=3D"LINE-HEIGHT: 13pt" color=3D#0000ff=20
size=3D3>3.8.1.0~rc12build2</FONT></P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt"><FONT=20
style=3D"FONT-SIZE: 11pt"></FONT>&nbsp;</P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt"><FONT=20
style=3D"FONT-SIZE: 11pt">Currently, the synaptic package manager and =
$sudo apt=20
install gnuradio methods both align on GRC version 9.0. So I have =
persevered at=20
this version.</FONT></P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt"><FONT=20
style=3D"FONT-SIZE: 11pt">UHD is at v 3.15 and with Python3 the package =
is=20
basically functional using an available B210 over USB3.</FONT></P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt">&nbsp;</P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt">--------------</P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt">&nbsp;</P>
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt">The problem=20
arises with OOT blocks transfer, CMake in its =93modern form=94 and with =
the new=20
dependency of MPIR.</P>
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
style=3D"FONT-SIZE: 11pt">1). MPIR library has been installed =
independently and=20
built at V3.0 , with libraries and header located in /usr/local/lib and=20
/usr/local/include respectively.</FONT></P>
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
style=3D"FONT-SIZE: 11pt">2). My 3.7.11 code also uses VOLKGNSSSDR in =
the build.=20
As with the 3.7.11 version, VOLKGNSSSDR was installed and tested =
independently=20
with libraries and headers located</FONT><FONT style=3D"FONT-SIZE: =
11pt"> using=20
FindVOLKGNSSSDR</FONT><FONT style=3D"FONT-SIZE: 11pt"><SPAN=20
style=3D"mso-spacerun: yes">&nbsp; </SPAN>in /cmake/modules and a find =
package=20
reference added to CMakeLists.txt.</FONT></P>
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
style=3D"FONT-SIZE: 11pt">I have yet to check whether =
{VOLK_GNSSSDR_LIBRARIES} has=20
to be added to the target_link_libraries, noting the significantly =
different=20
approach now used in .. //my_development/lib/CMakeLists.txt</FONT></P>
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
style=3D"FONT-SIZE: 11pt">3). The standard VOLK library is found in =
CMake=20
configure as it is now part of the v 9.0 build package. </FONT></P>
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
style=3D"FONT-SIZE: 11pt">4). I have tried adapting the older find =
package method=20
used in 2) for MPIR without success, but note the following CMake =
configure=20
output.</FONT></P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt"><FONT=20
style=3D"FONT-SIZE: 11pt">MPIRXX_LIBRARY-NOTFOUND</FONT></P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt"><FONT=20
style=3D"FONT-SIZE: 11pt">MPIR_INCLUDE_DIR-NOTFOUND</FONT></P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt"><FONT=20
style=3D"FONT-SIZE: 11pt">MPIR_LIBRARY<SPAN=20
style=3D"mso-tab-count: =
2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=20
</SPAN>/usr/local/lib/libmpir.so</FONT></P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt">&nbsp;</P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt"><FONT =
style=3D"FONT-SIZE: 11pt"=20
color=3D#ff0000>Can anyone help with the MPIR problem please?</FONT></P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt">&nbsp;</P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt"><FONT=20
style=3D"FONT-SIZE: 11pt">As an OOT build requirement at V 9.0., I would =
have=20
expected expected the gr-modtool to generate some boiler-plate code to =
cover=20
this dependency addition!</FONT></P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt">&nbsp;</P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt"><FONT =
style=3D"FONT-SIZE: 11pt"=20
color=3D#ff0000>Is there a more elegant and better way of incorporating=20
VOLKGNSSSDR and the MPIR libraries using modern CMake?</FONT></P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt">&nbsp;</P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt"><FONT =
color=3D#ff0000>Would=20
reversion to 3.8.1 help in the short term, noting&nbsp; that the output =
from my=20
work might benefit and the later GRC scheduler improvements?</FONT></P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt">&nbsp;</P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt">Many thanks.</P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt">&nbsp;</P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt">David</P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt">GD4FMB</P>
<P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt">&nbsp;</P>
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
<DIV><B>Sent:</B> Tuesday, June 23, 2020 8:30 PM</DIV>
<DIV><B>To:</B> <A=20
title=3Dusrp-users@lists.ettus.com>usrp-users@lists.ettus.com</A> </DIV>
<DIV><B>Subject:</B> Re: [USRP-users] GRC up-grade - installation=20
issues</DIV></DIV></DIV>
<DIV>&nbsp;</DIV></DIV>
<DIV=20
style=3D'FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
"Calibri"; FONT-WEIGHT: normal; COLOR: #000000; FONT-STYLE: normal; =
DISPLAY: inline'>
<DIV class=3Dmoz-cite-prefix>On 06/23/2020 03:23 PM, David Taylor =
(manx.net) via=20
USRP-users wrote:<BR></DIV>
<BLOCKQUOTE cite=3Dmid:07FCC8E1668F4D4A814BC4DA01DCA8BE@PC1 =
type=3D"cite">
  <DIV dir=3Dltr>
  <DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: =
#000000">
  <DIV>Marcus.</DIV>
  <DIV>&nbsp;</DIV>
  <DIV>Many thanks for your prompt reply.</DIV>
  <DIV>Complete removal of everything from /usr/share/uhd/images, then =
running=20
  the images-downloader from /usr/bin works fine.</DIV>
  <DIV>&nbsp;</DIV>
  <DIV>I have only managed to try this with a B210 as the other =
transceivers=20
  remain in the laboratory under Covid19 university building closure=20
  measures.</DIV>
  <DIV>The N210 is yet to be used, but thanks for the advising on the =
particular=20
  EEPROM image load method, </DIV></DIV></DIV></BLOCKQUOTE>OK, so with =
B2xx, if=20
they already have a loaded FPGA image, they won't try to re-load from =
your host=20
during start-up, unless you<BR>&nbsp; power-cycle them first.&nbsp; So, =
this can=20
result in you having upgraded the host side of things, complete with=20
host-resident images,<BR>&nbsp; and getting a "mis-match" error with =
B2xx.&nbsp;=20
The UHD code does NOT attempt to re-load the FPGA image if the host side =

is<BR>&nbsp; newer than the code resident on the B2xx--only after a=20
power-cycle.<BR>
<BLOCKQUOTE cite=3Dmid:07FCC8E1668F4D4A814BC4DA01DCA8BE@PC1 =
type=3D"cite">
  <DIV dir=3Dltr>
  <DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: =
#000000">
  <DIV>&nbsp;</DIV>
  <DIV>It was interesting to see the extra console UHD diagnostics, =
particularly=20
  about clock sources and the 1 PPS input.</DIV>
  <DIV>I have a Rubidium 10 MHz source and 1PPS generator source that =
will=20
  eventually be incorporated for USRP synchronisation.</DIV>
  <DIV>&nbsp;</DIV>
  <DIV>However, I am now in the process of setting up the toolchain and =
new=20
  gr_modtool and transitioning the 3.7x OOT blocks</DIV>
  <DIV>The GNU Radio 3.8 OOT Module Porting Guide looks helpful at 16 =
May=20
  2020.</DIV>
  <DIV>The only real issue I had before was to include =
FindVOLKGNSSSDRcmake and=20
  the corresponding library.</DIV>
  <DIV>&nbsp;</DIV>
  <DIV>Regards,</DIV>
  <DIV>David.</DIV>
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
  title=3Dusrp-users@lists.ettus.com moz-do-not-send=3D"true">Marcus D. =
Leech via=20
  USRP-users</A> </DIV>
  <DIV><B>Sent:</B> Tuesday, June 23, 2020 1:47 AM</DIV>
  <DIV><B>To:</B> <A title=3Dusrp-users@lists.ettus.com=20
  moz-do-not-send=3D"true">usrp-users@lists.ettus.com</A> </DIV>
  <DIV><B>Subject:</B> Re: [USRP-users] GRC up-grade - installation=20
  issues</DIV></DIV></DIV>
  <DIV>&nbsp;</DIV></DIV>
  <DIV=20
  style=3D'FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
"Calibri"; FONT-WEIGHT: normal; COLOR: #000000; FONT-STYLE: normal; =
DISPLAY: inline'>
  <DIV class=3Dmoz-cite-prefix>On 06/22/2020 02:45 PM, David Taylor =
(manx.net) via=20
  USRP-users wrote:<BR></DIV>
  <BLOCKQUOTE cite=3Dmid:3106CD4CFDE84EF2B512E9D68DC0AFF8@PC1 =
type=3D"cite">
    <DIV dir=3Dltr>
    <DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: =
#000000">
    <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
    style=3D"FONT-SIZE: 11pt">Dear all,</FONT></P>
    <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
    style=3D"FONT-SIZE: 11pt">I have been successfully running a B200/ =
B210=20
    research project for two years based on Ubuntu 18.04 LTS and version =
3.7x=20
    GRC.</FONT></P>
    <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
    style=3D"FONT-SIZE: 11pt">This includes a number of OOT blocks =
developed for=20
    direct sequence spread spectrum, using the Volk GNSSSDR library =
extensions.=20
    An N210 USRP is also at my disposal.</FONT></P>
    <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
    style=3D"FONT-SIZE: 11pt">I now have a clean upgrade to Ubuntu 20.04 =
LTS and=20
    wish to refresh the GRC &amp; UHD drivers to the latest stable =
release,=20
    taking best advice please to ensure project conclusion.</FONT></P>
    <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt">The=20
    issues:-</P>
    <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
    style=3D"FONT-SIZE: 11pt">1). GRC version <FONT color=3D#0000ff=20
    size=3D3>3.8.1.0~rc12build2</FONT> works standalone and appears to =
have=20
    similar Cmake files structure and content. (<FONT color=3D#0000ff=20
    size=3D3>3.9.0.0</FONT> is listed in the package manager as =
available, but=20
    with significant and noticeable changes in the software migration =
and=20
    dependencies)? </FONT></P>
    <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
    style=3D"FONT-SIZE: 11pt">2). Libuhd-dev at <FONT color=3D#0000ff=20
    size=3D3>3.15.0.0-2build5</FONT> correctly identifies the B210 over =
USB3. (I=20
    note that library-file libuhd003 no longer forms part of this=20
    package).</FONT></P>
    <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
    style=3D"FONT-SIZE: 11pt">3). Running =93uhd_images_downloader.py=94 =
fully=20
    populates /usr/share/images/.</FONT></P>
    <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
    style=3D"FONT-SIZE: 11pt">There is an issue with FPGA compatibility, =
which I=20
    have seen before in 3.7x GRC.<SPAN style=3D"mso-spacerun: =
yes">&nbsp;=20
    =93</SPAN>Expected FPGA compatibility number 16 expected got =
14.=94</FONT></P>
    <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
    style=3D"FONT-SIZE: 11pt">This issue was solved under V3.7x&nbsp; =
simply by=20
    replacement of the FPGA image from archive.=20
  </FONT></P></DIV></DIV></BLOCKQUOTE>Is this compatibility issue with =
your N210=20
  or B2xx?&nbsp; It isn't clear.<BR><BR>
  <BLOCKQUOTE cite=3Dmid:3106CD4CFDE84EF2B512E9D68DC0AFF8@PC1 =
type=3D"cite">
    <DIV dir=3Dltr>
    <DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: =
#000000">
    <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
    style=3D"FONT-SIZE: 11pt">4). I have removed all FPGA images from =
the=20
    /usr/share/images directory and have selectively tried installing a =
number=20
    of earlier discrete images and boot-loader from the archive, but all =
without=20
    success.</FONT></P>
    <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
    style=3D"FONT-SIZE: 11pt">5). A re-run of the uhd-images-downloader =
now fails=20
    to re-populate the images folder, however the python(3) script =
itself=20
    runs.</FONT></P></DIV></DIV></BLOCKQUOTE>You might want to simply =
remove=20
  *everything* from /usr/share/uhd/images, and re-run:<BR><BR>sudo=20
  uhd_images_downloader.py<BR><BR>[Making certain it's running the =
version you=20
  think it's running--if you installed from pre-packaged, it'll be in=20
  /usr/bin]<BR><BR>If this doesn't work, please share the error messages =

  produced with us.<BR><BR><BR>Also, because I didn't see anything in =
your=20
  work-log about it, for N210, you have to run:<BR><BR>uhd_image_loader =
--args=20
  addr=3D&lt;addr-of-n210&gt;,type=3Dn200<BR><BR>This loads the =
appropriate image=20
  into the EEPROM of the N210.&nbsp; The N2xxx series, unlike the B2xx =
series=20
  don't do this dynamically at<BR>&nbsp; runtime.&nbsp; Once you load an =
image=20
  into them, that image is there until it is reprogrammed, even across=20
  power-off.&nbsp; This is different than<BR>&nbsp; B2xx, which manages =
this=20
  automatically after power-up.<BR><BR><BR>
  <BLOCKQUOTE cite=3Dmid:3106CD4CFDE84EF2B512E9D68DC0AFF8@PC1 =
type=3D"cite">
    <DIV dir=3Dltr>
    <DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: =
#000000">
    <P class=3DMsoNormal=20
style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: 13pt">&nbsp;</P>
    <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
    style=3D"FONT-SIZE: 11pt">Many thanks in advance and I look forward =
to being=20
    able to contribute to the group.</FONT></P>
    <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt">Best=20
    regards,</P>
    <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
    style=3D"FONT-SIZE: 11pt">David Taylor</FONT></P>
    <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
    style=3D"FONT-SIZE: 11pt">Ph.D Researcher, Limerick University, =
Ireland.=20
    GD4FMB</FONT></P></DIV></DIV><BR>
    <FIELDSET class=3DmimeAttachmentHeader></FIELDSET> <BR><PRE =
wrap=3D"">_______________________________________________
USRP-users mailing list
<A class=3Dmoz-txt-link-abbreviated =
moz-do-not-send=3D"true">USRP-users@lists.ettus.com</A>
<A class=3Dmoz-txt-link-freetext =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" =
moz-do-not-send=3D"true">http://lists.ettus.com/mailman/listinfo/usrp-use=
rs_lists.ettus.com</A>
</PRE></BLOCKQUOTE><BR>
  <HR>
  _______________________________________________<BR>USRP-users mailing=20
  list<BR><A =
class=3Dmoz-txt-link-abbreviated>USRP-users@lists.ettus.com</A><BR><A=20
  class=3Dmoz-txt-link-freetext=20
  =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</A>=
<BR></DIV></DIV></DIV><BR>
  <FIELDSET class=3DmimeAttachmentHeader></FIELDSET> <BR><PRE =
wrap=3D"">_______________________________________________
USRP-users mailing list
<A class=3Dmoz-txt-link-abbreviated>USRP-users@lists.ettus.com</A>
<A class=3Dmoz-txt-link-freetext =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</A>=

</PRE></BLOCKQUOTE><BR>
<P>
<HR>
_______________________________________________<BR>USRP-users mailing=20
list<BR>USRP-users@lists.ettus.com<BR>http://lists.ettus.com/mailman/list=
info/usrp-users_lists.ettus.com<BR></DIV></DIV></DIV></BODY></HTML>

------=_NextPart_000_0022_01D6635E.64960FC0--



--===============3651956033170445355==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3651956033170445355==--


