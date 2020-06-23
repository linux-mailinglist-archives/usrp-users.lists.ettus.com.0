Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE982047FD
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jun 2020 05:40:11 +0200 (CEST)
Received: from [::1] (port=45136 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jnZn6-0006l4-4g; Mon, 22 Jun 2020 23:40:08 -0400
Received: from mail-qt1-f182.google.com ([209.85.160.182]:35470)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cykhung@gmail.com>) id 1jnZn1-0006fS-73
 for usrp-users@lists.ettus.com; Mon, 22 Jun 2020 23:40:03 -0400
Received: by mail-qt1-f182.google.com with SMTP id z1so14401913qtn.2
 for <usrp-users@lists.ettus.com>; Mon, 22 Jun 2020 20:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FPWbElNuDPyO04GBuXLd4Oa3yKZOOm/N0Sx/0wQ99YI=;
 b=ki0cU0hDdUMKJOc/5jGZwonVmLj0VRMd+KT7MaRPp2yIwJbv1m0R5l6HPfpVyYKmRH
 11ch9QdLpHM8VoDKl/13n9BT+IL+pXorJEp51gk5fQ50F4IfSajnUyCsPC5vivnIfYcT
 8qDlb1GX5tuIi4DmBpNlmuVoMPOLxEAwQ+ybM8JTjoimnmONXGLl5GjOrnqUEy++lTQA
 MQVNJCRiS0zPNLmOpKf2YyiMWoTZacjunU3+4iK0TRT7yUQW4yjigR4yBuOg+RyaA6XT
 5XorMbZuPup5Ypi5Wb9y3I5TjET7W2btYjbAzIEw0Zf1x9Xzsdi0ix5AYtSnBde5QW3y
 Cm/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FPWbElNuDPyO04GBuXLd4Oa3yKZOOm/N0Sx/0wQ99YI=;
 b=qob7BstPKfdrj6fl3B18VlaNDjC4SkbprmOGKhSGgNtOnCOPaA5ZQTdAzDh3IVvWAT
 y9b0CTOcNXMbSAVKxtG+/+gCusbVelUgsjVxbx58ANiUW9+/aihXYsyUdxAeqjoBVs7j
 prgSvQ2ivTSVuLLv6NJRPvumoAaCpA9AxyrA3VDMlLxJm6uVj9fws0TdEtMUnuSqVwPM
 fdCdFAP3wSN2CVnn+jlDgXKNEQQ+w3BvV7NkgOHzPBolFKxkeRsdVXp4rTERRotpajVn
 sZ9IuBgn/11CNTe6Z6OMZ69T8CAuthJ/trCAWqDgSfeJUMg+jxirmG5JI2Zlfl0Y+KcK
 81QA==
X-Gm-Message-State: AOAM533N02IK2IWfsBRz32Kwn2123TFlQOmzv1KBDaBZCbote/f0466K
 6FYXGhPOEvrkMozgTIvYN2kVa01IOZGYD4kUd4A=
X-Google-Smtp-Source: ABdhPJwQJsElynuqLenKuJ/BO2RxDxgpB5KO3bW/xbHuLL7WMMygyX/hrHBTzY/CnT6ff+WwALcvSzcVqSHDKpcwDe0=
X-Received: by 2002:aed:26e1:: with SMTP id q88mr3725715qtd.354.1592883562485; 
 Mon, 22 Jun 2020 20:39:22 -0700 (PDT)
MIME-Version: 1.0
References: <dfbc4b72-9d92-4f06-b850-6923cccb276b@Spark>
 <5cdd41e9-5b4f-4876-82de-878db9201c6a@Spark>
 <5EF1605E.3050808@gmail.com>
In-Reply-To: <5EF1605E.3050808@gmail.com>
Date: Mon, 22 Jun 2020 23:39:11 -0400
Message-ID: <CAKU1+bjUbmooO6wHGd085fNGQng873n5VdtiDCPYnTEoqMT8XA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] AM transmission
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
From: Kevin Hung via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Kevin Hung <cykhung@gmail.com>
Content-Type: multipart/mixed; boundary="===============1754645910612446216=="
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

--===============1754645910612446216==
Content-Type: multipart/alternative; boundary="000000000000e91ade05a8b81a8f"

--000000000000e91ade05a8b81a8f
Content-Type: text/plain; charset="UTF-8"

Just my guess. The rx IQ samples are rotated by a constant phase offset.

On Mon, Jun 22, 2020 at 9:53 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 06/22/2020 09:14 PM, Ernest Poletaev via USRP-users wrote:
>
> Hello everyone,
>
> I'm new to SDR and trying to implement transmission with AM Modulation
> using uhd library with B205mini board.
>
> Currently I have following procedure:
>
> Set RX and TX parameters for RF frequency, channel 0
> Set sampling frequency to 1M samples per second
> Set RX and TX gain
> Receiving as sc8, sc8
> Transmitting as fc32, sc8
>
> -loop:
>
> Receiving:
>
> As usual with AM demodulation and it is working
>
> Transmitting:
>
> On audio sink get next 4096 samples of 44.1KHz 16 bit PCM raw audio
> Convert each 16 bit sample to complex float with Q=[audio sample
> normalized to -1 - 1] and I = 0
> Resample (simple interpolation) 44100Hz buffer to 1MHz
> Send buffer for transmission
>
> -end loop
>
> As RX and TX have same frequency I can see data on RF Analyzer, but it
> didn't demodulates to an audio signal.
>
> Am I missing something or my assumption is wrong on some steps?
>
> Regards,
> Ernest
>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> I'm going to suggest that if you're new to SDR and DSP, you might invest
> the time to install Gnu Radio, which provides a very rich environment
>   for not only constructing DSP flows for most popular SDR radios, but
> also debugging those flows when they don't work out as you expect.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000e91ade05a8b81a8f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Just my guess. The rx IQ samples are rotated by a co=
nstant phase offset.</div></div><div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr">On Mon, Jun 22, 2020 at 9:53 PM Marcus D. Leech via USRP-users &l=
t;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000"></div><div bgcolor=3D"#FFFFFF" =
text=3D"#000000">
    <div>On 06/22/2020 09:14 PM, Ernest Poletaev
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div name=3D"messageBodySection">
        <div dir=3D"auto">Hello everyone,<br>
          <br>
          I&#39;m new to SDR and trying to implement transmission with AM
          Modulation using uhd library with B205mini board.<br>
          <br>
          Currently I have following procedure:<br>
          <br>
          Set RX and TX parameters for RF frequency, channel 0<br>
          Set sampling frequency to 1M samples per second<br>
          Set RX and TX gain<br>
          Receiving as sc8, sc8<br>
          Transmitting as fc32, sc8<br>
          <br>
          -loop:<br>
          <br>
          Receiving:<br>
          <br>
          As usual with AM demodulation and it is working<br>
          <br>
          Transmitting:<br>
          <br>
          On audio sink get next 4096 samples of 44.1KHz 16 bit PCM raw
          audio<br>
          Convert each 16 bit sample to complex float with Q=3D[audio
          sample normalized to -1 - 1] and I =3D 0<br>
          Resample (simple interpolation) 44100Hz buffer to 1MHz<br>
          Send buffer for transmission<br>
          <br>
          -end loop<br>
          <br>
          As RX and TX have same frequency I can see data on RF
          Analyzer, but it didn&#39;t demodulates to an audio signal.<br>
          <br>
          Am I missing something or my assumption is wrong on some
          steps?<br>
        </div>
      </div>
      <div name=3D"messageSignatureSection"><br>
        <div>
          <div dir=3D"auto">Regards,
            <div dir=3D"auto">Ernest</div>
          </div>
        </div>
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
    </blockquote></div><div bgcolor=3D"#FFFFFF" text=3D"#000000">
    I&#39;m going to suggest that if you&#39;re new to SDR and DSP, you mig=
ht
    invest the time to install Gnu Radio, which provides a very rich
    environment<br>
    =C2=A0 for not only constructing DSP flows for most popular SDR radios,
    but also debugging those flows when they don&#39;t work out as you
    expect.<br>
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
</blockquote></div></div>

--000000000000e91ade05a8b81a8f--


--===============1754645910612446216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1754645910612446216==--

