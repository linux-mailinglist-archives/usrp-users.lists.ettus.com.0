Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB85030D40F
	for <lists+usrp-users@lfdr.de>; Wed,  3 Feb 2021 08:33:56 +0100 (CET)
Received: from [::1] (port=54786 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l7Cfj-0002QK-HE; Wed, 03 Feb 2021 02:33:55 -0500
Received: from mail-yb1-f172.google.com ([209.85.219.172]:44499)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <f.gallardo.lopez@gmail.com>)
 id 1l7Cff-0002Il-4I
 for usrp-users@lists.ettus.com; Wed, 03 Feb 2021 02:33:51 -0500
Received: by mail-yb1-f172.google.com with SMTP id r2so5509448ybk.11
 for <usrp-users@lists.ettus.com>; Tue, 02 Feb 2021 23:33:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=VB+iiUE114anez3bQIN/1YZCbuBtLPJJ5Jv+Alt5cCo=;
 b=jNkGO/wnKrwkECRDGqKBAwgt/EdZaMUbJlDTHJcKWB3sLwC+XRPmEsyYGyAe6tqde+
 /BQuXecYe2uW0tkWsNSNizqFzG6TJItOxPTewONWpG1obsttWP5xfIYnfh71qwKOjUa8
 Fe04iQwqplTBBHqdHDSG+ANV3VHcvC3vxdELvdm47VN7F0BJaZgGzI0GJWooaI+6qN0R
 aj8rLt8knBj0xDte3p6jFwTnf+Hasu9U5HpDPYyGCD5ookWmEmJjQA6/Cc+Uqx2D6nZE
 kJEu8DuO89jTLEW27rZGJXCZf6xB8p2l8eJsAD12p8jtfV/2WuXYD3TaQ65QudCtUXea
 ShgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=VB+iiUE114anez3bQIN/1YZCbuBtLPJJ5Jv+Alt5cCo=;
 b=YuHlWcs650R4MZkRhb5/OevMdroIk7sg8vG2chO6iS7RWRU7F4orRdNnUuySdwI4HL
 4wHZW+6PerawevQpWiUZfbOvlPlA9T0Y8vcMKrCpxJfUlrp1cwl/1aBqRVoOJIFtedWL
 J92q6gNdqqTILTxpBv8zf/Qt8xvQquWkpFAU0mEW314tfhWBW+197KjFtJ/9hD11ldQU
 22nN92urOPj8FOGg40wOoMTc42HDxWotApXBiM8fi6qxdsQ06gQl1U9sysbroK4cI6eV
 7tCR6jr+qsl2qsvIX9zDz9wmv3rz1lbzqh+R0MkZnMzkdJLTqEI4V16PJi8oZ5l3ESuS
 U2nw==
X-Gm-Message-State: AOAM530qI4rWPHL/pjj8K3E060m3xu3v9keTM2oxjQmCDQVB2/KoZUiG
 1JWpLZ6MCA2qkOEyGvDOGoJCXYTrpQ3pAEbDULVBcrUhxtw=
X-Google-Smtp-Source: ABdhPJwgxcAYUznBEqugpdW+VkpKMXI5A9s4u1yAEscpkkU7PUrNiBPAqyruCAiK+rnqca+yemXvnKvmYJxNoC6NNS8=
X-Received: by 2002:a25:1fc5:: with SMTP id f188mr2632785ybf.389.1612337590000; 
 Tue, 02 Feb 2021 23:33:10 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 3 Feb 2021 08:32:58 +0100
Message-ID: <CAEtk-vUcyZGXzw6K6BG3N-jxM6+pTCJvV9ZRn+LvVEa9gC+tnQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] USB USRP with VMWare ESXI
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
From: =?utf-8?q?Francisco_Gallardo_l=C3=B3pez_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Francisco_Gallardo_l=C3=B3pez?=
 <f.gallardo.lopez@gmail.com>
Content-Type: multipart/mixed; boundary="===============6107199314791182643=="
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

--===============6107199314791182643==
Content-Type: multipart/alternative; boundary="0000000000004f5ff605ba699961"

--0000000000004f5ff605ba699961
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am trying to get to work a simple signal recorder with an USRP1 via USB.

With a bare metal installation I got no samples drop with fs=8MHz.

Now, with a VM and the USRP connected to the ESXI I need to go down to
fs=4MHz.

I was wondering whether somebody has tried this and knows how to tune the
VM/ESXi in a way to get better performances. I know I cannot expect it to
run as fast as in a bare metal installation, but maybe there are ways to
tune it a bit.

Currently I took out the USB 2.0 controller from the VM and the only
controller available to the VM is the USB 3.1. The ESXI has USB 3.0
physical ports.

In the VM machine I am writing the file to a ram disk.

Thanks!
Fran

--0000000000004f5ff605ba699961
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I am trying to get t=
o work a simple signal recorder with an USRP1 via USB.</div><div><br></div>=
<div>With a bare metal installation I got no samples drop with fs=3D8MHz. <=
br></div><div><br></div><div>Now, with a VM and the USRP connected to the E=
SXI I need to go down to fs=3D4MHz.</div><div><br></div><div>I was wonderin=
g whether somebody has tried this and knows how to tune the VM/ESXi in a wa=
y to get better performances. I know I cannot expect it to run as fast as i=
n a bare metal installation, but maybe there are ways to tune it a bit.</di=
v><div><br></div><div>Currently I took out the USB 2.0 controller from the =
VM and the only controller available to the VM is the USB 3.1. The ESXI has=
 USB 3.0 physical ports.</div><div><br></div><div>In the VM machine I am wr=
iting the file to a ram disk.<br></div><div><br></div><div>Thanks!</div><di=
v>Fran=C2=A0 <br></div></div>

--0000000000004f5ff605ba699961--


--===============6107199314791182643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6107199314791182643==--

