Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 457DE2E89F1
	for <lists+usrp-users@lfdr.de>; Sun,  3 Jan 2021 02:56:12 +0100 (CET)
Received: from [::1] (port=52652 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kvscq-0002uR-An; Sat, 02 Jan 2021 20:56:08 -0500
Received: from mail-lf1-f50.google.com ([209.85.167.50]:36146)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <linda20071@gmail.com>)
 id 1kvscm-0002MS-KV
 for usrp-users@lists.ettus.com; Sat, 02 Jan 2021 20:56:04 -0500
Received: by mail-lf1-f50.google.com with SMTP id o13so56606564lfr.3
 for <usrp-users@lists.ettus.com>; Sat, 02 Jan 2021 17:55:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=BBo7xE9HlkmWg66f2nYqdPJamDD/f5fAWcglovv5TWo=;
 b=BKDIeowjkyTQ82B4aWAMOf4mCHKz81CVNmvMdzLjwtEp3wT0qwVjn8J9o5esgDXhsk
 wF6w/BKsiP9F914b6KpD8sqQ/Ofa9dLTUnsBcJS8RGvcqLdCcFcVpYguQV0f/Rbqzc0K
 R4w3g0HdK7dDxcsvmQfHFbsh14Dku00d0CmoPVFqW7SoA2aU0jSy7LqqXbN3qtF/0+sD
 XmWAgUGiXacuv3kuDdQQIRqfN8uwFO9m25YuD5t+CnYFHuRGwm6xI2YzGDjV93Np8ax9
 F+VNnVyliSFe/xDCNtt5FmANyEYCKb77cT0s5AB0WKaAlvYe1ok17ex8um08yWmmsaLw
 2Ppw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=BBo7xE9HlkmWg66f2nYqdPJamDD/f5fAWcglovv5TWo=;
 b=p1og/DZ9RbsI2/wA3oZvvlgb1SeO24QqmVEJftapt+r33nYiJiPXbtIyXKsAjVifxd
 tSNtbhk1Tun5N+NP+AgtggBYR4Ff86ubUMOx8zh35L33BElFZd+/VyQ1NXmXlV3T0hYn
 68Qo6oTBMK06H2FQ/Jlws+z7wSeBopSWHVywOOG7b/QGmRvZNIAbhMf8yqFl/b5OyF5s
 bI6ya9gwEiMg7024hzGtUHSJUdZ96dcDk9QBUnBE+3RYhfVpDss//rcu7x9UmtQz1M5g
 U/UYLxprUjNcKz3A7ershcOVA2IzSgJfj/pq67kkenQoC99oeYvD3gaWmLzFYIrs44Fe
 skVA==
X-Gm-Message-State: AOAM533F1z92DQjZKLErDEbPY4NGySzu9B4pmsvguhwVboA3yYSc9szV
 KQyDrTop+zzwzOAsaG0oHMg3g3ksw9SnAtzm5fJLPwwDBUo=
X-Google-Smtp-Source: ABdhPJyAKa+8PzOLVOcp+ij6wynrsm7W/XvOlX9uvZWJd2Wu49zqWcNZjoVjJHCwla93yOBWVp6Ei68RkRaeQ0rCL5Y=
X-Received: by 2002:ac2:5199:: with SMTP id u25mr27913029lfi.438.1609638923079; 
 Sat, 02 Jan 2021 17:55:23 -0800 (PST)
MIME-Version: 1.0
Date: Sat, 2 Jan 2021 20:55:12 -0500
Message-ID: <CAG_Bp07GxnZHS7kQbBYgDU=y7PbEyihAm5u=hrYpzD1xMKd-Pg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] implementation of member functions in gnuradio blocks
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
From: Linda20071 via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Linda20071 <linda20071@gmail.com>
Content-Type: multipart/mixed; boundary="===============0483803463752765340=="
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

--===============0483803463752765340==
Content-Type: multipart/alternative; boundary="0000000000003a135205b7f54409"

--0000000000003a135205b7f54409
Content-Type: text/plain; charset="UTF-8"

I installed gnuradio from source via "git clone" command. Thus, I would
assume all the source files should be in my computer. However, I am able to
find mpsk_receiver_cc.h, but not its implementation: mpsk_receiver_cc.cc. I
am interested in taking a look at the implementation of a member function
mpsk_receiver_cc(...).

Does this mean some function implementations are intentionally hidden by
the software company? Is there a way to pull this .cc file out?

MATLAB makes all its implementations accessible to its users, which is very
convenient.

--0000000000003a135205b7f54409
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><h3 class=3D"gmail-iw" style=3D"overflow:hidden;white-spac=
e:nowrap;font-size:0.75rem;font-weight:inherit;margin:inherit;text-overflow=
:ellipsis;font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;letter-=
spacing:0.3px;color:rgb(95,99,104);line-height:20px">I installed gnuradio f=
rom source via &quot;git<span style=3D"font-family:Arial,Helvetica,sans-ser=
if;font-size:small;letter-spacing:normal;color:rgb(34,34,34)"> clone&quot; =
command. Thus, I would assume all the source files=C2=A0</span></h3><h3 cla=
ss=3D"gmail-iw" style=3D"overflow:hidden;white-space:nowrap;font-size:0.75r=
em;font-weight:inherit;margin:inherit;text-overflow:ellipsis;font-family:Ro=
boto,RobotoDraft,Helvetica,Arial,sans-serif;letter-spacing:0.3px;color:rgb(=
95,99,104);line-height:20px"><span style=3D"font-family:Arial,Helvetica,san=
s-serif;font-size:small;letter-spacing:normal;color:rgb(34,34,34)">should b=
e in my computer. However, I am able to find mpsk_receiver_cc.h, but not it=
s=C2=A0</span></h3><h3 class=3D"gmail-iw" style=3D"overflow:hidden;white-sp=
ace:nowrap;font-size:0.75rem;font-weight:inherit;margin:inherit;text-overfl=
ow:ellipsis;font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;lette=
r-spacing:0.3px;color:rgb(95,99,104);line-height:20px"><span style=3D"font-=
family:Arial,Helvetica,sans-serif;font-size:small;letter-spacing:normal;col=
or:rgb(34,34,34)">implementation: mpsk_receiver_cc.cc. I am interested in t=
aking a look at the implementation=C2=A0</span></h3><h3 class=3D"gmail-iw" =
style=3D"overflow:hidden;white-space:nowrap;font-size:0.75rem;font-weight:i=
nherit;margin:inherit;text-overflow:ellipsis;font-family:Roboto,RobotoDraft=
,Helvetica,Arial,sans-serif;letter-spacing:0.3px;color:rgb(95,99,104);line-=
height:20px"><span style=3D"font-family:Arial,Helvetica,sans-serif;font-siz=
e:small;letter-spacing:normal;color:rgb(34,34,34)">of a member function mps=
k_receiver_cc(...).=C2=A0</span></h3><div><br>Does this mean some function =
implementations are intentionally hidden by the software company? Is there =
a way to pull this .cc file out?<br><br>MATLAB makes all its implementation=
s accessible to its users, which is very convenient.<br></div></div>

--0000000000003a135205b7f54409--


--===============0483803463752765340==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0483803463752765340==--

