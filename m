Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C24824A33B
	for <lists+usrp-users@lfdr.de>; Wed, 19 Aug 2020 17:37:55 +0200 (CEST)
Received: from [::1] (port=59340 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8Q9y-0005K2-8E; Wed, 19 Aug 2020 11:37:54 -0400
Received: from mail-il1-f175.google.com ([209.85.166.175]:40368)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <emoges@uncc.edu>) id 1k8Q9t-00053Z-JO
 for usrp-users@lists.ettus.com; Wed, 19 Aug 2020 11:37:49 -0400
Received: by mail-il1-f175.google.com with SMTP id p18so17192150ilm.7
 for <usrp-users@lists.ettus.com>; Wed, 19 Aug 2020 08:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uncc.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ov02iTZJ9G0djyd9DlP1dzkdarcOoZhXsOc8vFHrjUk=;
 b=ckfUpjeNHnSUF7oZRBJpmAfCM7EKwCnTen6m4rdA3HMSnZIjHKf8N6fNELH0DZWLZX
 5VO9eAFFBMQgfNBAnRO0N1LAFUonog+HrZUcJ7+7ekzWpAhUYbitYvrhjFmkFB/GmOJX
 N4v9CSaA2iY/HpJFDRDljuKsoBWMcmGTZ6Iig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ov02iTZJ9G0djyd9DlP1dzkdarcOoZhXsOc8vFHrjUk=;
 b=J+YiOvyvhNdEfg74tatYhawqiZ4Jq+qPDu1/2PXcdHgLXTaFGu8sq5aw8wxEWYFzjs
 lL8hQhWSk1yic5pzu0+ZMWhk0ty9AuEumUmnk1kJ1gjCJzqMjNtGmqO/Qby9Sb/6uot8
 eLnIqqEE0Kl+aCJTWI68rH/erC2MIE+bt0xvssIhBGMjwCAnmf9aeKX7SNDFo2YCkh7a
 0BcuSMZNJWHJDwX5Z5JST1gVRKliDHVsL7dA6bcEuLi9nJVIRc5N9w+aNW80I706K+WI
 8xYh5h4CZyuzOaIIcklXW09P4UYLvZDbHlD8VOL0ZZeSRxgFGLTE+6SvbDqYrfp6O8M5
 yIKg==
X-Gm-Message-State: AOAM530+pvOxwf1Ligi1NwfGyglD3ynYuKRtm6VQDt7+SiT3STJpI3Ha
 oTqkj4tT1mko9vk9a5lc+5eJuqo6ZjSBbFVIAC6IGw==
X-Google-Smtp-Source: ABdhPJz9csgFuzFwwz39hK+9/dpdgAqi3CXW5KEYBJAVuMVfAxfwXik4dU4qI06R5w3KWDHqER27Sz3xR3NMIyM1Jcw=
X-Received: by 2002:a92:ba02:: with SMTP id o2mr22266309ili.3.1597851428796;
 Wed, 19 Aug 2020 08:37:08 -0700 (PDT)
MIME-Version: 1.0
References: <CANwgjNqWApsiG2Nmgxr3K_KBr-XPKXK2t9FgAqkPgidXV3MP0w@mail.gmail.com>
 <CANwgjNpE_4RyMsXqVx3ObWJEB2ysogRbNQrx3k-ZOKSgRW_E8g@mail.gmail.com>
 <5F3D4697.8070503@gmail.com>
In-Reply-To: <5F3D4697.8070503@gmail.com>
Date: Wed, 19 Aug 2020 11:36:57 -0400
Message-ID: <CANwgjNqTaAV=Ts3jgEhv5asqReKVU-obj+ut=dqdbqFywyS8Ow@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Fwd: Benchmark_rate.py error
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ephraim Moges via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ephraim Moges <emoges@uncc.edu>
Content-Type: multipart/mixed; boundary="===============8597094083323012361=="
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

--===============8597094083323012361==
Content-Type: multipart/alternative; boundary="000000000000d178a905ad3cc6a4"

--000000000000d178a905ad3cc6a4
Content-Type: text/plain; charset="UTF-8"

Ubuntu 16 and I used cmake instructions

https://files.ettus.com/manual/page_build_guide.html

On Wed, Aug 19, 2020, 11:35 AM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 08/19/2020 11:27 AM, Ephraim Moges via USRP-users wrote:
>
> Good Morning,
>
> I am having a problem running the python benchmark_rate.py. The error
> message I am receiving is in the image attached "the module uhd has no
> attribute 'usrp'". My installation indicated everything was good when I ran
> a make test, so I am not sure if I need to be in a specific folder so that
> it can find the attribute or what.
>
> Sincerely,
>
> Moges
>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> What OS?   How exactly did you install UHD?
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d178a905ad3cc6a4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ubuntu 16 and I used cmake instructions<div dir=3D"auto">=
<br></div><div dir=3D"auto"><a href=3D"https://files.ettus.com/manual/page_=
build_guide.html">https://files.ettus.com/manual/page_build_guide.html</a><=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Wed, Aug 19, 2020, 11:35 AM Marcus D. Leech via USRP-users &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div>On 08/19/2020 11:27 AM, Ephraim Moges
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"auto">
        <div class=3D"gmail_quote" dir=3D"auto">
          <div dir=3D"ltr" class=3D"gmail_attr">Good Morning,<br>
          </div>
          <div dir=3D"auto">
            <div dir=3D"auto"><br>
            </div>
            <div dir=3D"auto">I am having a problem running the python
              benchmark_rate.py. The error message I am receiving is in
              the image attached &quot;the module uhd has no attribute
              &#39;usrp&#39;&quot;. My installation indicated everything wa=
s good
              when I ran a make test, so I am not sure if I need to be
              in a specific folder so that it can find the attribute or
              what.<br>
              <br>
              <div data-smartmail=3D"gmail_signature" dir=3D"auto">Sincerel=
y,<br>
                <br>
              </div>
              <div data-smartmail=3D"gmail_signature" dir=3D"auto">Moges<br=
>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank" rel=3D"noreferrer">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    What OS?=C2=A0=C2=A0 How exactly did you install UHD?=C2=A0 <br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000d178a905ad3cc6a4--


--===============8597094083323012361==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8597094083323012361==--

