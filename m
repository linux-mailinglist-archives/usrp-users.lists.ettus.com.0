Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CC71F241D90
	for <lists+usrp-users@lfdr.de>; Tue, 11 Aug 2020 17:49:15 +0200 (CEST)
Received: from [::1] (port=50286 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k5WWV-0006vq-G6; Tue, 11 Aug 2020 11:49:11 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:43792)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1k5WWR-0006sW-Mc
 for usrp-users@lists.ettus.com; Tue, 11 Aug 2020 11:49:07 -0400
Received: by mail-ot1-f42.google.com with SMTP id r21so10435762ota.10
 for <usrp-users@lists.ettus.com>; Tue, 11 Aug 2020 08:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DnUzLQJqMgWxAy/NpyAMXK3wIxA/KdBAx2RKhUwokw4=;
 b=Lm3GzteKdd+sUAhlnnvOL+7H1xuGAozN2masSkm0yQ8Fg6NHaqv0JPGvQr1dcs0z4O
 Ou/2JpJz/LSY2zKGZiUcFXVF1694ehzhMLL+Aq4MHaxKuK71OhY8xzYtplgghwSUDnhx
 FzQXBzmEsUgz/hdzG5IrhSjrbNHRrPpzTiJqxDI2aNQ+09SPIWYZKm6m+sjvC96Ju70T
 HJzxiWUO7eMkbJvh0rWzf2P2ywJS4nH/Slzd55yah42tI/1r6Ws29vz7NososWvrpAjg
 MVlAWq04dqUnu05+jWJBLDfJcIuIGrc6C3iY+Clom3E7zP9Tylbq+eFFozDUWSnzl4kM
 GlXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DnUzLQJqMgWxAy/NpyAMXK3wIxA/KdBAx2RKhUwokw4=;
 b=Hx8TbJHsMmHdd/Y6zML7D2BSD+hyOV6zVSylRp7acvEk53LPyRd2laStf+3maz6YpZ
 KmOXpqJ6HUCrjQTzfVJUXD8nSxy/HwVDCXdvhSfwfu0XJN0rJFXukw+gtUPfWf9e+hf1
 cbmWdWw/A+uFf/XcNd9/Zw1o7PGSaAclnydOeFzp2mC01dAMjAqnvHv0cecLMrEi26XJ
 iQlMjNNjh0KtCCh26YsaZbGLUgvahe/gXlBpP1HueJ5Lt2JDR+fQO9d2U2awxweN0XEe
 fN4G4XCK106rqnxud5G4Mg0JyDxbZKCIYidBXbNgMVDEQ/zt4mXH9TNmnfE3gNr1qmPb
 AgbQ==
X-Gm-Message-State: AOAM530wGd6qUlfrC+Gc037r+SDZ+PtZ7CWxhRxUC99SGWNXEcAxi93+
 ChDWVW1FP+xVuCVl8gmd5Nf42FrfQ7GU+daLGgXAhzVP
X-Google-Smtp-Source: ABdhPJxIgC1mC52DbysWIVqFnepmwtudk/bvBoeXTZO7PnRb0EBP3apPe0QGk4BNB9vXH5tBczCpt+MNBxUqXlBJqJ0=
X-Received: by 2002:a9d:1ca6:: with SMTP id l38mr5541021ota.58.1597160906705; 
 Tue, 11 Aug 2020 08:48:26 -0700 (PDT)
MIME-Version: 1.0
References: <015901d66fd9$db045950$910d0bf0$@beniston.com>
In-Reply-To: <015901d66fd9$db045950$910d0bf0$@beniston.com>
Date: Tue, 11 Aug 2020 11:48:15 -0400
Message-ID: <CAB__hTRcV=x0+86bdLiQ_CKP1VzDz6bUohKp5ef7XgOrzPpRsA@mail.gmail.com>
To: Jon Beniston <jon@beniston.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] B210 noise floor
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8307338672480087074=="
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

--===============8307338672480087074==
Content-Type: multipart/alternative; boundary="0000000000007ed99205ac9c0021"

--0000000000007ed99205ac9c0021
Content-Type: text/plain; charset="UTF-8"

Are you saying that if you feed the same 1MHz wide AWGN noise source (at
-100dBm) to the input at the time you run rx_samples_to_file that you
cannot see your source because it is below the noise level?

On Tue, Aug 11, 2020 at 8:21 AM Jon Beniston via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> At 436MHz with a gain setting of 76dB, NF of 5dB, BW of 2MHz, I expect the
> noise floor of the B210 to be around -174+5+10*log10(2e6)=-105dBm
>
> When I run the SDR Console software, this is what it appears to be. If I
> feed in a 1MHz wide AWGN noise source at -100dBm, it can be seen 5dB about
> the floor.
>
> However, when I try to capture the same data using the MatLab USRP
> interface
> or the rx_samples_to_file program (with same gain and sample rate), the
> noise floor seems to be at around -90dBm.
>
> (E.g: rx_samples_to_file.exe --duration 1 --rate 2000000 --freq 436e6
> --gain
> 76)
>
> Any idea why this might be? Possibly something silly, but I can't seem to
> figure out what.
>
> Thanks,
> Jon
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000007ed99205ac9c0021
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Are you saying that if you feed the same 1MHz wide AW=
GN noise source (at -100dBm) to the input at the time you run rx_samples_to=
_file that you cannot see your source because it is below the noise level?<=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Tue, Aug 11, 2020 at 8:21 AM Jon Beniston via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
At 436MHz with a gain setting of 76dB, NF of 5dB, BW of 2MHz, I expect the<=
br>
noise floor of the B210 to be around -174+5+10*log10(2e6)=3D-105dBm<br>
<br>
When I run the SDR Console software, this is what it appears to be. If I<br=
>
feed in a 1MHz wide AWGN noise source at -100dBm, it can be seen 5dB about<=
br>
the floor.<br>
<br>
However, when I try to capture the same data using the MatLab USRP interfac=
e<br>
or the rx_samples_to_file program (with same gain and sample rate), the<br>
noise floor seems to be at around -90dBm.<br>
<br>
(E.g: rx_samples_to_file.exe --duration 1 --rate 2000000 --freq 436e6 --gai=
n<br>
76)<br>
<br>
Any idea why this might be? Possibly something silly, but I can&#39;t seem =
to<br>
figure out what.<br>
<br>
Thanks,<br>
Jon<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000007ed99205ac9c0021--


--===============8307338672480087074==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8307338672480087074==--

