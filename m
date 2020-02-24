Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD4116AFFA
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2020 20:09:08 +0100 (CET)
Received: from [::1] (port=38566 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6J6J-0007UZ-76; Mon, 24 Feb 2020 14:09:07 -0500
Received: from mail-ot1-f50.google.com ([209.85.210.50]:43830)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1j6J6F-0007G3-6u
 for usrp-users@lists.ettus.com; Mon, 24 Feb 2020 14:09:03 -0500
Received: by mail-ot1-f50.google.com with SMTP id p8so9702290oth.10
 for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2020 11:08:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E3LWNGNCBZNnSD6DZIYpnJE5smYTHoV8DICJfBivPhM=;
 b=osHf7W/XqaqO1VhLneA3fXrMLBvb9TnJzbd9jY3k2EN36hSN/ssRj1avAkw4AMBNu8
 MpD7vWtsjfgEZMmGFMRMtkw+l/TOYm1W8C8wdYqqoTN/upGrcbi/5eAp7hGd3hJP11PG
 XHHJwnCfq96NRtiT0Jr5C7iyqYeLRALtI1+t/h8fd/Bytk1iJt4RdoJjnYn78p9f+kCp
 DLY1/cN83CjSpoCYuGXTxHNZa+hn4P89+48SWQYEvF3xZynQsVJud8ZMcOyd/Dbl1Kc0
 IuDOS5y9FPG+hqhMaZcTMs/WB8O4jBTNT4Cer31FJC402w8zvT0WnTBYUGjhAy2Z1uMo
 gIQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E3LWNGNCBZNnSD6DZIYpnJE5smYTHoV8DICJfBivPhM=;
 b=VBqy5q6e5ph+iH8WL9aNegIbnB+rqHgdU38PIVJWc6mkZEXK27K+OPz4MU8eLcR2cB
 +hkN3a4y92GfmF89c0KRSSpDlIMeoB95rwfJnzDhxucJLVp/7w9/kfQefIk+mdyn0vYL
 9UED3TOEJ6M/1s4vfUGGiL0aQmLd1WwDyMbIjtQCUMlrUtG53HPtrUCP572DUB61L8Ib
 07JyjIE6sDxs+KdZ/XYRSKtWdxnMl4Wyvt1HFSKTSx96qoeHoVLrFuZ4IL4/a9VMeil7
 ZWUN+NlvdvanqUIDjmAh1jnSWEHpvdUSXf5OlrpGkui3QElEXcWCrzk9Fos0hJYvWBDw
 Iakg==
X-Gm-Message-State: APjAAAWxw/OmB3LGAgs47EvI9vF3fExK+2ZJ0hc2HmFi4DkhYhRxu9Vk
 GaWtXszp5kiP+fGYeP3rBPDMPwwr0vj9cPHIdz3D0aKX
X-Google-Smtp-Source: APXvYqwexelLxMoEayweXpkG7EIbAGUrDXWLtoxSljNRhGBiSF6kxTmn/znsizsfLdAt50X98irHJiD/2PUnDxtH+GY=
X-Received: by 2002:a9d:6a85:: with SMTP id l5mr43634761otq.231.1582571302421; 
 Mon, 24 Feb 2020 11:08:22 -0800 (PST)
MIME-Version: 1.0
References: <220001d5eb45$43fe7cc0$cbfb7640$@sdr-radio.com>
In-Reply-To: <220001d5eb45$43fe7cc0$cbfb7640$@sdr-radio.com>
Date: Mon, 24 Feb 2020 11:11:19 -0800
Message-ID: <CAL263izQpcaHdrYUgDF9Zs4c+C6EnUgAib_q=KYnQdE7T4JJkg@mail.gmail.com>
To: simon@sdr-radio.com
Subject: Re: [USRP-users] E310, 3.15 LTS, Windows
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7510893013385729286=="
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

--===============7510893013385729286==
Content-Type: multipart/alternative; boundary="0000000000005016cd059f571884"

--0000000000005016cd059f571884
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Simon,

The E310 network mode was removed from UHD with the switch to the MPM based
file systems. If you need to use the network mode, you should use an older
version of UHD.

Regards,
Nate Temple

On Mon, Feb 24, 2020 at 11:05 AM Simon G4ELI via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi All,
>
>
>
> A user cannot =E2=80=98see=E2=80=99 his E310 using 3.15 LTS compiled from=
 source by me.
> The E310 is connected by Ethernet GigE.
>
>
>
> I=E2=80=99m wondering if there=E2=80=99s something special needed or if t=
here=E2=80=99s a magic
> option I should enable in the source =E2=80=93 the ENABLE_E300 option is =
checked,
> all looks good to me.
>
>
>
> There is a second person who will soon be testing just in case it=E2=80=
=99s finger
> trouble.
>
>
>
> Simon Brown, G4ELI
>
> https://www.sdr-radio.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000005016cd059f571884
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Simon,<br><br>The E310 network mode was removed from=
 UHD with the switch to the MPM based file systems. If you need to use the =
network mode, you should use an older version of UHD.<br><br>Regards,<br>Na=
te Temple</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Feb 24, 2020 at 11:05 AM Simon G4ELI via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div lang=3D"EN-GB"><div class=3D"gmail-m_665493392131414592WordSection1"=
><p class=3D"MsoNormal">Hi All,<u></u><u></u></p><p class=3D"MsoNormal"><u>=
</u>=C2=A0<u></u></p><p class=3D"MsoNormal">A user cannot =E2=80=98see=E2=
=80=99 his E310 using 3.15 LTS compiled from source by me. The E310 is conn=
ected by Ethernet GigE.<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=
=A0<u></u></p><p class=3D"MsoNormal">I=E2=80=99m wondering if there=E2=80=
=99s something special needed or if there=E2=80=99s a magic option I should=
 enable in the source =E2=80=93 the ENABLE_E300 option is checked, all look=
s good to me.<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u><=
/p><p class=3D"MsoNormal">There is a second person who will soon be testing=
 just in case it=E2=80=99s finger trouble.<u></u><u></u></p><p class=3D"Mso=
Normal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"><span>Simon Brown, G=
4ELI<u></u><u></u></span></p><p class=3D"MsoNormal"><span><a href=3D"https:=
//www.sdr-radio.com" target=3D"_blank">https://www.sdr-radio.com</a><u></u>=
<u></u></span></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div></di=
v>_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000005016cd059f571884--


--===============7510893013385729286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7510893013385729286==--

