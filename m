Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CFE1DD5D4
	for <lists+usrp-users@lfdr.de>; Thu, 21 May 2020 20:18:03 +0200 (CEST)
Received: from [::1] (port=55340 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jbplZ-0004WS-K7; Thu, 21 May 2020 14:18:01 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:47075)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1jbplV-0004Cs-Hu
 for usrp-users@lists.ettus.com; Thu, 21 May 2020 14:17:57 -0400
Received: by mail-ot1-f54.google.com with SMTP id g25so6207047otp.13
 for <usrp-users@lists.ettus.com>; Thu, 21 May 2020 11:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=snHqcMsrqVA4SocpZ1KDkuQ/7oVcc3MBc2VjHBi4cHM=;
 b=TkDamuYUqdh3df3/FVhfXvvVRF2/JaNHvFvnXAuESLA7S00pK3sHYqz0MMummjMSPk
 ilhNQu2nfzEU0PSr8jCMPqf0rOMHBq7WP3Ib+enpaTksj2Jm9Y6eeWPGTEmNckOcCs2t
 jUCnsWF0GBJC7FzAJhV5Bl84kEyTCD5xFeYmniqsy6udwKJY/fRFhBiSxgzcEUtXAq9H
 iSqejO97z+DnKMY0qkqxJuU/wh7ut9WR0N7tFt45VY2BzA+Yaq8olAOHgRL+UsmElNVt
 Zrhkm6e1eVOzJ5HBEW0IuKszE1OctVE4NnAQLg9Cd6rjuItsdoG+AGbTajCNGQ611LB8
 FO9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=snHqcMsrqVA4SocpZ1KDkuQ/7oVcc3MBc2VjHBi4cHM=;
 b=ocxaTWxlgi3GcbCsNxy9D1JcI5F5TZgRJs1jIHf2ZwO8Moq/ugGzxXv5CiwzaRNL8m
 hM9t9aLxBzqTVdzlOaN1PYe2uvEieuP0GEqPZ8jIu762/gVOzUJvP4jRWNfuRBmLijT0
 bcRqbzeYB6n/U96s+M7fc7iQVdMnFAyl8UjqV5SP0jVPl3ZFUFqkI4owVpoWJwjtfPx4
 GS39Vg6dGCb8nmNZkZQlD3bscEQ9FPIiReW2t8unZO4zEVqPjliM7oRrturfHQun7/2r
 i0sjADClIlEHtjxSwivcCFq1jTIlk2DHRdTSb2iu8RZIwCWiynYWOQIf+3bjUnLaPjZB
 gnWA==
X-Gm-Message-State: AOAM530qDw7dzHgE69bYq3DlHSQWhVPfeohlLVcJ+b/s/ygb74rrsSyI
 meyYicPpJWlL7Pbz7qth4t+O4uyGWFGvd1JFvO8=
X-Google-Smtp-Source: ABdhPJwdXWgxbqI/vhkOwlUfH04yvBWqfzIP4tK2wBvPE+TGYwNdIU7B4pfp+5myZXai+NnXXgIv24ckg4WKg8dMKuI=
X-Received: by 2002:a9d:906:: with SMTP id 6mr7777251otp.354.1590085036719;
 Thu, 21 May 2020 11:17:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAP2eGPhuOxNCAMULg=PFJBoGTP+2zAtd0YSMdGP-zH6Jse_D5w@mail.gmail.com>
In-Reply-To: <CAP2eGPhuOxNCAMULg=PFJBoGTP+2zAtd0YSMdGP-zH6Jse_D5w@mail.gmail.com>
Date: Thu, 21 May 2020 14:17:05 -0400
Message-ID: <CAEXYVK6W5UNvNUFuGaMU0iEWBkpPH8njt-FFkUdGLmqcwkER1g@mail.gmail.com>
To: Carlos Alberto Ruiz Naranjo <carlosruiznaranjo@gmail.com>
Subject: Re: [USRP-users] Multiple DMA_FIFO blocks
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7076155918656887580=="
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

--===============7076155918656887580==
Content-Type: multipart/alternative; boundary="000000000000c6c28d05a62c8570"

--000000000000c6c28d05a62c8570
Content-Type: text/plain; charset="UTF-8"

On Thu, May 21, 2020 at 1:55 PM Carlos Alberto Ruiz Naranjo via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> Is it possible to instance multiple DMA_FIFO blocks? I suppose I have to
> do it manually in the x300_core.v. Is there any limitation?
>

You might need to make more ports on the DDR3 controller.  You'll
ultimately be limited by the DDR3 controller for throughput.

Brian

--000000000000c6c28d05a62c8570
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, May 21, 2020 at 1:55 PM Carlos Al=
berto Ruiz Naranjo via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"g=
mail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div>Hello,</div><div><br></div><div><span lang=3D"en"><span title=3D""=
>Is it possible to instance multiple DMA_FIFO blocks?</span> <span title=3D=
"">I suppose I have to do it manually in the x300_core.v.</span> <span titl=
e=3D"">Is there any limitation?</span></span></div></div></blockquote><div>=
<br></div><div>You might need to make more ports on the DDR3 controller.=C2=
=A0 You&#39;ll ultimately be limited by the DDR3 controller for throughput.=
</div><div><br></div><div>Brian</div></div></div>

--000000000000c6c28d05a62c8570--


--===============7076155918656887580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7076155918656887580==--

