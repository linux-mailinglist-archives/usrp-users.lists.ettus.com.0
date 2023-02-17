Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C41A69B2DA
	for <lists+usrp-users@lfdr.de>; Fri, 17 Feb 2023 20:07:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 742CE383DB5
	for <lists+usrp-users@lfdr.de>; Fri, 17 Feb 2023 14:07:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676660856; bh=h4O47lcaymZ19CyE1Y49xQc/YaNsBWPlHoIKDcmbP0o=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=VjwU365HNH51+Pp11+frU6bQYMtDlXjdvtWLQPdbyWuJXcXHiWZmiJHcPUuVnQyJR
	 QhRljBW4DxcRZKSNlsw0xIrIyAa9ho58Y03tX8up8h96n6iWhpkjcag8OscKnie3Hs
	 GecESG8qxcbcBPfzTB/P0BMzYWy2DTavSPYijFgmW/Rm96GaQlL6AgZTm96Qw9y6Ay
	 Gzjr29Q4avkeXZBD7YK24EMBz4qokCGLC1seM0n/lp8PIkaoyosTo2XwQ9fOqahbFJ
	 i8bVdokn5AFfJmQN8w2FQfCPtuCtEACGgvR3ef7uwVwEHegaJ1Zm8Ow9AUtOhLbCb/
	 AlA4rsyngeoHA==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id EFABE381101
	for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 14:06:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="noTeqPP7";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id s22so1824480qtw.11
        for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 11:06:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VYDJK3E68X2aobeakQU9d88y7/8GdxrA7Ivjm9UpT2g=;
        b=noTeqPP79g1qO17PF0zssUjjnnXuboaqUGEc/eTHGxr9HnkNxE+WyaDNFm/2X4jUbH
         sPeDvrBi2h09RC9KLTITaX5AYbzhJOu6BJI5sOoTMuOiissX/9EjNKooTQ+GB9HhfPoD
         mySWvNslpe1XZfJMzWNzIT8HkBh/2JCdiY9JLtWQYSSwxLXNgY4/+Bqt4Hsiy6bn0w/v
         tcKXFYjz9yatNWY1RQO8h+u0THHX6B/qYR+myqiD/gds9pGW1T45JSo/nfNXzwo3TMUD
         uw6qqu205/m/eyLY9FChBDbofYr2vhXcy3QHjmleVCr1BdSl8PHN21kn0QH1ORofBGV3
         CUtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VYDJK3E68X2aobeakQU9d88y7/8GdxrA7Ivjm9UpT2g=;
        b=blLnchSSMSzZCo7/n8O8zB8a32N2BwqAq/zV22Ou4+XJ4QrLihjdL6NzCT6YDij6kh
         mEcKnX7L8PTunR9LEkiDX2TsRf/15DAj2KVa+sByesGYTFmqxJ4psaFOwL8Drrv6SrNn
         Ap6SGY1ioSWqENotS17kgAzL+aR8JHDT+GR0SxJeNdM8xTaSbVGIwtNDEz7a/VW0dnYx
         5n1h30gl9FeuiACgzqySMkYYXYlF8iKVdEp64qGaQYh55OyB9XdcVDe0tJxdNiUf1pdc
         VQhddw3h/KYRDzWMr6ITwOKLFPU7wra6AKhmbllTEKYAZMjbrpPpB/uSCZpkBo6p5HcN
         KOJA==
X-Gm-Message-State: AO0yUKVcCAfYHtBmZQep8Git7pc2zlhvTSUO0nk8AvsZZWHu0AEWOUDc
	3PLHNHsfRvVdzGe5izwBjdX45Id+HSo=
X-Google-Smtp-Source: AK7set+lHG+eKyyYQu57FFtRHJkzJL0uxjZLG9N1ati7FlCqXqLzZL5wPFSr9G7f+E5wp8jiKv/iKg==
X-Received: by 2002:a05:622a:454:b0:3b9:c074:6e3c with SMTP id o20-20020a05622a045400b003b9c0746e3cmr3327470qtx.43.1676660814295;
        Fri, 17 Feb 2023 11:06:54 -0800 (PST)
Received: from [192.168.2.165] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id c67-20020a379a46000000b0073b6a06911asm2224070qke.95.2023.02.17.11.06.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Feb 2023 11:06:54 -0800 (PST)
Message-ID: <2ce67fb3-d776-534c-1f38-4421da3c5d3a@gmail.com>
Date: Fri, 17 Feb 2023 14:06:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Anil Gurses <agurses@ncsu.edu>
References: <CANvw1+RzoBzytLFxQUvH1uYu03VpUNp97PXaqaKF6JvVAS5u6Q@mail.gmail.com>
 <d9568b3e-38a3-c32a-7808-e2529efa4f34@gmail.com>
 <CANvw1+RgMMvjG6EFkyVLxqCfO_iC866HyJPSTxdv-XM_6zzW4w@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANvw1+RgMMvjG6EFkyVLxqCfO_iC866HyJPSTxdv-XM_6zzW4w@mail.gmail.com>
Message-ID-Hash: ULNK67UMWJHZ5FT2O4X4RUEYS6USGORU
X-Message-ID-Hash: ULNK67UMWJHZ5FT2O4X4RUEYS6USGORU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Continuous stream receive process
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ULNK67UMWJHZ5FT2O4X4RUEYS6USGORU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4119180494503520574=="

This is a multi-part message in MIME format.
--===============4119180494503520574==
Content-Type: multipart/alternative;
 boundary="------------cvia0SGLFjqK70D8gJaNumoB"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------cvia0SGLFjqK70D8gJaNumoB
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 17/02/2023 14:00, Anil Gurses wrote:
>
> Thanks for your quick response!
>
>     In general, your application absolutely, positively, needs to call
>     recv() to consume samples as fast as they're produced, on average.
>     =C2=A0=C2=A0 Short-term shortfalls are "soaked up" by buffers, but =
if your
>     application cannot "keep up", no amount of buffering will save it.
>
>
> This is why we have overflows. Then, my interpretation of continuous=20
> streaming is correct.
>
> To test this, I created a simple python script by putting=20
> delays(sleep) between consecutive recv calls for b205 mini. The lights=20
> turned on only at recv calls and not during delays. I checked the=20
> metadata time and USRP time to see if the packets are buffered. There=20
> was a difference between them and it proves that packets are=20
> buffered.=C2=A0 However, I still don't understand how RX light is trigg=
ered=20
> on continuous streaming.
>
> A.
The light may turn off when over-runs are happening.=C2=A0 I don't know t=
he=20
detailed logic behind the lights.

Ah:

https://files.ettus.com/manual/page_usrp_b200.html#b200_hw_ref_leds

I'll point out that using Python to do DSP at anything other than=20
"trivial" rates is a near-guarantee of overruns.=C2=A0 Even if you're
 =C2=A0=C2=A0 using high-performance underlying libraries like Numpy, the=
=20
data-marshalling costs in Python make it unsuitable for anything
 =C2=A0=C2=A0 but low-sample-rate experiments.

Gnu Radio does much better in this regard.=C2=A0 While it does use Python=
 as=20
a kind of "control plane", the "sample plane" is
 =C2=A0 all handled in C++ land, and nearly-ALL of the packaged DSP block=
s=20
are written in C++ using SIMD optimizations wherever
 =C2=A0 possible.


>
>
> On Fri, Feb 17, 2023 at 1:43 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 17/02/2023 13:34, Anil Gurses via USRP-users wrote:
>     > Hi all,
>     >
>     > I have a simple question about the continuous stream. As you all
>     know,
>     > USRP RX lights indicate whether it's receiving samples or not. On
>     > continuous streaming, these lights are turned on if the recv
>     function
>     > is called from the host computer(stay on until the end of recv
>     > function call). In theory, the continuous streaming mode should
>     > receive and buffer these samples. So, shouldn't the lights be on
>     until
>     > the continuous streaming stop(not until the end of recv function
>     call)?
>     >
>     > If this is how it should be, then my understanding of continuous
>     > stream is wrong. If I don't call recv function, doesn't USRP
>     receive
>     > samples and buffer them(on continuous streaming mode)?
>     The light is turned on when a receive streamer is created, as far
>     as I know.
>
>     If your application doesn't call recv(), some number of samples
>     will be
>     buffered in various parts of the library and OS drivers, and
>     =C2=A0=C2=A0 then they'll just start getting dropped.
>
>     In general, your application absolutely, positively, needs to call
>     recv() to consume samples as fast as they're produced, on average.
>     =C2=A0=C2=A0 Short-term shortfalls are "soaked up" by buffers, but =
if your
>     application cannot "keep up", no amount of buffering will save it.
>
>
>
>
>     >
>     >
>     > Thanks,
>     > A.
>     >
>     > _______________________________________________
>     > USRP-users mailing list -- usrp-users@lists.ettus.com
>     > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------cvia0SGLFjqK70D8gJaNumoB
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 17/02/2023 14:00, Anil Gurses wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANvw1+RgMMvjG6EFkyVLxqCfO_iC866HyJPSTxdv-XM_6zzW4w@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Thanks for your quick response! <br>
        </div>
        <div><br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          In general, your application absolutely, positively, needs to
          call <br>
          recv() to consume samples as fast as they're produced, on
          average.<br>
          =C2=A0=C2=A0 Short-term shortfalls are "soaked up" by buffers, =
but if
          your <br>
          <div>
            application cannot "keep up", no amount of buffering will
            save it.</div>
        </blockquote>
        <div><br>
        </div>
        <div>This is why we have overflows. Then, my interpretation of
          continuous streaming is correct. <br>
        </div>
        <div><br>
        </div>
        <div>To test this, I created a simple python script by putting
          delays(sleep) between consecutive recv calls for b205 mini.
          The lights turned on only at recv calls and not during delays.
          I checked the metadata time and USRP time to see if the
          packets are buffered. There was a difference between them and
          it proves that packets are buffered.=C2=A0 However, I still don=
't
          understand how RX light is triggered on continuous streaming.
          <br>
        </div>
        <div><br>
        </div>
        <div>A. <br>
        </div>
      </div>
    </blockquote>
    The light may turn off when over-runs are happening.=C2=A0 I don't kn=
ow
    the detailed logic behind the lights.=C2=A0 <br>
    <br>
    Ah:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_usrp_b200.html#b200_hw_ref_leds">https://files.ettus.com/manual=
/page_usrp_b200.html#b200_hw_ref_leds</a><br>
    <br>
    I'll point out that using Python to do DSP at anything other than
    "trivial" rates is a near-guarantee of overruns.=C2=A0 Even if you're=
<br>
    =C2=A0=C2=A0 using high-performance underlying libraries like Numpy, =
the
    data-marshalling costs in Python make it unsuitable for anything<br>
    =C2=A0=C2=A0 but low-sample-rate experiments.<br>
    <br>
    Gnu Radio does much better in this regard.=C2=A0 While it does use Py=
thon
    as a kind of "control plane", the "sample plane" is<br>
    =C2=A0 all handled in C++ land, and nearly-ALL of the packaged DSP bl=
ocks
    are written in C++ using SIMD optimizations wherever<br>
    =C2=A0 possible.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CANvw1+RgMMvjG6EFkyVLxqCfO_iC866HyJPSTxdv-XM_6zzW4w@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 17, 2023 at 1:4=
3
          PM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On
          17/02/2023 13:34, Anil Gurses via USRP-users wrote:<br>
          &gt; Hi all,<br>
          &gt;<br>
          &gt; I have a simple question about the continuous stream. As
          you all know, <br>
          &gt; USRP RX lights indicate whether it's receiving samples or
          not. On <br>
          &gt; continuous streaming, these lights are turned on if the
          recv function <br>
          &gt; is called from the host computer(stay on until the end of
          recv <br>
          &gt; function call). In theory, the continuous streaming mode
          should <br>
          &gt; receive and buffer these samples. So, shouldn't the
          lights be on until <br>
          &gt; the continuous streaming stop(not until the end of recv
          function call)?<br>
          &gt;<br>
          &gt; If this is how it should be, then my understanding of
          continuous <br>
          &gt; stream is wrong. If I don't call recv function, doesn't
          USRP receive <br>
          &gt; samples and buffer them(on continuous streaming mode)?<br>
          The light is turned on when a receive streamer is created, as
          far as I know.<br>
          <br>
          If your application doesn't call recv(), some number of
          samples will be <br>
          buffered in various parts of the library and OS drivers, and<br=
>
          =C2=A0=C2=A0 then they'll just start getting dropped.<br>
          <br>
          In general, your application absolutely, positively, needs to
          call <br>
          recv() to consume samples as fast as they're produced, on
          average.<br>
          =C2=A0=C2=A0 Short-term shortfalls are "soaked up" by buffers, =
but if
          your <br>
          application cannot "keep up", no amount of buffering will save
          it.<br>
          <br>
          <br>
          <br>
          <br>
          &gt;<br>
          &gt;<br>
          &gt; Thanks,<br>
          &gt; A.<br>
          &gt;<br>
          &gt; _______________________________________________<br>
          &gt; USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          &gt; To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
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
    </blockquote>
    <br>
  </body>
</html>

--------------cvia0SGLFjqK70D8gJaNumoB--

--===============4119180494503520574==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4119180494503520574==--
