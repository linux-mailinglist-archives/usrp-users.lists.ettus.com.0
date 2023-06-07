Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B39667260F0
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 15:16:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7E7DE3844FA
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 09:16:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686143817; bh=YI1H67dIoH/TOMz66Bd8eSEP+WeMkc5GScMT/56QgpY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=q7rKLCHclq7QvetG17e2s6Y9stAsN/Ii9ptvwLqbsq0xDYHE9hH+WuRpnuGK8ZQwQ
	 9YkVZzeiR+5mFiqjHfzhpBfNwOLTdJ2ILl9/o0mtx6VIrwoQEjkzPln7rj6wLUpUYv
	 umcnK0OXr8YctT5NKFVEZr2CTJQhoS/q+0w3ftR6PiPiH6mvmGUdUP8riSWNEd3FM+
	 3HgOsw1whXi+hbUgup6WYCxfbTAeDTjYg1018OpI+++j5zysde6LTkpEuzRLCB25ik
	 nmWKLEZJ5FaUejTgESQPfQfUX6Gdww/91IE4+LTGZcDNIwJ194UqI2/5OHlaB0559f
	 6uMmmYnbKNiRw==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 75463383C78
	for <usrp-users@lists.ettus.com>; Wed,  7 Jun 2023 09:15:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FXod2Nf1";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-75d57fdb014so343408285a.0
        for <usrp-users@lists.ettus.com>; Wed, 07 Jun 2023 06:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686143757; x=1688735757;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F5yjhsJr/19wVhnzI0Y4nzAaxZLpgDHAFZf2pd67Kyg=;
        b=FXod2Nf1DnVStXQoX/HrdNRTZX/7yySXE8GulCJLZVA9HdwSHsobnUrbPGPzh3VT8Y
         PZd5gYPY0+QPx0RfbBCPe8pO+yk+JjFygdJ68OH+8ibk0SNgtK6AsB21t38aQMC+r7KZ
         4AzpgyR/VXD65Cvp7ECgJRDL15N540EzbV5D3pVCQFdX+vJZTmn7vR5DIotOauW4yLBJ
         +vsrE/O/RhS2bW9InUCOW4ObW5a/afh4YJTlGLg432QF1fpZ0b+bAW9JUvaOcBQ6/iE6
         GO4Sdbu2B2LGhPc3weetT0ergoH0yW9tKhWXxQ8UNh+ToXmu2NipxdDASB/ancXC4S5g
         fGvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686143757; x=1688735757;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=F5yjhsJr/19wVhnzI0Y4nzAaxZLpgDHAFZf2pd67Kyg=;
        b=XEKdUjfkYjF/tv1ElxD1/Uifqj+gcK9363vFQuZgokhEFkUO/D1WXhbCFSEgrnHz6B
         aNuONDnnQlDtXtXmsVpAb5E2TjkLKM+jyS3v8vqfWxVJT2uL5d5FBZE1S1oKaUa74yu+
         JEtxqKn7FLs+E2YJpZPVtS2JuXztJp8u4khT4iN8f6WETACcWmKET9vbJ/XeOj66zsL6
         Hm+Ai0k4mIPX5Ojq9Of6qWxAMzIYS0VNMPpKlV+sRBxMZ8X4tmKjZbhB3HJkNwDK9lrq
         thl5vzggaBZBm0zdVuk2NwsaU5kN9dkonFbYtpAUyxVuzqOEm/pVImhlMx0m41WQCEB/
         7R8Q==
X-Gm-Message-State: AC+VfDxdDBFHkGw2PL5wAWHwHj3aYFaCAlpXTGB0d5IkkLQ8VMJDPmhV
	CmLvyfF7BWq87dxLBuCk0rkYq6C5Te6s7A==
X-Google-Smtp-Source: ACHHUZ6+W2fHHA4CgqoTn3eMrA0nOCQvKE6PnrXCMd7PT4PDgtu/CIynu1pOsp93LwBw6UPPNjmIwg==
X-Received: by 2002:a05:620a:38c4:b0:75e:d11d:5196 with SMTP id qq4-20020a05620a38c400b0075ed11d5196mr1580547qkn.29.1686143757436;
        Wed, 07 Jun 2023 06:15:57 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id b10-20020a05620a118a00b0074ca7c33b79sm5664007qkk.23.2023.06.07.06.15.56
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 06:15:56 -0700 (PDT)
Message-ID: <8e363c7d-8294-1add-7c59-3d449a7e4de2@gmail.com>
Date: Wed, 7 Jun 2023 09:15:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAJhOL6eLOqG8m8DP8wwMm4DRa8Yq2i_wS7fMPXJJJZws6nLSSQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAJhOL6eLOqG8m8DP8wwMm4DRa8Yq2i_wS7fMPXJJJZws6nLSSQ@mail.gmail.com>
Message-ID-Hash: DDEMQVBEVLS7R7O5EEYRVZOMYCMNPNGS
X-Message-ID-Hash: DDEMQVBEVLS7R7O5EEYRVZOMYCMNPNGS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N2rt13HDRTExceptionE in Vivado 2021.1
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DDEMQVBEVLS7R7O5EEYRVZOMYCMNPNGS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8588916860648775948=="

This is a multi-part message in MIME format.
--===============8588916860648775948==
Content-Type: multipart/alternative;
 boundary="------------ueZ2bGbagoyEcb4WNGZ3IZiq"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ueZ2bGbagoyEcb4WNGZ3IZiq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 07/06/2023 06:20, Kevin Williams wrote:
> Hi,
>
> Why can't this be fixed in the USRP builds by upgrading to 2021.2=20
> which apparently has addressed this fault?
>
> I have added a trivial delay and my image now builds in 2021.1 after=20
> many failures while trying to develop. It is random, and I waste=C2=A0a=
n=20
> hour or two almost every day because of this.
>
> I do not have time for this random approach to building firmware.
Not addressing this particular issue, but FPGA place-and-route is an=20
inherently random process that uses
 =C2=A0 random placement and then tries to successively optimize that=20
placement to make timing "work".=C2=A0 That is
 =C2=A0 why it takes so long, and why sometimes, when I've worked with FP=
GA=20
folks, when timing won't close, they
 =C2=A0 just ran the build again, hoping for a different random outcome.

This is one of the reasons I never got much into FPGA design myself--the=20
build process is non-deterministic.


>
> Regards, Kevin
>
> --=20
> Kevin Williams, Ph.D.
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------ueZ2bGbagoyEcb4WNGZ3IZiq
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 07/06/2023 06:20, Kevin Williams
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAJhOL6eLOqG8m8DP8wwMm4DRa8Yq2i_wS7fMPXJJJZws6nLSSQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi,
        <div><br>
        </div>
        <div>Why can't this be fixed in the USRP builds by upgrading to
          2021.2 which apparently has addressed this fault?</div>
        <div><br>
        </div>
        <div>I have added a trivial delay and my image now builds in
          2021.1 after many failures while trying to develop. It is
          random, and I waste=C2=A0an hour or two almost every day becaus=
e of
          this.</div>
        <div><br>
        </div>
        <div>I do not have time for this random approach to building
          firmware.</div>
      </div>
    </blockquote>
    Not addressing this particular issue, but FPGA place-and-route is an
    inherently random process that uses <br>
    =C2=A0 random placement and then tries to successively optimize that
    placement to make timing "work".=C2=A0 That is<br>
    =C2=A0 why it takes so long, and why sometimes, when I've worked with
    FPGA folks, when timing won't close, they<br>
    =C2=A0 just ran the build again, hoping for a different random outcom=
e.<br>
    <br>
    This is one of the reasons I never got much into FPGA design
    myself--the build process is non-deterministic.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAJhOL6eLOqG8m8DP8wwMm4DRa8Yq2i_wS7fMPXJJJZws6nLSSQ@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Regards, Kevin<br clear=3D"all">
          <div><br>
          </div>
          <span class=3D"gmail_signature_prefix">-- </span><br>
          <div dir=3D"ltr" class=3D"gmail_signature"
            data-smartmail=3D"gmail_signature">Kevin Williams, Ph.D.</div=
>
        </div>
      </div>
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
    <br>
  </body>
</html>

--------------ueZ2bGbagoyEcb4WNGZ3IZiq--

--===============8588916860648775948==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8588916860648775948==--
