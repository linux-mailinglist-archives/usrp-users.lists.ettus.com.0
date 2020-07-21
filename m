Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA77228905
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 21:21:28 +0200 (CEST)
Received: from [::1] (port=43272 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxxpN-0002qf-Vt; Tue, 21 Jul 2020 15:21:26 -0400
Received: from mail-pj1-f54.google.com ([209.85.216.54]:55574)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sspears@astranis.com>)
 id 1jxxpJ-0002jT-DD
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 15:21:21 -0400
Received: by mail-pj1-f54.google.com with SMTP id k1so2023260pjt.5
 for <usrp-users@lists.ettus.com>; Tue, 21 Jul 2020 12:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=astranis-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A02R/zlygOUGNZGUua00c7nyGlujkZEbogroaBEckTY=;
 b=aR+hhf9Nc+6P0VlrJwW6T1iHKtyl0997Wzep1YTrulRm0+9cTG/tsTQ6oPMUAx5xRS
 0I7hKhfrlorQtVgWrwGAbEBdF0XpsB9wTrAMkC2YlKIn2dDJF2vggHvPY8XYFOTFc6iT
 rwYElV4oAxLypIT/1dIvyhOBaGk8CfQ6bxcWhs2OVRc2rIsfzWec3qOoOObjYXDH9EWj
 3D2BpOWE8XIlFjhQ//sJn3oGjW4MRv6yG+GbeyvwKloG5g1SEsaBfkG0rcW3PqgPyY2w
 5y4OrzpEOHQEwFbDzmJmcrS0k5IiuGeLzuCualrHduQ+4Jrm8ZTNUJjvYpN2hTROFxP5
 NrOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A02R/zlygOUGNZGUua00c7nyGlujkZEbogroaBEckTY=;
 b=Rh631g/LyYecs9y0mkU7ZNV7VJBrPABCdbF6wwslNMdr2IsJiaZS9QpFi6PRIjr5Nr
 95Y1Jf7UAWuZDu2ZAbbJqxzW5SuADGlimsNhmpuGsoPAdAV1Insk5zwVNEWVLjKKS5DL
 LRoLS39FA6PlfA4XJI5PtJ1GCJySApBw/hFDr54EijyrSfDJz/6t97rdABWLZBniMiWg
 0rWm3cuYc7zRZjhSZlWKOiQkO8s1vXlfFnd8LnjQY7Pok6AXR6IvWOXWTEdQX55taH3T
 Ilc6MZ0Yhpe6jb2mpiQdtJtGghUjIpVa4nHKtJMuQP8zPZANKqbLhuVtJs1YTrEde7ky
 e7RA==
X-Gm-Message-State: AOAM530TsdNpcTLq/ZqKzFjhKhD6HOQmUMdrYQeFHLEwhbMHTJPosY19
 1bmRTnAUI9D3fr+Daa6v0LeJrfIi3LCH+vpdwsg/cQ==
X-Google-Smtp-Source: ABdhPJy1/wxcqKOk/B5Hq5tFt2QRmcqHsgOlQxPBxQos8WHFvN6+Cpbr6p7u5dC4F0BrLXw8yeU3S32yZSHnZDIRfb4=
X-Received: by 2002:a17:90a:1f81:: with SMTP id
 x1mr5788302pja.115.1595359240507; 
 Tue, 21 Jul 2020 12:20:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAOqZ52a5gp6KREUZqht2oA7RVPNwxg3T7=y+Jb7Sr0f=pfXn_g@mail.gmail.com>
 <5F173F37.2060809@gmail.com>
In-Reply-To: <5F173F37.2060809@gmail.com>
Date: Tue, 21 Jul 2020 12:20:29 -0700
Message-ID: <CAOqZ52Z3V8VpkHNuch-dXT9Py-W6e0x2pVwojzVcbGsU+yxGBg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] LFRX/LFTX daughterboard combination.
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
From: Stephen Spears via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Stephen Spears <sspears@astranis.com>
Content-Type: multipart/mixed; boundary="===============8604498158403575076=="
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

--===============8604498158403575076==
Content-Type: multipart/alternative; boundary="000000000000d1e7e405aaf8840f"

--000000000000d1e7e405aaf8840f
Content-Type: text/plain; charset="UTF-8"

Awesome, thanks Marcus

On Tue, Jul 21, 2020 at 12:18 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 07/21/2020 03:15 PM, Stephen Spears via USRP-users wrote:
>
> Hi there,
>
> I have a question about using the LFRX and LFTX daughterboards together. I
> tried contacting Ettus through their website, but received no response, so
> I thought I might find answers here instead. I need to do both RX and TX at
> low frequencies (<30 MHz), but according to the Ettus website, there is no
> combined TX/RX daughterboard for this range.
> I am wondering if I need separate N200s for each board, or if there is a
> way to fit both in a single N200. I ask this because the boards LFRX and
> LFTX boards look significantly smaller on the website (
> https://www.ettus.com/product-categories/rf-daughterboards/page/2/) than
> the combined RX/TX boards. If any of you have experience using these
> boards, please let me know whether using a single N200 is possible.
>
> Thanks,
> Stephen Spears
>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> The N200 will support a single card *IN EACH DIRECTION*.  So, there's no
> problem having both a LFRX and LFTX in a single N200 or N210.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d1e7e405aaf8840f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Awesome, thanks Marcus</div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 21, 2020 at 12:18 PM Mar=
cus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 07/21/2020 03:15 PM, Stephen Spears
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hi there,
        <div><br>
        </div>
        <div>I have a question about using the LFRX and LFTX
          daughterboards together. I tried contacting Ettus through
          their website, but received no response, so I thought I might
          find answers here instead. I need to do both RX and TX at low
          frequencies (&lt;30 MHz), but according to the Ettus website,
          there is no combined TX/RX daughterboard for this range.</div>
        <div>I am wondering if I need separate N200s for each board, or
          if there is a way to fit both in a single N200. I ask this
          because the boards LFRX and LFTX boards look significantly
          smaller on the website (<a href=3D"https://www.ettus.com/product-=
categories/rf-daughterboards/page/2/" target=3D"_blank">https://www.ettus.c=
om/product-categories/rf-daughterboards/page/2/</a>)
          than the combined RX/TX boards. If any of you have experience
          using these boards,=C2=A0please let me know whether using a singl=
e
          N200 is possible.</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Stephen Spears</div>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
</pre>
    </blockquote>
    The N200 will support a single card *IN EACH DIRECTION*.=C2=A0 So,
    there&#39;s no problem having both a LFRX and LFTX in a single N200 or
    N210.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000d1e7e405aaf8840f--


--===============8604498158403575076==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8604498158403575076==--

