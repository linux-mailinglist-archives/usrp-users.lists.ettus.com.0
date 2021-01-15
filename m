Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F102F73B1
	for <lists+usrp-users@lfdr.de>; Fri, 15 Jan 2021 08:28:01 +0100 (CET)
Received: from [::1] (port=42232 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l0JWX-0000rE-BX; Fri, 15 Jan 2021 02:27:57 -0500
Received: from mail-qk1-f177.google.com ([209.85.222.177]:43766)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <hai.n.nguyen204@gmail.com>)
 id 1l0JWT-0000mt-Jn
 for usrp-users@lists.ettus.com; Fri, 15 Jan 2021 02:27:53 -0500
Received: by mail-qk1-f177.google.com with SMTP id 143so10822012qke.10
 for <usrp-users@lists.ettus.com>; Thu, 14 Jan 2021 23:27:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=nSnsaVNjdx6IJoMgT/O7S20hB8DQroI7rtIGA/AXyDg=;
 b=CYtjPCmZ57378fMd1py+CgTKA9j4Y9Zhu2KU2YdpNb/uDsJizJ55bwLs5VQMrmPAX0
 3QxtuXapuq1UOXqPjg3ghojNcN9aUI2fwVDbeVt9aKENrm3fSoM1lz+RYq7G3WL4BOAn
 3K5/wNy38FTnJNLQTZvg+rRyuOL4SKS/rrmhpUOYuiU4VE3/rkDKo2qxBslXXXqrjRtd
 VN8lg+4W1G2ydVhLv9c7IhgVh+oUKwAIlBwMDky1l5tuzEfmLx9Lv2+nHvgzITKr+BZ3
 ttbshekpLrQXSgWujV/UY4N28x07IWdO1WjB/nzbws5QODk+2kRrr1JGhkRI/JTQTD9d
 tMcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=nSnsaVNjdx6IJoMgT/O7S20hB8DQroI7rtIGA/AXyDg=;
 b=pctoNvJzLhr/4zBCEhmXOErIr3NWFi3fq9frl8kQg3QasUsWX5TUj7K7K5IyYLNnzj
 mg0xPgAozwzFkRPAI8L4lS5T2G4738zjfR0cj1DdMkicJKYwI8HvbHor2APylMjNCXw4
 882lSsYHVzFSHm9UjvI6NIBHjFY18RWg1HvhPUemDVxnYc0b5nHurTVtB0RcmnEZ5OcR
 ayxVLktcLolgfgf18l8jGWT12LsUtOgkwNkNBq8cRIB8j3KAQEM7Qkx/GVQfNQ49Hwxl
 HSzCf+y9NKzhpwvzectbONiMEwId99tlFTUpMW3otX9NaO6IiFysrMTejSKVUr1H0tmT
 NViA==
X-Gm-Message-State: AOAM5322Ny0B26NJUHCnRIkCj3JRuCI558Jn+BZytXj/YDlYjgZL7Mf/
 M1PvhXfM0AclevcLWFN5ZMbi2G6fUbiNdaPDSa0J4iqPbXs=
X-Google-Smtp-Source: ABdhPJysWNDN6zEuJa1r7s4JJYOew7hk+WHOTdSLP6gFCC61IRw7OQUQrW+6eINhXl0qM2KNsq9nNxJSVU/uej8qTx8=
X-Received: by 2002:a37:dc5:: with SMTP id 188mr11141535qkn.404.1610695632754; 
 Thu, 14 Jan 2021 23:27:12 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 15 Jan 2021 02:27:01 -0500
Message-ID: <CAFZDN5KC8vM2ir2UHJGxFH=fTTNgM8E0WAYnhNTQFpj9P_3Hhw@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] B210 TX from file of complex samples
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
From: Hai Nguyen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Hai Nguyen <hai.n.nguyen204@gmail.com>
Content-Type: multipart/mixed; boundary="===============3987667708401627788=="
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

--===============3987667708401627788==
Content-Type: multipart/alternative; boundary="000000000000081b6605b8eb4d15"

--000000000000081b6605b8eb4d15
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm trying to transmit complex samples (e.g. BPSK chips) using B210 and
GNUradio. My flowgraph is very simple: A file source connected to a USRP
sink (cpu format fc64), sample rate is 1e6. However the USRP seems not to
transmit anything (no red light, and nothing on the spectrum) and also
there is no error message. I tried with various gain values but still saw
nothing.

I tried the same thing with an X310 and it worked fine. What would be the
cause for the B210 and are there any ways I can make it work?

Thank you,
Hai

--000000000000081b6605b8eb4d15
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#39;m trying to tra=
nsmit complex samples (e.g. BPSK chips) using B210 and GNUradio. My flowgra=
ph is very simple: A file source connected to a USRP sink (cpu format fc64)=
, sample rate is 1e6. However the USRP seems not to transmit anything (no r=
ed light, and nothing on the spectrum) and also there is no error message. =
I tried with various gain values but still saw nothing.</div><div><br></div=
><div>I tried the same thing with an X310 and it worked fine. What would be=
 the cause for the B210 and are there any ways I can make it work?</div><di=
v><br></div><div>Thank you,</div><div>Hai<br></div></div>

--000000000000081b6605b8eb4d15--


--===============3987667708401627788==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3987667708401627788==--

