Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BCA29308E
	for <lists+usrp-users@lfdr.de>; Mon, 19 Oct 2020 23:33:36 +0200 (CEST)
Received: from [::1] (port=53790 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kUcmb-0003PZ-8B; Mon, 19 Oct 2020 17:33:33 -0400
Received: from mail-ot1-f50.google.com ([209.85.210.50]:34119)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <joshide@bc.edu>) id 1kUcmX-0003KU-A0
 for usrp-users@lists.ettus.com; Mon, 19 Oct 2020 17:33:29 -0400
Received: by mail-ot1-f50.google.com with SMTP id d28so1255938ote.1
 for <usrp-users@lists.ettus.com>; Mon, 19 Oct 2020 14:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bc-edu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=a0fTftu6bE9RZl42TNCGxY0bM3hf6OCDRjLuWLiOE3A=;
 b=AtVk6QSnItmTw+qmc6GApL/IJx0djrx8kK98ZZfdLbXUSS7F9fiU+q9IFbWv+Vj3Hg
 6/cMILn8yrn24JcWHIv1J25ZCs4mGNDVGn7InwidcSjIHwDcKwqZKKEcQ4b8TKaIcqqN
 3IYhU5OlhGXLzfULQlcelrISOYG7w+3BmWFk/oJE4dID2KmmdymdCtTNpbiJpVV0nHlq
 9h5m1NlTeaP8737cT8ZUtUtFugcaMRnfVdbHxdRTH31MXdL2NYvTDu3anrCk5ocRYwsc
 d/qHxsnqGHrJpKalKlMdpnIQwpc+piN6MQ7NMfXpsQ/Hdjjefw9MAFCgue7OujlORWkO
 P0fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=a0fTftu6bE9RZl42TNCGxY0bM3hf6OCDRjLuWLiOE3A=;
 b=moPdz5Hn8m0qQe6mKF4Ui8qSSb64WLCpwsSK/aDfTeUiq126GKOBCHLbBL8F/vjDav
 WxBIZYZwB937T2MgsS/wzJ1LM4InY0avvlGRs5sPdiqywMjB1dFWoZZodFQ6N68E/zha
 tg/ASeRsxMxTEmpTugwSebRIdCpCz3eP1ShnC4+tZgb+849QQWbXX/jvKHxXG+fd5d5C
 0O3ZI9M4qxD8TavrhQ35w24bJptVG1yedprcap3E4WPc6Ok/04t4/l6TSLpVeZAKEsh2
 8RYHahOlKaWOYP+ywSOsMqMrxwFug/9dOP+bfmOG0Odwk1nKkEmJeE17Hl+LcBNDYEB8
 /L0Q==
X-Gm-Message-State: AOAM530TQztyhdaJ93ieBNncBWPIux1A/ir6ySrpY15/6qEV/gIdaIZd
 /jLN37/OpBj3E0urjWSngQQ79kx9l6dbcQJ5VOPoF8i5zgPS6N9R
X-Google-Smtp-Source: ABdhPJxjYgPxVMMTZw++Uxs9WQRKM1EnDuvvTrQDACjFfJD9Zt88u5f04iTXW1ZYBrao54Jp/DEP/YtAaS8epGkIoAE=
X-Received: by 2002:a05:6830:1013:: with SMTP id
 a19mr1302226otp.226.1603143168047; 
 Mon, 19 Oct 2020 14:32:48 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 19 Oct 2020 17:32:37 -0400
Message-ID: <CAAq7Emf908sc+rSn87GEy7g6itEiT_PDTfM2y9yv2De=793zjA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] ETTUS N200 device start issue -- works only after
 second and subsequent invocations
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
From: Dev Joshi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dev Joshi <joshide@bc.edu>
Content-Type: multipart/mixed; boundary="===============3932082438971995227=="
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

--===============3932082438971995227==
Content-Type: multipart/alternative; boundary="0000000000000e550e05b20cdb99"

--0000000000000e550e05b20cdb99
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I hope everyone is keeping well through these unusual times. I am writing
to request assistance on an issue I am facing while running Ettus N200
device. The  device is installed to receive high frequency radio waves and
it is connected to an internet port by an Ethernet cable  as is the
computer (Ubuntu). I can ping the device from the terminal of the computer.
But, whenever I invoke the USRP N200 using any command, it doesn't work as
shown below :

uhd_find_devices --args="addr=xx.xx.xxx.xx"
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_3.15.0.HEAD-0-gaea0e2de
No UHD Devices Found

But, if  I pass the command soon after the first invocation, it works as
shown below:

uhd_find_devices --args="addr=xx.xx.xxx.xx"
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_3.15.0.HEAD-0-gaea0e2de
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 31D09D8
    addr: xx.xx.xxx.xx
    name:
    type: usrp2

And, subsequent invocations in the near future work.  And, it applies for
any other command I have used to invoke the
USRP device. I would greatly appreciate suggestions from experienced users
in this list.  And, one more issue, the above command used to work without
passing the "addr" argument. But recently, it doesn't respond if I don't
pass that argument.

I would greatly appreciate suggestions on these two points.

Thanks.

Best,
Dev


Dev Joshi, PhD
Postdoctoral Research Associate
Department of Physics and Engineering
The University of Scranton
C: 617 775 9712

--0000000000000e550e05b20cdb99
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smart=
mail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div d=
ir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div style=3D=
"margin:0px;padding:0px;border:0px;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black"><span style=3D"margin:0px;padding:0px;border:0px;f=
ont-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inh=
erit;font-size:large;line-height:inherit;font-family:Arial,Helvetica,sans-s=
erif;vertical-align:baseline;color:rgb(34,34,34)">Hello everyone,<br><br>I =
hope everyone is keeping well through these unusual times. I am writing to =
request assistance on an issue I am facing while running Ettus N200 device.=
 The =C2=A0device is installed to receive high frequency radio waves and it=
 is connected to an internet port by an Ethernet cable =C2=A0as is the comp=
uter (Ubuntu). I can ping the device from the terminal of the computer. But=
, whenever I invoke the USRP N200 using any command, it doesn&#39;t work as=
 shown below :<br><br>uhd_find_devices --args=3D&quot;addr=3Dxx.xx.xxx.xx&q=
uot;<br>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0=
.HEAD-0-gaea0e2de<br>No UHD Devices Found<br><br>But, if =C2=A0I pass the c=
ommand soon after the first invocation, it works as shown below:<br><br>uhd=
_find_devices --args=3D&quot;addr=3Dxx.xx.xxx.xx&quot;<br>[INFO] [UHD] linu=
x; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-gaea0e2de<br>----=
----------------------------------------------<br>-- UHD Device 0<br>------=
--------------------------------------------<br>Device Address:<br>=C2=A0 =
=C2=A0 serial: 31D09D8<br>=C2=A0 =C2=A0 addr: xx.xx.xxx.xx<br>=C2=A0 =C2=A0=
 name: <br>=C2=A0 =C2=A0 type: usrp2<br><br>And, subsequent invocations in =
the near future work.=C2=A0 And, it applies for any other command I have us=
ed to invoke the <br>USRP device. I would greatly appreciate suggestions fr=
om experienced users in this list.=C2=A0 And, one more issue, the above com=
mand used to work without passing the &quot;addr&quot; argument. But recent=
ly, it doesn&#39;t respond if I don&#39;t pass that argument. <br><br></spa=
n></div><div style=3D"margin:0px;padding:0px;border:0px;font-stretch:inheri=
t;font-size:12pt;line-height:inherit;font-family:Calibri,Arial,Helvetica,sa=
ns-serif;vertical-align:baseline;color:black"><span style=3D"margin:0px;pad=
ding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inh=
erit;font-stretch:inherit;font-size:large;line-height:inherit;font-family:A=
rial,Helvetica,sans-serif;vertical-align:baseline;color:rgb(34,34,34)">I wo=
uld greatly appreciate suggestions on these two points. <br><br>Thanks.<br>=
<br>Best,<br>Dev<br></span></div><div style=3D"margin:0px;padding:0px;borde=
r:0px;font-stretch:inherit;font-size:12pt;line-height:inherit;font-family:C=
alibri,Arial,Helvetica,sans-serif;vertical-align:baseline;color:black"><spa=
n style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-varian=
t:inherit;font-weight:inherit;font-stretch:inherit;font-size:large;line-hei=
ght:inherit;font-family:Arial,Helvetica,sans-serif;vertical-align:baseline;=
color:rgb(34,34,34)"><br></span></div><div style=3D"margin:0px;padding:0px;=
border:0px;font-stretch:inherit;font-size:12pt;line-height:inherit;font-fam=
ily:Calibri,Arial,Helvetica,sans-serif;vertical-align:baseline;color:black"=
><span style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-v=
ariant:inherit;font-weight:inherit;font-stretch:inherit;font-size:large;lin=
e-height:inherit;font-family:Arial,Helvetica,sans-serif;vertical-align:base=
line;color:rgb(34,34,34)"><br></span></div><div style=3D"margin:0px;padding=
:0px;border:0px;font-stretch:inherit;font-size:12pt;line-height:inherit;fon=
t-family:Calibri,Arial,Helvetica,sans-serif;vertical-align:baseline;color:b=
lack"><span style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;f=
ont-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:larg=
e;line-height:inherit;font-family:Arial,Helvetica,sans-serif;vertical-align=
:baseline;color:rgb(34,34,34)">Dev Joshi, PhD</span><span style=3D"margin:0=
px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weig=
ht:inherit;font-stretch:inherit;font-size:14pt;line-height:inherit;font-fam=
ily:inherit;vertical-align:baseline;color:rgb(102,102,102)"><b></b></span><=
span style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-align=
:baseline;color:inherit"><br></span></div><div style=3D"margin:0px;padding:=
0px;border:0px;font-stretch:inherit;font-size:12pt;line-height:inherit;font=
-family:Calibri,Arial,Helvetica,sans-serif;vertical-align:baseline;color:bl=
ack"><div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-=
align:baseline;color:inherit"><span style=3D"margin:0px;padding:0px;border:=
0px;font:inherit;vertical-align:baseline;color:rgb(102,102,102)">Postdoctor=
al Research Associate</span></div><div style=3D"margin:0px;padding:0px;bord=
er:0px;font:inherit;vertical-align:baseline;color:inherit"><span style=3D"m=
argin:0px;padding:0px;border:0px;font:inherit;vertical-align:baseline;color=
:rgb(102,102,102)">Department of Physics and Engineering</span></div><div s=
tyle=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-align:basel=
ine;color:inherit"><span style=3D"margin:0px;padding:0px;border:0px;font:in=
herit;vertical-align:baseline;color:rgb(102,102,102)">The University of Scr=
anto</span><span style=3D"margin:0px;padding:0px;border:0px;font:inherit;ve=
rtical-align:baseline;color:rgb(102,102,102)">n</span></div><div style=3D"m=
argin:0px;padding:0px;border:0px;font:inherit;vertical-align:baseline;color=
:inherit"><span style=3D"margin:0px;padding:0px;border:0px;font:inherit;ver=
tical-align:baseline;color:rgb(102,102,102)">C:</span><span style=3D"margin=
:0px;padding:0px;border:0px;font:inherit;vertical-align:baseline;color:inhe=
rit">=C2=A0617 775 9712</span></div></div></div></div></div></div></div></d=
iv></div></div></div></div></div>

--0000000000000e550e05b20cdb99--


--===============3932082438971995227==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3932082438971995227==--

