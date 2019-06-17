Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 62814491ED
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2019 23:03:47 +0200 (CEST)
Received: from [::1] (port=58338 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hcyn4-0003iV-Eq; Mon, 17 Jun 2019 17:03:46 -0400
Received: from mail-io1-f49.google.com ([209.85.166.49]:39351)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <dbc23910@gmail.com>) id 1hcyn0-0003ZR-AY
 for usrp-users@lists.ettus.com; Mon, 17 Jun 2019 17:03:42 -0400
Received: by mail-io1-f49.google.com with SMTP id r185so18571129iod.6
 for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2019 14:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D5I0EUTtarYnZxA+/PQ5op6C0Lm89+2zNmhQDPEarM0=;
 b=VvUS1rH+M11GJxR1Wj3NuM2DS1JBW9WDPoJkAk5wRbIk4bOVlmTZupMzG6kpDf4PWg
 lAGl1KoZJC++As87hHQhjU1Ko7DBRmBHUs0seL7Y1KQm/Q1iRmZ5CMeWltPPeZkeNYn0
 sqrc3hvZ3dsJAEcInI2bx+LhfMWwus5hLK0XnSAb1zQmVV/yPO3KKGi5eQzHvNIFTnRL
 /jp+XoEayC8SG5GBs1sq8lp414IzewFMTh3QzGXCpn6YlVX+3BlaISh7CTvXtkyBFrhB
 YAfjhE4xxbzeXHPoP1ZJGObm+2OoBBHLUFrmkXMb8+AVg2LvsInC2blvIfHLtHcF/Ucm
 umZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D5I0EUTtarYnZxA+/PQ5op6C0Lm89+2zNmhQDPEarM0=;
 b=AKDkVyIvO+GwaL/fn+QfllSYj3ISbRi0En9grbkUP7EVlvnQQwHXJSmSDLfWvjxJ5A
 mYOGleYWJd4Ga3WGVY7rhZjWTZJAGEq3fJrIjSC1vc7OOZIbSxg2hkMkM7Kckhat8+yL
 EXt/IYFIr2q78KvuJ6p6yUFseXtpIwxLngm3CBBTXRFLSBp+Zfy4SCdbNDQe20+PNUFy
 ENa//gCO2lSmZNqi8LWiRwIo+GlR2SwTUYSk7w0lB8xllcZcxZY67ow8RKqPz/pkGdjb
 VKt6YdH67p+FUIgeBCobs4dX5crHWU3EZgH3OASG8t45PQdiD3hZBNVvXzuqHml9qtGG
 3rXA==
X-Gm-Message-State: APjAAAVtwO04ab5yGl7GwSvO+xqoKHdA2zwkyOMRooeriws65L/y9wXo
 /CEpGHF54JdLYsi/XrhkSx/47YJFpqAHQZ8DnSX4Sw==
X-Google-Smtp-Source: APXvYqxU0/VW05M1V+kcLnA8QDy+Koi3kgEePZo2HGir9XT6O3Ok2xvf3OjZLjDfCXN8BEZnmxp1Df8V8hfNcs5h+Ec=
X-Received: by 2002:a05:6602:220a:: with SMTP id
 n10mr17297410ion.205.1560805381668; 
 Mon, 17 Jun 2019 14:03:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAO_1D1XtztkMvVKD2VG9CXFi+U492yWKakfmfaWS54Fxp5wywQ@mail.gmail.com>
 <CAL263iy3yZByOG5W_O6wuTPL+LAVJz4VmR6o0PznfAHDJnhUtw@mail.gmail.com>
In-Reply-To: <CAL263iy3yZByOG5W_O6wuTPL+LAVJz4VmR6o0PznfAHDJnhUtw@mail.gmail.com>
Date: Mon, 17 Jun 2019 15:02:50 -0600
Message-ID: <CAO_1D1XkrP_9HvzV5Ds9_QDEVAmdcFXqdpkBedvMCUG9wvCSYw@mail.gmail.com>
To: Nate Temple <nate.temple@ettus.com>
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
From: Donnie C via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Donnie C <dbc23910@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============0827792271012935609=="
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

--===============0827792271012935609==
Content-Type: multipart/alternative; boundary="0000000000005684c5058b8b52f2"

--0000000000005684c5058b8b52f2
Content-Type: text/plain; charset="UTF-8"

It is an SG-1 as far as I understand, the end of my product number is D

On Mon, Jun 17, 2019, 2:56 PM Nate Temple <nate.temple@ettus.com> wrote:

> Hi Donnie,
>
> Is your E310 a SG1 or SG3?
>
>
> https://kb.ettus.com/Ettus_USRP_E300_Embedded_Family_Hardware_Resources#SD_Card_Images
>
> Regards,
> Nate Temple
>
> On Mon, Jun 17, 2019 at 1:53 PM Donnie C via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello,
>>
>> I'm currently trying to get the E310 to boot with the most recent image
>> release (
>> http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg1/sdimage-gnuradio-demo.direct.xz
>> ) which I burned onto an microSD card using bitmap, but I cannot serial
>> connect into it and the device has all the antennae LEDs on. I cannot find
>> what the LEDs mean or why the E310 wont boot
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000005684c5058b8b52f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><span style=3D"font-family:sans-serif;font-size:12.8px">I=
t is an SG-1 as far as I understand, the end of my product number is D</spa=
n></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Mon, Jun 17, 2019, 2:56 PM Nate Temple &lt;<a href=3D"mailto:nate.temp=
le@ettus.com">nate.temple@ettus.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font=
-family:arial,helvetica,sans-serif">Hi Donnie,<br><br>Is your E310 a SG1 or=
 SG3? <br><br><a href=3D"https://kb.ettus.com/Ettus_USRP_E300_Embedded_Fami=
ly_Hardware_Resources#SD_Card_Images" target=3D"_blank" rel=3D"noreferrer">=
https://kb.ettus.com/Ettus_USRP_E300_Embedded_Family_Hardware_Resources#SD_=
Card_Images</a><br><br>Regards,<br>Nate Temple</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 17, 2019 at=
 1:53 PM Donnie C via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr">Hello,<div><br></div><div>I&#39;m currently trying to get the =
E310 to boot with the most recent image release ( <a href=3D"http://files.e=
ttus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg1/sdimage-gnuradio-demo.di=
rect.xz" target=3D"_blank" rel=3D"noreferrer">http://files.ettus.com/e3xx_i=
mages/e3xx-release-4/ettus-e3xx-sg1/sdimage-gnuradio-demo.direct.xz</a> ) w=
hich I burned onto an microSD card using bitmap, but I cannot serial connec=
t into it and the device has all the antennae LEDs on. I cannot find what t=
he LEDs mean or why the E310 wont boot</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000005684c5058b8b52f2--


--===============0827792271012935609==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0827792271012935609==--

