Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE346D3976
	for <lists+usrp-users@lfdr.de>; Sun,  2 Apr 2023 19:34:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8BAA13844B7
	for <lists+usrp-users@lfdr.de>; Sun,  2 Apr 2023 13:34:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680456897; bh=a6+6SpU4ndEdI1PMzur4Dzf9gZ0Ktwj4w7Knf8hwa6Q=;
	h=Date:To:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=gI23csFNXAtFzNzdL5Nbz+boac84BvbFKKbddPAWv6bhQkJivsEHtC/m4fsTrxq5F
	 VwqB62ihaPUZhlICkVv8qnNNOM5Dh4WMuC674MlXH0C2RYFuB+5vAIFpQoh+KcQhae
	 4KHqSZLvL2Yktmsrah0LNwBIwm+bDOYHfhx026HgVWLpJR7xhuEk8/pM2xKdnLPfoU
	 +ERqtq0bbf/GItU9fN4tXHgWoFysk8Rp2wpn4uD+k1YUncK8lT0es3iSusqrGjFFNW
	 X50FOahSKipXcwf5gSFWU5X7ueaVtHY8vvFpY00eMfoH/vx6k2M/LCsCj/p7bMzAu4
	 46X+p9kU2nsWA==
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 19E0B3841AF
	for <usrp-users@lists.ettus.com>; Sun,  2 Apr 2023 13:34:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=iitrpr.ac.in header.i=@iitrpr.ac.in header.b="Fu515wDv";
	dkim-atps=neutral
Received: by mail-pl1-f182.google.com with SMTP id o11so25937385ple.1
        for <usrp-users@lists.ettus.com>; Sun, 02 Apr 2023 10:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iitrpr.ac.in; s=google; t=1680456865;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QQZQhZzj0ZwnXHqt7GksW2WZIKj0zO8FR0xm7JucQYw=;
        b=Fu515wDv5bmii/+7hd6e/Upr6Ivpy+fEo2qWnk+kkLtTLwskTJZUOHKD9/fH7GkV4a
         9gq/hsG5UzQ+sSB/pEw9EDDfQf/J979Kh6rncz+KS9jP+JAnCV0yBOq0mwbHK/WsJcT4
         gG4pUxkS5tzWoNtoAOVKkIrVXxEd0KN4DhS3M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680456865;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QQZQhZzj0ZwnXHqt7GksW2WZIKj0zO8FR0xm7JucQYw=;
        b=3L5QS2wtQIC+azgWh7Npy66DJJjYjfUeJLPwnZZ/FiV8ii0LyrJ8Tt8DF/aEjCaBFd
         IEuecGDpFG6Yiw3y8he9qQB21pNZ61mFHA0+mETVnNSovhvDVqasWJN/UPKJ2A+QtAMq
         skyBczr3M2aJbO4UzFzCnIjI8cyNquN7KwlF9AKEQpWThog+Vdx8a7iYckUdbOuKER1i
         NCBntqvd00VdtgaUDOrvoLlKgnoueZxDaUpGvWtzPZbyO7QzGcEE3Sdu3+0Lxn4u1qCS
         W6JNUdabt1IUFIlp7oYKJy/Q9kdya0UBsA8vOw/PJ6VlwkRoTyUY7YXZOEJai/gfwec5
         U1xw==
X-Gm-Message-State: AAQBX9e5zpTuOsHdg8nUTAz/Vf9utFshknRRLfKBjgmvXkCTmiatC+uM
	D1cpH9BPU2/5njvDkhzHsiMUhdMIRjQ8/pc7S/tr6qZB215wMVTBNgMx0DFbSbY3c79x8oB+EMS
	iElx7Ts7bXqJji1IHwbQSzy68YnjhsxqP+JIS6fzf
X-Google-Smtp-Source: AKy350aiHzGFDeH6WJSZUq1uGuHtQB2kdA4NIvB8M/hSRhW+YqMmTQ2pSEX+fPxESYfjUnMl3FiRANH/sBF0GjStuFA=
X-Received: by 2002:a17:902:8bc4:b0:19f:1d62:4393 with SMTP id
 r4-20020a1709028bc400b0019f1d624393mr11126577plo.7.1680456864874; Sun, 02 Apr
 2023 10:34:24 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 2 Apr 2023 23:04:14 +0530
Message-ID: <CA+QP_PnWu9XRxLE22CCervTjWKqs0fMJ7EFqnojX3zzyDZ1BHQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: MKZKEM6VIMZMVZ3FWL5DSIFJCB3LF63N
X-Message-ID-Hash: MKZKEM6VIMZMVZ3FWL5DSIFJCB3LF63N
X-MailFrom: arhum.19eez0005@iitrpr.ac.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Karunya Choppara <kchoppar@mathworks.com>, Marcus D Leech <patchvonbraun@gmail.com>, Mike McLernon <mmclerno@mathworks.com>, Houman Zarrinkoub <hzarrink@mathworks.com>, Sathish Varala <sathishv@mathworks.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] HELP regarding USRP N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MKZKEM6VIMZMVZ3FWL5DSIFJCB3LF63N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Arhum Ahmad via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Arhum Ahmad <arhum.19eez0005@iitrpr.ac.in>
Content-Type: multipart/mixed; boundary="===============6529446407959420370=="

--===============6529446407959420370==
Content-Type: multipart/alternative; boundary="0000000000007e000f05f85dda63"

--0000000000007e000f05f85dda63
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Respected sir,

I am trying to connect multiple USRP N200 simultaneously to the same system
to use in MATLAB. However, It is not recognized by the system. My PC has 2
ethernet ports (10 and 5 Gbit). N-200 connects via a 10Gbit port but not by
5 Gbit. I have changed the IP of N-200, but it doesn't work. I have tried
to use a router to make a local LAN to connect the PC to 2 N-200, but it
did not work either. Is there any specific way to connect multiple N-200 in
the PC and use it in MATLAB for simultaneous operation?It will be very
helpful for my experiment.

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

--0000000000007e000f05f85dda63
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Respected sir,<div><br></div><div>I am trying to connect m=
ultiple USRP N200 simultaneously to the same system to use in MATLAB. Howev=
er, It is not recognized by the=C2=A0system. My PC has 2 ethernet=C2=A0port=
s (10 and 5 Gbit). N-200 connects via a 10Gbit port but not by 5 Gbit. I ha=
ve changed the IP of N-200, but it doesn&#39;t=C2=A0work. I have tried to u=
se a router to make a local LAN to connect the PC to 2 N-200, but it did no=
t work either. Is there any specific way to connect multiple N-200 in the P=
C and use it in MATLAB for simultaneous operation?It will be very helpful f=
or my experiment.=C2=A0<br clear=3D"all"><div><br></div><span class=3D"gmai=
l_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature=
" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"=
><div style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;marg=
in-bottom:5px;margin-top:0px"><b style=3D"color:rgb(53,28,117);font-family:=
Arial,Helvetica,sans-serif;font-size:small"><span style=3D"font-family:&quo=
t;times new roman&quot;,serif">Thanks and Regards</span></b><b><br></b></di=
v><div style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;mar=
gin-bottom:5px;margin-top:0px"><b>Arhum Ahmad</b><br>Ph.D. Scholar,=C2=A0El=
ectrical Engineering Department, IIT Ropar</div><table width=3D"470" border=
=3D"0" cellspacing=3D"0" cellpadding=3D"0" style=3D"color:rgb(100,100,100);=
font-family:Arial;font-size:12px;width:470px;margin-top:5px"><tbody><tr><td=
 style=3D"color:rgb(141,141,141)"><p style=3D"margin:0px"><span style=3D"di=
splay:inline-block"><a href=3D"tel:+91-7015802356" style=3D"color:rgb(141,1=
41,141);font-family:sans-serif" target=3D"_blank">+91-</a>7974897279</span>=
=C2=A0<span style=3D"color:rgb(69,102,142);display:inline-block">|</span>=
=C2=A0arhum.19eez0005<span style=3D"display:inline-block"><a href=3D"mailto=
:2016eez0009@iitrpr.ac.in" style=3D"color:rgb(141,141,141);font-family:sans=
-serif" target=3D"_blank">@iitrpr.ac.in</a></span></p></td></tr><tr><td sty=
le=3D"font-family:sans-serif;color:rgb(141,141,141)"><span style=3D"display=
:inline-block">Lab No. 323, Communication Research Lab, J.C.Bose Building</=
span></td></tr></tbody></table></div></div></div></div></div></div>

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
--0000000000007e000f05f85dda63--

--===============6529446407959420370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6529446407959420370==--
