Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B37CC4432A7
	for <lists+usrp-users@lfdr.de>; Tue,  2 Nov 2021 17:24:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9016A383CC1
	for <lists+usrp-users@lfdr.de>; Tue,  2 Nov 2021 12:24:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MfJuV/Ld";
	dkim-atps=neutral
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 4A6CF38155E
	for <usrp-users@lists.ettus.com>; Tue,  2 Nov 2021 12:24:00 -0400 (EDT)
Received: by mail-qk1-f172.google.com with SMTP id bi29so20151404qkb.5
        for <usrp-users@lists.ettus.com>; Tue, 02 Nov 2021 09:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version:content-language
         :thread-index;
        bh=R6t+pyS8qm+1U9yAUUBVRsulk2fT4VQqfYuVxyCpg+I=;
        b=MfJuV/LdF8QGnKPG4wYzJ8wNSev+1afdQh3JtdlHSoETsX3njul74y3ay0HQHG2vQn
         FwpL0o6nmcB+9DlindfMSsu3FXREVzDvODJz2ZaPos8g6nGpZQb0artVWtaeP5DrrebL
         cebrLb0OfsaigyrVyk86lNLXz5iZJmGt1nqNrUlqOrLEDu9zz83QVU49V9g8NSvGJ9vy
         Hx5BeTh/dPtlvgaRJvDRuWaXkZE5mJHT6py/G840Vf+mjyF1GAf+Df5xD7WuAgk3lX8Q
         qNkXfZOzkzav2wxG1mE6RGDOX2zFp90zsGTDtb4TTvPq/sKjf3EJ5F9aD5/or2bKnf5L
         uc/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-language:thread-index;
        bh=R6t+pyS8qm+1U9yAUUBVRsulk2fT4VQqfYuVxyCpg+I=;
        b=aAsZPfiprYEHZK6bA/8ahg5i9X851GG9uS5N8wckn5aeYDYiBrNlZeFD17fGTQKMlJ
         PPhxn7wZcOt9aVFFRzixsp4J6ahU3vWiMfiM6yqMJDJdeR7vG3BanKnzNeqGdybCsbwQ
         aTl+zhB85HrA6a6OuOLdVSUQDV6/6iZ5/zDfvr1ImAi4ZMsc/LzlPmsP67C6qj2AQ6cR
         0TvktAkUeFp7ktOaY1HmcVngbhmS+iKFGfeXH269bjEyGsHywHOtw1AMGHu6gLwQhXk9
         Kkyfgurdv4hF7bgvAB7SgDNLaTpr/2Z8OFaP1lvaIrXWQMQUaUzU2FCis+CjMoChBoPM
         2UxA==
X-Gm-Message-State: AOAM533k060AapnCI1XIZm+ubG6zIOqDsgjyxu2ihnHe9RIq5gNYg+ir
	HTNQeqrufEq8nbsaZKSUY0rmajCatCQ=
X-Google-Smtp-Source: ABdhPJzU3gDafWbyWCQk1WjFnQJvo5HZGSuWQzfFyvtUbkGqbuG1ADv/dhzUVfmNn9niHD4GIuetFw==
X-Received: by 2002:a05:620a:d86:: with SMTP id q6mr30666933qkl.138.1635870239575;
        Tue, 02 Nov 2021 09:23:59 -0700 (PDT)
Received: from DESKTOP70IB7GE ([129.10.131.194])
        by smtp.gmail.com with ESMTPSA id s15sm13726798qkp.98.2021.11.02.09.23.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Nov 2021 09:23:59 -0700 (PDT)
From: <zhang.weit3@gmail.com>
To: <usrp-users@lists.ettus.com>
Date: Tue, 2 Nov 2021 12:23:45 -0500
Message-ID: <009401d7d00e$63fb92b0$2bf2b810$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AdfQDgAyfzw4l6SvSUuyfoh9OnaRUQ==
Message-ID-Hash: 5DGYLQ4OJCFKDIFAZYSSHCOD3NZ233SE
X-Message-ID-Hash: 5DGYLQ4OJCFKDIFAZYSSHCOD3NZ233SE
X-MailFrom: zhang.weit3@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP B200 min-i
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5DGYLQ4OJCFKDIFAZYSSHCOD3NZ233SE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0360120170824523736=="

This is a multipart message in MIME format.

--===============0360120170824523736==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0095_01D7CFE4.7B2822C0"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_0095_01D7CFE4.7B2822C0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi All,

 

I have a USRP B200 mini-i under testing. But I only see the REF port which I
am assuming is for external 10MHz clock input. Is there any port for 1PPS
input for time synchronization? Does it support both external PPS input and
10MHz clock input?

 

Thank you!

 

West

 

 

 


------=_NextPart_000_0095_01D7CFE4.7B2822C0
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
class=3DWordSection1><p class=3DMsoNormal>Hi All,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I have a =
USRP B200 mini-i under testing. But I only see the REF port which I am =
assuming is for external 10MHz clock input. Is there any port for 1PPS =
input for time synchronization? Does it support both external PPS input =
and 10MHz clock input?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Thank =
you!<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>West<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_0095_01D7CFE4.7B2822C0--

--===============0360120170824523736==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0360120170824523736==--
