Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C941143A74
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2020 11:07:21 +0100 (CET)
Received: from [::1] (port=36708 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1itqRJ-0007u8-4m; Tue, 21 Jan 2020 05:07:17 -0500
Received: from mail-lf1-f53.google.com ([209.85.167.53]:42632)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <arash.jafari.telecom@gmail.com>)
 id 1itqRE-0007qF-VS
 for usrp-users@lists.ettus.com; Tue, 21 Jan 2020 05:07:13 -0500
Received: by mail-lf1-f53.google.com with SMTP id y19so1758465lfl.9
 for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2020 02:06:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=IjVzENwRBrsh1zvR/U5zFAMu/PGxSQaTZmW2aaOSJjw=;
 b=XC7jUVE771M7jcC/kEBpTNBT/sYYAreoQmdEyKIOY3nbrRz15jlhEi7lF05oCgi/ZX
 7WDs2HltzwHzAmewmbAjFue0l+FrRr0AvyV9kt6vKep/fXOODP7kykKMsXJwnnOzwIgv
 I5zo4SlE6SaMFuw/c/Ovm2ObBC0s2XjI7dHF14B9qGWvYdSHeDJfmVcx+HWH3zglgbsW
 5ifsnaL3GVK2L34Vqi7NvjeEusObL60QCrzrS1WfOPIcUZ+d9Y/qEVfgINk5HS9uK9ab
 jfySi1kPe33X/n6fJOH+ug4kxkD8Bi9ylY0Z7x+ijkgszhHlVTeJSgfIxsn791dMPCvx
 yI4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=IjVzENwRBrsh1zvR/U5zFAMu/PGxSQaTZmW2aaOSJjw=;
 b=QRCTklzPDP8/kBPwFg3vXMMAaVBSoi9faZp4xkPhflKXYQirgY3TOrw/EekkaJfdXn
 Q3t1fQBjNM+RLWYhP2R5zWUeCb8zjOTS4capQH+jX9E3araBeeylo4B3IWS/6lMER2yM
 w6Ngl3v3Ep2nyfHzYhtlI7qjDTFGJwLycuRpuRnT46NE0LW8G9C4XR709lw0jwuEgaA+
 1aAyN+IzHoZnBL5HlEXT4y3lKF7zzRo6ijSSloGqCdcvHdvMFNxnwXeWCWD3ONjc6lcF
 0Hzv1XD2UBGKs+7cMiXJddjbBePUXuPbOC4fKi4wUdbUE4EAi1T6nohzL9KI0jaMTkxW
 B1iQ==
X-Gm-Message-State: APjAAAUrg6i5us9hVggbZDkOqWsxxhZlOQgfgW5AlROKq/2fQlx6aKyw
 Z5Xl22uKmRN6y0WwbuXA94dXvEAhl26+9PGGQ4qXiC7U
X-Google-Smtp-Source: APXvYqziz/k6nDi9sii+a59w67rsSbp+ohZREg/yRoPKyX9TM35F59onmxRzDhpeEq0eCJvSvZQN04GQAaWbsOalX8Y=
X-Received: by 2002:a19:f10e:: with SMTP id p14mr2242361lfh.3.1579601191440;
 Tue, 21 Jan 2020 02:06:31 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 21 Jan 2020 11:06:04 +0100
Message-ID: <CANzM3hyO-Gf3hOnBes9avnOoXxL5epFaW5tqsWrLafssBTqEmQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] 12 bits I/Q samples
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
From: Arash Jafari via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Arash Jafari <arash.jafari.telecom@gmail.com>
Content-Type: multipart/mixed; boundary="===============4962685436927621047=="
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

--===============4962685436927621047==
Content-Type: multipart/alternative; boundary="000000000000e7166f059ca38fca"

--000000000000e7166f059ca38fca
Content-Type: text/plain; charset="UTF-8"

Hello Everybody,

according to FPGA implementation of my board which a USRP-b200, the Least
significant 4bits of I or Q samples are always 0 (0x???0), which in turn
means the recorded sample as short complex 16 bits (sc16) cpu format should
have four zero at LSB.
But almost 10% of recorded samples do not obey this rule!!!!
Any comment is highly appreciated!

Kind regards,

-- 

Dipl.-Ing. Arash Jafari

Phone: +43 650 844 3617
E-mail: arash.jafari.telecom@gmail.com

--000000000000e7166f059ca38fca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Everybody,<div><br></div><div>according to FPGA impl=
ementation of my board which a USRP-b200, the Least significant 4bits of I =
or Q samples are always 0 (0x???0), which in turn means the recorded sample=
 as short complex 16 bits (sc16) cpu format should have four zero at LSB.=
=C2=A0</div><div>But almost 10% of recorded samples do not obey this rule!!=
!!</div><div>Any comment is highly appreciated!</div><div><br></div><div>Ki=
nd regards,</div><div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D=
"ltr"><div dir=3D"ltr"><b style=3D"font-family:arial,sans-serif;font-size:1=
6px">=C2=A0</b><font face=3D"monospace, monospace" color=3D"#000000" size=
=3D"2">=C2=A0=C2=A0</font><div><font face=3D"monospace, monospace" color=3D=
"#000000" size=3D"2">Dipl.-Ing. Arash Jafari</font></div><div><font color=
=3D"#000000"><br></font></div><font color=3D"#000000" size=3D"2"><span styl=
e=3D"font-family:monospace">Phone: +43 650 844 3617</span><br clear=3D"none=
" style=3D"font-family:monospace"></font><div><span style=3D"font-family:mo=
nospace"><font color=3D"#000000" size=3D"2">E-mail: <a href=3D"mailto:arash=
.jafari.telecom@gmail.com" target=3D"_blank">arash.jafari.telecom@gmail.com=
</a></font></span></div></div></div></div></div></div></div>

--000000000000e7166f059ca38fca--


--===============4962685436927621047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4962685436927621047==--

