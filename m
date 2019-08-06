Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E978296E
	for <lists+usrp-users@lfdr.de>; Tue,  6 Aug 2019 03:54:13 +0200 (CEST)
Received: from [::1] (port=43890 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1huofy-0003zC-MT; Mon, 05 Aug 2019 21:54:10 -0400
Received: from mail-oi1-f199.google.com ([209.85.167.199]:34797)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <mikio@dolphinsystem.jp>)
 id 1huofu-0003un-TC
 for usrp-users@lists.ettus.com; Mon, 05 Aug 2019 21:54:06 -0400
Received: by mail-oi1-f199.google.com with SMTP id i16so33291446oie.1
 for <usrp-users@lists.ettus.com>; Mon, 05 Aug 2019 18:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dolphinsystem-jp.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=KrAQewKBpNia+gS3ghh0HCjDG28Ks2PCcNQ7N0wSLfg=;
 b=v0GK6do95GMGz7Je5VEEg+tJzUxuWuXFVOWrB6V4k7sq3uspWuI+g1tt8UyH03t0pp
 3vVBjMT2MSr4bBDBHfC54aI3afkJCFmxM3hGwgmKkZ/nd5h2AYDyrxuG6AETemfMlEar
 RThAAjOYllqyHxSqNGLKt5iHsEpwKB1YP1IsfWybjJNaSEkDgyzk615QweSvEwSeSj2d
 OkKEu/y5IZKr/VwXaXndaSdwtdxMkzMHou/BxThR+G0sldxzhnBZwTUuM6ugWhMRLem9
 hGAu613C9x4VhBLNp76DRy7yVVFIW0aXrB3t/4gvxjrSC5sOct9VRfRMRPKk4Nh95y/s
 ldog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=KrAQewKBpNia+gS3ghh0HCjDG28Ks2PCcNQ7N0wSLfg=;
 b=FQfzFpoZ1hJcX+fM0oqusCYgKm8k/aV/ADCBXcXWP0BtP93o245l2BvxS4O3R4G4/O
 zJNyalpEczCHxDM8+F7JIxkJD1BAfVg0Pw7RzgP5z2CY56oR2bR0oXY9ydc6K8a9IAQy
 /Gg65u9OYRrI1ZIjj9XEXjsX5G+ia8ju04u9O+tSfeDxQy8mvXtH99uNgHF+q0nmy6Qi
 88BPrl0WUjRZZdSMIYocEfELaQS9cOIFPfvRzFtP5Kums/5lh+5O3COIfDqvpXAb1Iqu
 MJf8VFz15Zw+qSiEhOODly5vYwJ+8/vR9WvzJ6cpc39lqL5H8+MhZYanddKE2BVqONn1
 DOpg==
X-Gm-Message-State: APjAAAXTNjyoDsspSbRdFxfTwvHulb+01gphPrw6EvjXEfNzRH4oHHE6
 EDZDBv0T+y0zA4a7I4PEL1cBcC2d2CqloWzcyAM9EzLg
X-Google-Smtp-Source: APXvYqzggthhNDZVq0TMsd/XH9Y02F6lGQEsW6hL2mHZUehQc2XZw/+1Ny97ahAzkoPh4Htdd5GirZhOtFQU9AbVViw=
X-Received: by 2002:a9d:c22:: with SMTP id 31mr928621otr.48.1565056405571;
 Mon, 05 Aug 2019 18:53:25 -0700 (PDT)
MIME-Version: 1.0
References: <CABfZwcfUtdirTnveh3KHC9wsW=cVT+u15f_GHNuj5zrsi=4i6Q@mail.gmail.com>
 <6bea3f0ba01bb41cc9b656fdf53fcfc068944a1b.camel@ettus.com>
In-Reply-To: <6bea3f0ba01bb41cc9b656fdf53fcfc068944a1b.camel@ettus.com>
Date: Tue, 6 Aug 2019 10:52:50 +0900
Message-ID: <CABfZwce7THbH_EpExm9JoHRE8+8RcXKiLKs2E8GEkB++w_ut9w@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Short PCI Express link cable for X310
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
From: =?utf-8?b?56aP5bO25bm56ZuEIHZpYSBVU1JQLXVzZXJz?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?56aP5bO25bm56ZuE?= <mikio@dolphinsystem.jp>
Content-Type: multipart/mixed; boundary="===============6506586665014418933=="
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

--===============6506586665014418933==
Content-Type: multipart/alternative; boundary="0000000000001baa40058f691701"

--0000000000001baa40058f691701
Content-Type: text/plain; charset="UTF-8"

Hi,
I found these PCI Express cables on Digikey.

50cm : WM10842-ND
1M : WM1146-ND
2M : WM3556-ND
3M : WM1147-ND
5M : WM1163-ND
7M : WM8578-ND

Thanks.

--0000000000001baa40058f691701
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I found these PCI Express cables on Digikey.</div>=
<div><br></div><div>50cm :=C2=A0WM10842-ND<br>1M :=C2=A0WM1146-ND</div><div=
>2M :=C2=A0WM3556-ND<br>3M :=C2=A0WM1147-ND<br>5M :=C2=A0WM1163-ND<br>7M :=
=C2=A0WM8578-ND<br></div><div><br></div><div>Thanks.</div><div><br></div></=
div>

--0000000000001baa40058f691701--


--===============6506586665014418933==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6506586665014418933==--

