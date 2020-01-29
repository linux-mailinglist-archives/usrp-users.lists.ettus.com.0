Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C161D14D25C
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jan 2020 22:18:19 +0100 (CET)
Received: from [::1] (port=34798 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iwuj0-0008SE-44; Wed, 29 Jan 2020 16:18:14 -0500
Received: from mail-oi1-f171.google.com ([209.85.167.171]:38104)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1iwuix-0008NY-5c
 for usrp-users@lists.ettus.com; Wed, 29 Jan 2020 16:18:11 -0500
Received: by mail-oi1-f171.google.com with SMTP id l9so1255548oii.5
 for <usrp-users@lists.ettus.com>; Wed, 29 Jan 2020 13:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=57KuQPs/QoIJL9hjagqv2gh4c6DiOb7H6xXrjqY0eiw=;
 b=EVSgQ7oPVa9FSBnXly6vkbtLrIJ7BBUzdwmZc1izlZhtVH7OK10VyZLLFHZCofhVkD
 tHrjxRRQAviL7WfwOnPzhuetGhXJnsXSezfUkDQBqDWAkcP/SxzmJ76hVl70TcA45uog
 yV10pNuT9G4uiL9zc4YRjCKl6MuR3cPl/kkdHcnuDI6el6KqmMqWWdXTCjBYV+nT+4JB
 zIFlPuNCyMH8WZ3X9cHRev0ycTF2yG2kLuR24nrPMz82UbtwdsDuHt+MuUO123XY73tA
 d/9oHgrEJIndU503oX6iAbNJ12t2y1qpMr0eqvvhECzDziXTuFAq6B/FjebuUIpMXAq0
 mRSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=57KuQPs/QoIJL9hjagqv2gh4c6DiOb7H6xXrjqY0eiw=;
 b=WkOEImECbnJgY7IqiWWofYqEsQyIYTJftNvRr19CEkxIvZCnbo4UaCSdiKoF6tn5vi
 p4/M9SYfA+F0it5gGZ5azY6BmoYFD5OUFH/rOw88vXg2gS+BvecZWwZV/MaYviZJHeiH
 0Q18qjQv2JG/F7rKbbKAmFIDxdFTnXAmZ4pINvZU4bnph7eHEUXwk/SHSZQ8XIhBGG3D
 g8tLQzX+qyLkibNqZI3prMQIl80UlkGPV5LDj0wL3VxL4pHh9L7GJo2M4fwd5fWOgycB
 OO+Fdtr0mfF0bO3xtzFTSP3eY8zx5iHloBV0x1nZNKK5s6igTG1w7EXDZsfhwKTC1GX1
 oO/A==
X-Gm-Message-State: APjAAAWM7Uvj50TR3+/BXv8FA4S1DE/UAiEl5vta6tMG57RzGK2qlOAi
 iq/pBESo2QPfp3bdgZgJ98dV5tn32NO529aWzGeJCSAuND8=
X-Google-Smtp-Source: APXvYqwKFpiyUV+mv3OjTq8UEBGrKSWoxurR54OT0hzgDcz9EoClvD4ZARiFft7z+VfQd1bW2VsNFs3jngri1+1emao=
X-Received: by 2002:aca:889:: with SMTP id 131mr634316oii.3.1580332650102;
 Wed, 29 Jan 2020 13:17:30 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 29 Jan 2020 16:17:19 -0500
Message-ID: <CAB__hTSeb6wn_EVMtHKOr4cz98yRbkw4VDZpcdXEY1J+XWNN4g@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] RFNOC_OOT_SRCS cleared in top/n3xx/Makefile.srcs
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
Content-Type: multipart/mixed; boundary="===============3005019044609145740=="
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

--===============3005019044609145740==
Content-Type: multipart/alternative; boundary="0000000000003cc64e059d4dde0d"

--0000000000003cc64e059d4dde0d
Content-Type: text/plain; charset="UTF-8"

I have been struggling all day with why I can't build my OOT rfnoc blocks
for the N310 using v3.15.0.0.  It appears that the problem is that there is
a file top/n3xx/Makefile.srcs that is clearing the RFNOC_OOT_SRCS variable
after it is set in the users OOT makefile. I just commented the line in
top/n3xx/Makefile.srcs and that seems to do the trick.  Is this a known
issue?


# Makefile.n3xx.inc
...
include $(BASE_DIR)/n3xx/Makefile.OOT.inc
include $(BASE_DIR)/n3xx/Makefile.srcs
...

# Makefile.srcs
RFNOC_OOT_SRCS = \

--0000000000003cc64e059d4dde0d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have been struggling all day with why I can&#39;t b=
uild my OOT rfnoc blocks for the N310 using v3.15.0.0.=C2=A0 It appears tha=
t the problem is that there is a file top/n3xx/Makefile.srcs that is cleari=
ng the RFNOC_OOT_SRCS variable after it is set in the users OOT makefile. I=
 just commented the line in top/n3xx/Makefile.srcs and that seems to do the=
 trick.=C2=A0 Is this a known issue?</div><div><br></div><div><br></div># M=
akefile.n3xx.inc<div>...<br><div>include $(BASE_DIR)/n3xx/Makefile.OOT.inc<=
br>include $(BASE_DIR)/n3xx/Makefile.srcs<br></div></div><div>...</div><div=
><br></div><div># Makefile.srcs</div><div>RFNOC_OOT_SRCS =3D \<br></div></d=
iv>

--0000000000003cc64e059d4dde0d--


--===============3005019044609145740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3005019044609145740==--

