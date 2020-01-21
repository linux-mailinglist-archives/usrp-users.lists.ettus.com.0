Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 255C414423B
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2020 17:33:44 +0100 (CET)
Received: from [::1] (port=60946 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1itwTF-00068O-Vm; Tue, 21 Jan 2020 11:33:41 -0500
Received: from mail-qk1-f169.google.com ([209.85.222.169]:40262)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <pawellgocyla@gmail.com>)
 id 1itwTC-00061G-Bh
 for usrp-users@lists.ettus.com; Tue, 21 Jan 2020 11:33:38 -0500
Received: by mail-qk1-f169.google.com with SMTP id c17so3290813qkg.7
 for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2020 08:33:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=eQhiIdDccH7IhEHJVal08iIIlT7nKCoM6yjkz/svOFw=;
 b=lPWalzscwgKutjiVsAhJXSlERBxWIXhYaUqscv4gdGThPxd21YcrDqJe0RKVAarph1
 ybkHmJ24+3Mll55qS/f8OflIz7wILfDgrVCrCDnLGJ4DIQolCUH6A5p2V5gZ+p03hGst
 HgL4YkOjDYHB5Gdn+a2tdFXx8v4TDKWpqxf6P7RC6PH+6/PAubx1AmIjiApuFB7oRPxr
 DF1z/CVl1P99VUzJ4Ly2usEKFk82qn91EERcwc/5AFDdbw7Z32xr0vo0SDCAOmqrCZMS
 Bxv6pqAcs6rsglfwzXF9lRbhojr7sH2A2vTwCEB431rAty2tjdK0yDm/K6VBDcZ3G8Tt
 Cs1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=eQhiIdDccH7IhEHJVal08iIIlT7nKCoM6yjkz/svOFw=;
 b=V6ClVIbeKorvhvX8iykTShjm+wb2sKSh73z0Ts3rq54JULXmgxEtluT31EuCgQCJ6s
 1xHpPPat5RrjerB9yzHw0YEsPDSrrcEufX/P3zJSs0+wDTwSRGZ1bDvd2nokjDPZ4iNB
 /T1flJGnY4QYp5ZfQPYBjW+eL86HkSXs+A7IuImBhP4kK2TRZ2CUIWX7zbrHVis9zQDY
 Ffra/vGBxsoVOsoS3LPvm06OcK4Kw6a6Un+Chn0hGhSJufBqS8Dysy9QVu1XLskc6wT4
 8vqNvzNdzoWgCdU0RtEaRZj4QSETd5Mzehd+1zKCvxhxScgL8vQr1FigJximdu4j32zi
 StIw==
X-Gm-Message-State: APjAAAVwMM3bx8GuNTbVLHY0PXjJj1JRbvtdLyJ+WFtT3buh4JSWVCZx
 yWCd3lDw3xWXZUzHcF5sYzGdV9CWYeppTsgZb9JF9HuZ
X-Google-Smtp-Source: APXvYqyzQgLAkoOUvX/hNuIkyPsQzMfpmOixuAtAjZSJNGIhY+I2Z/pmTih3IaZ693chQZWOZvBGtFYtpd/L/J/H0yE=
X-Received: by 2002:a37:b842:: with SMTP id i63mr5271807qkf.451.1579624377652; 
 Tue, 21 Jan 2020 08:32:57 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 21 Jan 2020 17:32:46 +0100
Message-ID: <CAByKQJ6oU=TSUeptf9wr=LoHehLN_AFEW_bejWTz3JTsp2=8LA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] ettus usrp B200 driver - not working on linux ubuntu
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
From: =?utf-8?q?Pawe=C5=82_Gocyla_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Pawe=C5=82_Gocyla?= <pawellgocyla@gmail.com>
Content-Type: multipart/mixed; boundary="===============4043783173266267360=="
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

--===============4043783173266267360==
Content-Type: multipart/alternative; boundary="000000000000e89a19059ca8f52b"

--000000000000e89a19059ca8f52b
Content-Type: text/plain; charset="UTF-8"

Hello,

I have a problem with ettus usrp B200 on linux ubuntu.

I have made all steps regarding UHD and driver installation with this
tutorial:
https://knowledge.ni.com/KnowledgeArticleDetails?id=kA00Z0000015BIZSA2&l=pl-PL

I turned on support for usb 3.0 in vmware settings.
I installed intel drivers for support of usb 3.0 (on windows host) -> after
that vmware was finding this device as B200 for a while but after host
windows restart is identifying this device as before as WestBridge. In
ubuntu I have warning from vmware workstation that there is a driver error.

In windows host this device is properly identyfied as Ettus Research LLC
B20/B210. On ubuntu I installed driver via apt - libuhd3.15.0.

uhd_usrp_probe and uhd_find_devices can't find any usrp devices.

lsusb also doesn't recognise this usrp B200 device.


I was searching in google for more information but I don't have any ideas
how to fix it and what is wrong.

Thanks in advance for your help !

--000000000000e89a19059ca8f52b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div style=3D"text-align:left;color:rgb(3=
4,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-fam=
ily:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-var=
iant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-spa=
ce:normal">Hello,</div><div style=3D"text-align:left;color:rgb(34,34,34);te=
xt-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,H=
elvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal=
;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal">=
<br></div><div style=3D"text-align:left;color:rgb(34,34,34);text-transform:=
none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans=
-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:=
400;text-decoration:none;word-spacing:0px;white-space:normal">I have a prob=
lem with ettus usrp B200=C2=A0on linux ubuntu.</div><div style=3D"text-alig=
n:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spaci=
ng:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-sty=
le:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spa=
cing:0px;white-space:normal"><br></div><div style=3D"text-align:left;color:=
rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;fon=
t-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;fon=
t-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;whit=
e-space:normal">I have made all steps regarding UHD and driver installation=
 with this tutorial:</div><div style=3D"text-align:left;color:rgb(34,34,34)=
;text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Aria=
l,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:nor=
mal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:norma=
l"><a style=3D"color:rgb(17,85,204)" href=3D"https://knowledge.ni.com/Knowl=
edgeArticleDetails?id=3DkA00Z0000015BIZSA2&amp;l=3Dpl-PL" target=3D"_blank"=
>https://knowledge.ni.com/KnowledgeArticleDetails?id=3DkA00Z0000015BIZSA2&a=
mp;l=3Dpl-PL</a></div><div style=3D"text-align:left;color:rgb(34,34,34);tex=
t-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,He=
lvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;=
font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal"><=
br></div><div style=3D"text-align:left;color:rgb(34,34,34);text-transform:n=
one;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-=
serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:4=
00;text-decoration:none;word-spacing:0px;white-space:normal">I turned on su=
pport for usb 3.0 in vmware settings.</div><div style=3D"text-align:left;co=
lor:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal=
;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal=
;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;=
white-space:normal">I installed intel drivers for support of usb 3.0 (on wi=
ndows host) -&gt; after that vmware was finding this device as B200 for a w=
hile but after host windows restart is identifying this device as before as=
 WestBridge. In ubuntu I have warning from vmware workstation that there is=
 a driver error.</div><div style=3D"text-align:left;color:rgb(34,34,34);tex=
t-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,He=
lvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;=
font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal"><=
br></div><div style=3D"text-align:left;color:rgb(34,34,34);text-transform:n=
one;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-=
serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:4=
00;text-decoration:none;word-spacing:0px;white-space:normal">In windows hos=
t this device is properly identyfied as Ettus Research LLC B20/B210. On ubu=
ntu I installed driver via apt - libuhd3.15.0.</div><div style=3D"text-alig=
n:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spaci=
ng:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-sty=
le:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spa=
cing:0px;white-space:normal"><br></div><div style=3D"text-align:left;color:=
rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;fon=
t-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;fon=
t-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;whit=
e-space:normal">uhd_usrp_probe and uhd_find_devices can&#39;t find any usrp=
 devices.</div><div style=3D"text-align:left;color:rgb(34,34,34);text-trans=
form:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica=
,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-we=
ight:400;text-decoration:none;word-spacing:0px;white-space:normal"><br></di=
v><div style=3D"text-align:left;color:rgb(34,34,34);text-transform:none;tex=
t-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;f=
ont-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text=
-decoration:none;word-spacing:0px;white-space:normal">lsusb also doesn&#39;=
t recognise this usrp B200 device.</div><div style=3D"text-align:left;color=
:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;fo=
nt-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;fo=
nt-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;whi=
te-space:normal"><br></div><div style=3D"text-align:left;color:rgb(34,34,34=
);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Ari=
al,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:no=
rmal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:norm=
al"><br></div><div style=3D"text-align:left;color:rgb(34,34,34);text-transf=
orm:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,=
sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-wei=
ght:400;text-decoration:none;word-spacing:0px;white-space:normal">I was sea=
rching in google for more information but I don&#39;t have any ideas how to=
 fix it and what is wrong.</div><div style=3D"text-align:left;color:rgb(34,=
34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-famil=
y:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-varia=
nt:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space=
:normal"><br></div><div style=3D"text-align:left;color:rgb(34,34,34);text-t=
ransform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helve=
tica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;fon=
t-weight:400;text-decoration:none;word-spacing:0px;white-space:normal">Than=
ks in advance for your help !</div></div></div>

--000000000000e89a19059ca8f52b--


--===============4043783173266267360==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4043783173266267360==--

