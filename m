Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA227E7678
	for <lists+usrp-users@lfdr.de>; Fri, 10 Nov 2023 02:22:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A0C1738485C
	for <lists+usrp-users@lfdr.de>; Thu,  9 Nov 2023 20:21:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699579319; bh=TGypi2TP6OqVhm/pfPthFWuuXExSxui1uIrmh+fCs/4=;
	h=Date:References:From:To:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=XdEKnnr92C7WTjYkdyFP8uaJowJy1dd6nsykrEBFMuQkQryOrlqpn5Drk9ZRKCrjp
	 1Yb2mwAEGkxhItG3yc9D2RrypYGhYhO3G4Cu06qa3QduIX8REyeVHu/H1QR1uTos2c
	 3tdNi2KWz+Zg4QkvjJJI1VMAT0vwBfyB5OVyxq2W5ljOU/0hD3uoQ19YOGuDI2MhOv
	 noYq1gCoFIff4r/Kncz5FhItZYcXP62pMOvAAXjiAsS4Ux0VpHNevKakUT7SzTln2P
	 rOKWzflJdSJZcq89TCwpsArjzCYOT92uIBjyIozrTKR4uGOZw2KPgCnYfvnEXpNBg3
	 ZRhl16PI4uPBg==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id E710738444B
	for <usrp-users@lists.ettus.com>; Thu,  9 Nov 2023 20:21:23 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QvX6pdhJ";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7789aed0e46so100315585a.0
        for <usrp-users@lists.ettus.com>; Thu, 09 Nov 2023 17:21:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699579283; x=1700184083; darn=lists.ettus.com;
        h=in-reply-to:to:from:content-language:references:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pTmX7Wzl+CMfrEzqNNJZkwgGdmeVSLAZMkFYyHBlJnI=;
        b=QvX6pdhJT61JSmWsdLvYm5GsNZg+ayZtRlrGiSjPlEk5RbfkubRCs/c5Cbkaj7/IPu
         N1gmvFlKZKf+JNQ4qAhovAIO3vjlbvqCjQqLrFHXuIuXSm2tlVOBUwDufKbZvFmHmzwE
         kLaNCXq5unuRUgZm57MRcP6cLxFr2WV9RyHcJOpnmMfByKs+Dwg2YXx46yio/BMyvBiy
         N3lm/yKilu+gN2ugC9tSWhmVXlCzC20Q6lWqdW+bqFhmOEE57y1ttChhobWQK8X/y/h7
         WhhWbEwMqbRJU1T40ooTvbWpZcJdFdfOPKvXm9nYVLCtnf917d2m3sAUsOej+VGB2XAy
         B+5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699579283; x=1700184083;
        h=in-reply-to:to:from:content-language:references:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pTmX7Wzl+CMfrEzqNNJZkwgGdmeVSLAZMkFYyHBlJnI=;
        b=ieobWLLNwHQ67bCjyhQEJvEbGs01Z/W/D0PMnnXsgli/+c1lzXb3HuOaq2QFpXzSHj
         FgMG75e0VRVT1X3Ob8HQh85kdpxBnSqIkuc/QZPRChVQ0pDanU6AOz+Um0UQ/ibTOwMZ
         Nu+Rkl6V7bhLlntgkL4rqs52SEenjlPvDU2f7X52GsiGf/67Bg7A2wutUuGFWSBHhOkC
         gnRwuQsPPPkG6a4bFrN2vSwA2ZY4RgUfuzpmqA9Y8Bi6Y83AFEJrC6FRSnEvlRrvWyZJ
         ESJBSbtqnA3suq6NqTMNPFWqrNApytuNKfVHAx/Kmt/lfc6gBDCaoydZ3GRlbgkJLFNY
         Ooeg==
X-Gm-Message-State: AOJu0YzcKCiLU7/d+b40oai3ewwnApon1HZTQoA/JIHFtPFFLmz56oqz
	Ctod8HKowDIrajoy/LRwSbAIwdcmoZA=
X-Google-Smtp-Source: AGHT+IEzlDc27nddWxl17a0JfjTOvuTXr/E/k7FyPlvHvXZONyA1N9CiMM7FhF6xpKNhjc5gKOwjJg==
X-Received: by 2002:a05:620a:4510:b0:76d:83ae:fdcd with SMTP id t16-20020a05620a451000b0076d83aefdcdmr7205532qkp.57.1699579283057;
        Thu, 09 Nov 2023 17:21:23 -0800 (PST)
Received: from [192.168.2.196] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id k23-20020a05620a07f700b0076ef3e6e6a4sm341594qkk.42.2023.11.09.17.21.22
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 17:21:22 -0800 (PST)
Message-ID: <d9fbc0fc-6fb2-4a32-aedd-d40ce22e00e3@gmail.com>
Date: Thu, 9 Nov 2023 20:21:13 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
References: <CAJx0LdWSR5UORFDNLvhvY_r-TZOo6Okqr9wKN18==+UxiR64uQ@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
In-Reply-To: <CAJx0LdWSR5UORFDNLvhvY_r-TZOo6Okqr9wKN18==+UxiR64uQ@mail.gmail.com>
X-Forwarded-Message-Id: <CAJx0LdWSR5UORFDNLvhvY_r-TZOo6Okqr9wKN18==+UxiR64uQ@mail.gmail.com>
Message-ID-Hash: 5SR26RL4SJN7O6ZCVBXXBMKO3PNYBIGY
X-Message-ID-Hash: 5SR26RL4SJN7O6ZCVBXXBMKO3PNYBIGY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Fwd: The firmware build is not compatible with the host code build
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5SR26RL4SJN7O6ZCVBXXBMKO3PNYBIGY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6784326902056825043=="

This is a multi-part message in MIME format.
--===============6784326902056825043==
Content-Type: multipart/alternative;
 boundary="------------7C0G0b2TS4LxGWY43PCPdvgm"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7C0G0b2TS4LxGWY43PCPdvgm
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Those Rev numbers are hardware revs, but it may well also indicate that=20
its on-board FPGA image is quite old--old enough that
 =C2=A0 modern image-loader tooling cannot cope, which is why a=20
"hill-climbing" approach may be necessary.

I'll note that Ubuntu packaged UHD 3.15 for 20.04 (Focal):

https://packages.ubuntu.com/search?suite=3Dfocal&keywords=3Duhd

So, if you can extricate yourself (temporarily) from the UHD 4.5 that=20
you likely installed through a PPA, the default
 =C2=A0 UHD package for Ubuntu 20.04 is what you want.




-------- Forwarded Message --------
Subject: 	Re: [USRP-users] The firmware build is not compatible with the=20
host code build
Date: 	Thu, 9 Nov 2023 20:11:41 -0500
From: 	German Farinas <german.farinas@gmail.com>
To: 	Marcus D. Leech <patchvonbraun@gmail.com>


speed
I have two N210s. One of the USRPs N210 is working fine with UHD 4.5, I=20
suppose that one is rev4 although it doesn't say it explicitly at the=20
back of the case. However, the other USRP N210 says explicitly rev2 at=20
the back. This one is giving me the error.


About the motivation for having UHD 4.5 none in specific. I am just new=20
to UHD and I installed it via command line in Ubuntu 20. It was just=20
easier. But in the future I may work with X300.


On Thu, Nov 9, 2023, 7:59 PM Marcus D. Leech <patchvonbraun@gmail.com>=20
wrote:

    On 09/11/2023 19:24, German Farinas wrote:
>     I am using UHD 4.5, I may try 3.15 as you suggested. But I don't
>     know how to install both together. My system is Ubuntu 20.04 LTS.
>
    There haven't been any (documented) changes for N210 since UHD 3.13.

    You may need to build 3.15 from source.=C2=A0=C2=A0=C2=A0 I haven't e=
ver really
    managed two UHD on the same system at the same time.
     =C2=A0 Some folks like to use a different install prefix when buildi=
ng,
    and then set LD_LIBRARY_PATH and friends at runtime.
     =C2=A0 Some folks use docker containers.

    What is the motivation for using UHD 4.5?=C2=A0 Unless you have hardw=
are
    on the same system that is much newer, of course.

>
>
>
>     On Thu, Nov 9, 2023, 7:08 PM Marcus D Leech
>     <patchvonbraun@gmail.com> wrote:
>
>         You may need to stage this from a much earlier rev of UHD. I
>         don=E2=80=99t think there have been any updates to N210 firmwar=
e in a
>         long time. So if you can tolerate UHD 3.15 that might be
>         better for you.
>
>         Sent from my iPhone
>
>>         On Nov 9, 2023, at 7:05 PM, German Farinas
>>         <german.farinas@gmail.com> wrote:
>>
>>         =EF=BB=BF
>>         I am trying to upload the image to an usrp N210 rev2.0 but I
>>         got the following error message. Have anyone had the same
>>         error before? I need some help with this issue. See the
>>         output of the uhd_image_loader below.
>>
>>         Best,
>>         German
>>
>>         uhd_image_loader --args=3D"type=3Dusrp2,addr=3D192.168.10.2"
>>
>>         [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
>>         UHD_4.5.0.0-0ubuntu1~focal1
>>         [ERROR] [UHD] Exception caught in safe-call.
>>         =C2=A0 in ~usrp2_iface_impl
>>         =C2=A0 at
>>         /build/uhd-UJYBdq/uhd-4.5.0.0/host/lib/usrp/usrp2/usrp2_iface.=
cpp:82
>>         this->lock_device(false); -> RuntimeError:
>>         Please update the firmware and FPGA images for your device.
>>         See the application notes for USRP2/N-Series for instructions.
>>         Expected protocol compatibility number [10 to 12], but got 9:
>>         The firmware build is not compatible with the host code build.
>>         Please run:
>>
>>         =C2=A0"/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.p=
y"
>>         =C2=A0"/lib/bin/uhd_image_loader" \
>>         --args=3D"type=3Dusrp2,addr=3D192.168.10.2"
>>
>>         Error: RuntimeError: Received invalid reply 32 from device.
>>         _______________________________________________
>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>         To unsubscribe send an email to usrp-users-leave@lists.ettus.c=
om
>

--------------7C0G0b2TS4LxGWY43PCPdvgm
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    Those Rev numbers are hardware revs, but it may well also indicate
    that its on-board FPGA image is quite old--old enough that<br>
    =C2=A0 modern image-loader tooling cannot cope, which is why a
    "hill-climbing" approach may be necessary.<br>
    <br>
    I'll note that Ubuntu packaged UHD 3.15 for 20.04 (Focal):<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://packages.ubuntu.co=
m/search?suite=3Dfocal&amp;keywords=3Duhd">https://packages.ubuntu.com/se=
arch?suite=3Dfocal&amp;keywords=3Duhd</a><br>
    <br>
    So, if you can extricate yourself (temporarily) from the UHD 4.5
    that you likely installed through a PPA, the default<br>
    =C2=A0 UHD package for Ubuntu 20.04 is what you want.<br>
    <br>
    <br>
    <div class=3D"moz-forward-container"><br>
      <br>
      -------- Forwarded Message --------
      <table class=3D"moz-email-headers-table" cellspacing=3D"0"
        cellpadding=3D"0" border=3D"0">
        <tbody>
          <tr>
            <th valign=3D"BASELINE" nowrap=3D"nowrap" align=3D"RIGHT">Sub=
ject:
            </th>
            <td>Re: [USRP-users] The firmware build is not compatible
              with the host code build</td>
          </tr>
          <tr>
            <th valign=3D"BASELINE" nowrap=3D"nowrap" align=3D"RIGHT">Dat=
e: </th>
            <td>Thu, 9 Nov 2023 20:11:41 -0500</td>
          </tr>
          <tr>
            <th valign=3D"BASELINE" nowrap=3D"nowrap" align=3D"RIGHT">Fro=
m: </th>
            <td>German Farinas <a class=3D"moz-txt-link-rfc2396E" href=3D=
"mailto:german.farinas@gmail.com">&lt;german.farinas@gmail.com&gt;</a></t=
d>
          </tr>
          <tr>
            <th valign=3D"BASELINE" nowrap=3D"nowrap" align=3D"RIGHT">To:=
 </th>
            <td>Marcus D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D=
"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a></td>
          </tr>
        </tbody>
      </table>
      <br>
      speed<br>
      <div dir=3D"auto">
        <div>I have two N210s. One of the USRPs N210 is working fine
          with UHD 4.5, I suppose that one is rev4 although it doesn't
          say it explicitly at the back of the case. However, the other
          USRP N210 says explicitly rev2 at the back. This one is giving
          me the error.<br>
          <br>
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto">About the motivation for having UHD 4.5 none
            in specific. I am just new to UHD and I installed it via
            command line in Ubuntu 20. It was just easier. But in the
            future I may work with X300.</div>
          <br>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 9, 2023, 7:=
59
              PM Marcus D. Leech &lt;<a
                href=3D"mailto:patchvonbraun@gmail.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
patchvonbraun@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote"
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div>
                <div>On 09/11/2023 19:24, German Farinas wrote:<br>
                </div>
                <blockquote type=3D"cite">
                  <div dir=3D"auto">
                    <div>I am using UHD 4.5, I may try 3.15 as you
                      suggested. But I don't know how to install both
                      together. My system is Ubuntu 20.04 LTS.
                      <div dir=3D"auto"><br>
                      </div>
                    </div>
                  </div>
                </blockquote>
                There haven't been any (documented) changes for N210
                since UHD 3.13.=C2=A0 <br>
                <br>
                You may need to build 3.15 from source.=C2=A0=C2=A0=C2=A0=
 I haven't
                ever really managed two UHD on the same system at the
                same time.<br>
                =C2=A0 Some folks like to use a different install prefix =
when
                building, and then set LD_LIBRARY_PATH and friends at
                runtime.<br>
                =C2=A0 Some folks use docker containers.<br>
                <br>
                What is the motivation for using UHD 4.5?=C2=A0 Unless yo=
u
                have hardware on the same system that is much newer, of
                course.<br>
                <br>
                <blockquote type=3D"cite">
                  <div dir=3D"auto">
                    <div>
                      <div dir=3D"auto"><br>
                      </div>
                      <br>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov=
 9,
                          2023, 7:08 PM Marcus D Leech &lt;<a
                            href=3D"mailto:patchvonbraun@gmail.com"
                            rel=3D"noreferrer noreferrer" target=3D"_blan=
k"
                            moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">patchvonbraun=
@gmail.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
                          <div dir=3D"auto">You may need to stage this
                            from a much earlier rev of UHD. I don=E2=80=99=
t
                            think there have been any updates to N210
                            firmware in a long time. So if you can
                            tolerate UHD 3.15 that might be better for
                            you.=C2=A0<br>
                            <br>
                            <div dir=3D"ltr">Sent from my iPhone</div>
                            <div dir=3D"ltr"><br>
                              <blockquote type=3D"cite">On Nov 9, 2023, a=
t
                                7:05 PM, German Farinas &lt;<a
                                  href=3D"mailto:german.farinas@gmail.com=
"
                                  rel=3D"noreferrer noreferrer noreferrer=
"
                                  target=3D"_blank" moz-do-not-send=3D"tr=
ue"
                                  class=3D"moz-txt-link-freetext">german.=
farinas@gmail.com</a>&gt;
                                wrote:<br>
                                <br>
                              </blockquote>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">=EF=BB=BF
                                <div dir=3D"auto">
                                  <div style=3D"font-size:12.8px"
                                    dir=3D"auto">I am trying to upload th=
e
                                    image to an usrp N210 rev2.0 but I
                                    got the following error message.
                                    Have anyone had the same error
                                    before? I need some help with this
                                    issue. See the output of the
                                    uhd_image_loader below.</div>
                                  <div style=3D"font-size:12.8px"
                                    dir=3D"auto"><br>
                                  </div>
                                  <div style=3D"font-size:12.8px"
                                    dir=3D"auto">Best,</div>
                                  <div style=3D"font-size:12.8px"
                                    dir=3D"auto">German</div>
                                  <div style=3D"font-size:12.8px"
                                    dir=3D"auto"><br>
                                  </div>
                                  <div style=3D"font-size:12.8px"
                                    dir=3D"auto">uhd_image_loader
                                    --args=3D"type=3Dusrp2,addr=3D192.168=
.10.2"</div>
                                  <div style=3D"font-size:12.8px"
                                    dir=3D"auto"><br>
                                    [INFO] [UHD] linux; GNU C++ version
                                    9.4.0; Boost_107100;
                                    UHD_4.5.0.0-0ubuntu1~focal1<br>
                                    [ERROR] [UHD] Exception caught in
                                    safe-call.<br>
                                    =C2=A0 in ~usrp2_iface_impl<br>
                                    =C2=A0 at
                                    /build/uhd-UJYBdq/uhd-4.5.0.0/host/li=
b/usrp/usrp2/usrp2_iface.cpp:82<br>
                                    this-&gt;lock_device(false); -&gt;
                                    RuntimeError:<br>
                                    Please update the firmware and FPGA
                                    images for your device.<br>
                                    See the application notes for
                                    USRP2/N-Series for instructions.<br>
                                    Expected protocol compatibility
                                    number [10 to 12], but got 9:<br>
                                    The firmware build is not compatible
                                    with the host code build.<br>
                                    Please run:<br>
                                    <br>
=C2=A0"/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"<br>
                                    =C2=A0"/lib/bin/uhd_image_loader" \<b=
r>
                                    =C2=A0 =C2=A0
                                    --args=3D"type=3Dusrp2,addr=3D192.168=
.10.2"<br>
                                    <br>
                                    Error: RuntimeError: Received
                                    invalid reply 32 from device.</div>
                                </div>
                                <span>___________________________________=
____________</span><br>
                                <span>USRP-users mailing list -- <a
href=3D"mailto:usrp-users@lists.ettus.com"
rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank"
                                    moz-do-not-send=3D"true"
                                    class=3D"moz-txt-link-freetext">usrp-=
users@lists.ettus.com</a></span><br>
                                <span>To unsubscribe send an email to <a
href=3D"mailto:usrp-users-leave@lists.ettus.com"
rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank"
                                    moz-do-not-send=3D"true"
                                    class=3D"moz-txt-link-freetext">usrp-=
users-leave@lists.ettus.com</a></span><br>
                              </div>
                            </blockquote>
                          </div>
                        </blockquote>
                      </div>
                    </div>
                  </div>
                </blockquote>
                <br>
              </div>
            </blockquote>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>

--------------7C0G0b2TS4LxGWY43PCPdvgm--

--===============6784326902056825043==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6784326902056825043==--
