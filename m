Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DD9446D6D
	for <lists+usrp-users@lfdr.de>; Sat,  6 Nov 2021 11:33:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F42E3843E9
	for <lists+usrp-users@lfdr.de>; Sat,  6 Nov 2021 06:33:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=iitrpr.ac.in header.i=@iitrpr.ac.in header.b="Eo7e2pfS";
	dkim-atps=neutral
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	by mm2.emwd.com (Postfix) with ESMTPS id AB4CE383E38
	for <usrp-users@lists.ettus.com>; Sat,  6 Nov 2021 06:32:29 -0400 (EDT)
Received: by mail-yb1-f171.google.com with SMTP id v7so29510760ybq.0
        for <usrp-users@lists.ettus.com>; Sat, 06 Nov 2021 03:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iitrpr.ac.in; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=KW3ipySg4VKO0TwKHCIwSnavYYjAGgw1GB64lCwAz6M=;
        b=Eo7e2pfStzOAa4cKNQ0YJPgPS7HQAZM0CYqW217uUuEx9rLzl9aAImvf5vqeQ4EUA4
         x/0yurfeNgAUrBHdlkX+j0npogSVoslHG8M7I3DQ38Slt/zNrbiV4XrZcqxnbqyi0dMB
         lS8F0t2hlokjQZ7exj/HfJZQBZW3D7xz8SFbc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=KW3ipySg4VKO0TwKHCIwSnavYYjAGgw1GB64lCwAz6M=;
        b=NzhmbpruFi2tvhtzX3SfLKDpIUqh2xjYzjsGgH4fIXK+K0kAH7xnlhg/fynPpRuh+P
         V56bTsjTAIQYwKQsfEijREgMnpwvHIXI/YTL2Z12F3tlwSpuCPDECjkvCtjyUqNKLkG/
         NfvyjKy70ztzpeXhlng1baKl1a+2UDplaYinpYotVp+uTsMdJv8bmHlXtBXX1AQpC1zc
         0DO9DVNJQvYiuW+RBBQ6KJO7eRYSe/sgmP13EDoz8I/k7fR6KmYDuIZlrclUXktnD+tQ
         7j284VFFFolkrr1GqMSqYgQWNnJTi0QsIFQNv/BcF9RY5Zn4QZElbl5wpp332Zd+Ehqe
         336A==
X-Gm-Message-State: AOAM531VHI93YFEkgTg9Y5b69XU6XjpFS8NpUcPymPeCG5mIkDSmwFo1
	p/I9BnX9aR30uE6bCtHMOJu9mmunQffShjtK3PUrX354xA1NsfEzs1sZCfS5r1Ph8GTKlXQouH5
	3+0bm3/pVLE5hQRyA23kyMU6/mHh7oxmBiP4=
X-Google-Smtp-Source: ABdhPJw4N9QEwt/aajW+JCx7NE7D9VPlwckXdbdXAV9FJZJ37Uqw/jecxxLcNoxh2bjJrvriqu0t5lRx6sFBiz6Oo/o=
X-Received: by 2002:a25:42c7:: with SMTP id p190mr60783038yba.332.1636194749028;
 Sat, 06 Nov 2021 03:32:29 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 6 Nov 2021 16:02:19 +0530
Message-ID: <CA+QP_P=XaKdpHFRSi4=iz9cnCJWyHeoNdZa1=hBP8DdNoevnUA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: BZOHNL62FZJ4L7XBPJSU3PAFULHIL2RN
X-Message-ID-Hash: BZOHNL62FZJ4L7XBPJSU3PAFULHIL2RN
X-MailFrom: arhum.19eez0005@iitrpr.ac.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] HELP regarding B210 and B205mini-i
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BZOHNL62FZJ4L7XBPJSU3PAFULHIL2RN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Arhum Ahmad via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Arhum Ahmad <arhum.19eez0005@iitrpr.ac.in>
Content-Type: multipart/mixed; boundary="===============7819671433686305560=="

--===============7819671433686305560==
Content-Type: multipart/alternative; boundary="000000000000ccad5d05d01c46dd"

--000000000000ccad5d05d01c46dd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Respected sir,
Is this the right email to to ask doubts?

--=20
*Thanks and Regards*
*Arhum Ahmad*
Ph.D. Scholar, Electrical Engineering Department, IIT Ropar

+91- <+91-7015802356>7974897279 | arhum.19eez0005@iitrpr.ac.in
<2016eez0009@iitrpr.ac.in>
Lab No. 323, Communication Research Lab, J.C.Bose Building

--=20
**CONFIDENTIALITY NOTICE:=C2=A0The
 contents of this email message and any=20
attachments are intended solely=20
for the addressee(s) and may contain=20
confidential and/or privileged=20
information and may be legally protected=20
from disclosure. If you are not
 the intended recipient of this message or=20
their agent, or if this=20
message has been addressed to you in error, please=20
immediately alert the
 sender by reply email and then delete this message=20
and any attachments.
 If you are not the intended recipient, you are hereby=20
notified that any
 use, dissemination, copying, or storage of this message=20
or its=20
attachments is strictly prohibited.*























*

--000000000000ccad5d05d01c46dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Respected sir,<div>Is this the right email=C2=A0to to ask =
doubts?<br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr" class=3D"gm=
ail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><di=
v dir=3D"ltr"><div style=3D"color:rgb(100,100,100);font-family:Arial;font-s=
ize:12px;margin-bottom:5px;margin-top:0px"><b style=3D"color:rgb(53,28,117)=
;font-family:Arial,Helvetica,sans-serif;font-size:small"><span style=3D"fon=
t-family:&quot;times new roman&quot;,serif">Thanks and Regards</span></b><b=
><br></b></div><div style=3D"color:rgb(100,100,100);font-family:Arial;font-=
size:12px;margin-bottom:5px;margin-top:0px"><b>Arhum Ahmad</b><br>Ph.D. Sch=
olar,=C2=A0Electrical Engineering Department, IIT Ropar</div><table width=
=3D"470" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" style=3D"color:rg=
b(100,100,100);font-family:Arial;font-size:12px;width:470px;margin-top:5px"=
><tbody><tr><td style=3D"color:rgb(141,141,141)"><p style=3D"margin:0px"><s=
pan style=3D"display:inline-block"><a href=3D"tel:+91-7015802356" style=3D"=
color:rgb(141,141,141);font-family:sans-serif" target=3D"_blank">+91-</a>79=
74897279</span>=C2=A0<span style=3D"color:rgb(69,102,142);display:inline-bl=
ock">|</span>=C2=A0arhum.19eez0005<span style=3D"display:inline-block"><a h=
ref=3D"mailto:2016eez0009@iitrpr.ac.in" style=3D"color:rgb(141,141,141);fon=
t-family:sans-serif" target=3D"_blank">@iitrpr.ac.in</a></span></p></td></t=
r><tr><td style=3D"font-family:sans-serif;color:rgb(141,141,141)"><span sty=
le=3D"display:inline-block">Lab No. 323, Communication Research Lab, J.C.Bo=
se Building</span></td></tr></tbody></table></div></div></div></div></div><=
/div>

<br>
<b><font size=3D"1"><span><span><span><div><div dir=3D"ltr"><div dir=3D"ltr=
"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div><span><span><span><span><i>CONFIDENTIALI=
TY NOTICE:=C2=A0The
 contents of this email message and any attachments are intended solely=20
for the addressee(s) and may contain confidential and/or privileged=20
information and may be legally protected from disclosure. If you are not
 the intended recipient of this message or their agent, or if this=20
message has been addressed to you in error, please immediately alert the
 sender by reply email and then delete this message and any attachments.
 If you are not the intended recipient, you are hereby notified that any
 use, dissemination, copying, or storage of this message or its=20
attachments is strictly prohibited.<span></span></i></span></span></span></=
span></div></div></div></div></div></div></div></div></div></div></div></di=
v></div></div></div></div></div></div></div></div></div></div></div></div><=
/span></span></span></font></b>
--000000000000ccad5d05d01c46dd--

--===============7819671433686305560==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7819671433686305560==--
