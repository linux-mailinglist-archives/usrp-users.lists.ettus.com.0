Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E448E42444
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jun 2019 13:44:35 +0200 (CEST)
Received: from [::1] (port=39824 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hb1g6-0007Ge-Ei; Wed, 12 Jun 2019 07:44:30 -0400
Received: from mail-it1-f174.google.com ([209.85.166.174]:53613)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ssibio2@gmail.com>) id 1hb1g2-0007CI-Vf
 for usrp-users@lists.ettus.com; Wed, 12 Jun 2019 07:44:27 -0400
Received: by mail-it1-f174.google.com with SMTP id m187so10191592ite.3
 for <usrp-users@lists.ettus.com>; Wed, 12 Jun 2019 04:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=a7bCFfm2NrIjXD8EtnPxrN5ujNzqfStKPrMv6Sf6lYc=;
 b=tTnldk+zNRV8gJ46fN+fUM7SP/RsNhBwM1K0WdOr6qbBeVkyqALA+JBT1PXpmzk0Bb
 Ln+wvn5oYuJxcI6UDRiRmOQqvq6hSyL6mgp5XMlskmowYc3V1fZTYL3zToz5biNpYr2L
 x05xloFiBlCYvVerzGMKT6JVMLzk7Ni1tpj5Wr8DIPf1ZpUqz6yRQt4DM/yTNm+mkuO6
 fvqIP7Fxy/tuqiAz8RChdtGeXioL9HTuo1JXvxpUAOjbvE0UsEDhP9DI7Xb6oCCXke0z
 N9/qBfJzsZltSmrxkyNc1KdrnffR66Zvdvvf/II6NwtiE7GaB80GllFycXGBy+q5RP3T
 lMGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=a7bCFfm2NrIjXD8EtnPxrN5ujNzqfStKPrMv6Sf6lYc=;
 b=L5grEgwS67LsRf/KnaP8RkgsLMcDlv5TVEqTMqctuylk8pivvJKS/qBLR1YJSWYiZ3
 0InxKpiX+5h/WIzCfKkbobnHLXx9EYpfKpyxiGYIXUg8Tmas848UhZBIz4VydUsMeDee
 6Z+hoorvDRqBGwF9otr4Y7xCVjntER4gUr+fzCxlc3v4NPfi3UwEA0t85fWBpQdMy02a
 h96h4xA3dPI/RNo/sSBEJ+78danM8nibUah2/VYpo5Lwxeajzc0Mq2fp9PwlUmPlvExl
 UZFdCYYsUgVXZtHmgrX6JsTLTqPWwUBdjdXmXMOWOdhdD9kf0hIrBuZFcEmaNTAvRPcs
 RDuw==
X-Gm-Message-State: APjAAAXJ8WOstXp/LHTMWbm4BOmIUKY6oF8X0Lno1e7PKCWMYT62hrhn
 /hpS7kImSN0iZ07cR6OVfhfXdiSlrVxxn4dWDBaEEvkr
X-Google-Smtp-Source: APXvYqzDwZffasc8/rKA+XWwUtNfwERYAKyblLfTJjHmiYlML7JdlHedEuhTDloVdz6OdiQUovAu5T4vIOOzwVSNGwo=
X-Received: by 2002:a24:3a50:: with SMTP id m77mr22604929itm.110.1560339826106; 
 Wed, 12 Jun 2019 04:43:46 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 12 Jun 2019 12:43:04 +0200
Message-ID: <CALSxwQEFudQbJff7uSEM84ex-s+kLNkGztsd+UDoW=8Q5+EBxA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] converting an X310 into an NI-USRP RIO
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
From: Simona Sibio via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Simona Sibio <ssibio2@gmail.com>
Content-Type: multipart/mixed; boundary="===============7383731671065214036=="
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

--===============7383731671065214036==
Content-Type: multipart/alternative; boundary="0000000000001062bd058b1eedb3"

--0000000000001062bd058b1eedb3
Content-Type: text/plain; charset="UTF-8"

Dear Sir/Madam,

My name is Simona and I am trying to convert my x-310 usrp to an NI-usrp
rio to be able to use it with Labview. In order to do that, I am following
the documentation which can be found in:

https://kb.ettus.com/Converting_an_X310_into_an_NI-USRP_Rio

But I have found the following problem:
Error-1074100607 ocurred at getDeviceInfoFromScs.vi. Device enumeration
error. Either no devices were found or more than one device was found with
the resource name you entered. Verify that the resource name matches the
device name is MAX.

I have checked that the device does not appear in MAX, NI people has
suggested to contact USRP people, they do not know about the problem and I
have updated already the FPGA image by using the NI-USRP configuration
utilities.

Please, I would be really glad if you could help me solve this problem.

Thank you so much in advance!

Best regards,

Simona

--0000000000001062bd058b1eedb3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Dear Sir/Madam,</div><div><br></div>=
<div>My name is Simona and I am trying to convert my x-310 usrp to an NI-us=
rp rio to be able to use it with Labview. In order to do that, I am followi=
ng the documentation which can be found in:</div><div><br></div><div><a hre=
f=3D"https://kb.ettus.com/Converting_an_X310_into_an_NI-USRP_Rio">https://k=
b.ettus.com/Converting_an_X310_into_an_NI-USRP_Rio</a><br></div><div><br></=
div><div>But I have found the following problem:</div><div>Error-1074100607=
 ocurred at getDeviceInfoFromScs.vi. Device enumeration error. Either no de=
vices were found or more than one device was found with the resource name y=
ou entered. Verify that the resource name matches the device name is MAX.</=
div><div><br></div><div>I have checked that the device does not appear in M=
AX, NI people has suggested to contact USRP people, they do not know about =
the problem and I have updated already the FPGA image by using the NI-USRP =
configuration utilities.</div><div><br></div><div>Please, I would be really=
 glad if you could help me solve this problem.</div><div><br></div><div>Tha=
nk you so much in advance!</div><div><br></div><div>Best regards,</div><div=
><br></div><div>Simona</div></div></div>

--0000000000001062bd058b1eedb3--


--===============7383731671065214036==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7383731671065214036==--

