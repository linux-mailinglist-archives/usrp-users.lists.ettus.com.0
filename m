Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 930FB8BBE8
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2019 16:47:07 +0200 (CEST)
Received: from [::1] (port=58882 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxY4n-0004L3-Ey; Tue, 13 Aug 2019 10:47:05 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:42348)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <emil.bjelski@gmail.com>)
 id 1hxY4k-0004Fx-Bf
 for usrp-users@lists.ettus.com; Tue, 13 Aug 2019 10:47:02 -0400
Received: by mail-ot1-f48.google.com with SMTP id j7so28647545ota.9
 for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2019 07:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=bmfnl8SRwmbyVP+Uwq+M3OJHZNAanu7xgVB+K5KBdZ4=;
 b=htVhQY91q+p3fg/Y5pxLPbL2FBgtoN17qpS9yuBOyLxFUhZJxgiTozOlxLeQNPLdrH
 M2CojbvawAXh0R2m1zp40p1qpdJXW2Y1P8yweGVWxZ3Ik1FDePg6LDlznwQkmxMmsjoY
 fzy9N9u1DSmg8ZxRBAMeecJ1R5XQ2hqMBOolqebdd3F5+mDj3XCCetH60p/oankikDX9
 ppk6vWvAX1zk6eMCtcNbSX1DwZuwx7OvVX/E8GUHfRdqGtd1u+KOYrVCqZEzU6w2nAiX
 RxstlsG1+QJ9+yh/R77dXic7fgHphVJ9TbHezDSvc8pcKFcg1vygjW6m0DJcb9CGizyq
 iWNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=bmfnl8SRwmbyVP+Uwq+M3OJHZNAanu7xgVB+K5KBdZ4=;
 b=N36WucHfqKOPqGGOd6tEP50f8VLsScTzBy13/dGMSbBFY/lnMLVrHCnjI56Ngzu76b
 2LWtMOzFazknyCRW8fk8z27dvI5OnSm9uM2nZgG2tC7gM/gVYLjK3tYvSLVtRbRbOlMa
 aGoa1NeaTiM0tdwtJ3zsZ2pqt27JBR3z92lSKpN4oafCCRYuwg2hibPLA1VT1BwoUv//
 RONQb+qQoxr54KQz2bYQt0ZFvirbIB97QHgb4bUjTyLdijpa50yI84DAPE4vV2mXT/a5
 TDgjc6cppd2L3I/QJBmxImO+7QblEGnzFZoWj36yX083P5DOXsVfTgArllyxTloMtiVC
 gZHA==
X-Gm-Message-State: APjAAAXEuDRpN9x/sbuIVF8wB+6DngI/FKR3MnuDQapFCCAUrZ1i5M+c
 /i4+M/ipdtv0UXBN9WqWxk8Mjl+hbCshVcnkIafoNBYI2Cc=
X-Google-Smtp-Source: APXvYqyH3U8np/fgVDFBIOJwYSKJYuJyvoEcwJ0PI2mn8z+tpSWH+IAKZiFUsup1ASrBc1obdJ2z09WOe4amOyc40M4=
X-Received: by 2002:aca:4d85:: with SMTP id a127mr1672138oib.3.1565707581258; 
 Tue, 13 Aug 2019 07:46:21 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 13 Aug 2019 16:46:09 +0200
Message-ID: <CADrptxUKJk6Em7Mk8R-tD_N9taR=ZyVAXbutKcNGNBsnjDi9NQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Compiling UHD examples errors
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
From: Emil Bjelski via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Emil Bjelski <emil.bjelski@gmail.com>
Content-Type: multipart/mixed; boundary="===============9155420965652765051=="
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

--===============9155420965652765051==
Content-Type: multipart/alternative; boundary="00000000000033fe7c059000b4d2"

--00000000000033fe7c059000b4d2
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I trying to compile UHD examples following tutorial provided here:
https://kb.ettus.com/Getting_Started_with_UHD_and_C%2B%2B

However, I am facing issue when runining:
cmake ../

I get this error:
CMake Error at CMakeLists.txt:52 (UHD_INSTALL):
  Unknown CMake command "UHD_INSTALL".

-- Configuring incomplete, errors occurred!


I am sure that uhd is installed as I am able to execute command
uhd_find devices.

What could be the issue?

Thanks,

Emil

--00000000000033fe7c059000b4d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello everyone, <br></div><div><br></div><div>I tryin=
g to compile UHD examples following tutorial provided here:</div><div><a hr=
ef=3D"https://kb.ettus.com/Getting_Started_with_UHD_and_C%2B%2B">https://kb=
.ettus.com/Getting_Started_with_UHD_and_C%2B%2B</a></div><div><br></div><di=
v>However, I am facing issue when runining:</div><div>cmake ../</div><div><=
br></div><div>I get this error:</div><div>CMake Error at CMakeLists.txt:52 =
(UHD_INSTALL):<br>=C2=A0 Unknown CMake command &quot;UHD_INSTALL&quot;.<br>=
<br>-- Configuring incomplete, errors occurred!</div><div><br></div><div><b=
r></div><div>I am sure that uhd is installed as I am able to execute comman=
d<br></div><div>uhd_find devices.</div><div><br></div><div>What could be th=
e issue?</div><div><br></div><div>Thanks,</div><div><br></div><div>Emil<br>=
</div></div>

--00000000000033fe7c059000b4d2--


--===============9155420965652765051==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9155420965652765051==--

