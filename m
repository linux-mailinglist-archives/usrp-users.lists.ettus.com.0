Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9524C4468ED
	for <lists+usrp-users@lfdr.de>; Fri,  5 Nov 2021 20:24:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8963C38401F
	for <lists+usrp-users@lfdr.de>; Fri,  5 Nov 2021 15:24:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BENw7PKB";
	dkim-atps=neutral
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 13A78383D98
	for <usrp-users@lists.ettus.com>; Fri,  5 Nov 2021 15:23:13 -0400 (EDT)
Received: by mail-qt1-f172.google.com with SMTP id v4so8106901qtw.8
        for <usrp-users@lists.ettus.com>; Fri, 05 Nov 2021 12:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version:content-language
         :thread-index;
        bh=plimQmTP2p9MlMEGU/RthL/UuFw/gZcmcPVe+PWLjos=;
        b=BENw7PKBEyQ74l1EnaCydfp2/0CMUMAWwcU/OHjgWCmJPQBPmXnTMOLAIwT93oEFBj
         iv8s1uMbpokPtSCW320Hw7r3cPL2+9Uktrzp66/+SXXq/cM2NZ4TuvPsX+CPLWE0eqEF
         3yzjKFAacNCjOy9k+5Nvovko0o7RgppD+P40gz9ODJmmQxou/9vU0Bs2/75dP3sHeR8h
         3HetmdYaP7/FMql1t7nFuxckrACz+1l7CUV3BpFrOzl/Md7JbtolYU/cl3ti5NdcAEcN
         lCV5hI8Uoc8dyDxk6zkQ3azEjh3fezcYYy6HyUzGosbCsm08iKn2/sr6ICfU0j5NwTBc
         lSlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-language:thread-index;
        bh=plimQmTP2p9MlMEGU/RthL/UuFw/gZcmcPVe+PWLjos=;
        b=Vb74bnRlu/Qvw87/s2JckOL5JNztIfdgAR9ja7/R8fjZHe5m2RGXOeh8RiNJoISx97
         aJh/HdqMPmSlsV0YzyY2w7nZWWUu/PUA6C9qznct00UpZaT+1vkeYtIbMOy6CwUlurk2
         yl5c1bhOziXwSNRdyt4QvQWbEc81k7ayZKdlHx8fdWz5RRgjHlqKj+giemNMMJ3xU9Uz
         BHzFEryimnh6zefQDiBIXJCIIW452vD5p2BShkKSKVtx068szWuf4YOh7jCtvtoTqyL8
         clmAmEIxsSJ9TD72uQ6ukODvRddxNOt2jX6IDg5e0W+mcZ7DkHRh0iE6LcnptAG4bMbu
         D5mQ==
X-Gm-Message-State: AOAM5308h0/uR2hKgkOf+TkDTu4G4wYXtr4GcAKfIxdlVy/kqVGGFfDx
	IQGiUG70uSP/yYxYcCqBkWqM3w0n5jo=
X-Google-Smtp-Source: ABdhPJxStMD38vT/CtfBDeq7CVO7/BuDk89UXaLIbjqWzrUg5jlne3NDuQfS5uePkg0PAu2Ag6GmhQ==
X-Received: by 2002:ac8:610f:: with SMTP id a15mr63512513qtm.387.1636140193192;
        Fri, 05 Nov 2021 12:23:13 -0700 (PDT)
Received: from DESKTOP70IB7GE ([129.10.131.194])
        by smtp.gmail.com with ESMTPSA id c8sm3079893qtx.30.2021.11.05.12.23.12
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Nov 2021 12:23:12 -0700 (PDT)
From: <zhang.weit3@gmail.com>
To: <usrp-users@lists.ettus.com>
Date: Fri, 5 Nov 2021 15:22:56 -0500
Message-ID: <002601d7d282$eb64eb40$c22ec1c0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AdfSgtpTWZmqv9maS++igVzNoEPJ6A==
Message-ID-Hash: C2SMCLTDXDHGJSFZR4WETWSJF7EMOCG7
X-Message-ID-Hash: C2SMCLTDXDHGJSFZR4WETWSJF7EMOCG7
X-MailFrom: zhang.weit3@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] OctoClock-G driving by external pps
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C2SMCLTDXDHGJSFZR4WETWSJF7EMOCG7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3732014023609868244=="

This is a multipart message in MIME format.

--===============3732014023609868244==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0027_01D7D259.02901BC0"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_0027_01D7D259.02901BC0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

I am playing with an OctoClock-G, where I would like to use an external PPS
which has a rate of 10kHz (two pulses per second). I am wondering whether
the OctoClock-G can also create distributed 10kHz signals at the outputs.
Could anyone help here? Thank you!

 

 

Regards,

West

 

 


------=_NextPart_000_0027_01D7D259.02901BC0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:\7B49\7EBF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@\7B49\7EBF";
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
class=3DWordSection1><p class=3DMsoNormal>Hi,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I am playing =
with an OctoClock-G, where I would like to use an external PPS which has =
a rate of 10kHz (two pulses per second). I am wondering whether the =
OctoClock-G can also create distributed 10kHz signals at the outputs. =
Could anyone help here? Thank you!<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Regards,<o:p></o:p></p><p =
class=3DMsoNormal>West<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_0027_01D7D259.02901BC0--

--===============3732014023609868244==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3732014023609868244==--
