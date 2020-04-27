Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAB61BAD44
	for <lists+usrp-users@lfdr.de>; Mon, 27 Apr 2020 20:53:16 +0200 (CEST)
Received: from [::1] (port=44270 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jT8sS-0006q7-4q; Mon, 27 Apr 2020 14:53:12 -0400
Received: from mail-qk1-f169.google.com ([209.85.222.169]:34544)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <qiu.guowang007@gmail.com>)
 id 1jT8sO-0006jb-Bg
 for usrp-users@lists.ettus.com; Mon, 27 Apr 2020 14:53:08 -0400
Received: by mail-qk1-f169.google.com with SMTP id t3so19206945qkg.1
 for <usrp-users@lists.ettus.com>; Mon, 27 Apr 2020 11:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=lLH/REOyxh9Jx70DB9hr9J9F9zqQtSIyuKKd/uioZXE=;
 b=Bvlf3z8am7VpIR6XtJqC1s3yZzrFDHWKobI0lp1iNVqWho4dMpEF3ceKtGtKNvulDB
 7oZFVApi+VxgiAczl3RDbn9Mam2eqDhQJtSngFFmWvx1QCTvo5N6SODws4O9OYziTbop
 hUqz1jMdAz1M1s6WrxHdRFc3Nb+Ha9wYBH8XcobPbhJm+TVvU9jWdpjACNfn+gwZnwNL
 NH1wsGD3CJ+Ud+GpujAJef0/D9oLACXEfvw7cNU/B4QlBA2kAmyy+O/sSd0ldWlE9MvJ
 tEWIYLDKZZmXJBU3sO2mAZaohKxWr952pLpvzSOnxXeahCJayHq/15NRCehVHhA+Riwl
 7aHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=lLH/REOyxh9Jx70DB9hr9J9F9zqQtSIyuKKd/uioZXE=;
 b=ZDabwdichp1dSTg/l34Xlb9Kg77uCnZawtZ2RMOii82tn+HNqVMNhOq9CRDnYaowTh
 8XRI/KdZvK3m1OgKSc4BwEJ6ytfdvN0UR+jrSiM33Lkl41joGAA9OaX2rEYjSs+Si8Ip
 0DPnoiPdvQmPOiEjnjY1+k/k2O9FC8nf9fO7KgGBYH63Lk/CQB7gZCoRmH5FOM3JloKB
 LF5Oll0YGZ+7dWRiITVEwB7kPwuGi9nqphAh52O64TShoEmlIJqVhvJ9soUo+jbrnTYK
 D32TD6E0Qd73UBrnkeWdrOOlcjAVlUKtgouqRUOXHY6flBSGWdyXt+3eexJHEHYE8pVC
 LQtA==
X-Gm-Message-State: AGi0PubHPs3REHy8/eCsWPnuvAaUfwKMDjcH63wd9iElXtVy7qQXXZL8
 W+ZnWNriVPRVm9WlWgVOnVHShZbMpdzsEW18cVLGyfb7Yns=
X-Google-Smtp-Source: APiQypL1SMCZb+43GPN3xONGTm3fXyKU5LGxAChnQi4uLuI02LZDga+8Hf1gTrx9bAdDoHFlnm3x/dDOaUxpyDiy5VQ=
X-Received: by 2002:a05:620a:15e8:: with SMTP id
 p8mr23407919qkm.331.1588013547704; 
 Mon, 27 Apr 2020 11:52:27 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 28 Apr 2020 02:52:16 +0800
Message-ID: <CACjmV_mkuEX=JjGakNemNB0CSxZjWwrSCQvLWjQetXRHLGUs8A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] 10.23Msps Sample Rate
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
From: guowang qiu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: guowang qiu <qiu.guowang007@gmail.com>
Cc: Damon Qiu <qiu.guowang007@gmail.com>
Content-Type: multipart/mixed; boundary="===============4062547004860916217=="
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

--===============4062547004860916217==
Content-Type: multipart/alternative; boundary="00000000000068d64205a44a378c"

--00000000000068d64205a44a378c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

We are trying to get 10.23Msps or 20.46Msps sample rate with X310. Latest
UHD driver enables USRP x310 support 184.32MHz to 200MHz master clock rate.
But it just support some discrete values=EF=BC=8Cunfortunately, it just did=
n't
support 10.23M*18 or 10.23M*19.
We have tried to input an external reference clock of 10.23MHz, and we want
to cheat x310 that the external clock is 10MHz. We set the master clock
rate of the system as 200MHz. If the PLL can lock to the external clock
source, the actual master clock rate is 10.23 =C3=97 20MHz. However, when t=
he
program is running, the UHD driver throws an exception, indicating:
terminate called after throwing an instance of 'uhd::runtime_error'
  what(): RuntimeError: Reference Clock PLL failed to lock to external
source.

Is there any way to obtain 10.23Msps sample rate with X310?

Best regards,
Damon

--00000000000068d64205a44a378c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>We are trying to get 10.23Msps =
or 20.46Msps sample rate with X310. Latest UHD driver enables USRP x310 sup=
port 184.32MHz to 200MHz master clock rate. But it just support some=C2=A0d=
iscrete values=EF=BC=8Cunfortunately, it just didn&#39;t support 10.23M*18 =
or 10.23M*19.</div><div>We have tried to input an external reference clock =
of 10.23MHz, and we want to cheat x310 that the external clock is 10MHz. We=
 set the master clock rate of the system as 200MHz. If the PLL can lock to =
the external clock source, the actual master clock rate is 10.23 =C3=97 20M=
Hz. However, when the program is running, the UHD driver throws an exceptio=
n, indicating:<br>terminate called after throwing an instance of &#39;uhd::=
runtime_error&#39;</div><div>=C2=A0 what(): RuntimeError: Reference Clock P=
LL failed to lock to external source.</div><div><br></div><div>Is there any=
 way to obtain 10.23Msps sample rate with X310?<br><br></div><div>Best rega=
rds,</div><div>Damon</div></div>

--00000000000068d64205a44a378c--


--===============4062547004860916217==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4062547004860916217==--

