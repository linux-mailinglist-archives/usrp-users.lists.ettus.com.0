Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 113AF2E7758
	for <lists+usrp-users@lfdr.de>; Wed, 30 Dec 2020 10:15:25 +0100 (CET)
Received: from [::1] (port=33866 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kuXZh-0001Jt-A3; Wed, 30 Dec 2020 04:15:21 -0500
Received: from mail-ot1-f54.google.com ([209.85.210.54]:45763)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jarroyo@gradiant.org>)
 id 1kuXZd-0001EV-O0
 for usrp-users@lists.ettus.com; Wed, 30 Dec 2020 04:15:17 -0500
Received: by mail-ot1-f54.google.com with SMTP id n42so14892784ota.12
 for <usrp-users@lists.ettus.com>; Wed, 30 Dec 2020 01:14:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gradiant-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uCD5DnIElw9ZTNNewcRTgVeYidRRczuAZ1pJChp7v4o=;
 b=qjIs1kjuW4zn9zciS7L/I3QOa9xj3lOj6xqshRu1FUeeIV8Mf440UnA5jMnzryvzFF
 EeabvPMkBJtaH9/5soR18JscuoG69Vz/WlWxB6qq5G02e9QaMS8t/UmWmgZdvMhy27m9
 65KFsqV/Of29hxUjHc6mivkg5WTuY6m4Bv6uVoFGniiBvlTfr1b/UOUUAjjp+iFlvw21
 9MtP6eKo92OQfKdXifCzmVppegFfv9XrLcmbwgSHp5IKmocyg0cSHQKcn1Qki94G1ZJz
 z4yZgRc+9HFppQMFiIMJxfWn083oXW6d203NYm6+eHdMFV6dinxYHJfFnWlWwMZxElP7
 tlQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uCD5DnIElw9ZTNNewcRTgVeYidRRczuAZ1pJChp7v4o=;
 b=rn1WBePHBA6V8G/pnk+Gr1yMdqlpEwh7eBSXfu2gHeICjTXZ8RhETMvGK9gD9JlMpa
 CmZwvDlaGsnd367Xc/0wx3pV/KdcIqg3G+eFyuXh3oPerWeJ8wezU+jpGTJzW0aG2rdN
 FElwoOx/zrjdvRPM+LrS8dTw8scj7EiF0mzRB0MOZ3mJb7KErmTzb0ZDYpz/mhqXy2Se
 1lrUoZQwr+KMKE3o3I4yvlFS6K3iR6EV5ihQezJRGnsbyV0LY7m2I4dVzUoUMpdG0TiL
 FyuVovOsbttSKg+eO9vPma0ui7tqpQDsbtq5Q3dPqIqsAqNkzeMNuiHWAYJN/mdwTsRT
 LPMQ==
X-Gm-Message-State: AOAM5333jyG3Kepqyx9oTt77uf1Xp2bDQ6da8dTiSxZwdpbtSdVZm4zK
 s3LqeQxWjXfL9uc3rXaI9WO+E0KPEhqgw5FHNG/WhA==
X-Google-Smtp-Source: ABdhPJx5AuvMihHYyusOXKJ/J9bKtm8limD/xDhu56r3tqeMzC6OQXEKxtYfazF+HzK7nj3wLxlluqvmAI/GWpc9CyA=
X-Received: by 2002:a9d:38e:: with SMTP id f14mr38433150otf.201.1609319676768; 
 Wed, 30 Dec 2020 01:14:36 -0800 (PST)
MIME-Version: 1.0
References: <CAOx6OK2N87J_kyjYyY3MHY7ymO7Cy0LkeHUsAeB4gzTa4RUA4w@mail.gmail.com>
 <CA+JMMq-kEjipOzh793JnvWk-ri+JtGfgN4PRPyPADCMRwD5xSg@mail.gmail.com>
In-Reply-To: <CA+JMMq-kEjipOzh793JnvWk-ri+JtGfgN4PRPyPADCMRwD5xSg@mail.gmail.com>
Date: Wed, 30 Dec 2020 10:14:20 +0100
Message-ID: <CAOx6OK0dbsXCmrbrJ8uNEUk2P5GAgoPrT5wqRnKeN-ZU4t7qzQ@mail.gmail.com>
To: Nick Foster <bistromath@gmail.com>, usrp-users@lists.ettus.com
Subject: Re: [USRP-users] DMA FIFO latency with X310
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
From: Jorge Arroyo Giganto via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jorge Arroyo Giganto <jarroyo@gradiant.org>
Content-Type: multipart/mixed; boundary="===============3981346914810373142=="
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

--===============3981346914810373142==
Content-Type: multipart/alternative; boundary="000000000000aa08c505b7aaef6e"

--000000000000aa08c505b7aaef6e
Content-Type: text/plain; charset="UTF-8"

Hi Nick,

I am running the X310 interface at 1Gbit using the SFP Adapter that came
with the X310.

At first I fowollowed the advice from Ettus USRP Manual
<https://files.ettus.com/manual/page_usrp_x3x0_config.html#x3x0cfg_hostpc_netcfg_mtu>
of setting the MTU to 1500 and <send/recv>_frame_size=1472 when running at
1Gbit, however I actually got better results in terms of latency setting
the MTU to 9000 and <send/recv>_frame_size=8000. I also tried using other
intermediate and smaller values but the results didn't get any better.

Best regards,

Jorge

--000000000000aa08c505b7aaef6e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Nick,</div><div><br></div><div>I am running the X3=
10 interface at 1Gbit using the SFP Adapter that came with the X310. <br></=
div><div><br></div><div>At first I fowollowed the advice from <a href=3D"ht=
tps://files.ettus.com/manual/page_usrp_x3x0_config.html#x3x0cfg_hostpc_netc=
fg_mtu">Ettus USRP Manual</a> of setting the MTU to 1500 and &lt;send/recv&=
gt;_frame_size=3D1472 when running at 1Gbit, however I actually got better =
results in terms of latency setting the MTU to 9000 and &lt;send/recv&gt;_f=
rame_size=3D8000. I also tried using other intermediate and smaller values =
but the results didn&#39;t get any better.</div><div><br></div><div>Best re=
gards,</div><div><br></div><div>Jorge<br></div></div>

--000000000000aa08c505b7aaef6e--


--===============3981346914810373142==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3981346914810373142==--

