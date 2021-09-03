Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AA83FF80A
	for <lists+usrp-users@lfdr.de>; Fri,  3 Sep 2021 01:49:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 56148384319
	for <lists+usrp-users@lfdr.de>; Thu,  2 Sep 2021 19:49:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dafSD7TF";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 1386938418F
	for <usrp-users@lists.ettus.com>; Thu,  2 Sep 2021 19:49:02 -0400 (EDT)
Received: by mail-qk1-f176.google.com with SMTP id w78so4116016qkb.4
        for <usrp-users@lists.ettus.com>; Thu, 02 Sep 2021 16:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version:thread-index
         :content-language;
        bh=Cpb/oq9Vn1jlpnoSLPb3vS6qttzy5XMcmRnjLxVBkKE=;
        b=dafSD7TFpBQ/1SDE9FvaCSiKWlngxsiUptQ01NzzuCh7S+Q3FGHBPp4OiDlTgnDMcT
         Z0fvEPbPd0pJcysZhfI/EFs3fGdzpA6wOdVxxhIgIMd+6RN85kfcMocWxks5zPrO9uMH
         o8z5EgCeEFp0NsV6Iku2YNbKuWVnK71JWpsit/WawagnNXl/AN/EnCjSQV69S/QoiPOH
         +lg8c17bH7GMA+tWCS4o/j0Fwob5sv1UQ+btr77085JC/6VBYknT4OalOzh2NQEbZOIq
         8NYuInAu0ao0gDqs8gCfIp8//iiqA9bVbXwLaCrC3yE9DJcrqGKTQ4ZeTJAZZ91PSx3+
         fjXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :thread-index:content-language;
        bh=Cpb/oq9Vn1jlpnoSLPb3vS6qttzy5XMcmRnjLxVBkKE=;
        b=AIfP1dajj4bLPGeQVzRuQP7mHybc0F0WgxeU+2cCd3tEGjIeN1MOPkNO2tiRQjWCTc
         TQ4IqcXkwVfbVCY0B/6cYcdgAjI8tBQTu0EozeAFhwXijZ1YFX7Q8HfVDe4rA6X6O2ij
         wxfAwOjTX7eiqbzpvwcVy0j+y4cG7t/jiqKV8uWhybH+3D75drhLeQQW9Yn5qJtr8SZV
         X1LAHlTfr9jU1gXUPvZRrJmB/49W2lCKN33lKhG11oh4TYEV4cA4JGjew7zqZ0ZYtaZI
         bKe88qmjihPKxRT4z0kbJEYbpAD8wxNCdxnWGoXtvtZDPpa+c4xKVCRIXH2YkBF6CQqC
         gEWQ==
X-Gm-Message-State: AOAM532XAVkLNJXx4s8Wb8+rij6ZZa8nLyw1kcX3SqRTsZpjAPO1I/Cu
	TEgNSaQ+zG50l4qxVIrYLn7igGlEc1E=
X-Google-Smtp-Source: ABdhPJwWhteJtMV1YeCxNV6kycpN1ywbH2gJM48D09UgbW40OAIZKG+lUBhTqkTGrzDEWsCYs0L7Yg==
X-Received: by 2002:a37:6253:: with SMTP id w80mr696716qkb.237.1630626542095;
        Thu, 02 Sep 2021 16:49:02 -0700 (PDT)
Received: from DESKTOP70IB7GE ([129.10.131.194])
        by smtp.gmail.com with ESMTPSA id q192sm2571229qka.93.2021.09.02.16.49.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Sep 2021 16:49:01 -0700 (PDT)
From: <zhang.weit3@gmail.com>
To: <usrp-users@lists.ettus.com>
Date: Thu, 2 Sep 2021 19:48:44 -0500
Message-ID: <003201d7a05d$72cd5160$5867f420$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdegXUqMFfacNqh6QpmwCGQiWMl1Jw==
Content-Language: en-us
Message-ID-Hash: QYGA72VSPXSMXMRJHPX23P6WYRNWDLAU
X-Message-ID-Hash: QYGA72VSPXSMXMRJHPX23P6WYRNWDLAU
X-MailFrom: zhang.weit3@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Absolute Tx/Rx delay of USRP B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QYGA72VSPXSMXMRJHPX23P6WYRNWDLAU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8807755450311153267=="

This is a multipart message in MIME format.

--===============8807755450311153267==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0033_01D7A033.89F7E5A0"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_0033_01D7A033.89F7E5A0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

 

I did a loopback test and can measure the relative delay between the Tx and
Rx, which is about 10us. It means that, if the Tx and Rx are triggered at
0sec by setting the start time in software, the absolute start time of the
Rx will be T0, and the absolute start time of the Tx will be T0+10us. Here,
T0 is the absolute delay. But how much will it be? Thank you very much for
your help!

 

 

Jack

 

 

 


------=_NextPart_000_0033_01D7A033.89F7E5A0
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
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>Hi all,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I did a =
loopback test and can measure the relative delay between the Tx and Rx, =
which is about 10us. It means that, if the Tx and Rx are triggered at =
0sec by setting the start time in software, the absolute start time of =
the Rx will be <b>T0</b>, and the absolute start time of the Tx will be =
<b>T0+10us</b>. Here, <b>T0</b> is the absolute delay. But how much will =
it be? Thank you very much for your help!<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Jack<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_0033_01D7A033.89F7E5A0--

--===============8807755450311153267==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8807755450311153267==--
