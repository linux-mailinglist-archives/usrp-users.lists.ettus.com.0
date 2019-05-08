Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 812D1173F1
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 10:35:35 +0200 (CEST)
Received: from [::1] (port=33528 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOI2z-0000s6-FT; Wed, 08 May 2019 04:35:29 -0400
Received: from mail-lf1-f46.google.com ([209.85.167.46]:39403)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <peacekar27@gmail.com>)
 id 1hOI2S-0000ma-AM
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 04:35:26 -0400
Received: by mail-lf1-f46.google.com with SMTP id f1so1131668lfl.6
 for <usrp-users@lists.ettus.com>; Wed, 08 May 2019 01:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=MnKhextoIN0FEdY/Sm15aBO2GMuO0LV2f3Kei3s+emA=;
 b=bbKKXL1NlA/fQ3gB/sRPN1YfK8BoMfS/+le6X0ugKtbQf/kOPruJyYJY6/xikiXys2
 Nc6y4u5C4gIU4hauxNKemcYUp5t52YCZdJ8U+XWwdPjy3d5nmgAiAJT+5V9WZK+WR+Hh
 9heststatfQIHf4oWGEeOTr/GH0HPag3TUa7MVv8ncHHuLImQe/7e0gFYsVqTa5AhS0E
 iVgsT7CK50yqnX4EMb56ensq9wgIFCh2gfEar/hBN0D1JDobGZNPCkTbp0QraubpjG3o
 8SlDCPXN0Plhn1uN70KVCxIYb4DbtQfZe4yo4aWdVVnTHeFRgDJu6MepgZS8WC++3Hoa
 C1Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=MnKhextoIN0FEdY/Sm15aBO2GMuO0LV2f3Kei3s+emA=;
 b=HJ2DRC9EUmws2KLRZYlIShWE6NCw44cJ5D02MR/YME010zrnbGH/Vjpw8iccJM+zkp
 /H0fliJaU2NNJa+Tn+e4z41weyLSMfvF9kH4GBiEFoFkkWHhB3ppoFXbTD43WHksYCtg
 5rKTQr4y9SScUrC4vsVozxi2NCBo4k/c6ljFfqk3wVDR6pmi3cGRj5z0weUyKOt3UFuT
 ZH+vtq+CDdtKsKKUpdHk2t5n4FUpZrvF2KAQPxlQgwJakG3jMf1MHcjhyDo/gHwkf1RW
 hiXGp9o9Eyjr2FQP8LmKGmKROAuuGBKgiiC0HMh+ReAX5MSLBa2o/2fm3I9ZYs7viMMg
 Sc2g==
X-Gm-Message-State: APjAAAUWTt7zJq3deq8DkycnmYapzm/IDMxs48IRAj9f1XgfTg1zlyo/
 0Dg2iAmwKoV4Bu1mz8MdnbzvP97iwBZt5LE7/Ta923SL
X-Google-Smtp-Source: APXvYqx+IimocOUjsajF95YR0+hYRE/YirLnhVo61aTwyT9Y8gDwYgSkX85qSZPgZD+6ohsnt7ti/dSR0gSDn5YV4T0=
X-Received: by 2002:a19:4bd1:: with SMTP id y200mr19796959lfa.25.1557304454356; 
 Wed, 08 May 2019 01:34:14 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 8 May 2019 10:34:06 +0200
Message-ID: <CAAkcsCoQc66KNXVDtwzLY9mwquuXAhvTitS12d3q4s1-KtqgPQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] USRP not detected by Laptop
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
From: VINAYAK KARANDIKAR via USRP-users <usrp-users@lists.ettus.com>
Reply-To: VINAYAK KARANDIKAR <peacekar27@gmail.com>
Content-Type: multipart/mixed; boundary="===============9169295744154418614=="
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

--===============9169295744154418614==
Content-Type: multipart/alternative; boundary="000000000000cf23e905885c32f1"

--000000000000cf23e905885c32f1
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

                           I have a NI USRP 2954 and when i am trying to
connect it with my Laptop, with a working Ethernet cable,in the "network
connections" window i notice that the Ethernet connection status stands at:
"Network cable unplugged".



Can someone help me sort this issue?



In case further information is required, my Laptop is an ASUS product(64
bit) and the OS is windows 10.



Thanks a lot.,

Vinayak Anant Karandikar

--000000000000cf23e905885c32f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p>Hello everyone,</p>
<p>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0I have a NI USRP 2954 and when i am trying to co=
nnect it with my Laptop, with a working Ethernet cable,in the &quot;network=
 connections&quot; window i notice that the Ethernet connection status stan=
ds at: &quot;Network cable unplugged&quot;.</p>
<p>=C2=A0</p>
<p>Can someone help me sort this issue?</p>
<p>=C2=A0</p>
<p>In case further information is required, my Laptop is an ASUS product(64=
 bit) and the OS is windows 10.</p>
<p>=C2=A0</p>
<p>Thanks a lot.,</p><p>Vinayak Anant Karandikar</p></div>

--000000000000cf23e905885c32f1--


--===============9169295744154418614==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9169295744154418614==--

