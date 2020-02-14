Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1A015D48B
	for <lists+usrp-users@lfdr.de>; Fri, 14 Feb 2020 10:18:38 +0100 (CET)
Received: from [::1] (port=60360 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j2X7N-0005r3-8e; Fri, 14 Feb 2020 04:18:37 -0500
Received: from mail-wr1-f41.google.com ([209.85.221.41]:41557)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <simon@sdr-radio.com>) id 1j2X7K-0005jM-3y
 for usrp-users@lists.ettus.com; Fri, 14 Feb 2020 04:18:34 -0500
Received: by mail-wr1-f41.google.com with SMTP id c9so10046561wrw.8
 for <usrp-users@lists.ettus.com>; Fri, 14 Feb 2020 01:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sdr-radio-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:date:message-id:mime-version:thread-index
 :content-language;
 bh=P9JpCUhFYnbZPziBskd7N0KCTKfYQljQPolb+jwx0ro=;
 b=sgqPF+WHswZojDWMqytKxxbp8+OA9h9pIr3a9KITDy53v4Bj2AA3E5i8DGluGQgbro
 0T5CSP8zCHTq9SybddAB5Eeg+w8awUqQhcCa+6cv4I7xmhDWsrZGm+gc6KXGGc6Xac7y
 mY7Hfbs0Wgfem3hYBxUDb7a55WgX7cU43G1kXjuWfiO+bHc9ngqas17GeKYuqM+f0Sus
 PX9kNCNkLiTH/z8UyXXK8yUaA9eZyEgAnbhpOVAXYs2IrXtnxC/398uFh8pJzhQuNaxc
 4wOOWnqg7fuFuVnEONNIJQMS6jOvqHbqQhiYiXJBLE+QQCEPbR+8PEE+OOHVnqNN9LUj
 J71g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :thread-index:content-language;
 bh=P9JpCUhFYnbZPziBskd7N0KCTKfYQljQPolb+jwx0ro=;
 b=fA6XpLxa9W/V7fE26Kpm4280oIw+DhgoBfF8nLJoOPipqqlInFNkcuH/M0DYGW3t8s
 3aBaaCiWmkAgtsO0UHCDb0DegY1/U7uZhuUYGSb3pIShXWPn3l08rBDkNLWJlQ1k37gH
 38gQ8KfMADy5M7zjjFFHfOqHrzmRiEH/t3g8Iz4PwafoISwaT7eIPqlDYBuHcsvV0wik
 ZxsCq2Eno1NXa4l4/NSNcepEYP7xNPlAR4IkzFJxFpyfOVA0jx3jJ9GL1SXPu6VdGUtZ
 9nKxAJBZ7o6A+KYqYmgt6mxS9jn7v7mB+7oEqZHMOgcyJCTpWSxqXDviujMC9hXtE2el
 lipg==
X-Gm-Message-State: APjAAAUJOTtXfjqvJk/Y/9RTFR5eg8Y+T5f1UoU5A/xRENVbSxrczy+R
 3t1ES3HyKssXcH/7PIu++KinBZYOR/A=
X-Google-Smtp-Source: APXvYqwmjAcFabvRDsi2HXnWDN/c93Pe6Hi+h3SMAHXv4S5obJQQa+IdYlhy3KkwL98qdIkcNEQSPw==
X-Received: by 2002:adf:81c2:: with SMTP id 60mr2923380wra.8.1581671872703;
 Fri, 14 Feb 2020 01:17:52 -0800 (PST)
Received: from Beasty (blackbeauty.sdr-radio.com. [81.174.138.141])
 by smtp.gmail.com with ESMTPSA id b10sm6343482wrw.61.2020.02.14.01.17.51
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Feb 2020 01:17:52 -0800 (PST)
To: <usrp-users@lists.ettus.com>
Date: Fri, 14 Feb 2020 09:17:50 -0000
Message-ID: <00ac01d5e317$a13cffa0$e3b6fee0$@sdr-radio.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdXjF04vouUy/pyfS2qoPIwau4VWGw==
Content-Language: en-gb
Subject: [USRP-users] UHD v4 Compiled
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
Content-Type: multipart/mixed; boundary="===============2305717918868446998=="
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

--===============2305717918868446998==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00AD_01D5E317.A13D4DC0"
Content-Language: en-gb

This is a multipart message in MIME format.

------=_NextPart_000_00AD_01D5E317.A13D4DC0
Content-Type: text/plain;
	charset="US-ASCII"
Content-Transfer-Encoding: 7bit

Hi,

 

After many years I've just got back into the world of Ettus. I've downloaded
and compiled v4 for using boost 1.70 with VS2019 for 32 and 64-bit flavours
of Windows.

 

I do understand that Windows is a minority target for UHD users, this is
confirming that it's fine with W10.

 

Simon Brown, G4ELI

https://www.sdr-radio.com

 


------=_NextPart_000_00AD_01D5E317.A13D4DC0
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
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>After many =
years I&#8217;ve just got back into the world of Ettus. I&#8217;ve =
downloaded and compiled v4 for using boost 1.70 with VS2019 for 32 and =
64-bit flavours of Windows.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I do =
understand that Windows is a minority target for UHD users, this is =
confirming that it&#8217;s fine with W10.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-GB'>Simon Brown, =
G4ELI<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-GB'>https://www.sdr-radio.com<o:p></o:p>=
</span></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_00AD_01D5E317.A13D4DC0--



--===============2305717918868446998==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2305717918868446998==--


