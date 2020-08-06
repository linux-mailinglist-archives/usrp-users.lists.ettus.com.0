Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7847323E027
	for <lists+usrp-users@lfdr.de>; Thu,  6 Aug 2020 20:09:05 +0200 (CEST)
Received: from [::1] (port=53484 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3kK5-00009L-7v; Thu, 06 Aug 2020 14:09:01 -0400
Received: from mail-ej1-f41.google.com ([209.85.218.41]:34631)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1k3kK1-0008T6-19
 for USRP-users@lists.ettus.com; Thu, 06 Aug 2020 14:08:57 -0400
Received: by mail-ej1-f41.google.com with SMTP id o23so23878295ejr.1
 for <USRP-users@lists.ettus.com>; Thu, 06 Aug 2020 11:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DlGiIDl2ysPaIvygNAJY2rTfMmOWsENyNMWGHDjZ6I4=;
 b=V26O4fE3pJ5zSx6ADTMDuYtAL4otrUpbbM+aka0ixB0iKMDTnzE6Ys1OCqglAZzPRS
 DX5SHyhcAFOT1fEYk/KEvrjsgtuz3ftqJgMPIVIEBHtEhvzvPeJK1GlQAl2S8yJu8CWq
 rTDniHpBcyIbyeyPfb1Kgr/6YSHI4tBFnVIZ4ubpHtKKdTBvr4IlGfaftG7K1Nv+mOrf
 e8mqvOa4c7SiUCVs1RzKSIH99guBpzB6cCLhtkhGyVj/gPM+2yWpKdo5KDoAFQNoW8Rr
 w6gRRClj8GZ/5WM/mQToKmU/vltbHbcxLVauSW3816d1vewzSMxaG6gkIRMvcTo+PhuW
 xUyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DlGiIDl2ysPaIvygNAJY2rTfMmOWsENyNMWGHDjZ6I4=;
 b=jY71V/zsnE2lar7wBIG3Xw1ZoK+Ymk/ab9f4UaRxJZ02VpTuCKuOQP2WMPppuKyvGD
 d9rMvNSBPPbAwK6Lj+yGMNqqI0IaA/gsx706PJtFP17hB+NJTI0h5uDUEVaPmUFrGUGz
 DADYd7IDv+Q7iSWz2lZ3SEGo7QDAQxm7Ao1XFMjznWSMty0pVYtkAL1pb9yxqr1BSL1b
 4rRDo0tJVDsiZAW6W74BQh/f1iIj9K/HEXe4nokVEg1LqxeDN1KfoMD9CpniivtT8S60
 jfo7lCY6bSZIrx9LRzEK+wgnGji6voOSyneFApANP5XgGzr0j4ssveKWfScTCfwt3VfG
 swnA==
X-Gm-Message-State: AOAM5312fi3BUMKr0iCINob71enTLCnWGrWumNStveEblf5RN60Dlqbb
 tPimy6HEgY38JYUf9WzSYUF41JVfqWaB6zl83qo=
X-Google-Smtp-Source: ABdhPJxTgV7PzFCrLsg4gKkbPwdfzrJWobNf2PxKmVdFF9K98bMgRUz3PgEdKeCwfTYSw+d0g0fPSLLnOISNQPe9Cos=
X-Received: by 2002:a17:906:3890:: with SMTP id
 q16mr5423102ejd.107.1596737295972; 
 Thu, 06 Aug 2020 11:08:15 -0700 (PDT)
MIME-Version: 1.0
References: <MW3PR19MB42683E64A27B9B0C0A3D0683C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
 <CA9262F8-E745-4A74-934E-557490486CD4@gmail.com>
 <MW3PR19MB42688D343319432B7156AE09C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
In-Reply-To: <MW3PR19MB42688D343319432B7156AE09C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
Date: Thu, 6 Aug 2020 14:08:03 -0400
Message-ID: <CAEXYVK5y-7cf9Y1uCpU3CpQ8KKuueu3eq28SvtfErvgXu-+X+Q@mail.gmail.com>
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
Subject: Re: [USRP-users] Signal transmission on a USRP X310
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4811431200273782012=="
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

--===============4811431200273782012==
Content-Type: multipart/alternative; boundary="000000000000537c4e05ac395f86"

--000000000000537c4e05ac395f86
Content-Type: text/plain; charset="UTF-8"

On Thu, Aug 6, 2020 at 2:02 PM Jerrid Plymale via USRP-users <
usrp-users@lists.ettus.com> wrote:

> It does, and actually it has a strength closer to -70 dBm, I had my
> markers in the wrong place when I thought the signal was at -100 dBm.
>

If you transmit all 0's with the gain turned all the way down, what
strength do you see coming from the radio on the carrier?

Brian

--000000000000537c4e05ac395f86
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Aug 6, 2020 at 2:02 PM Jerrid Ply=
male via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-5386344111819584029WordSection1">
<p class=3D"MsoNormal">It does, and actually it has a strength closer to -7=
0 dBm, I had my markers in the wrong place when I thought the signal was at=
 -100 dBm.</p></div></div></blockquote><div><br></div><div>If you transmit =
all 0&#39;s with the=C2=A0gain turned all the way down, what strength do yo=
u see coming from the radio on the carrier?</div><div><br></div><div>Brian<=
/div></div></div>

--000000000000537c4e05ac395f86--


--===============4811431200273782012==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4811431200273782012==--

