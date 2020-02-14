Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8518015D46A
	for <lists+usrp-users@lfdr.de>; Fri, 14 Feb 2020 10:13:35 +0100 (CET)
Received: from [::1] (port=58536 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j2X2O-0005S2-Ay; Fri, 14 Feb 2020 04:13:28 -0500
Received: from mail-wr1-f53.google.com ([209.85.221.53]:41898)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <simon@sdr-radio.com>) id 1j2X2K-0005N5-Um
 for usrp-users@lists.ettus.com; Fri, 14 Feb 2020 04:13:25 -0500
Received: by mail-wr1-f53.google.com with SMTP id c9so10029310wrw.8
 for <usrp-users@lists.ettus.com>; Fri, 14 Feb 2020 01:13:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sdr-radio-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:date:message-id:mime-version:thread-index
 :content-language;
 bh=LZ6q02vjC9cwIVxecT5/8qcDMQmx8ZlSveUerlaooEI=;
 b=DwQkNDCWqHnNDxbwv4yU6OXzmWN2o+Y9Its5seg/4Xh3OZRZtD6Qb8rJmHGnh44sZv
 Tk3NmBW7tu8wQjbYwC9atIY9ytG8eZ02iopVwF9nzVNbI2LzrZL/mGYu+7/CFfjTV8Rh
 0KJtl0mxUkaFcVAD+dv2fA2lhBCdq+r/oEedEA2ZfUnGSKvxvu7Vp85sinFSgqP1lIcQ
 OgqhvYKzB/jf1PjsjdrIGCK0qRLHqI0H3qQIxCRPWZaN4H+J+D7ag2jTast7tyagqVe5
 uTTG6bQBfagRVEcVJPZ1T+7R7AKy1BrFXACFae6jSCQb7S2omkTux4VM0KRww2MQb70d
 Qqag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :thread-index:content-language;
 bh=LZ6q02vjC9cwIVxecT5/8qcDMQmx8ZlSveUerlaooEI=;
 b=WYajkXPGzwe9WG52fQHbnk6ZGEqFmQf+TDMXFpIJjGQ7ggeLwqyv7QsFxEGUfJmswV
 mo4i/sLX8r/It7Y6LgOSOCl9kRJCjR8ut++GL2xkSUB8wl3Z0/rZjyac77QjB+Oc2ouW
 sd2i7nlRd21kDQJ9loIXWRWwWAnI9dks4pMAGttok0uuvjAR2k8+55tT9wGx0eX/kXmz
 qLXjvP1l400LZ67LUKNko9w1OUyU/LykamRqn6YEUJNv2PkFp6IlV252r9H4X8JWIr/q
 w1KGaLrOMWBXdMKVBC1gpPOxLJvZRQsDGZGXbKzQkGgrPw7j2CJeJLF12mZLJFRKMEyy
 NCwA==
X-Gm-Message-State: APjAAAWZG4/5Eau7s4RCQLYVvkhyyzSZiErHjeYluCoDlBL6YDgswI0S
 I0xKuNU1BFzmxWxQwRzVvwnE2EQPGDE=
X-Google-Smtp-Source: APXvYqwRgzJf6y1zCF2pVN0/L5HKqEYyXqjipmgnpzxfGG3CTw0EmRG35XpMUlY4Csa47+YsZVUolQ==
X-Received: by 2002:adf:f484:: with SMTP id l4mr2995809wro.207.1581671563502; 
 Fri, 14 Feb 2020 01:12:43 -0800 (PST)
Received: from Beasty (blackbeauty.sdr-radio.com. [81.174.138.141])
 by smtp.gmail.com with ESMTPSA id x7sm6347207wrq.41.2020.02.14.01.12.42
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Feb 2020 01:12:42 -0800 (PST)
To: <usrp-users@lists.ettus.com>
Date: Fri, 14 Feb 2020 09:12:40 -0000
Message-ID: <007501d5e316$e8f05d70$bad11850$@sdr-radio.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdXjFsOSrBeVpV93TgGPQSrV7Jhdnw==
Content-Language: en-gb
Subject: [USRP-users] Clock Source
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
Content-Type: multipart/mixed; boundary="===============6801285074079723333=="
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

--===============6801285074079723333==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0076_01D5E316.E8F0AB90"
Content-Language: en-gb

This is a multipart message in MIME format.

------=_NextPart_000_0076_01D5E316.E8F0AB90
Content-Type: text/plain;
	charset="US-ASCII"
Content-Transfer-Encoding: 7bit

Hi,

 

If I set the clock source on the B200 to 'external' how can I verify that
the B200 has indeed locked to the external reference? The lo_locked sensor
always returns true, even when no external reference is connected.

 

Simon Brown, G4ELI

https://www.sdr-radio.com

 


------=_NextPart_000_0076_01D5E316.E8F0AB90
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
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>If I set the =
clock source on the B200 to &#8216;external&#8217; how can I verify that =
the B200 has indeed locked to the external reference? The lo_locked =
sensor always returns true, even when no external reference is =
connected.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-GB'>Simon =
Brown, G4ELI<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-GB'>https://www.sdr-radio.com<o:p></o:p>=
</span></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_0076_01D5E316.E8F0AB90--



--===============6801285074079723333==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6801285074079723333==--


