Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E80FB15FCA1
	for <lists+usrp-users@lfdr.de>; Sat, 15 Feb 2020 06:21:04 +0100 (CET)
Received: from [::1] (port=45470 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j2psx-0001Tc-JI; Sat, 15 Feb 2020 00:20:59 -0500
Received: from mail-wm1-f42.google.com ([209.85.128.42]:35510)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <simon@sdr-radio.com>) id 1j2psu-0001Ok-KL
 for usrp-users@lists.ettus.com; Sat, 15 Feb 2020 00:20:56 -0500
Received: by mail-wm1-f42.google.com with SMTP id b17so12961325wmb.0
 for <usrp-users@lists.ettus.com>; Fri, 14 Feb 2020 21:20:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sdr-radio-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:references:in-reply-to:subject:date:message-id
 :mime-version:thread-index:content-language;
 bh=jufet3CaDbFxuPfF9q3oQkyXVrJ0JXU6HMmjfOtla84=;
 b=hkcQFB/GsmK08wGztnYDNcD59qxAVrQlh6Obyccf8gP5vro5X7iumd493gIp9PcQWg
 Y7LdCNN7XMxokaLc5eUD8gkJESMGmdc/8afgNkG1DDDGY1PMzaNJHst2BeWMDddZ+GXW
 xT7l6ZZffRogHvsI/sKqSD/8byzCq+N0hPN4/3JwMDdDI7ffBnWBNcPNPZd6AF0ggBXi
 U1GZsK+jX0O+Ay95crmZlU6b+hHsncX9Aj1Mg5H5rmZgAEnTWZlpItdufR06zRmoN4Dw
 M21ADyoiMJjVjiHnNaboGXOqcJKHs7Asf5VvUeMaNLZxxhIrjbR1yocjX9t+UXIW9Hqe
 r6IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
 :message-id:mime-version:thread-index:content-language;
 bh=jufet3CaDbFxuPfF9q3oQkyXVrJ0JXU6HMmjfOtla84=;
 b=l7amzZrOdO52pSIvxET50HfduAml1cqvwttD2s649Fb9AthgczCWmvGn5Wx5EsUJjg
 7oRBn5q8t2jCqfc/98ZF1gAh+bVPcd95bD4omD24SsbIQk9MmjWvUVy+tVedBO6PNmjn
 k4Vvga9tAdUZqEG8iWc8p6JuBImRUwaUb6ZEiQ/3c36zBcIe21HfWgOkSyNdcrUBX88j
 KVd0rV6WJWOPG0IZy/SJ2fYNUe7k17BH6FGsJ2dgc/6aGcCbTcvZRY+XAHMLG+nCXon4
 Bi7ctd1qYRq3uzAaGVhySu00z2NlurZKdSZVH9om1ZpS3VEUdVySJzGjIChHbsXNd7vn
 VlxQ==
X-Gm-Message-State: APjAAAXnC6JhU/knSD+NfGBo3WQ2JXZYB674kBN5zLxONKCj6M8oYrSx
 lZ7EuRsU1TwSgRv7AHAH25CD7TAcVbw=
X-Google-Smtp-Source: APXvYqyrx+RCmZCmvnKO+76ErGdL55bniWNnDybXt3UF6mORFr5CMF1ZJJhVDAbbzEiPZhjZyOs1Kw==
X-Received: by 2002:a1c:988c:: with SMTP id a134mr8409723wme.163.1581744015324; 
 Fri, 14 Feb 2020 21:20:15 -0800 (PST)
Received: from Beasty (blackbeauty.sdr-radio.com. [81.174.138.141])
 by smtp.gmail.com with ESMTPSA id b16sm9797850wmj.39.2020.02.14.21.20.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Feb 2020 21:20:14 -0800 (PST)
To: "'Joe Martin'" <k5so@k5so.com>
References: <261901d5e38b$c0295070$407bf150$@sdr-radio.com>
 <B19547D7-4E50-4416-A46B-EBC8BA79C8B3@k5so.com>
 <1E87F122-0D04-428A-B28D-D7E80E4EBFED@k5so.com>
In-Reply-To: <1E87F122-0D04-428A-B28D-D7E80E4EBFED@k5so.com>
Date: Sat, 15 Feb 2020 05:20:12 -0000
Message-ID: <019401d5e3bf$99e8b0c0$cdba1240$@sdr-radio.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIt/S3EJLubwGbrM27z9Kr9JjYo2AGDA3slApY9klanSrn5QA==
Content-Language: en-gb
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
From: Simon G4ELI via USRP-users <usrp-users@lists.ettus.com>
Reply-To: simon@sdr-radio.com
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============2164279657102218661=="
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

This is a multipart message in MIME format.

--===============2164279657102218661==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0195_01D5E3BF.99E99B20"
Content-Language: en-gb

This is a multipart message in MIME format.

------=_NextPart_000_0195_01D5E3BF.99E99B20
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Joe,

=20

Thanks =E2=80=93 I=E2=80=99ll translate this to Windows and pass along.

=20

Simon Brown, G4ELI

https://www.sdr-radio.com

=20

From: Joe Martin <k5so@k5so.com>=20
Sent: 14 February 2020 23:38
To: Joe Martin <k5so@k5so.com>
Cc: simon@sdr-radio.com; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] UHD 4.0.0 X310 Images

=20

Pardon my bit of syntax error:   These work for me on my X310:=20

=20

sudo /usr/local/lib/uhd/utils/uhd_images_downloader.py

=20

/usr/local/bin/uhd_image_loader =
=E2=80=94args=3D=E2=80=9Ctype=3Dx300,addr=3D192.168.30.2=E2=80=9D

=20

Joe





On Feb 14, 2020, at 4:31 PM, Joe Martin via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> > wrote:

=20

Hi Simon,=20

=20

You can do this (assuming you installed UHD components into the given =
directories below):=20

=20

sudo /user/local/lib/uhd/utils/iuhd_images_downloader.py

=20

cd /usr/local/bin

uhd_image_loader =E2=80=94args=3Dtype=3Dx300,addr=3D192.168.30.2

=20

The addr I show is for a 10 G ethernet connection, will be different for =
a 1G ethernet connection, of course.=20

=20

Regards,=20

=20

Joe K5SO

=20

On Feb 14, 2020, at 4:09 PM, Simon G4ELI via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> > wrote:

=20

Hi,

=20

Having compiled UHD from the latest source master branch, I=E2=80=99m =
looking for the X310 images for a user, apparently we=E2=80=99re looking =
for FPGA 38.

=20

=E2=80=9CException 0000054F (1359), RuntimeError: Expected FPGA =
compatibility number 38, but got 36=E2=80=9D

=20

Any ideas please?

=20

Simon Brown, G4ELI

https://www.sdr-radio.com <https://www.sdr-radio.com/>=20

=20

=20

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>=20
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

=20


------=_NextPart_000_0195_01D5E3BF.99E99B20
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>Joe,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>Thanks =
=E2=80=93 I=E2=80=99ll translate this to Windows and pass =
along.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><div><p =
class=3DMsoNormal>Simon Brown, G4ELI<o:p></o:p></p><p =
class=3DMsoNormal>https://www.sdr-radio.com<o:p></o:p></p></div><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><div><di=
v style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm'><p class=3DMsoNormal><b><span =
lang=3DEN-US>From:</span></b><span lang=3DEN-US> Joe Martin =
&lt;k5so@k5so.com&gt; <br><b>Sent:</b> 14 February 2020 =
23:38<br><b>To:</b> Joe Martin &lt;k5so@k5so.com&gt;<br><b>Cc:</b> =
simon@sdr-radio.com; usrp-users@lists.ettus.com<br><b>Subject:</b> Re: =
[USRP-users] UHD 4.0.0 X310 Images<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Pardon my =
bit of syntax error: &nbsp; These work for me on my =
X310:&nbsp;<o:p></o:p></p><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>sudo =
/usr/local/lib/uhd/utils/uhd_images_downloader.py<o:p></o:p></p></div><di=
v><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>/usr/local/bin/uhd_image_loader =
=E2=80=94args=3D=E2=80=9Ctype=3Dx300,addr=3D192.168.30.2=E2=80=9D<o:p></o=
:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Joe<o:p></o:p></p><div><p =
class=3DMsoNormal><br><br><o:p></o:p></p><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><div><p =
class=3DMsoNormal>On Feb 14, 2020, at 4:31 PM, Joe Martin via USRP-users =
&lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt; wrote:<o:p></o:p></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>Hi =
Simon,&nbsp;<o:p></o:p></p><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>You can do this (assuming you installed UHD components =
into the given directories below):&nbsp;<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>sudo =
/user/local/lib/uhd/utils/iuhd_images_downloader.py<o:p></o:p></p></div><=
div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>cd /usr/local/bin<o:p></o:p></p></div><div><p =
class=3DMsoNormal>uhd_image_loader =
=E2=80=94args=3Dtype=3Dx300,addr=3D192.168.30.2<o:p></o:p></p></div><div>=
<p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>The =
addr I show is for a 10 G ethernet connection, will be different for a =
1G ethernet connection, of course.&nbsp;<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Regards,&nbsp;<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Joe K5SO<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><div><p =
class=3DMsoNormal>On Feb 14, 2020, at 4:09 PM, Simon G4ELI via =
USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt; wrote:<o:p></o:p></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p =
class=3DMsoNormal>Hi,<o:p></o:p></p></div><div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p></div><div><p =
class=3DMsoNormal>Having compiled UHD from the latest source master =
branch, I=E2=80=99m looking for the X310 images for a user, apparently =
we=E2=80=99re looking for FPGA 38.<o:p></o:p></p></div><div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p></div><div><p =
class=3DMsoNormal>=E2=80=9CException 0000054F (1359), RuntimeError: =
Expected FPGA compatibility number 38, but got =
36=E2=80=9D<o:p></o:p></p></div><div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p></div><div><p =
class=3DMsoNormal>Any ideas please?<o:p></o:p></p></div><div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p></div><div><p =
class=3DMsoNormal>Simon Brown, G4ELI<o:p></o:p></p></div><div><p =
class=3DMsoNormal><a =
href=3D"https://www.sdr-radio.com/">https://www.sdr-radio.com</a><o:p></o=
:p></p></div><div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p></div></div></blockquote></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div><p =
class=3DMsoNormal>_______________________________________________<br>USRP=
-users mailing list<br><a =
href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>=
<br><a =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>=
<o:p></o:p></p></div></blockquote></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div></body></html>
------=_NextPart_000_0195_01D5E3BF.99E99B20--



--===============2164279657102218661==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2164279657102218661==--


