Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A7E584637
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 21:33:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E4EB383FFB
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 15:33:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659036801; bh=qr7HA1MMgYThBckEE2od+mQUBYk+Sj6ozQxBLHqj7M8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ny3U5HHaKywpsJppemmdCqn85Omq5GSPffC29b2cnAmuUoHWJMqv7aM+aWCP0rl99
	 PiMnh7iBFBMszZHYUqWNeml2MmcXi4vUMenXGJyXZ65jEQYCYQvvloiWQgrC/769vn
	 g0GwMcI6E8Gad5fmYxG3gFx1W/7kKr9dS5v9zllC3JJuwz7Bd4639SHxwkF6crn1PF
	 wwcbA85eP3aEZEreZsgn6YVD/srvOX/G6IY6M/7wmq8ZQKoUgrn3NZx+x71VXVvEQQ
	 +bGnyGg2lvUcGtuX7k5Al1XIj3UrwRBdoKA/9m42vLX/wdSDi+DO2b1OcouRbvzPeX
	 RfilGkO7Ousog==
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id E8C5F383EDD
	for <usrp-users@lists.ettus.com>; Thu, 28 Jul 2022 15:31:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gF/VCIwP";
	dkim-atps=neutral
Received: by mail-qv1-f46.google.com with SMTP id mn11so2124309qvb.9
        for <usrp-users@lists.ettus.com>; Thu, 28 Jul 2022 12:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc;
        bh=Kk5vt+n6DQfI6cdluTbeGHgXGQAoeQmYNdIBNVvOJXw=;
        b=gF/VCIwP3z3TYQhZ1mH7TT3G+7ZASb57AeA6Z76PfkWnh6EgyB63ZvYWCAl6nix+7q
         /e14tCVDeeNK2MGer77QryHRRqiJBZ3c9H5/bejoeeARPxbCXVMvfsM8wuDfCBW9uJ20
         9/qg8kKjd2Gv9iqC+hf/8GvTPZ+O9v+L1MjUAQCjacPMyRcIdwXe6yYhH/5iVU/H6C+Y
         i4Dd3fOFyawT7CB7dNZ901GvDl2eOyRr26GhBw3vGkKfWi0KOzVXqQ2Vp7WRl0Tu5mZu
         ik/RIX6psmVk6czB3YbFUOFg527g8QInbAmzxhsElY/ozc63UIr+j67fruIyTrjOBjnd
         WG6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc;
        bh=Kk5vt+n6DQfI6cdluTbeGHgXGQAoeQmYNdIBNVvOJXw=;
        b=gerNhZqK5Z9DUbrqYw6KxPqdLdDt6CDZ8ae0aWWnD3Z70K2BYtnm6Ybh+oHTRHDqoJ
         0d21+wVpSt3iPT5P46o7K7WNP8IaL4S2dnIaTeepMM8H778GbLqQ602/MBZGv6HjPmzo
         f8KZLcIYbMlUFxSIwREwf4TkuFeo0cxmqQ7uaWDXdt63UJNrzacKJPtN5xZj4RL73/aZ
         8M58cxvKSOuvdZ8yk+Q5VoxpqwTIyckZ/EcMHtg7nfCqwmtR69vO6yLUKmaKGZs3ZSYE
         okC9ZAzSlybpRNuSP90h7AA4LIokHifNRQN2iAc93BFiNH3ZtYP7ScLBxQM+OGs2qgZP
         porQ==
X-Gm-Message-State: ACgBeo36Ba+sukFrtUdubjhAEz4ulguhq/xFSpPAkiwjUn1a3/f83g/K
	SiQwAz9CXB7aDlM9xkeYX9SAQ0jkv/g=
X-Google-Smtp-Source: AA6agR6+WtlsyFjjOOSkovOQJJFFzC1FPKbPSrAcGd4jrsh7UFJ7ZrmOaKMitLEJ0SmoikylFtbmbg==
X-Received: by 2002:a05:6214:21a6:b0:474:83ca:9e10 with SMTP id t6-20020a05621421a600b0047483ca9e10mr454245qvc.87.1659036681876;
        Thu, 28 Jul 2022 12:31:21 -0700 (PDT)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id q8-20020ac87348000000b0031a4c717413sm902572qtp.61.2022.07.28.12.31.21
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jul 2022 12:31:21 -0700 (PDT)
Message-ID: <1aa2bf89-67d5-ed16-2b44-74c11e362ee0@gmail.com>
Date: Thu, 28 Jul 2022 15:31:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <HcVv5CBMbAkYj1H1fY3fvJbMQ7maeAVmgiYpSuuk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <HcVv5CBMbAkYj1H1fY3fvJbMQ7maeAVmgiYpSuuk@lists.ettus.com>
Message-ID-Hash: YC3A2M55J3F2KLUU24RIJW3WK5WQLFEC
X-Message-ID-Hash: YC3A2M55J3F2KLUU24RIJW3WK5WQLFEC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: meta-ettus build errors out (undefined reference to 'stime')
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YC3A2M55J3F2KLUU24RIJW3WK5WQLFEC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8114337430923502269=="

This is a multi-part message in MIME format.
--===============8114337430923502269==
Content-Type: multipart/alternative;
 boundary="------------RuZGUo00PJA7fuGOADKLUsoh"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------RuZGUo00PJA7fuGOADKLUsoh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-07-28 08:25, kevin.macknight--- via USRP-users wrote:
>
> I continue to fail in building the meta-ettus embedded image. Very=20
> straightforward build process, /*has anyone successfully built=20
> meta-ettus?*/
>
> -----------------------------------------------------------------------=
-
>
> I have Ubuntu 20.04 setup on VirtualBox and cloned the KAS=20
> <https://github.com/siemens/kas> tool and META-ETTUS=20
> <https://github.com/EttusResearch/meta-ettus/tree/uhd-4.2/zeus> branch=20
> =E2=80=9Cuhd-4.2/zeus=E2=80=9D
>
> Issued the command =E2=80=9C./contrib/kas_build_imgs_package.sh x4xx v4=
.2=E2=80=9D and=20
> get this error:
>
>  *
>
>     */meta-ettus/build/tmp-glibc/work/x86_64-linux/qemu-native/4.1.0-r0=
/qemu-4.1.0/linux-user/syscall.c:7657:
>     undefined reference to `stime'
>
>  *
>
>     Here is the patch
>     https://stackoverflow.com/questions/61367173/core-image-minimal-fai=
ls
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
This looks like a problem with QEMU on some systems, which is required=20
for the cross-tools to work, but looks like has a problem on some=20
systems.=C2=A0 I've not done this
 =C2=A0 build myself, but just looking at that thread, seems like a QEMU =
problem.


--------------RuZGUo00PJA7fuGOADKLUsoh
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-07-28 08:25, kevin.macknight--=
-
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:HcVv5CBMbAkYj1H1fY3fvJbMQ7maeAVmgiYpSuuk@lists.ettus.co=
m">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I continue to fail in building the meta-ettus embedded image.
        Very straightforward build process, <em><strong>has anyone
            successfully built meta-ettus?</strong></em></p>
      <div class=3D"" contenteditable=3D"false">
        <hr></div>
      <p>I have Ubuntu 20.04 setup on VirtualBox and cloned the <a
          href=3D"https://github.com/siemens/kas" title=3D"KAS"
          moz-do-not-send=3D"true">KAS</a> tool and <a
          href=3D"https://github.com/EttusResearch/meta-ettus/tree/uhd-4.=
2/zeus"
          title=3D"META-ETTUS" moz-do-not-send=3D"true">META-ETTUS</a>
        branch =E2=80=9Cuhd-4.2/zeus=E2=80=9D</p>
      <p>Issued the command =E2=80=9C./contrib/kas_build_imgs_package.sh =
x4xx
        v4.2=E2=80=9D and get this error:</p>
      <ul>
        <li>
          <p>*/meta-ettus/build/tmp-glibc/work/x86_64-linux/qemu-native/4=
.1.0-r0/qemu-4.1.0/linux-user/syscall.c:7657:
            undefined reference to `stime'</p>
        </li>
        <li>
          <p>Here is the patch <a
href=3D"https://stackoverflow.com/questions/61367173/core-image-minimal-f=
ails"
title=3D"https://stackoverflow.com/questions/61367173/core-image-minimal-=
fails"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tps://stackoverflow.com/questions/61367173/core-image-minimal-fails</a></=
p>
        </li>
      </ul>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    This looks like a problem with QEMU on some systems, which is
    required for the cross-tools to work, but looks like has a problem
    on some systems.=C2=A0 I've not done this<br>
    =C2=A0 build myself, but just looking at that thread, seems like a QE=
MU
    problem.<br>
    <br>
    <br>
  </body>
</html>

--------------RuZGUo00PJA7fuGOADKLUsoh--

--===============8114337430923502269==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8114337430923502269==--
