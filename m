Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0C590986
	for <lists+usrp-users@lfdr.de>; Fri, 16 Aug 2019 22:39:34 +0200 (CEST)
Received: from [::1] (port=42270 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hyj0T-0008QY-Kz; Fri, 16 Aug 2019 16:39:29 -0400
Received: from mail-pl1-f175.google.com ([209.85.214.175]:33964)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <hernandezkevinbhs@gmail.com>)
 id 1hyj0Q-0008LZ-08
 for usrp-users@lists.ettus.com; Fri, 16 Aug 2019 16:39:26 -0400
Received: by mail-pl1-f175.google.com with SMTP id d3so1039903plr.1
 for <usrp-users@lists.ettus.com>; Fri, 16 Aug 2019 13:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=jN8AehMMpIDebQhHzWol926hd1N1Eld6Cs/PhbO0u6c=;
 b=KV5PLZEMyw0enIpATyZsrHmYbSggRm09E0uxoCrhGlmqTa3H2d6YfXPZn3WR3/fxk2
 XE4LSMX1lM5+V/68S9MwUERC+DE2qZVtBj0gHnHbLoqe2kEWp+Uf5KsKXzc4NePKSEp4
 sMTOT3Bfe3LG1Aa0ME4OayLnfq2KI/ul8rc/ghk7/mDe2urSRmUUX0XEsCgtbCYqyBSw
 Bo00BcmPbK3ZeJCGBlg8mo/FB/9i5bQIL+hwvPbQ5EfFnTnA/dbdLmjeV6Mln5TVBoYI
 z/1fSxDBBKRqKyoIsgm5emuIKwX2iCDSUD+G04WcIZVsUAhiC/ngJai2FlRYNVs7VzN5
 GoYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=jN8AehMMpIDebQhHzWol926hd1N1Eld6Cs/PhbO0u6c=;
 b=LJ4cIhtfacuQDFoO99tVnUI/X57rtKkVbWHGtYrdgvNhgxDsUAHLyxBLHpcmwadqfd
 t6NtKPtF+XlZ5zWkopBl1CNr6ytXUwPBgVv4jXb3DIC8ykfHSPb5kCkamxeMAMwiVCXV
 nxXAm4rvOlOc96S4XoDdZpr/BCZ+cjlB/zIOshUHyhkuqSTuzUxzteGTUqE5Joc6F44y
 i/j1s22RecTY6ddWCaGkUt94nL0oc4hdRPDMrOqlUAaZrGXfKRFYxpyrdkXfc1BBj/oI
 Jg045t0jKNFQZi/srhwRKDgvF4B4nZRdYqZIuN8lPS0Fx/zun6KtFtLl0xFBc5Jn8RM2
 xlDw==
X-Gm-Message-State: APjAAAWlHhyvOJF7FqzGzXUgF3NL/RywyJFlqf+4Lgj24dUyI8V5EGxT
 elLkVSy4aTdD+Pw7RSp+9jLVpgZWKaj2Z5lpL3SwpdJK
X-Google-Smtp-Source: APXvYqwT2mtPButI7w23FvacNPAL2Iz1NjPEbXuJk2keUnbKjw5NuQGjZRqg7x8VtMb4SIXuYeUiuS3i1h0bBSEg1b4=
X-Received: by 2002:a17:902:be03:: with SMTP id
 r3mr11265993pls.156.1565987924736; 
 Fri, 16 Aug 2019 13:38:44 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 16 Aug 2019 13:38:30 -0700
Message-ID: <CAC=seqwUvqr_psTTg0NyDK0oF7UrLAhBMkSX4ToExAOP4hdawg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] UHD Python API on windows
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
From: Kevin Hernandez via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Kevin Hernandez <hernandezkevinbhs@gmail.com>
Content-Type: multipart/mixed; boundary="===============5643666199664473243=="
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

--===============5643666199664473243==
Content-Type: multipart/alternative; boundary="000000000000fa01ca059041f98f"

--000000000000fa01ca059041f98f
Content-Type: text/plain; charset="UTF-8"

Hello,

Looking at the manual, I have downloaded the windows binary install
packages for the UHD. From here I am not too sure what to do. I tried using
CMake GUI but I get an error that the files do not contain CMake lists.
From here I am not too sure what I am doing wrong.

Thank you

--000000000000fa01ca059041f98f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>Looking at the manual, I have do=
wnloaded the windows binary install packages for the UHD. From here I am no=
t too sure what to do. I tried using CMake GUI but I get an error that the =
files do not contain CMake lists. From here I am not too sure what I am doi=
ng wrong.=C2=A0</div><div><br></div><div>Thank you</div></div>

--000000000000fa01ca059041f98f--


--===============5643666199664473243==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5643666199664473243==--

