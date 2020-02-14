Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 785A615FAB8
	for <lists+usrp-users@lfdr.de>; Sat, 15 Feb 2020 00:38:58 +0100 (CET)
Received: from [::1] (port=47022 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j2kXx-0007Nh-Cc; Fri, 14 Feb 2020 18:38:57 -0500
Received: from atl4mhob05.registeredsite.com ([209.17.115.43]:44144)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <k5so@k5so.com>) id 1j2kXt-0007Gn-OU
 for usrp-users@lists.ettus.com; Fri, 14 Feb 2020 18:38:53 -0500
Received: from mailpod.hostingplatform.com
 (atl4qobmail02pod3.registeredsite.com [10.30.77.68])
 by atl4mhob05.registeredsite.com (8.14.4/8.14.4) with ESMTP id 01ENcC7l003896
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <usrp-users@lists.ettus.com>; Fri, 14 Feb 2020 18:38:12 -0500
Received: (qmail 21757 invoked by uid 0); 14 Feb 2020 23:38:12 -0000
X-TCPREMOTEIP: 192.206.203.20
X-Authenticated-UID: k5so@k5so.com
Received: from unknown (HELO ?192.168.1.8?) (k5so@k5so.com@192.206.203.20)
 by 0 with ESMTPA; 14 Feb 2020 23:38:12 -0000
Message-Id: <1E87F122-0D04-428A-B28D-D7E80E4EBFED@k5so.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Fri, 14 Feb 2020 16:38:09 -0700
In-Reply-To: <B19547D7-4E50-4416-A46B-EBC8BA79C8B3@k5so.com>
To: Joe Martin <k5so@k5so.com>
References: <261901d5e38b$c0295070$407bf150$@sdr-radio.com>
 <B19547D7-4E50-4416-A46B-EBC8BA79C8B3@k5so.com>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [USRP-users] UHD 4.0.0 X310 Images
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Joe Martin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Joe Martin <k5so@k5so.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============7000019368454744744=="
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


--===============7000019368454744744==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_44332CD6-34DB-4908-8B50-84A598DFEFB8"


--Apple-Mail=_44332CD6-34DB-4908-8B50-84A598DFEFB8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Pardon my bit of syntax error:   These work for me on my X310:=20

sudo /usr/local/lib/uhd/utils/uhd_images_downloader.py

/usr/local/bin/uhd_image_loader =
=E2=80=94args=3D=E2=80=9Ctype=3Dx300,addr=3D192.168.30.2=E2=80=9D

Joe

> On Feb 14, 2020, at 4:31 PM, Joe Martin via USRP-users =
<usrp-users@lists.ettus.com> wrote:
>=20
> Hi Simon,=20
>=20
> You can do this (assuming you installed UHD components into the given =
directories below):=20
>=20
> sudo /user/local/lib/uhd/utils/iuhd_images_downloader.py
>=20
> cd /usr/local/bin
> uhd_image_loader =E2=80=94args=3Dtype=3Dx300,addr=3D192.168.30.2
>=20
> The addr I show is for a 10 G ethernet connection, will be different =
for a 1G ethernet connection, of course.=20
>=20
> Regards,=20
>=20
> Joe K5SO
>=20
>> On Feb 14, 2020, at 4:09 PM, Simon G4ELI via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>=20
>> Hi,
>> =20
>> Having compiled UHD from the latest source master branch, I=E2=80=99m =
looking for the X310 images for a user, apparently we=E2=80=99re looking =
for FPGA 38.
>> =20
>> =E2=80=9CException 0000054F (1359), RuntimeError: Expected FPGA =
compatibility number 38, but got 36=E2=80=9D
>> =20
>> Any ideas please?
>> =20
>> Simon Brown, G4ELI
>> https://www.sdr-radio.com <https://www.sdr-radio.com/>
>> =20
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--Apple-Mail=_44332CD6-34DB-4908-8B50-84A598DFEFB8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Pardon my bit of syntax error: &nbsp; These work for me on my =
X310:&nbsp;<div class=3D""><br class=3D""></div><div class=3D"">sudo =
/usr/local/lib/uhd/utils/uhd_images_downloader.py</div><div class=3D""><br=
 class=3D""></div><div class=3D"">/usr/local/bin/uhd_image_loader =
=E2=80=94args=3D=E2=80=9Ctype=3Dx300,addr=3D192.168.30.2=E2=80=9D</div><di=
v class=3D""><br class=3D""></div><div class=3D"">Joe<br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Feb 14, 2020, at 4:31 PM, Joe Martin via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><meta =
http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8" =
class=3D""><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; line-break: after-white-space;" class=3D"">Hi Simon,&nbsp;<div =
class=3D""><br class=3D""></div><div class=3D"">You can do this =
(assuming you installed UHD components into the given directories =
below):&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D"">sudo =
/user/local/lib/uhd/utils/iuhd_images_downloader.py</div><div =
class=3D""><br class=3D""></div><div class=3D"">cd =
/usr/local/bin</div><div class=3D"">uhd_image_loader =
=E2=80=94args=3Dtype=3Dx300,addr=3D192.168.30.2</div><div class=3D""><br =
class=3D""><div class=3D"">The addr I show is for a 10 G ethernet =
connection, will be different for a 1G ethernet connection, of =
course.&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D"">Regards,&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D"">Joe K5SO</div><div class=3D""><br class=3D""></div><div =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On Feb =
14, 2020, at 4:09 PM, Simon G4ELI via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; caret-color: rgb(0, =
0, 0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Hi,<o:p =
class=3D""></o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Having =
compiled UHD from the latest source master branch, I=E2=80=99m looking =
for the X310 images for a user, apparently we=E2=80=99re looking for =
FPGA 38.<o:p class=3D""></o:p></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">=E2=80=9CException 0000054F (1359), RuntimeError: Expected =
FPGA compatibility number 38, but got 36=E2=80=9D<o:p =
class=3D""></o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Any ideas =
please?<o:p class=3D""></o:p></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span class=3D"">Simon Brown, G4ELI<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
class=3D""><a href=3D"https://www.sdr-radio.com/" =
class=3D"">https://www.sdr-radio.com</a><o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div></div></div></blockquote></div><br =
class=3D""></div></div>_______________________________________________<br =
class=3D"">USRP-users mailing list<br class=3D""><a =
href=3D"mailto:USRP-users@lists.ettus.com" =
class=3D"">USRP-users@lists.ettus.com</a><br =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com<br class=3D""></div></blockquote></div><br =
class=3D""></div></body></html>=

--Apple-Mail=_44332CD6-34DB-4908-8B50-84A598DFEFB8--


--===============7000019368454744744==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7000019368454744744==--

