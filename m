Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9FC160F78
	for <lists+usrp-users@lfdr.de>; Mon, 17 Feb 2020 11:03:37 +0100 (CET)
Received: from [::1] (port=40604 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j3dFU-00013X-Hu; Mon, 17 Feb 2020 05:03:32 -0500
Received: from mail-oi1-f170.google.com ([209.85.167.170]:35593)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <varban.metodiev@gmail.com>)
 id 1j3dFQ-0000yu-TD
 for usrp-users@lists.ettus.com; Mon, 17 Feb 2020 05:03:28 -0500
Received: by mail-oi1-f170.google.com with SMTP id b18so16169761oie.2
 for <usrp-users@lists.ettus.com>; Mon, 17 Feb 2020 02:03:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=93sgq9u4pKjZ8HHR07PW4TdvpbmHobBun12nvAhPUwE=;
 b=fezWfoa21uLMrCHQlwd9wpbbAWoB3JGu9bE95lVTbFFZ0WU3HbZVYTmTZv+pp8lN30
 e13n1v+JQbLxRaXCzsebHsFTL6fFBClQHxr/nv6AuTNg+a2FLc+sKOXCCJXglEoQAE/G
 THZ5sNYE4AplcIeShiO/cjBeZGpVK+hOLmkMsPJIFzkWgx6UwMG/XKJD4rwgV0kzHy+c
 GsdFn4P8ZCYZifqFmybXuVhckZUEz1jF3alhTKndLBEouFdeyvMIyd3VxNhwVSIFVsfy
 wkPQt8eerwZMLzwK1GMp7ie+2ZG0QQZHVsTtTR7EDR/rLEuQnEQfZaKQTutFZ4V9eHne
 CmeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=93sgq9u4pKjZ8HHR07PW4TdvpbmHobBun12nvAhPUwE=;
 b=KASJfXLGP1FXfgnN7YbF8u3lMNih7XjCjL0uxwYeH7GF0N5kbFHIl2U0aO7OaiTMJq
 6fx1GCx1zhPLjNWe8bDTDyxCExhsDd4ElZLyoh122ZPt6rquLUB+xa2Gl09Tq035dOoI
 yDNRPeiBkcAbV+pci/XqzhA7G7CJXXJuFTfd+orjcRGIEEhKhGi+XWvfsvaIDgSTQJhs
 BN2DamlDOcFF6iSWWlEfxmmvWgwf/AqlVo91/WtqBmyNcQ6koa6Q7jgRfsembBf1mXLQ
 FCuCtJGZd0hEi+HJvryjEfC9jfTaivh5KCdA8guPSJC8VQnDnB4vJdQnqACkZOAlDBLU
 nxwg==
X-Gm-Message-State: APjAAAUAp0OzedWHSlqDSeqq6c0FMguUyDW1yAVKUSL1nzu1UGlNJtfO
 ECNU5wNQuDwsm2nNEOWrA5AFU3iYaRbKUhh1wocQ0KFjJFc=
X-Google-Smtp-Source: APXvYqweHN5hP54/zrIgVqxMougrK7pqrS8qwPPHJBPt7OkpCaC7XrVH+jfrq43jc3+qdQOIwxHwYHhUxnpEzsmQCSU=
X-Received: by 2002:a54:4e96:: with SMTP id c22mr9921545oiy.110.1581933767803; 
 Mon, 17 Feb 2020 02:02:47 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 17 Feb 2020 12:01:36 +0200
Message-ID: <CAKA0MUgBBu3m5cbL4J_Amy-97TNE=GBGThLPK35OARkV5mZxEg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Polling the "sample_rx" via a user defined register
 (B205mini)
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
From: Varban Metodiev via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Varban Metodiev <varban.metodiev@gmail.com>
Content-Type: multipart/mixed; boundary="===============1087135098407716490=="
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

--===============1087135098407716490==
Content-Type: multipart/alternative; boundary="00000000000049c747059ec2a8df"

--00000000000049c747059ec2a8df
Content-Type: text/plain; charset="UTF-8"

Dear all,

After exposing the *sample_rx* from radio_legacy.v
<https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/radio_200/radio_legacy.v>
to
a user defined register and sampling it at rising edge of the *strobe_rx*,
I am now getting random 32-bit values when polling it from the UHD (instead
of a constant that indicates a "zero" reception). I am doing this with
disconnected antenna using a modified rx_samples C++ example application.

I have the following questions:
1) How should I interpret the 32-variable?
2) Is the strobe_rx the correct signal that indicates new sample arrival?
2) Do I need new_rx_control?

Have I done this correctly in general, or there is something completely
wrong in my approach?

Thanks,
Varban

--00000000000049c747059ec2a8df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear all,<div><br></div><div>After exposing the <b><i>samp=
le_rx</i></b> from=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blo=
b/master/fpga/usrp3/lib/radio_200/radio_legacy.v">radio_legacy.v</a>=C2=A0t=
o a user defined register and sampling it at rising edge of the <span style=
=3D"color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;Liberatio=
n Mono&quot;,Menlo,monospace;font-size:12px;white-space:pre"><i style=3D"fo=
nt-weight:bold">strobe_rx</i>, I am now getting random 32-bit values when p=
olling it from the UHD (instead of a constant that indicates a &quot;zero&q=
uot; reception). I am doing this with disconnected antenna using a modified=
 rx_samples C++ example application. </span></div><div><font color=3D"#2429=
2e" face=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo, monospace"><s=
pan style=3D"font-size:12px;white-space:pre"><br></span></font></div><div><=
font color=3D"#24292e" face=3D"SFMono-Regular, Consolas, Liberation Mono, M=
enlo, monospace"><span style=3D"font-size:12px;white-space:pre">I have the =
following questions:</span></font></div><div><font color=3D"#24292e" face=
=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo, monospace"><span styl=
e=3D"font-size:12px;white-space:pre">1) How should I interpret the 32-varia=
ble?</span></font></div><div><font color=3D"#24292e" face=3D"SFMono-Regular=
, Consolas, Liberation Mono, Menlo, monospace"><span style=3D"font-size:12p=
x;white-space:pre">2) Is the strobe_rx the correct signal that indicates ne=
w sample arrival?</span></font></div><div><div><font color=3D"#24292e" face=
=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo, monospace"><span styl=
e=3D"font-size:12px;white-space:pre">2) Do I need </span></font><span style=
=3D"color:rgb(34,134,58);font-family:SFMono-Regular,Consolas,&quot;Liberati=
on Mono&quot;,Menlo,monospace;font-size:12px;white-space:pre">new_rx_contro=
l</span><span style=3D"font-size:12px;white-space:pre;color:rgb(36,41,46);f=
ont-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monosp=
ace">?</span></div><div></div></div><div><br></div><div>Have I done=C2=A0th=
is correctly in general, or there is something completely wrong in my appro=
ach?=C2=A0</div><div><br></div><div>Thanks,</div><div>Varban</div></div>

--00000000000049c747059ec2a8df--


--===============1087135098407716490==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1087135098407716490==--

