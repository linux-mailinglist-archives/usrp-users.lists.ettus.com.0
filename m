Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7333815FA36
	for <lists+usrp-users@lfdr.de>; Sat, 15 Feb 2020 00:09:55 +0100 (CET)
Received: from [::1] (port=42724 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j2k5l-0005zP-RN; Fri, 14 Feb 2020 18:09:49 -0500
Received: from mail-wm1-f54.google.com ([209.85.128.54]:54354)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <simon@sdr-radio.com>) id 1j2k5h-0005vi-Rx
 for usrp-users@lists.ettus.com; Fri, 14 Feb 2020 18:09:45 -0500
Received: by mail-wm1-f54.google.com with SMTP id g1so11615584wmh.4
 for <usrp-users@lists.ettus.com>; Fri, 14 Feb 2020 15:09:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sdr-radio-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:date:message-id:mime-version:thread-index
 :content-language;
 bh=kBSj1RdVmoY0F787IpIeKcmZDoMtu9qyG5p8jX1vO20=;
 b=PWmvHY3UgnBXi267zP7TLaRvijFiAQk9RQubnxtMf+vXE0zeRXqOqzOg+t9fJIXFfg
 XAtnN8pT8UDjK6POb8a9BRVxduJKgrF8Srop3XH3rF2ZxLaBI9z6irKZad76OHRK9eaR
 kbnEWBC42eFED/qP4bx4Ne0gPEuRBOuPnqQ0DefaqeUB9+akw+iKtvhj/Aa0jr5lDJRG
 /o3fSDBx5P7JxPn/YDqSUNlAW3Qllhq9mk2kOL5mSLsAnL8fPO9plkyqiNWsCmgG3eNM
 QITj1Xyy+jMQl4WupxswtG+mkAJO6gtGhHueNhsLrVpJSxrG0sWIPvHZFztHhCArXq8K
 bLCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :thread-index:content-language;
 bh=kBSj1RdVmoY0F787IpIeKcmZDoMtu9qyG5p8jX1vO20=;
 b=Nn/SYS+8niWTvnfPIM8H7pp2MV1UhUm2E0YZ3OcFtzJ9G4ygMq1DYyt1Z5aOuf6FM6
 /eUEMcGQBe63sfmTZCB9+qm/3eRcLH5wkr+H5fzBVRf7saUdhjRlmJSbQHgQ/kNTKsKM
 OtZLCjeMjqEoA4eOeO0NSYYgzRiS61rvUTiERX/RqESyTd4iF4Xj+yembxE2Tm+Lj070
 EULH9FHg07thJRkcvfSpHKiOWTrjjgm9lgAKeImhjlNJhFLktmoYLlnX4ErWKTxiWyzK
 2TssmUitdlPWzF9vOVWlb76h8my06vv2xkLyZtnwa+geceXXHCwVp6Z1isd7OB6UeFtZ
 PTSQ==
X-Gm-Message-State: APjAAAViKrvb5CIK3M/OOf2aOC7aM9fiEjk3jVdfbhmIjKnNejcxPYct
 AUtU4ALhsz3RC9YUjTnf7uDqo3KDj7o=
X-Google-Smtp-Source: APXvYqxqdsdxX+IfMKVxcU/giD0PZJFjk88Vx+/V2N3mLqX6l+xcB01DNyh7k8pDAVtFlESM18UYbw==
X-Received: by 2002:a05:600c:20c6:: with SMTP id
 y6mr6943317wmm.95.1581721744481; 
 Fri, 14 Feb 2020 15:09:04 -0800 (PST)
Received: from Beasty (blackbeauty.sdr-radio.com. [81.174.138.141])
 by smtp.gmail.com with ESMTPSA id s1sm8978342wro.66.2020.02.14.15.09.03
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Feb 2020 15:09:03 -0800 (PST)
To: <usrp-users@lists.ettus.com>
Date: Fri, 14 Feb 2020 23:09:03 -0000
Message-ID: <261901d5e38b$c0295070$407bf150$@sdr-radio.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdXji2dpBmt8x+VORgC+LEK5wXAgDA==
Content-Language: en-gb
Subject: [USRP-users] UHD 4.0.0 X310 Images
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
Content-Type: multipart/mixed; boundary="===============6824490823676782368=="
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

--===============6824490823676782368==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_261A_01D5E38B.C02AFE20"
Content-Language: en-gb

This is a multipart message in MIME format.

------=_NextPart_000_261A_01D5E38B.C02AFE20
Content-Type: text/plain;
	charset="US-ASCII"
Content-Transfer-Encoding: 7bit

Hi,

 

Having compiled UHD from the latest source master branch, I'm looking for
the X310 images for a user, apparently we're looking for FPGA 38.

 

"Exception 0000054F (1359), RuntimeError: Expected FPGA compatibility number
38, but got 36"

 

Any ideas please?

 

Simon Brown, G4ELI

https://www.sdr-radio.com

 


------=_NextPart_000_261A_01D5E38B.C02AFE20
Content-Type: text/html;
	charset="US-ASCII"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Hi,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Having =
compiled UHD from the latest source master branch, I&#8217;m looking for =
the X310 images for a user, apparently we&#8217;re looking for FPGA =
38.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>&#8220;Exception 0000054F (1359), RuntimeError: =
Expected FPGA compatibility number 38, but got =
36&#8221;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Any ideas please?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-GB'>Simon Brown, =
G4ELI<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-GB'>https://www.sdr-radio.com<o:p></o:p>=
</span></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_261A_01D5E38B.C02AFE20--



--===============6824490823676782368==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6824490823676782368==--


