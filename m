Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BE729E2743
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2019 01:59:32 +0200 (CEST)
Received: from [::1] (port=58186 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iNQXC-0006zU-VC; Wed, 23 Oct 2019 19:59:22 -0400
Received: from mail-qk1-f172.google.com ([209.85.222.172]:42282)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <wddias@gmail.com>) id 1iNQX9-0006uh-LZ
 for usrp-users@lists.ettus.com; Wed, 23 Oct 2019 19:59:19 -0400
Received: by mail-qk1-f172.google.com with SMTP id m4so4711321qke.9
 for <usrp-users@lists.ettus.com>; Wed, 23 Oct 2019 16:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=1MaGjDMm2vbri223GnVS4yInB/U36y8BkJL7XY2ZFkI=;
 b=YnmqQCNkn9bIDXtvm1+fdBQCwekct/z8VJTvTIB+34iGgx5w+RnWF807nUNj74hox4
 tDqa1Ruc0jEKfTjWuAST/7J5VhzMjOxVScaTFH5R1Qz0QsSI1u08xpJL/Z/dq6LeXfF4
 fOIMFRazB89TWfN2jJGjoXpl+AKpTINx7hitdryRceSDm15WRPpmUYx4jXPcOxxG7r6x
 iIUPijo3sHizyHZX5z3jTfSx7JKWzBNbKEzAXnoyNTLbeYvhb+pqQ7yDyJ+/CDNpm0ka
 80bRpwKuj2Yg9uKHER5X7W29Rc4261lTkny8sRQjl6GDN4VRAX44JzRJrNjYyGXGoV29
 SXRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=1MaGjDMm2vbri223GnVS4yInB/U36y8BkJL7XY2ZFkI=;
 b=UdddvG+aEVogjt3j75/Q+NCgMMMhEMMbuiWRt+InoJrgCBPmV3hqaYoGHulSJbGlQG
 yCXH89ls/x9RviB596lSsAqGeT5BS7513L+aeMLdhLplSKdsqLJqgHVVed6sfnzZcI+E
 1Cy12BgXCW8dTUWYjzjaX9CSH7wT9OfFhLBuwKAMmsCSgG4ax6MnLCdK8OFx+/Hhsphr
 3pXzdGINd+uYyQ0AN7cbwfCjr81XQV0Ajjv4elyU6ecqkMvciqefcWLFjkWQ1vkU4bdp
 QxI4bPF45iQkCqFZ9Z7ETKybPtYSyu2iqHo4F/MOLPs8V+Va8tvoSAGXq9BcEJQsCTRV
 gn0Q==
X-Gm-Message-State: APjAAAXCuq3lRxDosdxJrd5ouc1r8dQFKo29HmFLerkeHUHR7d415gPR
 Iyi9f2UvDmxTJrjF2W+3UWWhWPyUBlNet6TtYOLwTw==
X-Google-Smtp-Source: APXvYqx96/CXvBlx+r7iHY68OsNNhPNaGjEsXf+5Lwu8njKQGXWT4vh52jkv3cO4tY0c9LwnKT+fNoJbU3hfzOToXuU=
X-Received: by 2002:a37:383:: with SMTP id 125mr6616593qkd.482.1571875118621; 
 Wed, 23 Oct 2019 16:58:38 -0700 (PDT)
MIME-Version: 1.0
References: <CALSKgPy9YoLX2fXWJPiy5kWDxswB_0oQ4VC1chWw6EqCVKJ+Rw@mail.gmail.com>
 <CANf970YQrC0_ZXOYQhyr9SqaqP8gj6rjuiMszESpPv769PnxgA@mail.gmail.com>
In-Reply-To: <CANf970YQrC0_ZXOYQhyr9SqaqP8gj6rjuiMszESpPv769PnxgA@mail.gmail.com>
Date: Wed, 23 Oct 2019 20:58:26 -0300
Message-ID: <CALSKgPxmmkkxu-9nfeCFrK81MD7A4P7p6xqQMbWagK+HwttF5g@mail.gmail.com>
To: Sam Reiter <sam.reiter@ettus.com>, usrp-users@lists.ettus.com
Subject: Re: [USRP-users] X310 over PCIe not found in Ubuntu 18
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
From: Wheberth Damascena Dias via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wheberth Damascena Dias <wheberth@gmail.com>
Content-Type: multipart/mixed; boundary="===============7266376402115042377=="
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

--===============7266376402115042377==
Content-Type: multipart/alternative; boundary="00000000000013bce305959cb2c8"

--00000000000013bce305959cb2c8
Content-Type: text/plain; charset="UTF-8"

Hi Mr Reiter,
Thank you for your answer.

Actually yes, the same X310 runs perfectly in another machine. Its a i7 6th
gen with ubuntu 18.04 kernel  4.15.0, libuhd and uhd-host on same version.

I think this can be some PCIe related setting on the BIOS, since the lspci
shows [disabled] next to the base address, but I can't find any option to
change it on the BIOS.

Best Regards

--00000000000013bce305959cb2c8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto">Hi Mr Reiter,=C2=A0</div><div dir=3D"au=
to">Thank you for your answer.</div><div dir=3D"auto"><br></div>Actually ye=
s, the same X310 runs perfectly in another machine. Its a i7 6th gen with u=
buntu 18.04 kernel=C2=A0 4.15.0, libuhd and uhd-host on same version.<div d=
ir=3D"auto"><br></div><div dir=3D"auto">I think this can be some PCIe relat=
ed setting on the BIOS, since the lspci shows [disabled] next to the base a=
ddress, but I can&#39;t find any option to change it on the BIOS.=C2=A0</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">Best Regards</div><div dir=
=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto"><br><div =
dir=3D"auto"><br></div></div></div>

--00000000000013bce305959cb2c8--


--===============7266376402115042377==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7266376402115042377==--

