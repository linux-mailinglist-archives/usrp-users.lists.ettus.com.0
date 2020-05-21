Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6213C1DD713
	for <lists+usrp-users@lfdr.de>; Thu, 21 May 2020 21:20:17 +0200 (CEST)
Received: from [::1] (port=53818 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jbqjo-0007dS-GG; Thu, 21 May 2020 15:20:16 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:41432)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jbqjk-0007Mx-FB
 for usrp-users@lists.ettus.com; Thu, 21 May 2020 15:20:12 -0400
Received: by mail-ot1-f48.google.com with SMTP id 63so6399579oto.8
 for <usrp-users@lists.ettus.com>; Thu, 21 May 2020 12:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=V6vJKODdOkQ+457IRxFpzzdwR0l1J3V0BkdmzMXs3+Y=;
 b=RT0bapak2jw+I9YZISnppJtX1N4nN0vCYMk6bYqg0HE3M/iMMK91C6ExGLda9qmByT
 9NViNdct51KMjiGD55UFuoxC8KypR4a6BFQtaQ0arHbutC8EDnY4+E6VFSxSzspVpdRN
 2hPv0+IWJELN5/W6k0OOHAg/RYdTHvJHiF45x5b0JKUAoR2CyofKZB4GDLlQ7nXh4fJC
 r17ZPw9TVIreAzLm27oGZXQIZXXSTdglJNaqdBne6jlEZJVQFpZH8svnVmlRhFE4DloB
 7HhfY8i/nJdCbYwkSShUhfn7/PIcldCA9l/Zv13iXXnu7jSoWCYoF1UVcCj+m0xmtKGW
 0eug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=V6vJKODdOkQ+457IRxFpzzdwR0l1J3V0BkdmzMXs3+Y=;
 b=Yf8Zzak1KhHH8I/mJhRw+POVs1akH0mXOOk3EQu2kIPg5dKZEm0gnN9pUgoMu8HgSX
 7bMv8nGF5pib3VGrt8OZDoQ2NtsNzlLVWcmxz/PCZe5EW5hJ4sFJYfCdl8hm+qlFObuv
 0ZWjWYyyObTTW6F0i33WxJyAA1T9DA220+9UhWlyAwL45ZZ2LYqhH7RbQK90BAGpF2Io
 u+zaiJZIP5qIj/nvOUzrUmvJicMSdVhe5FaapdKYdW+KERNoqNCheqj+EYvkw9FfPXVc
 3cSuy4Po0LKuXuLQPjdxKVcsV6J4mIY85H+i0ZLuW/baH0lS356PmkQwcMQG6I0N3iZy
 k2tw==
X-Gm-Message-State: AOAM530NVaLt46qCJq9B2+4BydiUY5WkVoa8z4WYCECINGhJUY8uMt4s
 UPifn6cfg0Lh2MMPf6/oaNOdcrcOqmcdpEDhznlOhdbJ
X-Google-Smtp-Source: ABdhPJzVPFwrHv2V5HVca+Or5ayKhY7GIzfqmDltXSers3E5gXbBJvDGCdpCQuIZXsr58VKx8afHIVEo4niJmm2hXao=
X-Received: by 2002:a9d:6196:: with SMTP id g22mr8213067otk.58.1590088771553; 
 Thu, 21 May 2020 12:19:31 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 21 May 2020 15:19:20 -0400
Message-ID: <CAB__hTQ=V0dNfQTPMXxh4HjGpGg754Ahg6EWstRuT2GcGDt6Zw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] creating an rfnoc block on master branch
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============0922562677871465121=="
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

--===============0922562677871465121==
Content-Type: multipart/alternative; boundary="00000000000063f6c905a62d64b9"

--00000000000063f6c905a62d64b9
Content-Type: text/plain; charset="UTF-8"

Hi,
How do I create an rfnoc block using master branch?  I am familiar with
using rfnoc_mod_tool with UHD 3.15 and earlier.  My understanding was that
things are different with master (and uhd 4.0) such that a different tool
would be used and that this new tool would be part of UHD rather than part
of a gnuradio installation.  But, I don't see any such tool in my uhd
master checkout.
Rob

--00000000000063f6c905a62d64b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>How do I create an rfnoc block using master branch=
?=C2=A0 I am familiar with using rfnoc_mod_tool with UHD 3.15 and earlier.=
=C2=A0 My understanding was that things are different with master (and uhd =
4.0) such that a different tool would be used and that this new tool would =
be part of UHD rather than part of a gnuradio installation.=C2=A0 But, I do=
n&#39;t see any such tool in my uhd master checkout.</div><div>Rob</div></d=
iv>

--00000000000063f6c905a62d64b9--


--===============0922562677871465121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0922562677871465121==--

