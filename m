Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E02C21AA9EC
	for <lists+usrp-users@lfdr.de>; Wed, 15 Apr 2020 16:31:06 +0200 (CEST)
Received: from [::1] (port=42286 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jOj49-00074q-2B; Wed, 15 Apr 2020 10:31:01 -0400
Received: from mail-ed1-f48.google.com ([209.85.208.48]:42596)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aitamakinde@abuad.edu.ng>)
 id 1jOj45-00070S-Hz
 for usrp-users@lists.ettus.com; Wed, 15 Apr 2020 10:30:57 -0400
Received: by mail-ed1-f48.google.com with SMTP id s10so5065427edy.9
 for <usrp-users@lists.ettus.com>; Wed, 15 Apr 2020 07:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=abuad-edu-ng.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=lxdAVtHJCVr62GPBkykJ2+0d6Tj3nwwqwJzPnNyLals=;
 b=rENDmQfDtxWh+/0i+QQ30Ug9kPgoSPkXxEhqE0aw7SFIAcdGvFxCOQ6Rl0ECl8KAHo
 2sYCHk1mQ8s771031HeN/kLUdVEFY/pEq52yyRU6GnfmlByk4z3xCTY53aP6HMjegr84
 +N/MmJ9pYPZifuhlOierVNJYmPMnKKS1/DE40MgVuPLEAnsoI81vXWYmyPBWwcB7Rf5E
 lf0KtbRIH5g7XHx51fLZujp4kQSnySBmDZQWV3Z+FfXM0tMY3KRmXJF4NBHgQWiXcV1v
 QBMaGbPxu7ulk1VhApfktKhM/nRmttF0zP3OyGpTdymy7JyZhe2J0k94DZY7TUK+dh4I
 VyJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=lxdAVtHJCVr62GPBkykJ2+0d6Tj3nwwqwJzPnNyLals=;
 b=NTLFAV65w9zlfSuoUWf1oRKaPLBrgQnMt09hSxcBfqzl96QyRu69vMFeDvC0YmAky5
 KZIsiSsL8iw41Zv2mONszKQ72I7/BE+cxWcQAFcAsUStJbZ7aslTHAX9IGaFeoikXb0k
 /bDfs3hjcVOIjTeho7GexDcz+MrRhbv1gM7YSZViMavLZ5aq5AgUlygZXR1B21AmPRzf
 7AQZexBM8A0bdsEgHzAHbOjZowZl8oiPjk9e30EJsgzFa7S1OUEok17TXXeDBewKv143
 5ccIza2KmoZ1v0ED768C7/yw0mgwLgNydTz1RAPuCmnSWEoPsKZu47RUnDC4jI9pzhKA
 zksw==
X-Gm-Message-State: AGi0PubaKcXdpuiOa5XQ3mb6PUuPWgmfpOq74POHaDPgbvz9eQGO3EW3
 X8XjBBbmGlEA+6n7nbUGhLCFnYr68aP0ipAcxAzZ7RnBzaHqIw==
X-Google-Smtp-Source: APiQypLiyx8PJCarY7jbrMFM1eSYF/7+IKqnRyiof7QofCD6vFttwYorY9pdi/IuXqXEKTZku0/jo8fXlfnUYU7ksTg=
X-Received: by 2002:aa7:d683:: with SMTP id d3mr23947944edr.268.1586961015936; 
 Wed, 15 Apr 2020 07:30:15 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 15 Apr 2020 14:30:04 +0000
Message-ID: <CAD-eGGoiu=aswUWerQ7cDVYm-FVmJ6jRSoe+9WcKNdfPTsKW-g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Conversion of .dat file to a readable data using GNU
 octave
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
From: AKINYELE ITAMAKINDE via USRP-users <usrp-users@lists.ettus.com>
Reply-To: AKINYELE ITAMAKINDE <aitamakinde@abuad.edu.ng>
Content-Type: multipart/mixed; boundary="===============4714182809626751082=="
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

--===============4714182809626751082==
Content-Type: multipart/alternative; boundary="000000000000a0adb705a355272c"

--000000000000a0adb705a355272c
Content-Type: text/plain; charset="UTF-8"

I am working on channel sounding using USRP and GNU radio platforms. I am
experiencing difficulty in converting the .dat file of sink file at
receiver of flow graph into readable data using GNU octave. Can somebody
help me to achieve this? Thanks

--000000000000a0adb705a355272c
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">I am working on channel sounding using USRP and GNU radio platforms. I 
am experiencing difficulty in converting the .dat file of sink file at 
receiver of flow graph into readable data using GNU octave. Can somebody
 help me to achieve this? Thanks</div>

--000000000000a0adb705a355272c--


--===============4714182809626751082==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4714182809626751082==--

