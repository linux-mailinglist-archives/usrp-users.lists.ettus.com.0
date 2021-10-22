Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AA443753C
	for <lists+usrp-users@lfdr.de>; Fri, 22 Oct 2021 12:06:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6D734384718
	for <lists+usrp-users@lfdr.de>; Fri, 22 Oct 2021 06:06:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HRpXb2nb";
	dkim-atps=neutral
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	by mm2.emwd.com (Postfix) with ESMTPS id A4B5238429C
	for <usrp-users@lists.ettus.com>; Fri, 22 Oct 2021 06:05:17 -0400 (EDT)
Received: by mail-il1-f169.google.com with SMTP id s3so3723441ild.0
        for <usrp-users@lists.ettus.com>; Fri, 22 Oct 2021 03:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=xTUO937Jt0hNEIjHLQi9FuzB+BMMZlt735h9MAomPcA=;
        b=HRpXb2nb1817b5GuqBfdbXiZP9YHhsbdUQd39KNn2xGDQveOhQKqlpcFANaig5E3/Z
         cRpnthXF8lmE4HXv5AtPv+67wCzbxqiv8Ggnq/iv2xGUrP5k5u71b0dqgY5LCRR1mxJK
         djjJ5gi7lqsMli8DJ484zyl+eGuZNFSfCHtsiWO8f+PuQuF5L9h93GDSmho/rIBMwax4
         4rkjAei41rIlrdJB0obyfIDNuCmoIkjoQPuL4y/U0iXiSoKXI5MIZlwhRxxuh6qv1ZMl
         qHdBwflEyv2jU1NpYb4Ayo+D/Kim3qfnNkXWE9gU6y0qaO8BVP5SAUjffH8AQgVliN4b
         GzxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=xTUO937Jt0hNEIjHLQi9FuzB+BMMZlt735h9MAomPcA=;
        b=W7UbGhjbxDkx2EYZz4/dWYepvSqsc5eHyOi56HLXunCP+9N678mxB9+OK+Fg/7z+WD
         QXGLyUg/O891WPYhBo2QqNuUcDE110z4i5+xuDJhojsf9sDlfShamOfIXnGXHXc35fSl
         23a1hFg1rqYtPV59fM9/GYuc/iexPE5dsLStzKSXPb2QLvW9FxTYsDqj+WJhxwiswY39
         BNZp43n6s5SLmLGk/nbskmQFsWKIJRTiEoabYB5trkSQbSyhx77+EMtAVMmK5PNluP7s
         hQiHZp/v8zr1t8OZzaaUNJlj1Ymitspa/MQpmZcBc2Ek8QHWI5mlgdO3mGG3tdD6R1lh
         HBrw==
X-Gm-Message-State: AOAM5331chakx5p2q8kf1lGncjjuhBo2PKM2vurz2U0z3EN9jkWsH5cE
	S2m3yNHx+rPHC4BGN+K7V9EnBmfAjFaCZ3nWABs=
X-Google-Smtp-Source: ABdhPJxFKx5+S+adeo7lR7VfURZa5ZLW9OG5IJjQZbRUF9p6yjfSgHBB/JZkxQ/a8BmbExu0wn7jOK1n4LXUFgKVoK4=
X-Received: by 2002:a92:ca90:: with SMTP id t16mr3666195ilo.55.1634897116896;
 Fri, 22 Oct 2021 03:05:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxsHu+FoQrLpC+fVyVdtmdu4kfXEq8CBmBsA5iGJ+xT-FA@mail.gmail.com>
 <CAPRRyxsDhTm=m_EWds6SbJUuDkVaK0GJyOETVaSPisb_kfzbkw@mail.gmail.com> <6d3d9adb-fd20-e86e-fe12-9daf26315df7@gmail.com>
In-Reply-To: <6d3d9adb-fd20-e86e-fe12-9daf26315df7@gmail.com>
From: Ivan Zahartchuk <adray0001@gmail.com>
Date: Fri, 22 Oct 2021 13:05:05 +0300
Message-ID: <CAPRRyxsYL12897gcx+xs9baY7LFyCyJGepeKCS=r4UrO6EGpRQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, discuss-gnuradio <discuss-gnuradio@gnu.org>,
	usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: PNOKQ5FO2FDWSCUJUI7A37KEN4YPOVJW
X-Message-ID-Hash: PNOKQ5FO2FDWSCUJUI7A37KEN4YPOVJW
X-MailFrom: adray0001@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fwd: Adding a Window block to an RFNOC graph
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PNOKQ5FO2FDWSCUJUI7A37KEN4YPOVJW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3107410076967837235=="

--===============3107410076967837235==
Content-Type: multipart/alternative; boundary="000000000000e5a06b05ceee25b2"

--000000000000e5a06b05ceee25b2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes I am setting fft for magnitudes. On the front side, I am doing a
log. I perfectly understand where infinity comes from. I don=E2=80=99t
understand why the FFT returns 0. But how can I configure the Window?


=D0=BF=D1=82, 22 =D0=BE=D0=BA=D1=82. 2021 =D0=B3. =D0=B2 01:51, Marcus D. L=
eech <patchvonbraun@gmail.com>:

> On 2021-10-21 6:40 p.m., Ivan Zahartchuk wrote:
>
>
> Hello, I have a problem that when receiving samples from the USRP E310 bo=
ard, after the FFT block at low gain, zero values are received. After that =
I log them and get infinity. I wanted to figure out what the problem is, bu=
t I have no idea, maybe the Window block will fix the situation. But when b=
uilding my yaml file, I get the error:
> [ERR] 2 Unresolved connection(s)
> [ERR]     (window0-out_0 -> fft0-in0)
> [ERR]     (fft0-out_0 -> ep1-in_0)
> [INF]         (('radio0', 'ctrl_port', 'master'),)
> [INF]         (('radio0', 'time_keeper', 'listener'),)
> [INF]         (('radio0', 'x300_radio', 'slave'),)
> [INF]         (('_device_', 'ctrlport_radio', 'slave'),)
> [INF]         (('_device_', 'time_keeper', 'broadcaster'),)
> [INF]         (('_device_', 'x300_radio', 'master'),)Please tell me what =
could be the problem and how can I add the Window block to my image?
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> Do you have your FFT configured for log output?  Because the logarithm of
> zero is undefined.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e5a06b05ceee25b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre class=3D"gmail-tw-data-text gmail-tw-text-large gmail=
-XcVN5d gmail-tw-ta" id=3D"gmail-tw-target-text" style=3D"text-align:left" =
dir=3D"ltr"><span class=3D"gmail-Y2IQFc" lang=3D"en">Yes I am setting fft f=
or magnitudes. On the front side, I am doing a log. I perfectly understand =
where infinity comes from. I don=E2=80=99t understand why the FFT returns 0=
. But how can I configure the Window?</span></pre></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D0=BF=D1=82, 22 =D0=BE=
=D0=BA=D1=82. 2021 =D0=B3. =D0=B2 01:51, Marcus D. Leech &lt;<a href=3D"mai=
lto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-10-21 6:40 p.m., Ivan
      Zahartchuk wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr"><br>
          </div>
          <div dir=3D"ltr">
            <pre id=3D"gmail-m_7164106155543386629m_2664631585752873320gmai=
l-tw-target-text" style=3D"text-align:left" dir=3D"ltr"><span lang=3D"en">H=
ello, I have a problem that when receiving samples from the USRP E310 board=
, after the FFT block at low gain, zero values are received. After that I l=
og them and get infinity. I wanted to figure out what the problem is, but I=
 have no idea, maybe the Window block will fix the situation. But when buil=
ding my yaml file, I get the error:
[ERR] 2 Unresolved connection(s)
[ERR] =C2=A0 =C2=A0 (window0-out_0 -&gt; fft0-in0)
[ERR] =C2=A0 =C2=A0 (fft0-out_0 -&gt; ep1-in_0)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;radio0&#39;, &#39;ctrl_port&#39;, =
&#39;master&#39;),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;radio0&#39;, &#39;time_keeper&#39;=
, &#39;listener&#39;),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;radio0&#39;, &#39;x300_radio&#39;,=
 &#39;slave&#39;),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;_device_&#39;, &#39;ctrlport_radio=
&#39;, &#39;slave&#39;),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;_device_&#39;, &#39;time_keeper&#3=
9;, &#39;broadcaster&#39;),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;_device_&#39;, &#39;x300_radio&#39=
;, &#39;master&#39;),)
<span lang=3D"en">Please tell me what could be the problem and how can I ad=
d the Window block to my image?

</span></span></pre>
          </div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    Do you have your FFT configured for log output?=C2=A0 Because the
    logarithm of zero is undefined.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e5a06b05ceee25b2--

--===============3107410076967837235==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3107410076967837235==--
