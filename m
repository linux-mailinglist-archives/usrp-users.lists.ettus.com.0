Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA85203F6B
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jun 2020 20:46:32 +0200 (CEST)
Received: from [::1] (port=41180 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jnRSf-0008KC-Ot; Mon, 22 Jun 2020 14:46:29 -0400
Received: from ssi-cc-fra1-mro-003.atmailcloud.com ([89.45.227.180]:39518)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <drtaylor@manx.net>) id 1jnRSb-0007zJ-A1
 for usrp-users@lists.ettus.com; Mon, 22 Jun 2020 14:46:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=manx.net;
 s=20160330; h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID;
 bh=CTfoaWypcOlREwpxp0AXJsahHBB+D2mUjUiJ70EVowM=; b=ShgO+CFmHFLmi9RSiJIE/S99Us
 QjzTzp0lv9gRtQ9WogJLfpt4LfYxGukln91TiCknUFZZIeA/LxGQ8NSAT4x35+WePumKEZ9FkrA3t
 W+8ZzBnIPiVLR6evSqwUgp33TLakvIeWKxE8hJRXLDGX3mCEGjs12rLFKwXQ652ocZ5A=;
Received: from pc2-cc-fra1-mrr-003.internal.atmailcloud.com ([10.20.30.47])
 by ssi-cc-fra1-mro-003.internal.atmailcloud.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>) id 1jnRRw-000417-3i
 for usrp-users@lists.ettus.com; Tue, 23 Jun 2020 04:45:44 +1000
Received: from pc2-cc-fra1-mrc-004.internal.atmailcloud.com ([10.20.30.54])
 by pc2-cc-fra1-mrr-003.internal.atmailcloud.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>) id 1jnRRw-0007wN-0Z
 for usrp-users@lists.ettus.com; Tue, 23 Jun 2020 04:45:44 +1000
Received: from [178.16.9.227] (helo=PC1)
 by pc2-cc-fra1-mrc-004.internal.atmailcloud.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <drtaylor@manx.net>) id 1jnRRv-0005hw-NA
 for usrp-users@lists.ettus.com; Tue, 23 Jun 2020 04:45:43 +1000
Message-ID: <3106CD4CFDE84EF2B512E9D68DC0AFF8@PC1>
To: <usrp-users@lists.ettus.com>
Date: Mon, 22 Jun 2020 19:45:44 +0100
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
Subject: [USRP-users] GRC up-grade - installation issues
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
Content-Type: multipart/mixed; boundary="===============3804780504818923792=="
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

--===============3804780504818923792==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0017_01D648CD.B7CE8970"

This is a multi-part message in MIME format.

------=_NextPart_000_0017_01D648CD.B7CE8970
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

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

1). GRC version 3.8.1.0~rc12build2 works standalone and appears to have =
similar Cmake files structure and content. (3.9.0.0 is listed in the =
package manager as available, but with significant and noticeable =
changes in the software migration and dependencies)?=20

2). Libuhd-dev at 3.15.0.0-2build5 correctly identifies the B210 over =
USB3. (I note that library-file libuhd003 no longer forms part of this =
package).

3). Running =E2=80=9Cuhd_images_downloader.py=E2=80=9D fully populates =
/usr/share/images/.

There is an issue with FPGA compatibility, which I have seen before in =
3.7x GRC.  =E2=80=9CExpected FPGA compatibility number 16 expected got =
14.=E2=80=9D

This issue was solved under V3.7x  simply by replacement of the FPGA =
image from archive.=20

4). I have removed all FPGA images from the /usr/share/images directory =
and have selectively tried installing a number of earlier discrete =
images and boot-loader from the archive, but all without success.

5). A re-run of the uhd-images-downloader now fails to re-populate the =
images folder, however the python(3) script itself runs.



Many thanks in advance and I look forward to being able to contribute to =
the group.

Best regards,

David Taylor

Ph.D Researcher, Limerick University, Ireland. GD4FMB

------=_NextPart_000_0017_01D648CD.B7CE8970
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD></HEAD>
<BODY dir=3Dltr>
<DIV dir=3Dltr>
<DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: #000000">
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
style=3D"FONT-SIZE: 11pt">Dear all,</FONT></P>
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
style=3D"FONT-SIZE: 11pt">I have been successfully running a B200/ B210 =
research=20
project for two years based on Ubuntu 18.04 LTS and version 3.7x =
GRC.</FONT></P>
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
style=3D"FONT-SIZE: 11pt">This includes a number of OOT blocks developed =
for=20
direct sequence spread spectrum, using the Volk GNSSSDR library =
extensions. An=20
N210 USRP is also at my disposal.</FONT></P>
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
style=3D"FONT-SIZE: 11pt">I now have a clean upgrade to Ubuntu 20.04 LTS =
and wish=20
to refresh the GRC &amp; UHD drivers to the latest stable release, =
taking best=20
advice please to ensure project conclusion.</FONT></P>
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt">The=20
issues:-</P>
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
style=3D"FONT-SIZE: 11pt">1). GRC version <FONT color=3D#0000ff=20
size=3D3>3.8.1.0~rc12build2</FONT> works standalone and appears to have =
similar=20
Cmake files structure and content. (<FONT color=3D#0000ff =
size=3D3>3.9.0.0</FONT> is=20
listed in the package manager as available, but with significant and =
noticeable=20
changes in the software migration and dependencies)? </FONT></P>
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
style=3D"FONT-SIZE: 11pt">2). Libuhd-dev at <FONT color=3D#0000ff=20
size=3D3>3.15.0.0-2build5</FONT> correctly identifies the B210 over =
USB3. (I note=20
that library-file libuhd003 no longer forms part of this =
package).</FONT></P>
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
style=3D"FONT-SIZE: 11pt">3). Running =
=E2=80=9Cuhd_images_downloader.py=E2=80=9D fully populates=20
/usr/share/images/.</FONT></P>
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
style=3D"FONT-SIZE: 11pt">There is an issue with FPGA compatibility, =
which I have=20
seen before in 3.7x GRC.<SPAN style=3D"mso-spacerun: yes">&nbsp; =
=E2=80=9C</SPAN>Expected=20
FPGA compatibility number 16 expected got 14.=E2=80=9D</FONT></P>
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
style=3D"FONT-SIZE: 11pt">This issue was solved under V3.7x&nbsp; simply =
by=20
replacement of the FPGA image from archive. </FONT></P>
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
style=3D"FONT-SIZE: 11pt">5). A re-run of the uhd-images-downloader now =
fails to=20
re-populate the images folder, however the python(3) script itself=20
runs.</FONT></P>
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
style=3D"FONT-SIZE: 11pt"></FONT>&nbsp;</P>
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
style=3D"FONT-SIZE: 11pt">Many thanks in advance and I look forward to =
being able=20
to contribute to the group.</FONT></P>
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt">Best=20
regards,</P>
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
style=3D"FONT-SIZE: 11pt">David Taylor</FONT></P>
<P class=3DMsoNormal style=3D"MARGIN: 0cm 0cm 10pt; LINE-HEIGHT: =
13pt"><FONT=20
style=3D"FONT-SIZE: 11pt">Ph.D Researcher, Limerick University, Ireland. =

GD4FMB</FONT></P></DIV></DIV></BODY></HTML>

------=_NextPart_000_0017_01D648CD.B7CE8970--



--===============3804780504818923792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3804780504818923792==--


