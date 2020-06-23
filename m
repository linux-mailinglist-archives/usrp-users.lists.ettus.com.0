Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB98205BB5
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jun 2020 21:23:54 +0200 (CEST)
Received: from [::1] (port=53506 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jnoWN-0006su-BH; Tue, 23 Jun 2020 15:23:51 -0400
Received: from ssi-cc-fra1-mro-001.atmailcloud.com ([89.46.80.72]:52910)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <drtaylor@manx.net>) id 1jnoWI-0006kj-TF
 for usrp-users@lists.ettus.com; Tue, 23 Jun 2020 15:23:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=manx.net;
 s=20160330; h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID;
 bh=1luKKA2wW+7gtcfF/QmO958IV3kUwPg9x1PJbB3OCsI=; b=D/shgT11u0DpGsmcoCy5DpVmxj
 Tu4pjESkZTNfVEIcJLeF8kxTB7DRW8SKqRlrlCtIrfnMQpyb1n0di6ZBrQL04ZqaQNjSQmyGQJp8j
 jsdeRJH+QglGvj0DkD2FZp2nOlneHmfYxdIE/3joNbYgfYDZyYK5Mr95Jrr9sBfjOXrs=;
Received: from pc2-cc-fra1-mrr-002.internal.atmailcloud.com ([10.20.30.46])
 by ssi-cc-fra1-mro-001.internal.atmailcloud.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>) id 1jnoVd-0007Nl-Nv
 for usrp-users@lists.ettus.com; Wed, 24 Jun 2020 05:23:05 +1000
Received: from pc2-cc-fra1-mrc-005.internal.atmailcloud.com ([10.20.30.55])
 by pc2-cc-fra1-mrr-002.internal.atmailcloud.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>) id 1jnoVd-00044D-L2
 for usrp-users@lists.ettus.com; Wed, 24 Jun 2020 05:23:05 +1000
Received: from [178.16.9.227] (helo=PC1)
 by pc2-cc-fra1-mrc-005.internal.atmailcloud.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>) id 1jnoVd-0006hD-9m
 for usrp-users@lists.ettus.com; Wed, 24 Jun 2020 05:23:05 +1000
Message-ID: <07FCC8E1668F4D4A814BC4DA01DCA8BE@PC1>
To: <usrp-users@lists.ettus.com>
References: <3106CD4CFDE84EF2B512E9D68DC0AFF8@PC1> <5EF15135.6050502@gmail.com>
In-Reply-To: <5EF15135.6050502@gmail.com>
Date: Tue, 23 Jun 2020 20:23:04 +0100
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
Content-Type: multipart/mixed; boundary="===============4397505182913538114=="
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

--===============4397505182913538114==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0048_01D6499C.19AAAD30"

This is a multi-part message in MIME format.

------=_NextPart_000_0048_01D6499C.19AAAD30
Content-Type: text/plain;
	charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Marcus.

Many thanks for your prompt reply.
Complete removal of everything from /usr/share/uhd/images, then running =
the images-downloader from /usr/bin works fine.

I have only managed to try this with a B210 as the other transceivers =
remain in the laboratory under Covid19 university building closure =
measures.
The N210 is yet to be used, but thanks for the advising on the =
particular EEPROM image load method,=20

It was interesting to see the extra console UHD diagnostics, =
particularly about clock sources and the 1 PPS input.
I have a Rubidium 10 MHz source and 1PPS generator source that will =
eventually be incorporated for USRP synchronisation.

However, I am now in the process of setting up the toolchain and new =
gr_modtool and transitioning the 3.7x OOT blocks
The GNU Radio 3.8 OOT Module Porting Guide looks helpful at 16 May 2020.
The only real issue I had before was to include FindVOLKGNSSSDRcmake and =
the corresponding library.

Regards,
David.




From: Marcus D. Leech via USRP-users=20
Sent: Tuesday, June 23, 2020 1:47 AM
To: usrp-users@lists.ettus.com=20
Subject: Re: [USRP-users] GRC up-grade - installation issues

On 06/22/2020 02:45 PM, David Taylor (manx.net) via USRP-users wrote:

  Dear all,

  I have been successfully running a B200/ B210 research project for two =
years based on Ubuntu 18.04 LTS and version 3.7x GRC.

  This includes a number of OOT blocks developed for direct sequence =
spread spectrum, using the Volk GNSSSDR library extensions. An N210 USRP =
is also at my disposal.

  I now have a clean upgrade to Ubuntu 20.04 LTS and wish to refresh the =
GRC & UHD drivers to the latest stable release, taking best advice =
please to ensure project conclusion.

  The issues:-

  1). GRC version 3.8.1.0~rc12build2 works standalone and appears to =
have similar Cmake files structure and content. (3.9.0.0 is listed in =
the package manager as available, but with significant and noticeable =
changes in the software migration and dependencies)?=20

  2). Libuhd-dev at 3.15.0.0-2build5 correctly identifies the B210 over =
USB3. (I note that library-file libuhd003 no longer forms part of this =
package).

  3). Running =93uhd_images_downloader.py=94 fully populates =
/usr/share/images/.

  There is an issue with FPGA compatibility, which I have seen before in =
3.7x GRC.  =93Expected FPGA compatibility number 16 expected got 14.=94

  This issue was solved under V3.7x  simply by replacement of the FPGA =
image from archive.=20

Is this compatibility issue with your N210 or B2xx?  It isn't clear.


  4). I have removed all FPGA images from the /usr/share/images =
directory and have selectively tried installing a number of earlier =
discrete images and boot-loader from the archive, but all without =
success.

  5). A re-run of the uhd-images-downloader now fails to re-populate the =
images folder, however the python(3) script itself runs.

You might want to simply remove *everything* from /usr/share/uhd/images, =
and re-run:

sudo uhd_images_downloader.py

[Making certain it's running the version you think it's running--if you =
installed from pre-packaged, it'll be in /usr/bin]

If this doesn't work, please share the error messages produced with us.


Also, because I didn't see anything in your work-log about it, for N210, =
you have to run:

uhd_image_loader --args addr=3D<addr-of-n210>,type=3Dn200

This loads the appropriate image into the EEPROM of the N210.  The N2xxx =
series, unlike the B2xx series don't do this dynamically at
  runtime.  Once you load an image into them, that image is there until =
it is reprogrammed, even across power-off.  This is different than
  B2xx, which manages this automatically after power-up.





  Many thanks in advance and I look forward to being able to contribute =
to the group.

  Best regards,

  David Taylor

  Ph.D Researcher, Limerick University, Ireland. GD4FMB


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

------=_NextPart_000_0048_01D6499C.19AAAD30
Content-Type: text/html;
	charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<META content=3D"text/html; charset=3Dwindows-1252" =
http-equiv=3DContent-Type></HEAD>
<BODY dir=3Dltr text=3D#000000 bgColor=3D#ffffff>
<DIV dir=3Dltr>
<DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: #000000">
<DIV>Marcus.</DIV>
<DIV>&nbsp;</DIV>
<DIV>Many thanks for your prompt reply.</DIV>
<DIV>Complete removal of everything from /usr/share/uhd/images, then =
running the=20
images-downloader from /usr/bin works fine.</DIV>
<DIV>&nbsp;</DIV>
<DIV>I have only managed to try this with a B210 as the other =
transceivers=20
remain in the laboratory under Covid19 university building closure=20
measures.</DIV>
<DIV>The N210 is yet to be used, but thanks for the advising on the =
particular=20
EEPROM image load method, </DIV>
<DIV>&nbsp;</DIV>
<DIV>It was interesting to see the extra console UHD diagnostics, =
particularly=20
about clock sources and the 1 PPS input.</DIV>
<DIV>I have a Rubidium 10 MHz source and 1PPS generator source that will =

eventually be incorporated for USRP synchronisation.</DIV>
<DIV>&nbsp;</DIV>
<DIV>However, I am now in the process of setting up the toolchain and =
new=20
gr_modtool and transitioning the 3.7x OOT blocks</DIV>
<DIV>The GNU Radio 3.8 OOT Module Porting Guide looks helpful at 16 May=20
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
title=3Dusrp-users@lists.ettus.com>Marcus D. Leech via USRP-users</A> =
</DIV>
<DIV><B>Sent:</B> Tuesday, June 23, 2020 1:47 AM</DIV>
<DIV><B>To:</B> <A=20
title=3Dusrp-users@lists.ettus.com>usrp-users@lists.ettus.com</A> </DIV>
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
B210 research=20
  project for two years based on Ubuntu 18.04 LTS and version 3.7x=20
  GRC.</FONT></P>
  <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
  style=3D"FONT-SIZE: 11pt">This includes a number of OOT blocks =
developed for=20
  direct sequence spread spectrum, using the Volk GNSSSDR library =
extensions. An=20
  N210 USRP is also at my disposal.</FONT></P>
  <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
  style=3D"FONT-SIZE: 11pt">I now have a clean upgrade to Ubuntu 20.04 =
LTS and=20
  wish to refresh the GRC &amp; UHD drivers to the latest stable =
release, taking=20
  best advice please to ensure project conclusion.</FONT></P>
  <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt">The=20
  issues:-</P>
  <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
  style=3D"FONT-SIZE: 11pt">1). GRC version <FONT color=3D#0000ff=20
  size=3D3>3.8.1.0~rc12build2</FONT> works standalone and appears to =
have similar=20
  Cmake files structure and content. (<FONT color=3D#0000ff =
size=3D3>3.9.0.0</FONT>=20
  is listed in the package manager as available, but with significant =
and=20
  noticeable changes in the software migration and dependencies)? =
</FONT></P>
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
fully populates=20
  /usr/share/images/.</FONT></P>
  <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
  style=3D"FONT-SIZE: 11pt">There is an issue with FPGA compatibility, =
which I=20
  have seen before in 3.7x GRC.<SPAN style=3D"mso-spacerun: yes">&nbsp;=20
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
  style=3D"FONT-SIZE: 11pt">4). I have removed all FPGA images from the=20
  /usr/share/images directory and have selectively tried installing a =
number of=20
  earlier discrete images and boot-loader from the archive, but all =
without=20
  success.</FONT></P>
  <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
  style=3D"FONT-SIZE: 11pt">5). A re-run of the uhd-images-downloader =
now fails to=20
  re-populate the images folder, however the python(3) script itself=20
  runs.</FONT></P></DIV></DIV></BLOCKQUOTE>You might want to simply =
remove=20
*everything* from /usr/share/uhd/images, and re-run:<BR><BR>sudo=20
uhd_images_downloader.py<BR><BR>[Making certain it's running the version =
you=20
think it's running--if you installed from pre-packaged, it'll be in=20
/usr/bin]<BR><BR>If this doesn't work, please share the error messages =
produced=20
with us.<BR><BR><BR>Also, because I didn't see anything in your work-log =
about=20
it, for N210, you have to run:<BR><BR>uhd_image_loader --args=20
addr=3D&lt;addr-of-n210&gt;,type=3Dn200<BR><BR>This loads the =
appropriate image into=20
the EEPROM of the N210.&nbsp; The N2xxx series, unlike the B2xx series =
don't do=20
this dynamically at<BR>&nbsp; runtime.&nbsp; Once you load an image into =
them,=20
that image is there until it is reprogrammed, even across =
power-off.&nbsp; This=20
is different than<BR>&nbsp; B2xx, which manages this automatically after =

power-up.<BR><BR><BR>
<BLOCKQUOTE cite=3Dmid:3106CD4CFDE84EF2B512E9D68DC0AFF8@PC1 =
type=3D"cite">
  <DIV dir=3Dltr>
  <DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: =
#000000">
  <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt">&nbsp;</P>
  <P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
  style=3D"FONT-SIZE: 11pt">Many thanks in advance and I look forward to =
being=20
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

------=_NextPart_000_0048_01D6499C.19AAAD30--



--===============4397505182913538114==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4397505182913538114==--


