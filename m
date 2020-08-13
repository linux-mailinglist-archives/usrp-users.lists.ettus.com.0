Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB93243EE4
	for <lists+usrp-users@lfdr.de>; Thu, 13 Aug 2020 20:33:50 +0200 (CEST)
Received: from [::1] (port=44646 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k6I2t-00016D-NH; Thu, 13 Aug 2020 14:33:47 -0400
Received: from mail-ua1-f46.google.com ([209.85.222.46]:44209)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aholtzma@gmail.com>) id 1k6H8o-00065z-0y
 for usrp-users@lists.ettus.com; Thu, 13 Aug 2020 13:35:50 -0400
Received: by mail-ua1-f46.google.com with SMTP id k18so764521uao.11
 for <usrp-users@lists.ettus.com>; Thu, 13 Aug 2020 10:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=R8m1wgldTiXUK3NK7dhcpYgnksLO8Loxk3Cq5cDfjBE=;
 b=sTus5oKDsIwUkBzuStwbxrGjejkVt/WfI/5ycHfngbJklcDsKHzC8YLyhiiXiDcNZ+
 Vylnax+mCvWqC/1QM1IUjiz59Wnjsv8++kmQ+EZnI2szJb8oi7BzFgUgPnkgH5d2baxw
 ph55xRxrg8f8uZJiT/DjbZ7y1yZSadZSUqEYO3aBITiNNsNSGBVecbLmQ77r6Cp9yBL/
 q5l0LFPNrVD1VeAAYhQFvZrvPR6Xm8iJacdHrDvErgk2Lhg8dZ6ivpBGQOLtoXiy6Eh7
 u4oAgc9kpw40ERV8a9WdtzdZVO+YQeHC8ECSLyG8lrCX2C+/NkWvjonXZZH6ozUFgaRx
 aoIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=R8m1wgldTiXUK3NK7dhcpYgnksLO8Loxk3Cq5cDfjBE=;
 b=hVr0Y4Iv0mMJ/GuIFqTw4lxI/Q7z51DPskgj8QQLdfj58/YsWt86Z2bhRYUI7gdr0W
 ISoqt7yIIBW9h3Br7PHQc9wZN/vpq07iLMxPTmX8Eb8nJ+vLTzfiSKSRIJ4bivk2+Emy
 PpA+AtKxXf60QGpriBkxiFGkv6f58cC11a/c/2ZzCM5MpzaXAtvZrjf4scjhjWiR5JW1
 yAEognXoNvK4VVattuy/KZaijYdrpNiq9z82S27A2lwo5mJOt+1ApJkAjYevylzvnPhu
 ZKZ6BIXAjCBHvJir/BZMHOfYzb71lfp0of3FuZNbrhxLwNZxoqdbZSotnFBLkmyVh3sU
 V/sg==
X-Gm-Message-State: AOAM533xMrOirFW2hTe3hZp61abnVGKHsdwaJdFY2B0gzumI7bxOOFPu
 nyoAdX8yBKyuRJJ7agnLVPGzWMlizZ7M92AXrfRf7wxo
X-Google-Smtp-Source: ABdhPJx5QUAMruSD3fuUS+jE4l6v1WJEtcUSnlugZ/MMMY0MmauVl4PP4fQBES1JeToHvypYtZelgbbmjipD55V/tUA=
X-Received: by 2002:ab0:14c8:: with SMTP id f8mr4496120uae.23.1597340109177;
 Thu, 13 Aug 2020 10:35:09 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 13 Aug 2020 13:34:58 -0400
Message-ID: <CAEhVi8TCn4NxFeb5hnCjfxG6Hbc37pwzzBhEkNcj9Ju=Eyi2DA@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-Mailman-Approved-At: Thu, 13 Aug 2020 14:33:44 -0400
Subject: [USRP-users] b200mini 1pps lock problem
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
From: Aaron Holtzman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Holtzman <aholtzma@gmail.com>
Content-Type: multipart/mixed; boundary="===============2684703975958190720=="
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

--===============2684703975958190720==
Content-Type: multipart/alternative; boundary="000000000000cb080e05acc5b9d3"

--000000000000cb080e05acc5b9d3
Content-Type: text/plain; charset="UTF-8"

Hi there,

I have a problem with my b200mini application, where it will lock to my GPS
sourced 1PPS when run 'cold', but if I restart the application it never
locks. After I unplug the b200mini and let it sit for a while, it will work
again. I can also hit the TCXO with a little bit of canned air and it will
lock. This is using 3.15.0, I haven't tried earlier releases.

Has anyone seen this or have any suggestions?

cheers,
Aaron

--000000000000cb080e05acc5b9d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi there,<div><br></div><div>I have a problem with my b200=
mini application, where it will lock to my GPS sourced 1PPS when run &#39;c=
old&#39;, but if I restart the application it never locks. After I unplug t=
he b200mini and let it sit for a while, it will work again. I can also hit =
the TCXO with a little bit of canned air and it will lock. This is using 3.=
15.0, I haven&#39;t tried earlier releases.=C2=A0</div><div><br></div><div>=
Has anyone seen this or have any suggestions?</div><div><br></div><div>chee=
rs,</div><div>Aaron</div></div>

--000000000000cb080e05acc5b9d3--


--===============2684703975958190720==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2684703975958190720==--

