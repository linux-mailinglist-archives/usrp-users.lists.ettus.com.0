Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C14407FD9
	for <lists+usrp-users@lfdr.de>; Sun, 12 Sep 2021 22:03:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B47943845E7
	for <lists+usrp-users@lfdr.de>; Sun, 12 Sep 2021 16:03:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bF7kPOmN";
	dkim-atps=neutral
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id C401538455F
	for <usrp-users@lists.ettus.com>; Sun, 12 Sep 2021 16:02:36 -0400 (EDT)
Received: by mail-qk1-f172.google.com with SMTP id ay33so8274208qkb.10
        for <usrp-users@lists.ettus.com>; Sun, 12 Sep 2021 13:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=LGjsW7b8j77AriabfIj+eJfMBS/GoO/i4PBppo2Cq4k=;
        b=bF7kPOmNukjqb3Rj8xpCmlkNVqvXqOnuJsRG+BBIJTNiJSs0eJxOZ/M73CnQxDhY3g
         WoK7RM47c6khQf3XkEiiXZxTK8qRAoBOLVEheULwTQ08ws02maLbiagVzPnyFkhLOqIg
         UE2WjjBkw3Wt/IyLE/yF5JVmbUzGvLFXQ1XKWf76RuZhCIJX4aA1k20PjAIdon3NZXRc
         7Ehhig/FyLJtj5zTaZB5s0wg7hPk9cenv7H7dUXWmD+ZoIifRKbN/XMKb8tCv2eWAJDQ
         mC3cUPkxNWWAv51Z6s6d3+nlSzvOVxof1aXlJ+DqA5YlG+eD3TuVX94rsVgVbSRl+43Q
         yGnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=LGjsW7b8j77AriabfIj+eJfMBS/GoO/i4PBppo2Cq4k=;
        b=F+4KYbSKi52THCy4sAEZuxleMAas9A0XMktWQvRAt7dvk6l125GpKs54GpSm/qLIth
         VDxZoC6F3LqRUb38kidU5EGYDICXWLyvp25Mvo4TQam7VfHnQWfFXlo1F9JidSdpmaLq
         0IoXDTnPA/7xEazsDou0xckFjF/vErMkWcYh+fHgvc3w42Wk2jx7mddXO+TMjAj6WIO8
         Bj2Ea4aQSAuTSigCorSV/RX4+x5xrQ1A9fcCKV72fB9JRLblE8nsAeSmEnXfDV4wvFG9
         mQ3jAAWuFohTG+XdsCSOCTzpDwi2OX2sbnn/3m1ENxFJrnN0upzi/d/S/eK8fgorCOuG
         GUVQ==
X-Gm-Message-State: AOAM530Rej/G5epEXK3KZYy1729Hfwm0r948jm/euh+bUvOrkUjwkQ+x
	YFCWEixhqvOPJEiwmH7WlrBMZP2UvS5LGA==
X-Google-Smtp-Source: ABdhPJz0QasNXSkoY8IVgYXQlnxhUzA0AVMR9yyJnpidshMEXXTtwbsfUHFBvGuas6PX5NPMB3+uNA==
X-Received: by 2002:a37:6303:: with SMTP id x3mr6912153qkb.214.1631476955828;
        Sun, 12 Sep 2021 13:02:35 -0700 (PDT)
Received: from [192.168.2.253] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id k186sm3895734qkd.47.2021.09.12.13.02.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Sep 2021 13:02:35 -0700 (PDT)
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es>
 <CAL7q81tPjxNWaUbf-2v3dEtsxYgh6QGjV-+LmwCjwG50xgRZTw@mail.gmail.com>
 <CAFOi1A4JzCrx1NVi9YdwJ3LC3qu0+9VSKVSBWXekk7J=75qHtQ@mail.gmail.com>
 <0fbeadc5-adf2-8315-f7cd-e95a8ab00703@gmail.com>
 <804336125.2658048.1631299169124@mail.yahoo.com>
 <32b873e4-404d-2b27-61d9-2dd53fd0689a@gmail.com>
 <899213065.2697497.1631311503116@mail.yahoo.com>
 <6b46431b-cf2a-4796-c707-cce4ea524c6a@gmail.com>
 <1529290832.2403454.1631339791541@mail.yahoo.com>
 <1b1061ac-8a1f-2009-f5a7-19b58c532fd5@gmail.com>
 <410306297.2886349.1631467905488@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <ca9cac4c-71ce-7887-cf52-3e0d36d45d28@gmail.com>
Date: Sun, 12 Sep 2021 16:02:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <410306297.2886349.1631467905488@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: R4X6NUSCUYG55CGRLYSPMLEPMFC52AKN
X-Message-ID-Hash: R4X6NUSCUYG55CGRLYSPMLEPMFC52AKN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Configure send_buff_size in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R4X6NUSCUYG55CGRLYSPMLEPMFC52AKN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1736877189300349083=="

This is a multi-part message in MIME format.
--===============1736877189300349083==
Content-Type: multipart/alternative;
 boundary="------------7FA72ACDE9FBC002488B31A3"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7FA72ACDE9FBC002488B31A3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-12 1:31 p.m., zhou wrote:
> Thanks Marcus. Yes, I am using 2xTx and 2xRx at 245Msps in N321.
> I understand that if my host CPU is not fast enough, no matter how=20
> much buffer I have, it won't help. Fortunately, my tests are actually=20
> working at most time, which means that the CPU is fast enough for=20
> 245Msps. Maybe it is just marginally fast enough, not super fast. I=20
> run the test for a few hours. Occasionally, there are ULLL. So this is=20
> a stability issue. I think a bigger buffer will smooth the ripples in=20
> host performance. Though separate CPUs and threads are used for Tx,=20
> Rx, control and other processes, they share Linux, RAM and buses, so=20
> they are not completely independent. There could be collision in=20
> resource access occasionally. If that happens, Tx thread can be hung=20
> for a short while and couldn't fill the buffer in time before the the=20
> device gets starved. Because the current buffer is very small, its=20
> tolerance to such interrupt is very limited. I think increasing the=20
> buffer size will make the system more reliable.
>
> Thanks for mentioning the host-side buffer between the application=20
> layer and the ethernet device drivers. How to check the existing=20
> setting, and how to change it?
>
>
You can look up "network buffer monitor Linux" on Google, and get a=20
"lot" of stuff about various bits and pieces under /proc/net=C2=A0 to loo=
k at=20
in terms of dynamics.

When you specify send_buff_size as a *stream* argument (NOT a *device*=20
argument), it eventually turns into a SO_SNDBUF parameter for the
 =C2=A0 setsockopt() call, which controls the size of the app-->kernel=20
buffers.=C2=A0 In terms of the *dynamics*, you can surf bits and pieces o=
f=20
the /proc filesystem
 =C2=A0 to get real-timeish stats of exactly which bits and pieces are be=
ing=20
used *right now*.



--------------7FA72ACDE9FBC002488B31A3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-12 1:31 p.m., zhou wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:410306297.2886349.1631467905488@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpf6805185yahoo-style-wrap" style=3D"font-family:
        Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Thanks Marcus. Yes, I am
          using 2xTx and 2xRx at 245Msps in N321.</div>
        <div dir=3D"ltr" data-setdir=3D"false">I understand that if my ho=
st
          CPU is not fast enough, no matter how much buffer I have, it
          won't help. Fortunately, my tests are actually working at most
          time, which means that the CPU is fast enough for 245Msps.
          Maybe it is just marginally fast enough, not super fast. I run
          the test for a few hours. Occasionally, there are ULLL. So
          this is a stability issue. I think a bigger buffer will smooth
          the ripples in host performance. Though separate CPUs and
          threads are used for Tx, Rx, control and other processes, they
          share Linux, RAM and buses, so they are not completely
          independent. There could be collision in resource access
          occasionally. If that happens, Tx thread can be hung for a
          short while and couldn't fill the buffer in time before the
          the device gets starved. Because the current buffer is very
          small, its tolerance to such interrupt is very limited. I
          think increasing the buffer size will make the system more
          reliable.=C2=A0</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks for mentioning the
          host-side buffer <span><span style=3D"color: rgb(0, 0, 0);
              font-family: Helvetica Neue, Helvetica, Arial,
              sans-serif;">between the application layer and the
              ethernet device drivers</span></span>. How to check the
          existing setting, and how to change it?</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <br>
      </div>
    </blockquote>
    You can look up "network buffer monitor Linux" on Google, and get a
    "lot" of stuff about various bits and pieces under /proc/net=C2=A0 to
    look at in terms of dynamics.<br>
    <br>
    When you specify send_buff_size as a *stream* argument (NOT a
    *device* argument), it eventually turns into a SO_SNDBUF parameter
    for the<br>
    =C2=A0 setsockopt() call, which controls the size of the app--&gt;ker=
nel
    buffers.=C2=A0 In terms of the *dynamics*, you can surf bits and piec=
es
    of the /proc filesystem<br>
    =C2=A0 to get real-timeish stats of exactly which bits and pieces are
    being used *right now*.<br>
    <br>
    <br>
  </body>
</html>

--------------7FA72ACDE9FBC002488B31A3--

--===============1736877189300349083==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1736877189300349083==--
