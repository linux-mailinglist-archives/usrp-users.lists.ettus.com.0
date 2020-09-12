Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3EE267B87
	for <lists+usrp-users@lfdr.de>; Sat, 12 Sep 2020 19:17:10 +0200 (CEST)
Received: from [::1] (port=37486 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kH998-0003jA-L4; Sat, 12 Sep 2020 13:17:06 -0400
Received: from mail-qt1-f175.google.com ([209.85.160.175]:45299)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kH995-0003WS-J1
 for USRP-users@lists.ettus.com; Sat, 12 Sep 2020 13:17:03 -0400
Received: by mail-qt1-f175.google.com with SMTP id z2so10362835qtv.12
 for <USRP-users@lists.ettus.com>; Sat, 12 Sep 2020 10:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=HmL3akbA2whIplSFwHzgCBvbecYj1RTp9lnWaqL8XqI=;
 b=P6GNuI7Lb/7tdlsaKKfFODzNkESCk8XXXwB1/NkWT03RCh9lsi3HINZZc+XXqXHGIk
 8wMGvxeqMWx6bQuCE8YweMTV6il0amlLMjvqFRKsPCfpF+yhOhT9eLN3q11B7bS61nc7
 IVm/gITTPA4ZDOJuvNr+bOHOT64MtxlOPRCcgQXWAzJ64Kh2i9AqTe5r3pugY/ojKmyg
 xF1RqNQE3kshTSbTvvxB7XFpRu5IKdYQOaDfhpFmXhxPVzxOLmHqqYQ6CVg0lz9fXpkF
 qh8ENZya4OGwq3F8kw/6Ani3tLZkYLl+ZbwW2wfZSZTgBLzvNgbaYQtgUX+kkLaP+y09
 lWPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=HmL3akbA2whIplSFwHzgCBvbecYj1RTp9lnWaqL8XqI=;
 b=rJwYWFm0A+hfsS4UqcvJZ+5nUJ0R7dy+7fsIZmqWZCYAeAB6Xy8HrN0i6rkNJFysaq
 k/9lS8yJRCrQVDef4YCdLUNVmCEplP9A2Oqi9YZmB5/AP2PE2nBIJTaqMKNS187kE2ft
 LEgiXepXCC4Vs4fQnCcHgwY0+KEh0YRB4D2n/ZN2E68/D+c0MTi3hduOHdjIIRGt65Cs
 /bURC0VJeQ6Y1l6SxYdw7u43C0qqQ4kfizitiQs814ds/9UBat2O5dTY6IuD8p5Rb/Ax
 PGqLZun/yrG26QACZ2ATHbTBU4xmv7/t4Y6hPmjG/Wx4xJHTrc+asa42xdZzjGNJlpkw
 ZgUg==
X-Gm-Message-State: AOAM531OJG1usRmti/Rkx8HbvTfwPBB8vd05HWUbw5KAnfPa/VVpiElM
 /TGvuZV3HoLhR+qTzw+uz88=
X-Google-Smtp-Source: ABdhPJyg+qF89FfSIX8oLVo9xlk5Kn5P3mdD+ZAMFuZHdlADtwcWM4a2uLx4FlkPMtYMjZclyQQMnw==
X-Received: by 2002:ac8:2628:: with SMTP id u37mr6527053qtu.325.1599930982902; 
 Sat, 12 Sep 2020 10:16:22 -0700 (PDT)
Received: from [192.168.2.29]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.gmail.com with ESMTPSA id r187sm1993366qkc.63.2020.09.12.10.16.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 12 Sep 2020 10:16:22 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sat, 12 Sep 2020 13:16:21 -0400
Message-Id: <300817F0-EA15-4CC7-9A58-62EBEF427C98@gmail.com>
References: <OF4FD4A827.30B9CEDF-ON002585E0.00685374-852585E0.0069447D@notes.na.collabserv.com>
In-Reply-To: <OF4FD4A827.30B9CEDF-ON002585E0.00685374-852585E0.0069447D@notes.na.collabserv.com>
To: Duixian Liu <duixian@us.ibm.com>
X-Mailer: iPhone Mail (17G80)
Subject: Re: [USRP-users] N310 stoped working
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============5008949152464550540=="
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


--===============5008949152464550540==
Content-Type: multipart/alternative; boundary=Apple-Mail-6CC7E96A-2783-4590-ACFE-A6F1718102B5
Content-Transfer-Encoding: 7bit


--Apple-Mail-6CC7E96A-2783-4590-ACFE-A6F1718102B5
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Your Ethernet interface on your host has. I address. I suspect NetworkManage=
r has that I interface configured for DHCP and is taking it out of service a=
fter repeated DHCP transaction failures. But there might be some other reaso=
n. Regardless there=E2=80=99s no IP address on your host interface.=20

Sent from my iPhone

> On Sep 12, 2020, at 8:27 AM, Duixian Liu via USRP-users <usrp-users@lists.=
ettus.com> wrote:
>=20
> =EF=BB=BFHi ,
> After many measurements, N310 stopped working. The ethernet connection is O=
k (at least it indicates connection established). But N310 is not reachable a=
nymore.  I have rebooted the computer and N310 several times and did all the=
 necessary steps to run my programs, the problem is still not resolved. When=
 ping the device, it says "Network is unreachable".
>=20
>=20
>=20
>=20
> Duixian Liu, PhD., Fellow of IEEE
> Master Inventor
> Research Staff Member
> Wireless System Design & Packaging
> IBM Thomas J. Watson Research Center
> 1101 Kitchawan Rd
> Yorktown Heights, NY 10598
> Tel: 914-945-1278
> Fax: 914-945-4219
> Email: duixian@us.ibm.com
>=20
> <IMG_4574.JPG>
> <IMG_4581.JPG>
> <IMG_4583.JPG>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-6CC7E96A-2783-4590-ACFE-A6F1718102B5
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Your Ethernet interface on your host has. I=
 address. I suspect NetworkManager has that I interface configured for DHCP a=
nd is taking it out of service after repeated DHCP transaction failures. But=
 there might be some other reason. Regardless there=E2=80=99s no IP address o=
n your host interface.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</di=
v><div dir=3D"ltr"><br><blockquote type=3D"cite">On Sep 12, 2020, at 8:27 AM=
, Duixian Liu via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><b=
r></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<sp=
an style=3D" font-size:10pt;font-family:sans-serif">Hi ,</span><br><span sty=
le=3D" font-size:10pt;font-family:sans-serif">After many measurements,
N310 stopped working. The ethernet connection is Ok (at least it indicates
connection established). But N310 is not reachable anymore. &nbsp;I have
rebooted the computer and N310 several times and did all the necessary
steps to run my programs, the problem is still not resolved. When ping
the device, it says "Network is unreachable".</span><br><br><br><span style=3D=
" font-size:10pt;font-family:sans-serif"><br><br>Duixian Liu, PhD., Fellow o=
f IEEE<br>Master Inventor<br>Research Staff Member<br>Wireless System Design=
 &amp; Packaging<br>IBM Thomas J. Watson Research Center<br>1101 Kitchawan R=
d<br>Yorktown Heights, NY 10598<br>Tel: 914-945-1278<br>Fax: 914-945-4219<br=
>Email: duixian@us.ibm.com</span><p style=3D"margin-top:0px;margin-Bottom:0p=
x"></p><br>
<div>&lt;IMG_4574.JPG&gt;</div><div>&lt;IMG_4581.JPG&gt;</div><div>&lt;IMG_4=
583.JPG&gt;</div><span>_______________________________________________</span=
><br><span>USRP-users mailing list</span><br><span>USRP-users@lists.ettus.co=
m</span><br><span>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.e=
ttus.com</span><br></div></blockquote></body></html>=

--Apple-Mail-6CC7E96A-2783-4590-ACFE-A6F1718102B5--


--===============5008949152464550540==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5008949152464550540==--

