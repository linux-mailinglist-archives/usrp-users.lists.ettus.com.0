Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB011491C0
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2019 22:56:47 +0200 (CEST)
Received: from [::1] (port=51028 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hcygI-0002Oq-SD; Mon, 17 Jun 2019 16:56:46 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:38436)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1hcygE-0002H6-LC
 for usrp-users@lists.ettus.com; Mon, 17 Jun 2019 16:56:42 -0400
Received: by mail-ot1-f42.google.com with SMTP id d17so11135019oth.5
 for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2019 13:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QxVWag1+MrOUeBhxYoUStAG3kRSFYjYAIX/WizCn3IU=;
 b=hz7kpoedWpiK507kTwPrKMkn0GQJsuG9UQolZS2jQJPAcFYlfMFzIh7Q4yjo5TG2Ac
 LSkGfN2++q/FT8KQx6Q9ZmyIJsXcZxWjtMZPsmkRWcl5Fh6ZYCS7UJdBBwR41Rko/DR4
 tKB3qKUREL7Y/P/0u3A1qL9jnWaDHZcMV1k2J7MZZqiYqtIdSI9u5cWbutX0CCdcNb4M
 0GRK2GNanM/PObODgvb5Yf+WfIF77KQcLm5ILqCXXCMt3lb6e0VkKr3YQ3IZogk+6tuu
 lLGSmjnePIbHJBm/Q4EhX/7d1pqXufrs3LyLlba4BLw+4ZAZ9EFjCGm2YHY19pF+QZiR
 Rcog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QxVWag1+MrOUeBhxYoUStAG3kRSFYjYAIX/WizCn3IU=;
 b=kgvUAyVRfrcrEnfVi+bzFQEnW2MqLkPkfE1z28PxZOLrdMBlAs6wAHc1qFxw2Hthcg
 nIjvdDFPXbdN+jL/Fbk83R5EtxTaYGJ2ae4FhAPGFjlVfUxGCODYV6iM3n1mY4vnMXXz
 URLp+n6hvgJzqsr/xKKrDwGr+Cf9LN17z/D1rKYTn/uKkII62yFB0tBYMCQOj5dGO9gF
 a8e17e0WYGe+7up8R9vUlywvFyl2D6JCCLsjq62wZDUGMgWDcYP84VU2ztJjBKvxZzeZ
 C7CH41Qjqho7qiR2AJ/SbzITesbqoOUv/tsB/BHIXhRSZW2YcUjYkX/km/OQKz6oXFQp
 x/aA==
X-Gm-Message-State: APjAAAV+eaeCVTIFRyVUfbJWleG/YEh4o0Wtn8ib/6CUEhKJGid3Airq
 DiGTyiY+w3RSz9IiMJWc2jwal6gZpUwfIMBSCHpu3/aJ
X-Google-Smtp-Source: APXvYqwDdCHUY3SAkvNKdz3wGpg49RTdKd4Di1EiSD9JZEGYPN2mR/Zyu12DpSRzqCPhz028hwcbb7H1iyFhQ/o6kK0=
X-Received: by 2002:a05:6830:160c:: with SMTP id
 g12mr1528288otr.231.1560804962077; 
 Mon, 17 Jun 2019 13:56:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAO_1D1XtztkMvVKD2VG9CXFi+U492yWKakfmfaWS54Fxp5wywQ@mail.gmail.com>
In-Reply-To: <CAO_1D1XtztkMvVKD2VG9CXFi+U492yWKakfmfaWS54Fxp5wywQ@mail.gmail.com>
Date: Mon, 17 Jun 2019 13:56:47 -0700
Message-ID: <CAL263iy3yZByOG5W_O6wuTPL+LAVJz4VmR6o0PznfAHDJnhUtw@mail.gmail.com>
To: Donnie C <dbc23910@gmail.com>
Subject: Re: [USRP-users] E310 Startup/Boot not working
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7229067454478642197=="
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

--===============7229067454478642197==
Content-Type: multipart/alternative; boundary="000000000000542119058b8b3956"

--000000000000542119058b8b3956
Content-Type: text/plain; charset="UTF-8"

Hi Donnie,

Is your E310 a SG1 or SG3?

https://kb.ettus.com/Ettus_USRP_E300_Embedded_Family_Hardware_Resources#SD_Card_Images

Regards,
Nate Temple

On Mon, Jun 17, 2019 at 1:53 PM Donnie C via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> I'm currently trying to get the E310 to boot with the most recent image
> release (
> http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg1/sdimage-gnuradio-demo.direct.xz
> ) which I burned onto an microSD card using bitmap, but I cannot serial
> connect into it and the device has all the antennae LEDs on. I cannot find
> what the LEDs mean or why the E310 wont boot
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000542119058b8b3956
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Donnie,<br><br>Is your E310 a SG1 or SG3? <br><br><a=
 href=3D"https://kb.ettus.com/Ettus_USRP_E300_Embedded_Family_Hardware_Reso=
urces#SD_Card_Images">https://kb.ettus.com/Ettus_USRP_E300_Embedded_Family_=
Hardware_Resources#SD_Card_Images</a><br><br>Regards,<br>Nate Temple</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Mon, Jun 17, 2019 at 1:53 PM Donnie C via USRP-users &lt;<a href=3D"mailt=
o:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">He=
llo,<div><br></div><div>I&#39;m currently trying to get the E310 to boot wi=
th the most recent image release ( <a href=3D"http://files.ettus.com/e3xx_i=
mages/e3xx-release-4/ettus-e3xx-sg1/sdimage-gnuradio-demo.direct.xz" target=
=3D"_blank">http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg=
1/sdimage-gnuradio-demo.direct.xz</a> ) which I burned onto an microSD card=
 using bitmap, but I cannot serial connect into it and the device has all t=
he antennae LEDs on. I cannot find what the LEDs mean or why the E310 wont =
boot</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000542119058b8b3956--


--===============7229067454478642197==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7229067454478642197==--

