Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E17B35CDB2
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 18:42:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F21A43850FD
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 12:42:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=virginia.edu header.i=@virginia.edu header.b="gQcrjlHv";
	dkim-atps=neutral
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	by mm2.emwd.com (Postfix) with ESMTPS id D40BA3850E5
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 12:41:57 -0400 (EDT)
Received: by mail-io1-f43.google.com with SMTP id s16so8844054iog.9
        for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 09:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=virginia.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=l6aLNEpjRJs+P5oHH47vMObn69HyMf4stSwO26g+zTQ=;
        b=gQcrjlHvAp0xXep36r/tv4r6jO0JuuL/Nx+3GeVSonz5ld7KcO3rTkxvX5vjBe+FZv
         DTjTslJ5UsWmW1EmNXggjygvne6QBA3u4kK84nYy31mCF9Kf7kBSEXGH3qV/uj8W++p1
         Uqc3w+IC8PjuqEebiinvrhHDOhmydEZTvFRxWeQmC877xHSLmu267cld0Ybdgruy7ca1
         p37WMqAAucnybUO+rWGB4yRAEY+qrx1Nv+uVy0oX8QEHjQGhDbVS/S5braTsfiuosY2i
         LjnhqNrAdE2ukRwGljs/PUB4xmFjq/E4Fpo2aZhdfdfgq6RBoY9xzFFWx7OwdeMbkhrd
         u4uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=l6aLNEpjRJs+P5oHH47vMObn69HyMf4stSwO26g+zTQ=;
        b=NqL20F1UYZ3rOnl+8qN1MhP/KYJvBbnyftxO3vjiGKc4BEt/+zcq5WT6E2PMSVirJz
         aX3iDmAYK0xXeV3aqr9NgcDCPUQEKs6D52l4JZT4LoOo/wx9QRROWTH9TbKFK7ynQXyI
         sR/7CIAWx7RyizxRpsnpfuYoqYZQpTRK287VVHpERul8t3LPWV79oMY+wojOSYqVeI+v
         Y0GKf81dCVsIqbCxu0l5spSXZCr8k53CJkWlVZAqSVc++C93jhG+sCO1WQRszPUuyRj9
         xzIIBq/GkB9yIXvkBD7acfYWwBKGLpi8o/gQqXavdo2+a43MKaQ8s0im+KhdBreyNlVG
         JpdQ==
X-Gm-Message-State: AOAM530FDZDew29i+ZBP0SRcfoY/1xZHKgQjKjKlSIHoZknFxuHCUSsN
	s+/x0jB6XiHRRU4l4AVJM8DFT8CvpbK7UZXwdRLLABeTU4k=
X-Google-Smtp-Source: ABdhPJwsy8DrIWBOqCd8GGmv1c6ipLEfv+YEpmC6qZrRQCElpwR3WaPfParUyAKcssoTyDBWugL6BiK+xXNps/cGm9U=
X-Received: by 2002:a6b:8fc8:: with SMTP id r191mr16732534iod.145.1618245717212;
 Mon, 12 Apr 2021 09:41:57 -0700 (PDT)
MIME-Version: 1.0
References: <JA2MRIzFOSKLo9kP4Ql6TOblW2j1MCRkMV0mVGcXg@lists.ettus.com>
In-Reply-To: <JA2MRIzFOSKLo9kP4Ql6TOblW2j1MCRkMV0mVGcXg@lists.ettus.com>
From: Dustin Widmann <dw2zq@virginia.edu>
Date: Mon, 12 Apr 2021 12:41:45 -0400
Message-ID: <CAAv0A=PQgiHED-hxZSVn1QUkwaK4x=d=cqprNiiFSDCLryjpWw@mail.gmail.com>
To: paradis@kwesst.com
Message-ID-Hash: MEFPRLIODYJCIHGOR46VWWWA2JYPHIZV
X-Message-ID-Hash: MEFPRLIODYJCIHGOR46VWWWA2JYPHIZV
X-MailFrom: dw2zq@virginia.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini-i isn't found by uhd_find_devices
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MEFPRLIODYJCIHGOR46VWWWA2JYPHIZV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8441534782411078421=="

--===============8441534782411078421==
Content-Type: multipart/alternative; boundary="000000000000225e7805bfc931a2"

--000000000000225e7805bfc931a2
Content-Type: text/plain; charset="UTF-8"

I've had this issue before too. It is worth noting that you can reset the
USB interface programmatically.
See https://askubuntu.com/a/661 for an example.


On Mon, Apr 12, 2021, 12:06 PM <paradis@kwesst.com> wrote:

> Hi everyone, I'm just starting out with the USRP B205 mini-i, and I'm
> having some issues.
>
> I'm running Ubuntu 20.04 LTS, I've also installed the UHD toolchain using
> the instructions on the Ettus website (Building and Installing the USRP
> Open-Source toolchain (UHD and GNURadio) on Linux. The UHD version is
> v4.0.0.0.
>
> So, after installing UHD and running the 'make test' diagnostic,
> everything passes 100%, so it seems like everything is working correctly.
> I've also made sure that the 'uhd-usrp.rules' file has been copied to the
> /etc/udev/rules.d directory.
>
> When I plug in the B205 mini and do a 'lsusb', it finds a device with the
> VID/PID of 2500:0022 called "Cypress WestBridge". This is the B205 because
> when I unplug and run 'lsusb' it disappears, then if I plug it back in it
> reappears. Great!
>
> So next I try 'uhd_find_devices' and it finds nothing. It returns with:
>
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_4.0.0.HEAD-0-g90ce6062
>
> No UHD Devices Found
>
> Questions:
>
> 1) Should the uhd-usrp.rules have a specific entry for the B205?
>
> 2) Is is correct that the B205 comes up as a "Cypress WestBridge"? I know
> it's the B205 because when I unplug it, it disappears, and when I plug it
> back in, it reappears.
>
> 3) uhd_find_devices does not throw any errors, it just doesn't find the
> device, could there be a hardware problem?
>
> Any help is appreciated, thanks!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000225e7805bfc931a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I&#39;ve had this issue before too. It is worth noting th=
at you can reset the USB interface programmatically.=C2=A0<div dir=3D"auto"=
>See=C2=A0<a href=3D"https://askubuntu.com/a/661">https://askubuntu.com/a/6=
61</a> for an example.</div><div dir=3D"auto"><br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 12, 202=
1, 12:06 PM  &lt;<a href=3D"mailto:paradis@kwesst.com">paradis@kwesst.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p>Hi everyone, I&#39=
;m just starting out with the USRP B205 mini-i, and I&#39;m having some iss=
ues.</p><p>I&#39;m running Ubuntu 20.04 LTS, I&#39;ve also installed the UH=
D toolchain using the instructions on the Ettus website (Building and Insta=
lling the USRP Open-Source toolchain (UHD and GNURadio) on Linux. The UHD v=
ersion is v4.0.0.0.</p><p>So, after installing UHD and running the &#39;mak=
e test&#39; diagnostic, everything passes 100%, so it seems like everything=
 is working correctly. I&#39;ve also made sure that the &#39;uhd-usrp.rules=
&#39; file has been copied to the /etc/udev/rules.d directory.</p><p>When I=
 plug in the B205 mini and do a &#39;lsusb&#39;, it finds a device with the=
 VID/PID of 2500:0022 called &quot;Cypress WestBridge&quot;. This is the B2=
05 because when I unplug and run &#39;lsusb&#39; it disappears, then if I p=
lug it back in it reappears. Great!</p><p>So next I try &#39;uhd_find_devic=
es&#39; and it finds nothing. It returns with: </p><p>[INFO] [UHD] linux; G=
NU C++ version 9.3.0; Boost_107100; UHD_4.0.0.HEAD-0-g90ce6062</p><p>No UHD=
 Devices Found</p><p>Questions:</p><p>1) Should the uhd-usrp.rules have a s=
pecific entry for the B205? </p><p>2) Is is correct that the B205 comes up =
as a &quot;Cypress WestBridge&quot;? I know it&#39;s the B205 because when =
I unplug it, it disappears, and when I plug it back in, it reappears.</p><p=
>3) uhd_find_devices does not throw any errors, it just doesn&#39;t find th=
e device, could there be a hardware problem?</p><p>Any help is appreciated,=
 thanks!</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>

--000000000000225e7805bfc931a2--

--===============8441534782411078421==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8441534782411078421==--
