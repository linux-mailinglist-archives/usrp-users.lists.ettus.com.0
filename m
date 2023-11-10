Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB917E7629
	for <lists+usrp-users@lfdr.de>; Fri, 10 Nov 2023 01:59:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CDD37385C04
	for <lists+usrp-users@lfdr.de>; Thu,  9 Nov 2023 19:59:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699577953; bh=07G6g56gDev+OpAH9FG6zwVBnNLCYWzSqcz/hO+r3KI=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=eqdnElXe1nBKJy9ew0mDpnG3zk+Fa//B1qnOGjdeJBKyKUWjTmVPO+OoX4tgenqHH
	 u3G77ME9GgKkBy7Wf+doVLtXHHJk+kMVKMccQtkXJGLFSVMtjAKKHwt089Ppg+/v9L
	 uXgQ3yEameus/lc4IvV2oIlclbL8IdBW+ytE0n6k2jfKkf0AXM+RGDinAE8b1hYAXA
	 rN/zSWzlW3/czw/eBYDr8ynfSY6TDz6aBUea94BNanTMopO3xSZq3R/jQyRCnxdetw
	 a2JHKj8uSBND0qcRb395TpRorlmXRexCV0kjzWVu06Q0PPVGFmguwcO7ZSqF59ZWpb
	 ULjxEEfAGMSfw==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 5BBA9385B35
	for <usrp-users@lists.ettus.com>; Thu,  9 Nov 2023 19:59:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="e1w0r25g";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7781bc3783fso99343985a.1
        for <usrp-users@lists.ettus.com>; Thu, 09 Nov 2023 16:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699577946; x=1700182746; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HtKBW12YpA9iVbNCmegwHtopxu3pCDEmJbAztQxJW1Q=;
        b=e1w0r25gNjs7EEyvNwbeNqbZAAOZ/OoFEC8PPgrKityC92/ggZqB1hUTv6lo9OR9yT
         Bi/HVBEcDYdxEomhN0G9dd/O9cb1VBaYooRM4bTQ6LsHwl05qYEK+WYJUiwjEqcWp9Hu
         nNMsBySqwhj+w+zMp1kothiOP2iqj9IwCp10rTtpWMZTnOXDl5i0TiulsQ19ltLjkrPE
         MfI8IuOuPXDjoEsFK2a+5RpSv4LZUSt0Rimn2jzAlcdVm8ByiARPPW+qYYu5EE4B8r0p
         AviNnjOwGWSTI4qEeTzNIW4O++g/aA8583N/s7b20dEZgB4fQRAdpBg5hv1y/04Wugwx
         advA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699577946; x=1700182746;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HtKBW12YpA9iVbNCmegwHtopxu3pCDEmJbAztQxJW1Q=;
        b=jBFx1hhp2wVjCjoWQ+TgVjIXPr6Q1EunhmrYrpCeOunW7b4wnJKUBxnVbO/kgpsmP+
         /lRVGk9BLcpflsAg091HfwhedgJFpbqHRx4EVAJB9ae4ZGXTUY71R5TRhhnbCsnIcfZ/
         0K6GCF2Ty2LjwaUAmvai2vxU2cHAci/gTYU9Wt16b/ff416SYcSRxsFqkbAUcetwYq0L
         /ShXqDMH7QK5mndkIJUtMvvbPSyvmGU3tcNpCOVVgnF5bfXNKjHBmJajVWvV7jPW7jbX
         4YS6AmhZ+34K/UaUjrBJ3y2Ly/GRxhKlqYMTL1FjhA+CT1h7QnjGEiMp0qzuCJ6pExua
         ZFrA==
X-Gm-Message-State: AOJu0Yzqi115Rzm1ymTHmISLyXDrn5q3LfwN1Mt0ZyLz3gQoxGvEOOUp
	AP7uVMZ4Lnx2a3ephXN9UZxQ3ZLmTj4=
X-Google-Smtp-Source: AGHT+IHoHDjteimTa/Hkv72z6XO24q8YKsbVAkkBLH0U8ELeHQQlOeOf9IYGgCtuJxCXL8ipJmPdHQ==
X-Received: by 2002:a05:620a:6a06:b0:775:9e9d:6186 with SMTP id uc6-20020a05620a6a0600b007759e9d6186mr4820170qkn.18.1699577945659;
        Thu, 09 Nov 2023 16:59:05 -0800 (PST)
Received: from [192.168.2.196] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id dx11-20020a05620a608b00b0077263636a95sm325923qkb.93.2023.11.09.16.59.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 16:59:05 -0800 (PST)
Message-ID: <869994db-3609-47b5-8acb-b9f837ac8cd8@gmail.com>
Date: Thu, 9 Nov 2023 19:58:56 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: German Farinas <german.farinas@gmail.com>
References: <CAJx0LdXipnYVx+KUwqqkLH=UDc0P5+V8FHU16fb=e9v5dPb0tw@mail.gmail.com>
 <76AAE55D-A2CE-4C2E-AE62-FF732586A134@gmail.com>
 <CAJx0LdVayd4DbfQ92YiVtSoU3xW-4NiLq3c=XetUWmTfZqdKpg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAJx0LdVayd4DbfQ92YiVtSoU3xW-4NiLq3c=XetUWmTfZqdKpg@mail.gmail.com>
Message-ID-Hash: J254QBO5WR3LAEF3QJM436QQ6SSGVTJR
X-Message-ID-Hash: J254QBO5WR3LAEF3QJM436QQ6SSGVTJR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: The firmware build is not compatible with the host code build
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J254QBO5WR3LAEF3QJM436QQ6SSGVTJR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6714582626683088034=="

This is a multi-part message in MIME format.
--===============6714582626683088034==
Content-Type: multipart/alternative;
 boundary="------------8wWTKy0IN0ttfVqIxQmGmOP0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8wWTKy0IN0ttfVqIxQmGmOP0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 09/11/2023 19:24, German Farinas wrote:
> I am using UHD 4.5, I may try 3.15 as you suggested. But I don't know=20
> how to install both together. My system is Ubuntu 20.04 LTS.
>
There haven't been any (documented) changes for N210 since UHD 3.13.

You may need to build 3.15 from source.=C2=A0=C2=A0=C2=A0 I haven't ever =
really managed=20
two UHD on the same system at the same time.
 =C2=A0 Some folks like to use a different install prefix when building, =
and=20
then set LD_LIBRARY_PATH and friends at runtime.
 =C2=A0 Some folks use docker containers.

What is the motivation for using UHD 4.5?=C2=A0 Unless you have hardware =
on=20
the same system that is much newer, of course.

>
>
>
> On Thu, Nov 9, 2023, 7:08 PM Marcus D Leech <patchvonbraun@gmail.com>=20
> wrote:
>
>     You may need to stage this from a much earlier rev of UHD. I don=E2=
=80=99t
>     think there have been any updates to N210 firmware in a long time.
>     So if you can tolerate UHD 3.15 that might be better for you.
>
>     Sent from my iPhone
>
>>     On Nov 9, 2023, at 7:05 PM, German Farinas
>>     <german.farinas@gmail.com> wrote:
>>
>>     =EF=BB=BF
>>     I am trying to upload the image to an usrp N210 rev2.0 but I got
>>     the following error message. Have anyone had the same error
>>     before? I need some help with this issue. See the output of the
>>     uhd_image_loader below.
>>
>>     Best,
>>     German
>>
>>     uhd_image_loader --args=3D"type=3Dusrp2,addr=3D192.168.10.2"
>>
>>     [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
>>     UHD_4.5.0.0-0ubuntu1~focal1
>>     [ERROR] [UHD] Exception caught in safe-call.
>>     =C2=A0 in ~usrp2_iface_impl
>>     =C2=A0 at
>>     /build/uhd-UJYBdq/uhd-4.5.0.0/host/lib/usrp/usrp2/usrp2_iface.cpp:=
82
>>     this->lock_device(false); -> RuntimeError:
>>     Please update the firmware and FPGA images for your device.
>>     See the application notes for USRP2/N-Series for instructions.
>>     Expected protocol compatibility number [10 to 12], but got 9:
>>     The firmware build is not compatible with the host code build.
>>     Please run:
>>
>>     =C2=A0"/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
>>     =C2=A0"/lib/bin/uhd_image_loader" \
>>     =C2=A0 =C2=A0 --args=3D"type=3Dusrp2,addr=3D192.168.10.2"
>>
>>     Error: RuntimeError: Received invalid reply 32 from device.
>>     _______________________________________________
>>     USRP-users mailing list -- usrp-users@lists.ettus.com
>>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------8wWTKy0IN0ttfVqIxQmGmOP0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 09/11/2023 19:24, German Farinas
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAJx0LdVayd4DbfQ92YiVtSoU3xW-4NiLq3c=3DXetUWmTfZqdKpg@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">
        <div>I am using UHD 4.5, I may try 3.15 as you suggested. But I
          don't know how to install both together. My system is Ubuntu
          20.04 LTS.
          <div dir=3D"auto"><br>
          </div>
        </div>
      </div>
    </blockquote>
    There haven't been any (documented) changes for N210 since UHD
    3.13.=C2=A0 <br>
    <br>
    You may need to build 3.15 from source.=C2=A0=C2=A0=C2=A0 I haven't e=
ver really
    managed two UHD on the same system at the same time.<br>
    =C2=A0 Some folks like to use a different install prefix when buildin=
g,
    and then set LD_LIBRARY_PATH and friends at runtime.<br>
    =C2=A0 Some folks use docker containers.<br>
    <br>
    What is the motivation for using UHD 4.5?=C2=A0 Unless you have hardw=
are
    on the same system that is much newer, of course.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAJx0LdVayd4DbfQ92YiVtSoU3xW-4NiLq3c=3DXetUWmTfZqdKpg@mail.gm=
ail.com">
      <div dir=3D"auto">
        <div>
          <div dir=3D"auto"><br>
          </div>
          <br>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 9, 2023, 7:=
08
              PM Marcus D Leech &lt;<a
                href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
                rel=3D"noreferrer" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</=
a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote"
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div dir=3D"auto">You may need to stage this from a much
                earlier rev of UHD. I don=E2=80=99t think there have been=
 any
                updates to N210 firmware in a long time. So if you can
                tolerate UHD 3.15 that might be better for you.=C2=A0<br>
                <br>
                <div dir=3D"ltr">Sent from my iPhone</div>
                <div dir=3D"ltr"><br>
                  <blockquote type=3D"cite">On Nov 9, 2023, at 7:05 PM,
                    German Farinas &lt;<a
                      href=3D"mailto:german.farinas@gmail.com"
                      rel=3D"noreferrer noreferrer" target=3D"_blank"
                      moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">german.farinas@gmai=
l.com</a>&gt;
                    wrote:<br>
                    <br>
                  </blockquote>
                </div>
                <blockquote type=3D"cite">
                  <div dir=3D"ltr">=EF=BB=BF
                    <div dir=3D"auto">
                      <div style=3D"font-size:12.8px" dir=3D"auto">I am
                        trying to upload the image to an usrp N210
                        rev2.0 but I got the following error message.
                        Have anyone had the same error before? I need
                        some help with this issue. See the output of the
                        uhd_image_loader below.</div>
                      <div style=3D"font-size:12.8px" dir=3D"auto"><br>
                      </div>
                      <div style=3D"font-size:12.8px" dir=3D"auto">Best,<=
/div>
                      <div style=3D"font-size:12.8px" dir=3D"auto">German=
</div>
                      <div style=3D"font-size:12.8px" dir=3D"auto"><br>
                      </div>
                      <div style=3D"font-size:12.8px" dir=3D"auto">uhd_im=
age_loader
                        --args=3D"type=3Dusrp2,addr=3D192.168.10.2"</div>
                      <div style=3D"font-size:12.8px" dir=3D"auto"><br>
                        [INFO] [UHD] linux; GNU C++ version 9.4.0;
                        Boost_107100; UHD_4.5.0.0-0ubuntu1~focal1<br>
                        [ERROR] [UHD] Exception caught in safe-call.<br>
                        =C2=A0 in ~usrp2_iface_impl<br>
                        =C2=A0 at
                        /build/uhd-UJYBdq/uhd-4.5.0.0/host/lib/usrp/usrp2=
/usrp2_iface.cpp:82<br>
                        this-&gt;lock_device(false); -&gt; RuntimeError:<=
br>
                        Please update the firmware and FPGA images for
                        your device.<br>
                        See the application notes for USRP2/N-Series for
                        instructions.<br>
                        Expected protocol compatibility number [10 to
                        12], but got 9:<br>
                        The firmware build is not compatible with the
                        host code build.<br>
                        Please run:<br>
                        <br>
=C2=A0"/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"<br>
                        =C2=A0"/lib/bin/uhd_image_loader" \<br>
                        =C2=A0 =C2=A0 --args=3D"type=3Dusrp2,addr=3D192.1=
68.10.2"<br>
                        <br>
                        Error: RuntimeError: Received invalid reply 32
                        from device.</div>
                    </div>
                    <span>_______________________________________________=
</span><br>
                    <span>USRP-users mailing list -- <a
                        href=3D"mailto:usrp-users@lists.ettus.com"
                        rel=3D"noreferrer noreferrer" target=3D"_blank"
                        moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">usrp-users@lists.=
ettus.com</a></span><br>
                    <span>To unsubscribe send an email to <a
                        href=3D"mailto:usrp-users-leave@lists.ettus.com"
                        rel=3D"noreferrer noreferrer" target=3D"_blank"
                        moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">usrp-users-leave@=
lists.ettus.com</a></span><br>
                  </div>
                </blockquote>
              </div>
            </blockquote>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------8wWTKy0IN0ttfVqIxQmGmOP0--

--===============6714582626683088034==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6714582626683088034==--
