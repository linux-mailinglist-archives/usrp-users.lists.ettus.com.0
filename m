Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2316518061C
	for <lists+usrp-users@lfdr.de>; Tue, 10 Mar 2020 19:21:47 +0100 (CET)
Received: from [::1] (port=42376 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jBjVf-0007KZ-86; Tue, 10 Mar 2020 14:21:43 -0400
Received: from mail-wr1-f53.google.com ([209.85.221.53]:36616)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jayant17154@iiitd.ac.in>)
 id 1jBjVa-0007EC-SP
 for usrp-users@lists.ettus.com; Tue, 10 Mar 2020 14:21:38 -0400
Received: by mail-wr1-f53.google.com with SMTP id s5so13245540wrg.3
 for <usrp-users@lists.ettus.com>; Tue, 10 Mar 2020 11:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iiitd.ac.in; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=KCjm86zCbkFbpb29hHWwZqpTadh0MCK4TD3ise0r/fo=;
 b=Kio9h+Ye5AiCh5RcH7cmEkgbLdPAni1bWgkHUQhkvKyymgM28mCPrV5Tk05FjBK1Ik
 uyQ7edNyfAh8DL2ASfMvDfx5RABV0m8WW+kHbxpYeneCodydlFXgIOkHwWh4nowBre8R
 5EoRvdHpeBJG9zsfJdeMh6qcFs0pQsDqUFJ94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=KCjm86zCbkFbpb29hHWwZqpTadh0MCK4TD3ise0r/fo=;
 b=eB2RHxnwNaTn9iqteyCINSa6IwyeJQ+gtY8K4sk4RTIdNMb97+/9vJupAg5TWQ8Rll
 6qz6BDfwtdtuvRPufU9miIIAkOb8Vfso0KjUGVIphEHkb7S+ELgpJHMBsL51lvqSDc0R
 9jHpzavjDdvNlPIOASY7YtOhnYlPOiFtg3Y031J3umJhHVW7k0x3qByYnI/DvRFbL7A/
 CqGLGHXLimnRyWVghLzQ20vFqNyXrAoOqXHobnKSw1RCzWJ3pKEO7UOgzqQ6n8J62JwG
 zlEZbtdO3s2gGUWGPjS8Czs34oRAf0QbjNPm2b6+/rRfYJBwwGm5q9shRsuJG3NOPvz1
 VmHA==
X-Gm-Message-State: ANhLgQ2HIlewEdkrXSOGi4wDL6jkMm5kPiV/zaeTr5owoKAths1ydLZH
 FyR1l5Ilw1RFwSg4UCLJNOe9x+wmkPblyajz7wFAHEwR
X-Google-Smtp-Source: ADFU+vsNBqRvPZVAK0pTl2qDzL+Z6F/HSgvw+dNLfkjjTHzEc2Ak3US73swama8NfEkwrW/Tzeo7NkPiI/H9vz6DbX0=
X-Received: by 2002:a5d:508b:: with SMTP id a11mr9681876wrt.332.1583864457573; 
 Tue, 10 Mar 2020 11:20:57 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 10 Mar 2020 23:50:46 +0530
Message-ID: <CAKwrT9R0BMadF2meV_YeGQwmD=Jn-yu_yB_ofO7XFPb276sz=Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] HLS IP synthesis
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
From: Jayant Chhillar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jayant Chhillar <jayant17154@iiitd.ac.in>
Content-Type: multipart/mixed; boundary="===============2981921770774119512=="
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

--===============2981921770774119512==
Content-Type: multipart/alternative; boundary="0000000000005dc6c805a0842eb4"

--0000000000005dc6c805a0842eb4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear all,
I=E2=80=99ve been working on an IP in HLS which requires some calculations =
on
floating point numbers, I wanted to know how to synthesize the HLS IP for
my design for x310 device. However as there are multiple .tcl files in the
hdl folder of my ip I=E2=80=99m a little lost.

Thanks

--0000000000005dc6c805a0842eb4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Dear all,=C2=A0</div><div dir=3D"auto">I=E2=80=99ve been =
working on an IP in HLS which requires some calculations on floating point =
numbers, I wanted to know how to synthesize the HLS IP for my design for x3=
10 device. However as there are multiple .tcl files in the hdl folder of my=
 ip I=E2=80=99m a little lost.=C2=A0</div><div dir=3D"auto"><br></div><div =
dir=3D"auto">Thanks</div>

--0000000000005dc6c805a0842eb4--


--===============2981921770774119512==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2981921770774119512==--

