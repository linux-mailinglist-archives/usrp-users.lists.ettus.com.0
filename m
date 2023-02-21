Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6487469D94A
	for <lists+usrp-users@lfdr.de>; Tue, 21 Feb 2023 04:35:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 52AC8383763
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 22:35:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676950508; bh=VrKFogXfVSaWmEpEzoM2uPpyF4BIWSHtomTt4iAUwuw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=dpExHNj0a77fWpJYOtzIPFbqkvdXqKYTThlNw0f5pk1++G89peQsqDzZXW27v22QE
	 yIryDYSxbyN4vMc4qWxScTrn+QdJqqsFe1Vs4eKmUMu5aBhICnA/5lpEakl7nz9RuZ
	 pvvt0vFDaXViI7Cbx1ocwrPs2rGEUhGcIeIDPwHbAOvY7LFbSNKt/99ApSnyfxEKkc
	 v2OC4P1H1NmpwE/CesWxZU68eQCpsDED/Gc2+oazijH+HcwMwfUpDvt4KG2OQFpcWh
	 Mtic44vai+oLRebn56bhb3Q8MN77UYJEqPoBUxgtKPU6J/d0VUaRGSb50ynnjblBKt
	 s705WKNeobdxQ==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 6F992383763
	for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 22:35:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fgoGZxpN";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id d7so3457573qtr.12
        for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 19:35:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s1Io+B3AC0FzcbhWzno92XOqAiOXAXGWfrCFyoDrc6k=;
        b=fgoGZxpN9x3/gNje7qZETMtrmjgKdhimeiQFmAwaC9X8WnsK44rkTY77TNuUSZueoS
         dg5cAmnyKBKsRiLiHCCZSVyoqyMIOXlQ1r7XTiEsOMYY4M8gHfQwPhI1DBJT5cTINkht
         cB32J3K9MBGxPoi8XrZcRY2Ysa7eDmzkmI1rBwl4w8KaJDYkB40HJt2bjo2dKJPqSVh1
         uHNv9Wn/6Im/DQQORzX/Q6H2Z55LyN3PM1GDgEyYIMhO0WMb+RD/vdHdueLYaqdH8Jrp
         TvbRryD/ZhlMIMELQLCra9TuJSFr/ZoYxWXk3dnvQFTZnVp7wFxwOGeYnkWmK5RsHlNP
         Jpew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=s1Io+B3AC0FzcbhWzno92XOqAiOXAXGWfrCFyoDrc6k=;
        b=bhKX2vrNb+cBPzkTBQpWU7orO4mxUmgHHyMC5+DLsQrKml7TpfbdO2TaLfg1gQ2Bf3
         wQqRLxbJBr/kERnK3uaKgerh1n8ofUNccHBg55wBPQ+4DYKsulE+NyhQFPmD+gRomLVl
         uk4n/f3SPNEyzjdo1EdYdi7y6+DeoF4Wk6KSuTs+lOMRRb35HU+x38tkH4PBqi6rVXXi
         m8BuJkOxEsA9l/1XIStzQxE76RbavAf496LfNd3tE3uFV0cg0mzRIyDh4GR9EhdOpH3o
         d/LZpbr4GDLsIPYLNKOqlVH6JN7l/wRwtoIlzbRUfeSMyQ046fC5iXWErhti62WECu7P
         gg0Q==
X-Gm-Message-State: AO0yUKVjy7NnOsZUVY3/GBLYrFlkj8CbL7yrGHe+nOe51V35lgKLYuJd
	Vow+fYqIEycvpQCfBpAf9GKQAgzV3hM=
X-Google-Smtp-Source: AK7set/xRQon2xpTnEEz+rvl3dTe++cZ/rsVjiUGwkaPTqSCdG76y7Zzt77VyKwIlnNsRbqHp8wsLQ==
X-Received: by 2002:a05:622a:138d:b0:3b6:3ad0:5470 with SMTP id o13-20020a05622a138d00b003b63ad05470mr5525568qtk.31.1676950502698;
        Mon, 20 Feb 2023 19:35:02 -0800 (PST)
Received: from [192.168.2.167] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id i65-20020a37b844000000b00705cef9b84asm10073987qkf.131.2023.02.20.19.35.02
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Feb 2023 19:35:02 -0800 (PST)
Message-ID: <01b604d0-374d-a4c6-b7ae-b83cba9483ed@gmail.com>
Date: Mon, 20 Feb 2023 22:35:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <6grmw7ZRu7PqJguSjEXbMV75d836HD9x2CcemjDe4@lists.ettus.com>
 <CAFche=jHc9KOM6sXv6by1bSmA3vKF7-qzQ07RTg0SQEVM8S1rw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFche=jHc9KOM6sXv6by1bSmA3vKF7-qzQ07RTg0SQEVM8S1rw@mail.gmail.com>
Message-ID-Hash: YJ6RMJUF6UF7DK5AGDCZLITWTV37RLJL
X-Message-ID-Hash: YJ6RMJUF6UF7DK5AGDCZLITWTV37RLJL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: benchmark_rate throws error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YJ6RMJUF6UF7DK5AGDCZLITWTV37RLJL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4218207401530511601=="

This is a multi-part message in MIME format.
--===============4218207401530511601==
Content-Type: multipart/alternative;
 boundary="------------Yjpix3xXqqDO01edm2GrGqjk"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Yjpix3xXqqDO01edm2GrGqjk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 20/02/2023 22:27, Wade Fife wrote:
> Hi Joe,
>
> The error you're getting basically means it can't communicate with the=20
> FPGA on the N320. It's sending a packet to the device, but it's not=20
> getting the response packet it expects. So it could be a network=20
> configuration issue, a cabling issue, maybe a firewall issue, or=20
> something else that's messing up the packets.
>
> Double check the cabling and make sure you have the ports connected=20
> correctly. For example, connect the host computer port with IP=20
> 192.168.10.1 to the port on the device configured to 192.168.10.2 (the=20
> first port), or port 192.168.20.1 connected to 192.168.20.2 (the=20
> second port). Sometimes cables get swapped or port IP addresses get=20
> misconfigured and that can cause issues like this.
>
> When you specify the "addr" argument, you're telling the software=20
> which port to use to do the initialization that's failing, so make=20
> sure that's correct and matches the configuration and cabling.
>
> Wade
>
> On Mon, Feb 20, 2023 at 11:57 AM <jmaloyan@umass.edu> wrote:
>
>     With the HG image, things seem to be working fine. I can
>     benchmark, and i can collect samples at not only the full
>     rate(25e6 MS/S), but at a higher rate than the XG image, which is
>     strange.
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
I'm going to guess, given what Wade said above (the error messages=20
weren't immediately obvious to me) that when you moved
 =C2=A0 to XG, your physical hardware wasn't compatible.=C2=A0=C2=A0=C2=A0=
 The XG images are=20
for 10GiG ethernet, so the SFP+ adaptors on both
 =C2=A0 ends have to match, AND you have to have a 10GiGe compatible netw=
ork=20
adaptor on your host, and it has to be
 =C2=A0 configured correctly.



--------------Yjpix3xXqqDO01edm2GrGqjk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 20/02/2023 22:27, Wade Fife wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFche=3DjHc9KOM6sXv6by1bSmA3vKF7-qzQ07RTg0SQEVM8S1rw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi Joe,
        <div><br>
        </div>
        <div>The error you're getting basically means it can't
          communicate with the FPGA on the N320. It's sending a packet
          to the device, but it's not getting the response packet it
          expects. So it could be a network configuration issue, a
          cabling issue, maybe a firewall issue, or something else
          that's messing up the packets.
          <div><br>
          </div>
          <div>Double check the cabling and make sure you have the ports
            connected correctly. For example, connect the host computer
            port with IP 192.168.10.1 to the port on the device
            configured to 192.168.10.2 (the first port), or port
            192.168.20.1 connected to 192.168.20.2 (the second port).
            Sometimes cables get swapped or port IP addresses get
            misconfigured and that can cause issues like this.</div>
          <div><br>
          </div>
          <div>When you specify the "addr" argument, you're telling the
            software which port to use to do the initialization that's
            failing, so make sure that's correct and matches the
            configuration and cabling.</div>
          <div><br>
          </div>
          <div>Wade</div>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 20, 2023 at 11:=
57
          AM &lt;<a href=3D"mailto:jmaloyan@umass.edu"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">jmal=
oyan@umass.edu</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <p>With the HG image, things seem to be working fine. I can
            benchmark, and i can collect samples at not only the full
            rate(25e6 MS/S), but at a higher rate than the XG image,
            which is strange. </p>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
      <br>
    </blockquote>
    I'm going to guess, given what Wade said above (the error messages
    weren't immediately obvious to me) that when you moved<br>
    =C2=A0 to XG, your physical hardware wasn't compatible.=C2=A0=C2=A0=C2=
=A0 The XG images
    are for 10GiG ethernet, so the SFP+ adaptors on both<br>
    =C2=A0 ends have to match, AND you have to have a 10GiGe compatible
    network adaptor on your host, and it has to be<br>
    =C2=A0 configured correctly.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------Yjpix3xXqqDO01edm2GrGqjk--

--===============4218207401530511601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4218207401530511601==--
