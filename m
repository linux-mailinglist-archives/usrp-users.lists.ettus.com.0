Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E620F13BAB0
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jan 2020 09:10:05 +0100 (CET)
Received: from [::1] (port=35912 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1irdkT-0002G5-9T; Wed, 15 Jan 2020 03:09:57 -0500
Received: from mail-vs1-f53.google.com ([209.85.217.53]:44600)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <danielozer22@gmail.com>)
 id 1irdkP-0002Br-LO
 for usrp-users@lists.ettus.com; Wed, 15 Jan 2020 03:09:53 -0500
Received: by mail-vs1-f53.google.com with SMTP id p6so9915501vsj.11
 for <usrp-users@lists.ettus.com>; Wed, 15 Jan 2020 00:09:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=phH6+fUYq+3N45+lbxaITee2KF5L1+WSucsSBpFSy9w=;
 b=ouKPrkMcHV9un3irJlZFDZWjIVXNecHyhAfuozBkl41W28uQGFwaWS0HRaIRnXBy/k
 cLVr9VW7mef8JwhLypPysg4K9lkn/NgBkGadRCC4he6xYtNJ2IWPOXg9fDqXVkBzbZHo
 AKiBWE3Z6Y6ZAZvyvRHGTyswNnv+Bc/hoDR1wQRbsOnMh0oQFYOol03zhtsjp4EOgl52
 ChapKqOf7iLdEEZQg83vxP6f/TDo/ny0QMzXiC4cpSFBaK+0ch71W8gN8A+DqkCzBqh1
 MLUzlCV4vRxGjFvCA7W1h9wqJhDlDDhUF/Qkwj+BUimvb6xpCEfFIqbBC6N/wEtvVvK6
 Vf0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=phH6+fUYq+3N45+lbxaITee2KF5L1+WSucsSBpFSy9w=;
 b=Jo3wwdNLznnN5D6LrMVuQWeJS/f3eut0epp/ZRYah+2bUg9ctYWf4o9TB1zgdiVh9N
 ZWIkFWZZnI+anO4U0+8zQmPlwBxAy4m3Uu+YV0RCeZBtiyhpeblrXZmKe4XG/AYet8jb
 OfYycoNfuDQfvCqn/0SMgo7o9BE3lu438z48QcQMlwg4ELjVCrPKeuqJL5rFVBU0JC+W
 Nnk7HGfVIGmAjxXh/Vi9zZ0mHgNqtcKNZguHO4H0cFdhr/4+XJCTVa3q3MnIR8qirQGR
 /Rpj+PuIJxmae0vKn1EtLNZZwhunv7upZVGxDuXDqjVwoh17hZJFE+KINy83a0CECghm
 FXgw==
X-Gm-Message-State: APjAAAWz5yeCIvq3M4po+oo2Dw6InahIOHTuMvJWkslwaYMaU8nRwb8w
 sqqwx7AUdUtU/CRQO4xZMY7YC1rwEMsfxiw9eLCHmGgf
X-Google-Smtp-Source: APXvYqyd43SiRk1ltl9YuqEsMl0sz/NyTwSCtk0W53h03lHOUrtDtHPUibX4IfgOFk/r3QA35rZ98UA4NAdKraTVUXo=
X-Received: by 2002:a05:6102:2d8:: with SMTP id
 h24mr3929738vsh.169.1579075752859; 
 Wed, 15 Jan 2020 00:09:12 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 15 Jan 2020 10:09:01 +0200
Message-ID: <CAE_Rk55U-U6U5+oMuJ7FWFbkzTEro7+zSDDmoVOgePs8rQsQvQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Use most of the ddr3 space in x310
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
From: Daniel Ozer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Daniel Ozer <danielozer22@gmail.com>
Content-Type: multipart/mixed; boundary="===============4016224220003779184=="
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

--===============4016224220003779184==
Content-Type: multipart/alternative; boundary="000000000000529bd6059c293957"

--000000000000529bd6059c293957
Content-Type: text/plain; charset="UTF-8"

Hello everyone ,
I want to load a file using the replay block that will consume almost all
the space  of the ddr3 on the device .
I saw that replay block has a address range of 32mib which is not enough at
all .
How can i change the space address of the replay block and what is the max
size i can put so i want damage other components in the design?
Thank you in advance.

--000000000000529bd6059c293957
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello everyone ,<div dir=3D"auto">I want to load a file u=
sing the replay block that will consume almost all the space=C2=A0 of the d=
dr3 on the device .</div><div dir=3D"auto">I saw that replay block has a ad=
dress range of 32mib which is not enough at all .</div><div dir=3D"auto">Ho=
w can i change the space address of the replay block and what is the max si=
ze i can put so i want damage other components in the design?</div><div dir=
=3D"auto">Thank you in advance.=C2=A0=C2=A0</div></div>

--000000000000529bd6059c293957--


--===============4016224220003779184==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4016224220003779184==--

