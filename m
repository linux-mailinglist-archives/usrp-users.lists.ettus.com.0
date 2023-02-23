Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF0D6A1111
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 21:11:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 702EB38426C
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 15:11:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677183092; bh=rEERdW0vmOpYZ3G/8uyIm0cANnMggeQbUJB69E2OY28=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Pgu3WcFHuSyoGxKJwvul1xOqCv+YED2NWqnUwqN9csRqBWe/zavKiVbLpDNWGrtsy
	 Ltua4uDLGKZNuGcBUp2pfv8v0GhPMpAai33NUfZLBierqkv2o636TR2Wyp+REXh82M
	 ZzchJin20dZsZfWoGO0YNp3Yz9HK3DgxFOWLOwqfvqt3CHFu9oyV7eCdYpr6jbDq3S
	 0qHIu/Jrdjte80hCVH0t8vulGXzc4lvLWt5Fm9liolcYeKu+9IutcLZOO6Mj2KrpYj
	 EKbltvskM9DMatrM+Nf/3uYjc3eJOIlUn5/+bNkL21q7600HhqrrUo9WgizSGBlkMF
	 Mm6Tsu/25t8SA==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id B8F71384157
	for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 15:10:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZNe1czV+";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id k20so8935899qtj.5
        for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 12:10:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LaolGMCRGmH0LX0SFukkqm76dnu25gP2fw9d1T+FyXU=;
        b=ZNe1czV+BG0raUwHzynhQUjM1I4z5IDfKdJFtIrX22+07ur0ysY64AjgGZHrlkF7OQ
         252ZBb9/IGOrkKySjd9/uA+w5PNGS8tvtJMP4JKVjIdYPF9iYIo/YUhUm0kxRtnOvX0e
         4wf6a1BE9z4Wj++cG3qMARgk1oag9x/ZIQzYaHKHp4tRZTwUNgLRMm+LuYQciX4gK9PO
         ATotGf8wC2b2nP3LGEjDzMQEYHbCs9x2YIN+fvYCxBP65HSYifXaGbKmj9SIkw3SiN+/
         L/zSsvqyLs2YFF7bKKec776tz+JwaahSrGlUwdBeJ56KBreOvadvn9uaUHAesKpqj7u7
         1ucg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LaolGMCRGmH0LX0SFukkqm76dnu25gP2fw9d1T+FyXU=;
        b=XXAiaP7AjX8PiYsENow2PMqcjKW6aLw+PA6HGrvnb+HhFim2VHWbMvI9IOnUlkeJKZ
         dovwDabihxA2cgUJNWrHtid6N3l4BxutmgR9E+RxUqx8wSmrILuqrUYEju5d9HR3P8N/
         9q/aQCsYlCixctIdZDg0/awrdvLAQ2wzljo26yQhDmS4MmUsW3nkV7Xd0YoLp9GjlFuX
         mezxj9ImbqKLXK0ZS6mV2v7O9pDc/L+f92Y1vh/xIN/WefdueR09c/0oTw8gAlRCuuEc
         w5sLR/B62dpOBc/zciaNk4bQzcSzHjhqgCY5KZNAtPPuhatpohb2NaUrYSTYYd+DesEd
         JHcg==
X-Gm-Message-State: AO0yUKW73xm6neGyXe8W/WNE7qkPesb0mZGhBZColyi2Dq3pX/An23Ac
	ia5tGAsXzzTzud/USN/dadBYIqOtu2s=
X-Google-Smtp-Source: AK7set+iG2y/cJ/WHoOmo8+XCbO5GOc/7ZoIXAvM1UXdFKhRULmSFRWlpfuZzZSWw0HO5w5JJ8l5wA==
X-Received: by 2002:ac8:5703:0:b0:3bd:1647:15cd with SMTP id 3-20020ac85703000000b003bd164715cdmr16904260qtw.2.1677183057104;
        Thu, 23 Feb 2023 12:10:57 -0800 (PST)
Received: from [192.168.2.154] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id z131-20020a376589000000b007186c9e167esm6864699qkb.52.2023.02.23.12.10.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 12:10:56 -0800 (PST)
Message-ID: <a7f5b4ca-1afa-fc53-d811-daf3d8c47d53@gmail.com>
Date: Thu, 23 Feb 2023 15:10:56 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Hamed Al-Zubi <hamed.zubi1980@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <793986517.66025.1677182001996.ref@mail.yahoo.com>
 <793986517.66025.1677182001996@mail.yahoo.com>
 <3bd50bd9-3a9b-834c-b5ea-4176b94da617@gmail.com>
 <1408417729.84474.1677182811278@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1408417729.84474.1677182811278@mail.yahoo.com>
Message-ID-Hash: 3RZJJ3LD7AWXZFLFBZY7ALGOV4GSVXLU
X-Message-ID-Hash: 3RZJJ3LD7AWXZFLFBZY7ALGOV4GSVXLU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Active GPS Antenna For USRPs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3RZJJ3LD7AWXZFLFBZY7ALGOV4GSVXLU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5112871123865306386=="

This is a multi-part message in MIME format.
--===============5112871123865306386==
Content-Type: multipart/alternative;
 boundary="------------e0VhPXdPkKbVm0fplR39gGCX"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------e0VhPXdPkKbVm0fplR39gGCX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 23/02/2023 15:06, Hamed Al-Zubi wrote:
> Would it be possible to provide the link to the antenna that you use?
Sorry, wish I could.=C2=A0=C2=A0 I think Amazon, about 3-4 years ago.=C2=A0=
 But really,=20
any random active GPS antenna should work.

I wonder if yours perhaps isn't actually *active*?=C2=A0 I noticed that a=
=20
*passive* antenna on the X310 is quite
 =C2=A0 "hit and miss".


>
> On Thursday, February 23, 2023 at 02:00:34 PM CST, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>
> On 23/02/2023 14:53, Hamed Al-Zubi via USRP-users wrote:
> Hello,
>
> I am just wondering why the 3V active GPS antenna for the USRP N210 is=20
> compatible with the USRP X300/X310?
> I have 3-5V active antenna manufactured from china, but it does not=20
> work with USRP X300. However, it works perfectly fine with N210.
> The 5G Active GPS antenna=C2=A0 for USRP X300/X310 manufactured by ettu=
s is=20
> expensive.
>
> Regards,
> HA
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com  <mailto:usrp-user=
s@lists.ettus.com>
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com  <mailt=
o:usrp-users-leave@lists.ettus.com>
> I have absolutely used a cheaper active GPS antenna with the X310 and=20
> it works just fine.=C2=A0=C2=A0=C2=A0 I'm using one right now
> =C2=A0 with an Octoclock-G (which I think uses the same GPS module as=20
> inside the X310) and it has been working flawlessly 24/7
> =C2=A0 for months.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------e0VhPXdPkKbVm0fplR39gGCX
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 23/02/2023 15:06, Hamed Al-Zubi
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1408417729.84474.1677182811278@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp8fd86adyahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:16px;">
        <div dir=3D"ltr" data-setdir=3D"false">Would it be possible to
          provide the link to the antenna that you use?</div>
      </div>
    </blockquote>
    Sorry, wish I could.=C2=A0=C2=A0 I think Amazon, about 3-4 years ago.=
=C2=A0 But
    really, any random active GPS antenna should work.<br>
    <br>
    I wonder if yours perhaps isn't actually *active*?=C2=A0 I noticed th=
at a
    *passive* antenna on the X310 is quite<br>
    =C2=A0 "hit and miss". <br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:1408417729.84474.1677182811278@mail.yahoo.com">
      <div class=3D"ydp8fd86adyahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:16px;">
        <div><br>
        </div>
      </div>
      <div id=3D"yahoo_quoted_7973374443" class=3D"yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Thursday, February 23, 2023 at 02:00:34 PM CST,
            Marcus D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"ma=
ilto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: =
</div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"yiv5467383683">
              <div id=3D"yiv5467383683yqt51772"
                class=3D"yiv5467383683yqt8904971212">
                <div>
                  <div class=3D"yiv5467383683moz-cite-prefix">On
                    23/02/2023 14:53, Hamed Al-Zubi via USRP-users
                    wrote:<br clear=3D"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
                <div>
                  <div style=3D"font-family:Helvetica Neue, Helvetica,
                    Arial, sans-serif;font-size:16px;"
                    class=3D"yiv5467383683yahoo-style-wrap">
                    <div dir=3D"ltr">Hello,=C2=A0<br clear=3D"none">
                      <br clear=3D"none">
                      I am just wondering why the 3V active GPS antenna
                      for the USRP N210 is compatible with the USRP
                      X300/X310?<br clear=3D"none">
                      I have 3-5V active antenna manufactured from
                      china, but it does not work with USRP X300.
                      However, it works perfectly fine with N210.=C2=A0<b=
r
                        clear=3D"none">
                      The 5G Active GPS antenna=C2=A0 for USRP X300/X310
                      manufactured by ettus is expensive.<br
                        clear=3D"none">
                      <br clear=3D"none">
                      Regards,<br clear=3D"none">
                      HA</div>
                  </div>
                  <br clear=3D"none">
                  <fieldset
                    class=3D"yiv5467383683moz-mime-attachment-header"></f=
ieldset>
                  <pre class=3D"yiv5467383683moz-quote-pre">_____________=
__________________________________
USRP-users mailing list -- <a rel=3D"nofollow noopener noreferrer" shape=3D=
"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" hr=
ef=3D"mailto:usrp-users@lists.ettus.com" class=3D"yiv5467383683moz-txt-li=
nk-abbreviated moz-txt-link-freetext" moz-do-not-send=3D"true">usrp-users=
@lists.ettus.com</a>
To unsubscribe send an email to <a rel=3D"nofollow noopener noreferrer" s=
hape=3D"rect" ymailto=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D=
"_blank" href=3D"mailto:usrp-users-leave@lists.ettus.com" class=3D"yiv546=
7383683moz-txt-link-abbreviated moz-txt-link-freetext" moz-do-not-send=3D=
"true">usrp-users-leave@lists.ettus.com</a>
</pre>
                  I have absolutely used a cheaper active GPS antenna
                  with the X310 and it works just fine.=C2=A0=C2=A0=C2=A0=
 I'm using one
                  right now<br clear=3D"none">
                  =C2=A0 with an Octoclock-G (which I think uses the same=
 GPS
                  module as inside the X310) and it has been working
                  flawlessly 24/7<br clear=3D"none">
                  =C2=A0 for months.<br clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div class=3D"yqt8904971212" id=3D"yqt71388">________________=
_______________________________<br
                clear=3D"none">
              USRP-users mailing list -- <a shape=3D"rect"
                ymailto=3D"mailto:usrp-users@lists.ettus.com"
                href=3D"mailto:usrp-users@lists.ettus.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a><br
                clear=3D"none">
              To unsubscribe send an email to <a shape=3D"rect"
                ymailto=3D"mailto:usrp-users-leave@lists.ettus.com"
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users-leave@lists.ettus.com</a><br
                clear=3D"none">
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------e0VhPXdPkKbVm0fplR39gGCX--

--===============5112871123865306386==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5112871123865306386==--
