Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA8823597A
	for <lists+usrp-users@lfdr.de>; Sun,  2 Aug 2020 19:21:19 +0200 (CEST)
Received: from [::1] (port=37382 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k2Hfd-0001Hx-RF; Sun, 02 Aug 2020 13:21:13 -0400
Received: from ssi-cc-fra1-mro-001.atmailcloud.com ([89.46.80.72]:53654)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <drtaylor@manx.net>) id 1k2HfZ-0001A7-Sm
 for usrp-users@lists.ettus.com; Sun, 02 Aug 2020 13:21:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=manx.net;
 s=20160330; h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID;
 bh=0LUQ7J22GHNjQC3TKcTAPYdFpLPUZBL1+nnSNK6qb7I=; b=rHgq7zBFvkur6a4goqIJ/1T7Uv
 F74TWB7uEVAe8vaB70gWuNpX69yuXhsqMuAkNdjtWeVH41yLOHxVtqd6LIwLlFmnCSNjdQCpSz81x
 xm2+NDmoXRpiZJ3zH7/274hPybRiQmqci5musATT9YPZNFFXQw9LRVgKMl5BpuyyKQmw=;
Received: from pc2-cc-fra1-mrr-002.internal.atmailcloud.com ([10.20.30.46])
 by ssi-cc-fra1-mro-001.internal.atmailcloud.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>)
 id 1k2Het-0005ls-8Q; Mon, 03 Aug 2020 03:20:27 +1000
Received: from pc2-cc-fra1-mrc-005.internal.atmailcloud.com ([10.20.30.55])
 by pc2-cc-fra1-mrr-002.internal.atmailcloud.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>)
 id 1k2Het-00063K-5H; Mon, 03 Aug 2020 03:20:27 +1000
Received: from [178.16.9.227] (helo=PC1)
 by pc2-cc-fra1-mrc-005.internal.atmailcloud.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>)
 id 1k2Hes-0005bB-Kf; Mon, 03 Aug 2020 03:20:27 +1000
Message-ID: <47A975ECF45F43D2A3CFAB47ABFB49FA@PC1>
To: "Ron Economos" <w6rz@comcast.net>,
	<usrp-users@lists.ettus.com>
References: <3106CD4CFDE84EF2B512E9D68DC0AFF8@PC1>
 <5EF15135.6050502@gmail.com> <07FCC8E1668F4D4A814BC4DA01DCA8BE@PC1>
 <5EF2585B.1090909@gmail.com> <274815FD178544A4B80B844E5119AFCD@PC1>
 <4e279601-1428-ff68-ac4b-6889f0f77998@comcast.net>
In-Reply-To: <4e279601-1428-ff68-ac4b-6889f0f77998@comcast.net>
Date: Sun, 2 Aug 2020 18:20:25 +0100
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
Content-Type: multipart/mixed; boundary="===============8571910252578862537=="
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

--===============8571910252578862537==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0019_01D668F9.9795CA50"

This is a multi-part message in MIME format.

------=_NextPart_000_0019_01D668F9.9795CA50
Content-Type: text/plain;
	charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Ron,

Thanks again.

I have persevered with the GRC 9.0 installation and have followed the =
3.9 OOT module porting guide.
pybind11 2.4.3 and the other required dependencies have been installed. =
CMake reports all present during configure.

A simple C++ OOT under the Workflow instruction produces the correct =
binding files under =91$gr_modtool bind test_cc=92
CMake configure correctly reported an =91out of sync error=92 before =
binding.

Generate fails to complete with the following CMake error only.

CMake Error at =
/usr/lib/x86_64-linux-gnu/cmake/gnuradio/GrPybind.cmake:227 =
(pybind11_add_module):
    Unknown CMake command =93pybind11_add_module=94.
Call Stack (most recent call first):
    python/bindings/CMakeLists.txt:23 (GR_PYBIND_MAKE_OOT)

I added my own version of Findpybind11.cmake, which may of course be =
contributory.

Is there a version of Findpybind11.cmake out there that pairs =
specifically with pybind11 2.4.3 or am I missing something fundamental =
with modern cmake.
VOLKGNSSSDR is pulled successfully in using the old method.

Many thanks,

David GD4FMB






From: Ron Economos via USRP-users=20
Sent: Sunday, July 26, 2020 3:59 PM
To: usrp-users@lists.ettus.com=20
Subject: Re: [USRP-users] GRC up-grade - installation issues

David,

You don't need MPIR. The dependency can be resolved with libgmp. Here's =
what that portion of my OOT CMake looks like:

-- Found LOG4CPP: /usr/lib/x86_64-linux-gnu/liblog4cpp.so
-- Found PkgConfig: /usr/bin/pkg-config (found version "0.29.1")=20
-- Checking for module 'gmp'
--   No package 'gmp' found
-- Found GMP: /usr/lib/x86_64-linux-gnu/libgmpxx.so =20
-- Checking for module 'mpir >=3D 3.0'
--   No package 'mpir' found
-- Could NOT find MPIR (missing: MPIRXX_LIBRARY MPIR_LIBRARY =
MPIR_INCLUDE_DIR)=20
-- Found MPLIB: /usr/lib/x86_64-linux-gnu/libgmpxx.so =20


If you don't already have it:


sudo apt install libgmp-dev

For VOLKGNSSSDR, the techniques you used for 3.7.11 should still work =
fine.

Here's an example of an external library from one of my OOT's.

https://github.com/drmpeg/gr-dvbgse/blob/master/CMakeLists.txt#L128

https://github.com/drmpeg/gr-dvbgse/blob/master/lib/CMakeLists.txt#L38

https://github.com/drmpeg/gr-dvbgse/blob/master/cmake/Modules/FindPcap.cm=
ake


Ron W6RZ


On 7/26/20 07:06, David Taylor (manx.net) via USRP-users wrote:

  Apologies if this question is out of scope, or if the answer is to be =
found elsewhere in the history.

  I have been upgrading the GRC from 3.7.11 (with Ubuntu 18.04) to GRC =
9.0 (with Ubuntu 20.04 LTS). See previous dialogue below, using =
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

  I have yet to check whether {VOLK_GNSSSDR_LIBRARIES} has to be added =
to the target_link_libraries, noting the significantly different =
approach now used in .. //my_development/lib/CMakeLists.txt

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



  Is there a more elegant and better way of incorporating VOLKGNSSSDR =
and the MPIR libraries using modern CMake?



  Would reversion to 3.8.1 help in the short term, noting  that the =
output from my work might benefit and the later GRC scheduler =
improvements?



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

    I have only managed to try this with a B210 as the other =
transceivers remain in the laboratory under Covid19 university building =
closure measures.
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

    On 06/22/2020 02:45 PM, David Taylor (manx.net) via USRP-users =
wrote:

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

      There is an issue with FPGA compatibility, which I have seen =
before in 3.7x GRC.  =93Expected FPGA compatibility number 16 expected =
got 14.=94

      This issue was solved under V3.7x  simply by replacement of the =
FPGA image from archive.=20

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
---
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

------=_NextPart_000_0019_01D668F9.9795CA50
Content-Type: text/html;
	charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<META content=3D"text/html;&#13;&#10;      charset=3Dwindows-1252"=20
http-equiv=3DContent-Type></HEAD>
<BODY dir=3Dltr>
<DIV dir=3Dltr>
<DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: #000000">
<DIV>Ron,</DIV>
<DIV>&nbsp;</DIV>
<DIV>Thanks again.</DIV>
<DIV>&nbsp;</DIV>
<DIV>I have persevered with the GRC 9.0 installation and have followed =
the 3.9=20
OOT module porting guide.</DIV>
<DIV>pybind11 2.4.3 and the other required dependencies have been =
installed.=20
CMake reports all present during configure.</DIV>
<DIV>&nbsp;</DIV>
<DIV>A simple C++ OOT under the Workflow instruction produces the =
correct=20
binding files under =91$gr_modtool bind test_cc=92</DIV>
<DIV>CMake configure correctly reported an =91out of sync error=92 =
before=20
binding.</DIV>
<DIV>&nbsp;</DIV>
<DIV>Generate fails to complete with the following CMake error =
only.</DIV>
<DIV>&nbsp;</DIV>
<DIV><FONT color=3D#ff0000>CMake Error at=20
/usr/lib/x86_64-linux-gnu/cmake/gnuradio/GrPybind.cmake:227=20
(pybind11_add_module):</FONT></DIV>
<DIV><FONT color=3D#ff0000>&nbsp;&nbsp;&nbsp; Unknown CMake command=20
=93pybind11_add_module=94.</FONT></DIV>
<DIV><FONT color=3D#ff0000>Call Stack (most recent call =
first):</FONT></DIV>
<DIV><FONT color=3D#ff0000>&nbsp;&nbsp;&nbsp; =
python/bindings/CMakeLists.txt:23=20
(GR_PYBIND_MAKE_OOT)</FONT></DIV>
<DIV>&nbsp;</DIV>
<DIV>I added my own version of Findpybind11.cmake, which may of course =
be=20
contributory.</DIV>
<DIV>&nbsp;</DIV>
<DIV>Is there a version of Findpybind11.cmake out there that pairs =
specifically=20
with pybind11 2.4.3 or am I missing something fundamental with modern=20
cmake.</DIV>
<DIV>VOLKGNSSSDR is pulled successfully in using the old method.</DIV>
<DIV>&nbsp;</DIV>
<DIV>Many thanks,</DIV>
<DIV>&nbsp;</DIV>
<DIV>David GD4FMB</DIV>
<DIV>&nbsp;</DIV>
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
title=3Dusrp-users@lists.ettus.com>Ron Economos via USRP-users</A> =
</DIV>
<DIV><B>Sent:</B> Sunday, July 26, 2020 3:59 PM</DIV>
<DIV><B>To:</B> <A=20
title=3Dusrp-users@lists.ettus.com>usrp-users@lists.ettus.com</A> </DIV>
<DIV><B>Subject:</B> Re: [USRP-users] GRC up-grade - installation=20
issues</DIV></DIV></DIV>
<DIV>&nbsp;</DIV></DIV>
<DIV=20
style=3D'FONT-SIZE: small; TEXT-DECORATION: none; FONT-FAMILY: =
"Calibri"; FONT-WEIGHT: normal; COLOR: #000000; FONT-STYLE: normal; =
DISPLAY: inline'>
<P>David,</P>
<P>You don't need MPIR. The dependency can be resolved with libgmp. =
Here's what=20
that portion of my OOT CMake looks like:</P>
<P>-- Found LOG4CPP: /usr/lib/x86_64-linux-gnu/liblog4cpp.so<BR>-- Found =

PkgConfig: /usr/bin/pkg-config (found version "0.29.1") <BR>-- Checking =
for=20
module 'gmp'<BR>--&nbsp;&nbsp; No package 'gmp' found<BR>-- Found GMP:=20
/usr/lib/x86_64-linux-gnu/libgmpxx.so&nbsp; <BR>-- Checking for module =
'mpir=20
&gt;=3D 3.0'<BR>--&nbsp;&nbsp; No package 'mpir' found<BR>-- Could NOT =
find MPIR=20
(missing: MPIRXX_LIBRARY MPIR_LIBRARY MPIR_INCLUDE_DIR) <BR>-- Found =
MPLIB:=20
/usr/lib/x86_64-linux-gnu/libgmpxx.so&nbsp; <BR></P>
<P>If you don't already have it:<BR></P>
<P>sudo apt install libgmp-dev</P>
<P>For VOLKGNSSSDR, the techniques you used for 3.7.11 should still work =

fine.</P>
<P>Here's an example of an external library from one of my OOT's.</P>
<P><A class=3Dmoz-txt-link-freetext=20
href=3D"https://github.com/drmpeg/gr-dvbgse/blob/master/CMakeLists.txt#L1=
28">https://github.com/drmpeg/gr-dvbgse/blob/master/CMakeLists.txt#L128</=
A></P>
<P><A class=3Dmoz-txt-link-freetext=20
href=3D"https://github.com/drmpeg/gr-dvbgse/blob/master/lib/CMakeLists.tx=
t#L38">https://github.com/drmpeg/gr-dvbgse/blob/master/lib/CMakeLists.txt=
#L38</A></P>
<P><A class=3Dmoz-txt-link-freetext=20
href=3D"https://github.com/drmpeg/gr-dvbgse/blob/master/cmake/Modules/Fin=
dPcap.cmake">https://github.com/drmpeg/gr-dvbgse/blob/master/cmake/Module=
s/FindPcap.cmake</A><BR></P>
<P>Ron W6RZ<BR></P>
<DIV class=3Dmoz-cite-prefix>On 7/26/20 07:06, David Taylor (manx.net) =
via=20
USRP-users wrote:<BR></DIV>
<BLOCKQUOTE cite=3Dmid:274815FD178544A4B80B844E5119AFCD@PC1 =
type=3D"cite">
  <DIV dir=3Dltr>
  <DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: =
#000000">
  <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
  style=3D"FONT-SIZE: 11pt">Apologies if this question is out of scope, =
or if the=20
  answer is to be found elsewhere in the history.</FONT></P>
  <P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt"><FONT=20
  style=3D"FONT-SIZE: 11pt">I have been upgrading the GRC from 3.7.11 =
(with Ubuntu=20
  18.04) to GRC 9.0 (with Ubuntu 20.04 LTS). See previous dialogue =
below, using=20
  </FONT><FONT style=3D"LINE-HEIGHT: 13pt" color=3D#0000ff=20
  size=3D3>3.8.1.0~rc12build2</FONT></P>
  <P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt">&nbsp;</P>
  <P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt"><FONT=20
  style=3D"FONT-SIZE: 11pt">Currently, the synaptic package manager and =
$sudo apt=20
  install gnuradio methods both align on GRC version 9.0. So I have =
persevered=20
  at this version.</FONT></P>
  <P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt"><FONT=20
  style=3D"FONT-SIZE: 11pt">UHD is at v 3.15 and with Python3 the =
package is=20
  basically functional using an available B210 over USB3.</FONT></P>
  <P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt">&nbsp;</P>
  <P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm =
0pt">--------------</P>
  <P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt">&nbsp;</P>
  <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt">The problem=20
  arises with OOT blocks transfer, CMake in its =93modern form=94 and =
with the new=20
  dependency of MPIR.</P>
  <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
  style=3D"FONT-SIZE: 11pt">1). MPIR library has been installed =
independently and=20
  built at V3.0 , with libraries and header located in /usr/local/lib =
and=20
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
{VOLK_GNSSSDR_LIBRARIES}=20
  has to be added to the target_link_libraries, noting the significantly =

  different approach now used in ..=20
  //my_development/lib/CMakeLists.txt</FONT></P>
  <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
  style=3D"FONT-SIZE: 11pt">3). The standard VOLK library is found in =
CMake=20
  configure as it is now part of the v 9.0 build package. </FONT></P>
  <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
  style=3D"FONT-SIZE: 11pt">4). I have tried adapting the older find =
package=20
  method used in 2) for MPIR without success, but note the following =
CMake=20
  configure output.</FONT></P>
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
  <P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt"><FONT=20
  style=3D"FONT-SIZE: 11pt" color=3D#ff0000>Can anyone help with the =
MPIR problem=20
  please?</FONT></P>
  <P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt">&nbsp;</P>
  <P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt"><FONT=20
  style=3D"FONT-SIZE: 11pt">As an OOT build requirement at V 9.0., I =
would have=20
  expected expected the gr-modtool to generate some boiler-plate code to =
cover=20
  this dependency addition!</FONT></P>
  <P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt">&nbsp;</P>
  <P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt"><FONT=20
  style=3D"FONT-SIZE: 11pt" color=3D#ff0000>Is there a more elegant and =
better way=20
  of incorporating VOLKGNSSSDR and the MPIR libraries using modern=20
  CMake?</FONT></P>
  <P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt">&nbsp;</P>
  <P class=3DMsoNoSpacing style=3D"MARGIN: 0cm 0cm 0pt"><FONT =
color=3D#ff0000>Would=20
  reversion to 3.8.1 help in the short term, noting&nbsp; that the =
output from=20
  my work might benefit and the later GRC scheduler =
improvements?</FONT></P>
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
  title=3Dusrp-users@lists.ettus.com moz-do-not-send=3D"true">Marcus D. =
Leech via=20
  USRP-users</A> </DIV>
  <DIV><B>Sent:</B> Tuesday, June 23, 2020 8:30 PM</DIV>
  <DIV><B>To:</B> <A title=3Dusrp-users@lists.ettus.com=20
  moz-do-not-send=3D"true">usrp-users@lists.ettus.com</A> </DIV>
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
    <DIV>The N210 is yet to be used, but thanks for the advising on the=20
    particular EEPROM image load method, =
</DIV></DIV></DIV></BLOCKQUOTE>OK, so=20
  with B2xx, if they already have a loaded FPGA image, they won't try to =
re-load=20
  from your host during start-up, unless you<BR>&nbsp; power-cycle them=20
  first.&nbsp; So, this can result in you having upgraded the host side =
of=20
  things, complete with host-resident images,<BR>&nbsp; and getting a=20
  "mis-match" error with B2xx.&nbsp; The UHD code does NOT attempt to =
re-load=20
  the FPGA image if the host side is<BR>&nbsp; newer than the code =
resident on=20
  the B2xx--only after a power-cycle.<BR>
  <BLOCKQUOTE cite=3Dmid:07FCC8E1668F4D4A814BC4DA01DCA8BE@PC1 =
type=3D"cite">
    <DIV dir=3Dltr>
    <DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: =
#000000">
    <DIV>&nbsp;</DIV>
    <DIV>It was interesting to see the extra console UHD diagnostics,=20
    particularly about clock sources and the 1 PPS input.</DIV>
    <DIV>I have a Rubidium 10 MHz source and 1PPS generator source that =
will=20
    eventually be incorporated for USRP synchronisation.</DIV>
    <DIV>&nbsp;</DIV>
    <DIV>However, I am now in the process of setting up the toolchain =
and new=20
    gr_modtool and transitioning the 3.7x OOT blocks</DIV>
    <DIV>The GNU Radio 3.8 OOT Module Porting Guide looks helpful at 16 =
May=20
    2020.</DIV>
    <DIV>The only real issue I had before was to include =
FindVOLKGNSSSDRcmake=20
    and the corresponding library.</DIV>
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
    title=3Dusrp-users@lists.ettus.com moz-do-not-send=3D"true">Marcus =
D. Leech via=20
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
(manx.net)=20
    via USRP-users wrote:<BR></DIV>
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
      research project for two years based on Ubuntu 18.04 LTS and =
version 3.7x=20
      GRC.</FONT></P>
      <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
      style=3D"FONT-SIZE: 11pt">This includes a number of OOT blocks =
developed for=20
      direct sequence spread spectrum, using the Volk GNSSSDR library=20
      extensions. An N210 USRP is also at my disposal.</FONT></P>
      <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
      style=3D"FONT-SIZE: 11pt">I now have a clean upgrade to Ubuntu =
20.04 LTS and=20
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
      size=3D3>3.15.0.0-2build5</FONT> correctly identifies the B210 =
over USB3. (I=20
      note that library-file libuhd003 no longer forms part of this=20
      package).</FONT></P>
      <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
      style=3D"FONT-SIZE: 11pt">3). Running =
=93uhd_images_downloader.py=94 fully=20
      populates /usr/share/images/.</FONT></P>
      <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
      style=3D"FONT-SIZE: 11pt">There is an issue with FPGA =
compatibility, which I=20
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
your=20
    N210 or B2xx?&nbsp; It isn't clear.<BR><BR>
    <BLOCKQUOTE cite=3Dmid:3106CD4CFDE84EF2B512E9D68DC0AFF8@PC1 =
type=3D"cite">
      <DIV dir=3Dltr>
      <DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: =
#000000">
      <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
      style=3D"FONT-SIZE: 11pt">4). I have removed all FPGA images from =
the=20
      /usr/share/images directory and have selectively tried installing =
a number=20
      of earlier discrete images and boot-loader from the archive, but =
all=20
      without success.</FONT></P>
      <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
      style=3D"FONT-SIZE: 11pt">5). A re-run of the =
uhd-images-downloader now=20
      fails to re-populate the images folder, however the python(3) =
script=20
      itself runs.</FONT></P></DIV></DIV></BLOCKQUOTE>You might want to =
simply=20
    remove *everything* from /usr/share/uhd/images, and =
re-run:<BR><BR>sudo=20
    uhd_images_downloader.py<BR><BR>[Making certain it's running the =
version you=20
    think it's running--if you installed from pre-packaged, it'll be in=20
    /usr/bin]<BR><BR>If this doesn't work, please share the error =
messages=20
    produced with us.<BR><BR><BR>Also, because I didn't see anything in =
your=20
    work-log about it, for N210, you have to =
run:<BR><BR>uhd_image_loader --args=20
    addr=3D&lt;addr-of-n210&gt;,type=3Dn200<BR><BR>This loads the =
appropriate image=20
    into the EEPROM of the N210.&nbsp; The N2xxx series, unlike the B2xx =
series=20
    don't do this dynamically at<BR>&nbsp; runtime.&nbsp; Once you load =
an image=20
    into them, that image is there until it is reprogrammed, even across =

    power-off.&nbsp; This is different than<BR>&nbsp; B2xx, which =
manages this=20
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
      style=3D"FONT-SIZE: 11pt">Many thanks in advance and I look =
forward to being=20
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
    _______________________________________________<BR>USRP-users =
mailing=20
    list<BR><A class=3Dmoz-txt-link-abbreviated=20
    moz-do-not-send=3D"true">USRP-users@lists.ettus.com</A><BR><A=20
    class=3Dmoz-txt-link-freetext=20
    =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m"=20
    =
moz-do-not-send=3D"true">http://lists.ettus.com/mailman/listinfo/usrp-use=
rs_lists.ettus.com</A><BR></DIV></DIV></DIV><BR>
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
  <FIELDSET class=3DmimeAttachmentHeader></FIELDSET> <PRE =
class=3Dmoz-quote-pre =
wrap=3D"">_______________________________________________
USRP-users mailing list
<A class=3Dmoz-txt-link-abbreviated>USRP-users@lists.ettus.com</A>
<A class=3Dmoz-txt-link-freetext =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</A>=

</PRE></BLOCKQUOTE>
<P>
<HR>
_______________________________________________<BR>USRP-users mailing=20
list<BR>USRP-users@lists.ettus.com<BR>http://lists.ettus.com/mailman/list=
info/usrp-users_lists.ettus.com<BR></DIV></DIV></DIV></BODY></HTML>

------=_NextPart_000_0019_01D668F9.9795CA50--



--===============8571910252578862537==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8571910252578862537==--


