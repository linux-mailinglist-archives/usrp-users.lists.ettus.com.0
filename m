Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0342716AFF0
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2020 20:05:29 +0100 (CET)
Received: from [::1] (port=35706 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6J2k-0006hd-0u; Mon, 24 Feb 2020 14:05:26 -0500
Received: from mail-wr1-f49.google.com ([209.85.221.49]:45371)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <simon@sdr-radio.com>) id 1j6J2g-0006VM-L4
 for usrp-users@lists.ettus.com; Mon, 24 Feb 2020 14:05:22 -0500
Received: by mail-wr1-f49.google.com with SMTP id g3so11668293wrs.12
 for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2020 11:05:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sdr-radio-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:date:message-id:mime-version:thread-index
 :content-language;
 bh=lqCYLohQk735EyewE8nduyPd0vl1OUdcd7hTrQuNhHQ=;
 b=ukYTMGyfh9nu1aMjxaT/mTjNVOHhYFkNRJkASBtLtWufc8kXsDNBw52X2xQmi3kvx+
 SYobNN5Xcc3yyjwiHbFrZMKZ/lomDqVKtUKfrMda5G/OxY7JDNA0qpY2jVJU71WLmjG/
 KUkipri8FljCXikOeersTjzBurKXmV6ErhIsTSf+7PlQSlzVTwPvurSfIj9wTz1CWteI
 n0NpB0150Ego38SAfJvcYkAdchlSGTYUUWh+UlOCm3/O+jT4AOOIcxHCb5y8vIPMz5e2
 hLtBAYzTar8qs/lmUjZYjoM2FSSVtOkD24MrkHjnyQwy2Jl8Wha/7tlPFV8Hz/ONUeZR
 xiRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :thread-index:content-language;
 bh=lqCYLohQk735EyewE8nduyPd0vl1OUdcd7hTrQuNhHQ=;
 b=lvv31cMsj8mxF9saIf8yVRnlBMUpbeGOeqjq/hZNGtp5LnX/bfcmRRU2iOEpVAIWj5
 bmiFb7f8rpdVGP5mU+6oucm7cNzdFaS8TQlwK+Vlh/pWR7RKVyWDOCJmg25O+pqYdLDv
 iQDcsvJWdtGHfKBCXuP3PjdW+4zojYERqom7MWu9phgVKH4DrntOqXFZxT62GqBh1VNk
 LUBJEplhLtplV/caYLUoBiH0UA+g4+ifnn8LFSu/oiod/H/wwnvKasiMj4VjolIw0n2T
 PJErmVUNFRURslN3YxLASM5cBmJxQvU6bgBtSD+dEN8jQMFb2OlqWOxPCpoSdWA9kg9I
 /J6Q==
X-Gm-Message-State: APjAAAU7AqefE/ks0DQAIrsKAn6mW3JQelIIeVho7nHnSVRtET+gKQNP
 OXl2UKoyzkgBLeb4+8pbDDNQWx8Rj6M=
X-Google-Smtp-Source: APXvYqwzT9N0AginReUYj3oz7Ks+4AcNeMhN49Jzv8wC6qhSlhiBqPt9p8HMuY+0ON5TB3HufSHBMw==
X-Received: by 2002:a5d:550f:: with SMTP id b15mr9439359wrv.19.1582571081375; 
 Mon, 24 Feb 2020 11:04:41 -0800 (PST)
Received: from Beasty (blackbeauty.sdr-radio.com. [81.174.138.141])
 by smtp.gmail.com with ESMTPSA id s15sm20125125wrp.4.2020.02.24.11.04.40
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Feb 2020 11:04:40 -0800 (PST)
To: <usrp-users@lists.ettus.com>
Date: Mon, 24 Feb 2020 19:04:39 -0000
Message-ID: <220001d5eb45$43fe7cc0$cbfb7640$@sdr-radio.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdXrROuOty0RfVkATM2T5TMKs+ccjQ==
Content-Language: en-gb
Subject: [USRP-users] E310, 3.15 LTS, Windows
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
Content-Type: multipart/mixed; boundary="===============8545368850973736171=="
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

--===============8545368850973736171==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_2201_01D5EB45.43FECAE0"
Content-Language: en-gb

This is a multipart message in MIME format.

------=_NextPart_000_2201_01D5EB45.43FECAE0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi All,

 

A user cannot 'see' his E310 using 3.15 LTS compiled from source by me. The
E310 is connected by Ethernet GigE.

 

I'm wondering if there's something special needed or if there's a magic
option I should enable in the source - the ENABLE_E300 option is checked,
all looks good to me.

 

There is a second person who will soon be testing just in case it's finger
trouble.

 

Simon Brown, G4ELI

https://www.sdr-radio.com

 


------=_NextPart_000_2201_01D5EB45.43FECAE0
Content-Type: text/html;
	charset="us-ascii"
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
class=3DMsoNormal>Hi All,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>A user =
cannot &#8216;see&#8217; his E310 using 3.15 LTS compiled from source by =
me. The E310 is connected by Ethernet GigE.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I&#8217;m =
wondering if there&#8217;s something special needed or if there&#8217;s =
a magic option I should enable in the source &#8211; the ENABLE_E300 =
option is checked, all looks good to me.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>There is a =
second person who will soon be testing just in case it&#8217;s finger =
trouble.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-GB'>Simon =
Brown, G4ELI<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-GB'>https://www.sdr-radio.com<o:p></o:p>=
</span></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_2201_01D5EB45.43FECAE0--



--===============8545368850973736171==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8545368850973736171==--


