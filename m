Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8606A213D36
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jul 2020 18:05:06 +0200 (CEST)
Received: from [::1] (port=46610 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jrOBS-0008Tg-71; Fri, 03 Jul 2020 12:05:02 -0400
Received: from mail-ej1-f51.google.com ([209.85.218.51]:45030)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <alex.m.humberstone@gmail.com>)
 id 1jrOBO-0008J6-Bz
 for usrp-users@lists.ettus.com; Fri, 03 Jul 2020 12:04:58 -0400
Received: by mail-ej1-f51.google.com with SMTP id ga4so34728812ejb.11
 for <usrp-users@lists.ettus.com>; Fri, 03 Jul 2020 09:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=cGWI5/hekqjhWEL8aJKb5MKLtW1LRp2duGcSvSp2YnE=;
 b=N/7YYhFGGGonDZL9saRHl2DQWgIcHfPb4E+yiVmUL9R/hsAdUxFgAyZP4idWS1Brvx
 j7OXuI3/ykPjhw/btnS1uQITiB1hGVdb7JJB1uFU2qRlyv/2nLNqruoxrkP3pLSaQQkW
 6WTWbCmo8kIJGuONO9cDU1unnj/oKhbWCIibAZX9OeCZCH9zM5ouQb6GWKg//UD0+oGq
 QusC9o7JncsfaELWFcRnKa0CV1KKveHU3nE/644x2jRy7WxsHhXfeOcEXJnlLSlbZnh+
 PQAif3CEAF2m47/aHOeVZn54B7KG3SdVOv3oscF+GI9HTsAtJ4012DjN2djOJsk9ULtz
 tBgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=cGWI5/hekqjhWEL8aJKb5MKLtW1LRp2duGcSvSp2YnE=;
 b=GYGasN2ppvCkCaGNH7gwDTltLWL/pjf8NcWhBjVBS6D9LjUGylhMKO25Jf9DC7ComJ
 wuQntskXBzzTOcUxYNaJVQYprkUIxTohm4r/gEocQYJ8v7oG1QAyWh6wOaZl2Jufj8tw
 Lo90LbDoPPMgSIhUO2lVDoCeHYpPWo8+Jy2h6gbilKCS0JFxGcUPJgHwB7JSCQY4Mu2W
 cUaV3TJwKRv+Qd/fUiJG6cLlqXc+oQMrYVjsGWccBBvrlOmNRuYKGuQop87iBkq21636
 JC9xaQPLUu6QJfGTvucsGAuKUHepbupE4nr8eLL4Iu2yPwik5ufqyzwxUbWzXnFPXeom
 Kw+Q==
X-Gm-Message-State: AOAM5318mQgQYkD56/v/NFCZAHRR0SSv6wkuW7bFRsH4BkHmPomIzg5W
 EKVEn6sAdwBS1peQoHrdYYTKGg65T5s9AgpE0B8+urqq
X-Google-Smtp-Source: ABdhPJyaO5u0XHLt6WASDnVIhXPIYtt/o86zfP8CmZV03GGiGIuEaB8EGddrPLzQ2ihi3ZapEfz0nQ4FIXEDYAG/7D8=
X-Received: by 2002:a17:906:1e83:: with SMTP id
 e3mr17993704ejj.7.1593792257234; 
 Fri, 03 Jul 2020 09:04:17 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 3 Jul 2020 11:03:41 -0500
Message-ID: <CAE0dfYYGNGZqh0YQPvmk1XfXY323Z93MmESUX9vJyTt79GrNYA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] How to use a Ham It Up with the USRP B210
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Alex Humberstone via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alex Humberstone <alex.m.humberstone@gmail.com>
Content-Type: multipart/mixed; boundary="===============1290458283731419075=="
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

--===============1290458283731419075==
Content-Type: multipart/alternative; boundary="000000000000569b3205a98bad83"

--000000000000569b3205a98bad83
Content-Type: text/plain; charset="UTF-8"

Just a quick and basic question. I want to receive down at like between
1MHz and 10MHz. I have a USRP B210. I knwo that the USRP B210 only goes
down to 70MHz. So I bought a Ham It Up (
https://www.nooelec.com/store/ham-it-up.html) upconverter to get down to
like 1MHz and 3 MHz. So how does this all work? Does the Ham It Up
upconvert the frequency range from 100KHz to 65MHz up to a center frequency
of 125MHz? So then isn't it true that if I tune the USRP B210 to 125MHz, I
would see my two 1MHz and 3MHz input tones appearing up at 33.5MHz and
35.5MHz? Just want to clarify this in my mind. Thanks a LOT for your help
everyone!



-- 
Sincerely,
Alex-M-Humberstone
PhD Student
Klipsch School of Electrical Engineering
New Mexico State University
Las Cruces, New Mexico

--000000000000569b3205a98bad83
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e;font-size:large">Just a quick and basic question. I want to receive down =
at like between 1MHz and 10MHz.  I have a USRP B210. I knwo that the USRP B=
210 only goes down to 70MHz. So I bought a Ham It Up (<a href=3D"https://ww=
w.nooelec.com/store/ham-it-up.html">https://www.nooelec.com/store/ham-it-up=
.html</a>) upconverter to get down to like 1MHz and 3 MHz. So how does this=
 all work? Does the Ham It Up upconvert the frequency range from 100KHz to =
65MHz up to a center frequency of 125MHz? So then isn&#39;t it true that if=
 I tune the USRP B210 to 125MHz, I would see my two 1MHz and 3MHz input ton=
es appearing up at 33.5MHz and 35.5MHz? Just want to clarify this in my min=
d. Thanks a LOT for your help everyone!<br></div><div class=3D"gmail_defaul=
t" style=3D"font-family:monospace;font-size:large"><br></div><div class=3D"=
gmail_default" style=3D"font-family:monospace;font-size:large"><br clear=3D=
"all"></div><br>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smar=
tmail=3D"gmail_signature"><div dir=3D"ltr"><font size=3D"4"><span style=3D"=
font-family:monospace">Sincerely,<br></span></font><div><font size=3D"4"><s=
pan style=3D"font-family:monospace">Alex-M-Humberstone</span></font></div><=
div><font size=3D"4"><span style=3D"font-family:monospace">PhD Student</spa=
n></font></div><div><font size=3D"4"><span style=3D"font-family:monospace">=
Klipsch School of Electrical Engineering<br></span></font></div><div><font =
size=3D"4"><span style=3D"font-family:monospace">New Mexico State Universit=
y<br><span><span>Las Cruces, </span></span>New Mexico</span></font></div><d=
iv><font size=3D"4"><span style=3D"font-family:monospace"><br></span></font=
></div><div><font size=3D"4"><span style=3D"font-family:monospace"></span><=
/font></div></div></div></div>

--000000000000569b3205a98bad83--


--===============1290458283731419075==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1290458283731419075==--

