Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9625A3B74C1
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jun 2021 16:56:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D9D78384516
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jun 2021 10:56:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="HcdSlOpt";
	dkim-atps=neutral
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 41D9C3844FC
	for <usrp-users@lists.ettus.com>; Tue, 29 Jun 2021 10:55:55 -0400 (EDT)
Received: by mail-io1-f45.google.com with SMTP id f21so11236738ioh.13
        for <usrp-users@lists.ettus.com>; Tue, 29 Jun 2021 07:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WN/hm73hFPzKgRUr5dS3LqtPfZYjS2Ww6mo6i0sg99g=;
        b=HcdSlOptlsoTZGOe3RqvWIllHfwYtyXSbOEltf+Ug7xI5wLDL4QnKyFa3q8oTJN5Ky
         0oFNK6JAguqfQjg6zuoiApKPljaXKSJy/0QnZhCr0RA/7V3X/dpFdriBo/eiP87594AT
         yKBftwS7CiAnUSaVbTvZbBfpeFmxCjAKtU9mkZXu7aZA7rkPAkdPi7oYrkIs5WVDbOPs
         nhvI794OPsnLQsFEH9nDerW++pfc1+OIHi6Kk2X1h5frZJK6HXpCTNqnsdAsaNUAl6wv
         1pHJIMVvFDIRbf/S+H3q12vrLnDDHZgJl31Rjo03oLwsqFlM23kqLnnuHazNu2oI6a/b
         WWWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WN/hm73hFPzKgRUr5dS3LqtPfZYjS2Ww6mo6i0sg99g=;
        b=DooHiT2HZVS5gSY9rfkh5XWHonuVAzH5nduc+1BiR63TkBUAnIvahhj2dfXohuin92
         es4xUin1ZOD8LoxnfsKs/yv9pkvDrfVTyEd4fw+ZZAcYRIkJPHNz8ieTzR4HBerTmUx/
         E8YvwC/azp+9TsAViu17ho0pKU6cbohroAIqIHKbgvwAw2WkpPGShw2gmnMapk55DAIZ
         z5HcqP+J74z3nd5Su/FtGdKSwmUMwHAncubuhU3veWnehbtBFzEpOuuvJL6X/ee1A2Ko
         6gHkvoQe/4zZGJAkneSPl21G+xRHaAJeBPm3r6nQc5E05qnf/999wc3RjJUbZAbqD8yW
         sZtQ==
X-Gm-Message-State: AOAM532tn4w5t/0HTGRDJIQRCK0ROdciZy0vbefk9MVC6+s+9CEEha52
	OcZ5BtRthQooKm/JmWyU5WvUHGDT6QSqgi+ALDdbHBtbOPm7jQ==
X-Google-Smtp-Source: ABdhPJzk481nstpM3gwxKjvAzEAul0JM0PccDfHwp0IVtTMDq+1sf1ucyaoHWXpWahXWpI/ioonxh2g27ilRD+vJ9o0=
X-Received: by 2002:a02:3506:: with SMTP id k6mr4741274jaa.39.1624978554521;
 Tue, 29 Jun 2021 07:55:54 -0700 (PDT)
MIME-Version: 1.0
References: <9gJ8YGQCerSDcqF04mlmG5UurcBIGwYZhKjgHo3HRLg@lists.ettus.com> <60DB3271.4020000@gmail.com>
In-Reply-To: <60DB3271.4020000@gmail.com>
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Tue, 29 Jun 2021 09:55:18 -0500
Message-ID: <CACaXmv_e+ZgdtYMOUo+oL=h9bSySYNrw5DbpDZJQLh+jLLDCHw@mail.gmail.com>
To: rblack@swri.org
Message-ID-Hash: OV6L7DG6DKI7PIAWEHPTD5YTY6EBJPEX
X-Message-ID-Hash: OV6L7DG6DKI7PIAWEHPTD5YTY6EBJPEX
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc radio transmit control
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OV6L7DG6DKI7PIAWEHPTD5YTY6EBJPEX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3937641183059101837=="

--===============3937641183059101837==
Content-Type: multipart/alternative; boundary="000000000000829aa805c5e8cdac"

--000000000000829aa805c5e8cdac
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You can use timed commands to start and stop streaming at specific clock
cycles.  It sounds like that's all you'd need to do.  Which specific radio
are you using?

--Neel Pandeya



On Tue, 29 Jun 2021 at 09:48, Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 06/29/2021 10:34 AM, rblack@swri.org wrote:
>
> 20 MSamp/sec. So if we, say, gate the signal on/off 10 microsec on/10
> microsec off, then we=E2=80=99d have 200 samples on, 200 samples off.
>
>
> thx rb
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> You could also consider looking at the streaming-control primitives in
> closer detail:
>
> https://files.ettus.com/manual/structuhd_1_1stream__cmd__t.html
>
> For example "num_samples_and_more" mode allows you to send more samples i=
n
> the future (at a time controlled by the
>   time_spec) parameter.
>
> You can also arrange for streaming to be stopped at a particular time as
> opposed to "now".
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000829aa805c5e8cdac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">You can use timed commands to start and stop streaming at speci=
fic clock cycles.=C2=A0 It sounds like that&#39;s all you&#39;d need to do.=
=C2=A0 Which specific radio are you using?</div><div class=3D"gmail_default=
" style=3D"font-family:verdana,sans-serif"><br></div><div><div dir=3D"ltr" =
class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"lt=
r"><font face=3D"verdana, sans-serif">--Neel Pandeya</font><div><br></div><=
/div></div></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, 29 Jun 2021 at 09:48, Marcus D. Leech &lt;<a h=
ref=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 06/29/2021 10:34 AM, <a href=3D"mailto:rblack@swri.org" target=
=3D"_blank">rblack@swri.org</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <p>20 MSamp/sec. So if we, say, gate the signal on/off 10 microsec
        on/10 microsec off, then we=E2=80=99d have 200 samples on, 200 samp=
les
        off.</p>
      <p><br>
      </p>
      <p>thx rb</p>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    You could also consider looking at the streaming-control primitives
    in closer detail:<br>
    <br>
    <a href=3D"https://files.ettus.com/manual/structuhd_1_1stream__cmd__t.h=
tml" target=3D"_blank">https://files.ettus.com/manual/structuhd_1_1stream__=
cmd__t.html</a><br>
    <br>
    For example &quot;num_samples_and_more&quot; mode allows you to send mo=
re
    samples in the future (at a time controlled by the<br>
    =C2=A0 time_spec) parameter.<br>
    <br>
    You can also arrange for streaming to be stopped at a particular
    time as opposed to &quot;now&quot;.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000829aa805c5e8cdac--

--===============3937641183059101837==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3937641183059101837==--
