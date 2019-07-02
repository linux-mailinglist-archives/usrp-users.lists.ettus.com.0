Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA28B5D2F1
	for <lists+usrp-users@lfdr.de>; Tue,  2 Jul 2019 17:33:32 +0200 (CEST)
Received: from [::1] (port=43188 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hiKmd-0001x3-H9; Tue, 02 Jul 2019 11:33:27 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:38216)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <guanjunfeng1019@gmail.com>)
 id 1hiKmZ-0001q0-OM
 for usrp-users@lists.ettus.com; Tue, 02 Jul 2019 11:33:23 -0400
Received: by mail-lj1-f193.google.com with SMTP id r9so17346803ljg.5
 for <usrp-users@lists.ettus.com>; Tue, 02 Jul 2019 08:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=gn65owXnsENi+Xvnz5T0+eUCCpndzLf6M3rmfGkGM7o=;
 b=sxhVcdp/Ti3eC1MIE776iUWY92MyLT35lE7CXB2OKrSGenYKX5qEGOFFyeDETgWdEG
 O+W7FrUAnLS2YIWwbQzwOAHOhaoJSDgyUpZ2ezFBY8Z/R2tc4BOlRp7UGEMCmHelqGQp
 48wnsJHoN9BBp0cWNvZd3yRiJ8hm8SeSBWxxivu3xPIqL2XEsragpDdxaq49ZpDy1rq1
 kSKvsOIPxUKPTDvu973cSFhbZRSm+dIx1HiePfzy1tGYCk4zLoXaJ7Q05dle27QETwxH
 7WX/gRgJu5bZpiWkQZ4SPmaAWkcniOHZAsPzk267o2cuGBCOmOGL3LsqyFAYjdwBqaD1
 O3Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=gn65owXnsENi+Xvnz5T0+eUCCpndzLf6M3rmfGkGM7o=;
 b=agJ7BmnNNebNE2KUWfDxD14N1sJ6YYkjHW6Pkhujm9CPnU0RPT+bMsBe6fl+N5mLNn
 XDttS2qz9a6CdKsWrbB1G4ODTIPCMRCeownxyWzyr5sN82WpcjILi0LvFUabWxxy0/JL
 MhV+a/wG8DlwZGbOExehdZYLr0oxubXNmj19GsVJdNi7yqPKuM1m+WjINbZa87H3TwIv
 QDawwb9+dA1GZiYqrJwhPZ0y2pI2JulK8OzfJe8ICsymU/brhpR0JVCvIW364ejz5RPv
 jUAUXga0nHj9Fh4qxT41QJDnZbBZdK8Xjaj5DAZIeP1cpyfz9pFyae3f23jPuVzSfvf+
 cBvw==
X-Gm-Message-State: APjAAAVoqOUxDiKgsmOtGcD2rCT2j5BYewPtOUDgeaDGR2a/6SHUmT9o
 HPzLuC2wY402LvPpXOwbXMXrGNHnEFL+H/tBX6j0RA==
X-Google-Smtp-Source: APXvYqyzaZaislJcLqCnwGal2+rX+h7Oj66rf3/Z7LpnEcoGuQuof+HV7dUDpuXRYT2EHlRDB0iYSthIUZSpBLOUKb0=
X-Received: by 2002:a05:651c:87:: with SMTP id 7mr5556329ljq.184.1562081561823; 
 Tue, 02 Jul 2019 08:32:41 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 2 Jul 2019 11:32:31 -0400
Message-ID: <CABgcKP8Dt0XwgvmE_S7En36-Cs_SjZRo176YdMd2TO59SqkN2Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] x310 PCIe on Ubuntu desktop
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?b?5YWz6ZKn5LiwIHZpYSBVU1JQLXVzZXJz?= <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?5YWz6ZKn5Liw?= <guanjunfeng1019@gmail.com>
Content-Type: multipart/mixed; boundary="===============4419660356505970414=="
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

--===============4419660356505970414==
Content-Type: multipart/alternative; boundary="0000000000009a4fdf058cb4749b"

--0000000000009a4fdf058cb4749b
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm wondering if anyone has successful experience with PCIe connectivity
with x310 USRP on a Ubuntu desktop via the NI PCIe-8371 card.
I was not able to find x310 with uhd_find_devices, and the "lspci -k -d
1093:c4c4" result does not have kernel driver or kernel module information.
I noticed the ettus website says niusrprio only supports linux kernel
driver 4.2, and I tried Ubuntu 14.04.2 but it did not work as Ubuntu 16 and
18.

However, I did got it to work on a Ubuntu 16 laptop with the NI
ExpressCard-8360 Host Card.

I really appreciate your help and concern. BTW, its my first time post to
this mailing list, please let me know if I did anything wrong.

Best regards,
Jayden

--0000000000009a4fdf058cb4749b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m wondering if anyone has suc=
cessful experience with PCIe connectivity with x310 USRP on a Ubuntu deskto=
p via the NI PCIe-8371 card.</div><div>I was not able to find x310 with uhd=
_find_devices, and the &quot;lspci -k -d 1093:c4c4&quot; result does not ha=
ve kernel driver or kernel module information.</div><div>I noticed the ettu=
s website says niusrprio only supports linux kernel driver 4.2, and I tried=
 Ubuntu 14.04.2 but it did not work as Ubuntu 16 and 18.</div><div><br></di=
v><div>However, I did got it to work on a Ubuntu 16 laptop with the NI Expr=
essCard-8360 Host Card.</div><div><br></div><div>I really appreciate your h=
elp and concern. BTW, its my first time post to this mailing list, please l=
et me know if I did anything wrong.</div><div><br></div><div>Best regards,<=
/div><div>Jayden=C2=A0 =C2=A0=C2=A0</div></div>

--0000000000009a4fdf058cb4749b--


--===============4419660356505970414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4419660356505970414==--

