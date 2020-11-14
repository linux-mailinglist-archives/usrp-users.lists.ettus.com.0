Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1792B2C86
	for <lists+usrp-users@lfdr.de>; Sat, 14 Nov 2020 10:58:49 +0100 (CET)
Received: from [::1] (port=48034 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kdsKS-0006BP-DF; Sat, 14 Nov 2020 04:58:44 -0500
Received: from mail-ed1-f44.google.com ([209.85.208.44]:45988)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cyberphox@gmail.com>) id 1kdsKP-000681-Gj
 for usrp-users@lists.ettus.com; Sat, 14 Nov 2020 04:58:41 -0500
Received: by mail-ed1-f44.google.com with SMTP id q3so13623970edr.12
 for <usrp-users@lists.ettus.com>; Sat, 14 Nov 2020 01:58:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=gMCNlN9ucD3U+TLl+bpmlZ0CJ+cudNN4KbNlcSbThws=;
 b=OVQZ1R0nyybwVH0d9KqSC4SiqKUpSv+PJFrrGGMR38jG08UMCXLTYmHHE7Lo/w1oFG
 HiTsq9LH0+fMiOMzxpSYs0EBCmtW0S9GK4t8WDXZussfCuP+QFxkHe+gipwOuogxs8Ev
 AKfE4nlTWCiF/HUzwEjtnL9uFnlmZPfUfruOoCK4wgF00G+vIV+L9obfIiLdUuiX7EII
 cJnkKBYOvxCXNinjFO9HPwr2aznhybpsgo+MOrW6WF/R5ZsV5cC8QGIRCn8pnGF2pCQb
 JZuBRCZImQWwifPEtgIuJy99xNy1fCEkSDkzJPblc1myLx1qZTwi1+MjF1KaQasD3j1N
 /DIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=gMCNlN9ucD3U+TLl+bpmlZ0CJ+cudNN4KbNlcSbThws=;
 b=uWnTLv/5MLrtH99dHXZmZVpaM60MJY5mtSpXbB79p1nLQZm6tLEHORPliu6/+X7W3V
 qS0U+t9MPVoPG+YsZpn2lUG7n17OMRBIjV9Uzf0Ih37qhe0ncIlyNsAYfTLxkHaNKdxx
 u1vdhhn/ivDw/i5Y6oSiCGeyZ+OF9DqX8LxhgDzWx1Z+lMAWJeTlY4K2LcKuVNT7S3KX
 9BtZxdM7HNdM1990nol5rGXwyOphqYR2gCtI0hYNM026lA/pQeSR8RK/SeDZUNAZHvMd
 /vxpf/OhInGiVt4wb98svOhDdVBwQHejCYyS76XZXAEqRASMmtqt0/r/Aso6UEHyWGpH
 ZgTw==
X-Gm-Message-State: AOAM530Dbsj51pyVwxaiHLs7hKajwK1swdeFqnAtpvW0rVCBTF7Zi+Vd
 JslScONlX8gVs3f9Nzti2yaKcvkwkcSS9o5ppjMMAUe8mmk=
X-Google-Smtp-Source: ABdhPJw0m4C/+l0PVsiVuqKu6U1UIhPKCvBYK3b+e+F9g4rjZXq3x2DGxit9pLhFUNuD2qZBHfDlU7BIFPiQIiWvjVc=
X-Received: by 2002:aa7:c3cc:: with SMTP id l12mr1597366edr.304.1605347880248; 
 Sat, 14 Nov 2020 01:58:00 -0800 (PST)
MIME-Version: 1.0
Date: Sat, 14 Nov 2020 09:57:50 +0000
Message-ID: <CAOkUcSuw_2yt5pNyLO=HPzyK+KTH2KC+OfDEm1FZyVkkQEwF2w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Dual boot USRP (Ubuntu & NI Linux)
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
From: cyberphox via USRP-users <usrp-users@lists.ettus.com>
Reply-To: cyberphox <cyberphox@gmail.com>
Content-Type: multipart/mixed; boundary="===============3669019210963209705=="
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

--===============3669019210963209705==
Content-Type: multipart/alternative; boundary="00000000000024abe305b40e2e83"

--00000000000024abe305b40e2e83
Content-Type: text/plain; charset="UTF-8"

I would like to know if it is possible to dual boot NI Linux with Ubuntu.
I have tried it but have not been very successful. Ubuntu detects NI Linux
but does not successfully configure the GRUB menu.

Thanks
Marino

--00000000000024abe305b40e2e83
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I would like to know if it is possible to dual boot NI Lin=
ux with Ubuntu.=C2=A0 I have tried it but have not been very=C2=A0successfu=
l. Ubuntu detects NI Linux but does not successfully configure the GRUB men=
u.<div><br><div>Thanks</div><div>Marino</div></div></div>

--00000000000024abe305b40e2e83--


--===============3669019210963209705==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3669019210963209705==--

