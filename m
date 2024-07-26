Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8C993D2E6
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jul 2024 14:17:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1A3B8385B03
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jul 2024 08:17:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721996266; bh=dNzdqcCt0fs6uqDztono8qUe+uW/S2VxUw+2WEo+Ba0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=CdjvCofKWhLa8fIFtukD/ItrPCZpMv69jVLospMzPBLaefXbNqhqTjQx+4ue3z4wO
	 iOCDqsvnDoC0nSipiuikRYZS9hvGu+jv3/HehzDfUgGBpd/I7CU8alsqva/28balUm
	 fmSbzqnOC10aWrvhoKx1N92g98/CpHGjmWm6q1zEF7GRtwLWu5KF5sM0XIFtIJNFUB
	 lOaI4LzRFGFBc+XdY2Qux2n8kB0OiY2gcRSh3Xmu3PHPgrCaVzpKYf+NmFUNd2SOc7
	 RO6duGqavGe5+TkRusFMwyGqCQhH1jm19gmfUH3Ol0NDW4bUvGwRkaaK2Gm5Z4/KGd
	 xxYbesIemYCzg==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id B4BCD385A64
	for <usrp-users@lists.ettus.com>; Fri, 26 Jul 2024 08:17:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="HwN1nJXK";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a728f74c23dso209165566b.1
        for <usrp-users@lists.ettus.com>; Fri, 26 Jul 2024 05:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1721996243; x=1722601043; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BrOvSwQHid09RlTBncaGKDiKJj8zzPSiZicHQYsUs0c=;
        b=HwN1nJXKyNuGPwIZPwrz6HsUE3JbJ/0uKpfyAmyM+HHXQUHNaM2+vmq1RLPd291/QC
         a/9OhlVnheNBqz+M82v38uFo2ZAHCAsNGm3ApBprc3x8p37ijH/ujpNkkhFA6dpCIWGT
         uqJhahhL/LNjAY3cXaiJGAgCusogVQoYVcqDkIh1NYwBKzJb2A8xGsnS1v0CV4GkQfJS
         3egOIGUZm4jQ7qMQN91apn1Cf9PF93TU6U7LbyAtwdN8yqV6Qs73ydZsDLXttNlwIaX8
         ud1Re3wHomLKRWm6U9yFTVLxs/XqNFwQpaAvd9RWB4XP5XbPIA8KE0bFJ7vPA/0DAb1k
         OiwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721996243; x=1722601043;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BrOvSwQHid09RlTBncaGKDiKJj8zzPSiZicHQYsUs0c=;
        b=SsuH0CtZKBVkLkcBVrxn0rlw59C5JuUOh+Ii7WiYWS4ZaoOu9njdRPvz6wNGkZNUkA
         ykP9fC9Y8OQWShr9sI0lciNKpWr9Gun4Lv5N6aGgJzxrcoaG5cxkx8dz0FcduccFl2z5
         7iaCeyotkELbndpKou7EcDJSVh/BuBUvAijswZimYpgtGD8FTcHuoWFSANFrXsdQtQuF
         y0f7BafMggvmwQ+b76OmoEMYWgyXkBodS9bil7RYmXVFYc/mlDzAYg9l8ZnsM2Jr47CR
         gDGXTliZudC/iqhieTOxoxV+woYrLX1DskKDfi1ROyHUm1NXT6dfXBOECwjTvy5nTrRK
         4Byg==
X-Gm-Message-State: AOJu0YyEVFxus+4nOhCYccCLu0dkIRW4DkSmPu9eKt3Wliscud0EfC62
	byynJbNopyct/H+C63NCru6EpcXy5QnZvZsa756gs7FkghfqbuRsxqLIhvq07sCBc3OGMTq0pLS
	IcGBxjyiKxuHAkT2V0kmGu6ffMAabpDD8C81OmQUP
X-Google-Smtp-Source: AGHT+IERg+JymCyLrSEC25c7SEVRHUYEg+UBX+R7BJ19rkB8bOcTuSdG0odZrVH/ahiThdwGkvC9I0d4nqlNsxRtcpc=
X-Received: by 2002:a17:907:72c1:b0:a6f:392d:51a9 with SMTP id
 a640c23a62f3a-a7ac513bdcfmr459204766b.14.1721996243341; Fri, 26 Jul 2024
 05:17:23 -0700 (PDT)
MIME-Version: 1.0
References: <CADPi3fiO-37O8QXpRoFe5aaNNHo8eJcf6C7S6H=k0GGF3QLCsg@mail.gmail.com>
In-Reply-To: <CADPi3fiO-37O8QXpRoFe5aaNNHo8eJcf6C7S6H=k0GGF3QLCsg@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 26 Jul 2024 14:17:12 +0200
Message-ID: <CAFOi1A5ZbQfZ7jowHEmqh-gdh+cN22ho5ceAsUttzmcz5CNmhg@mail.gmail.com>
To: Tim Smith <secsubs@gmail.com>
Message-ID-Hash: FB6ZLGMZLJIRICNJDUMUO4BUB67I6EAE
X-Message-ID-Hash: FB6ZLGMZLJIRICNJDUMUO4BUB67I6EAE
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Making a USRP N230 work
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FB6ZLGMZLJIRICNJDUMUO4BUB67I6EAE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5885705026666363682=="

--===============5885705026666363682==
Content-Type: multipart/alternative; boundary="00000000000063abe6061e257e9b"

--00000000000063abe6061e257e9b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Tim,

the N230 is unsupported and EOL, so you won't get a lot of help. Just some
comments:

- You need UHD 3.15; don't try it with UHD 4. You'll probably need to build
it yourself.
- If uhd_fft works, that's good news. Device is probably fine.
- If gqrx doesn't work, maybe you have several versions of UHD, and maybe
gqrx had special code to identify specific USRP products, but doesn't know
the N230 (it's a rare device).

--M

On Fri, Jul 26, 2024 at 8:54=E2=80=AFAM Tim Smith <secsubs@gmail.com> wrote=
:

> Hi,
>
> I am trying to make an older N230 board work for me. On MacOS, I got
> UHD-3.15.0 via MacPorts. "uhd_usrp_probe" discovers the device over the
> network and I can run "uhd_fft" but when I try to talk to the radio with
> gqrx, it refuses to find the device. Oddly enough, "device scan" on gqrx
> automatically populates the "device string" as "addr=3D192.168.20.2" but =
then
> won't connect. On Ubuntu 22.04 and 24.04, the UHD package is from the 4.x=
x
> release where support for N230 had been pulled so nothing works on Ubuntu=
.
>
> I tried restoring the commits from this PR:
> https://github.com/EttusResearch/uhd/commit/d94140a4129d6b2153b15860eeb24=
06672ebb414
> - I copied the entire N230 folder from the 3.15.0 release into the codeba=
se
> from 4.7.0 and added back all the comments/includes for N230 but "make"
> failed miserably because underlying functions have probably been entirely
> changed between 3.x and 4.x. I get an error:
> -------------------------
> uhd-4.7.0.0/host/lib/usrp/n230/n230_cores.cpp: In constructor
> =E2=80=98uhd::usrp::n230::n230_ref_pll_ctrl::n230_ref_pll_ctrl(uhd::usrp:=
:n230::n230_core_spi_core::sptr)=E2=80=99:
> uhd-4.7.0.0/host/lib/usrp/n230/n230_cores.cpp:60:13: error: no matching
> function for call to
> =E2=80=98uhd::usrp::adf4001_ctrl::adf4001_ctrl(uhd::usrp::n230::n230_core=
_spi_core::sptr&,
> const uint32_t&)=E2=80=99
>    60 |     _spi(spi)
> ------------------------
>
> I tried building 3.15.0 on Ubuntu 22.04 but that failed with a different
> set of errors.
>
> What's the best way to use/support a N230?
>
> --
> Thanks,
>
> Tim
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000063abe6061e257e9b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><br></div><div>Hi Tim,</div><div><br=
></div><div>the N230 is unsupported and EOL, so you won&#39;t get a lot of =
help. Just some comments:</div><div><br></div><div>- You need UHD 3.15; don=
&#39;t try it with UHD 4. You&#39;ll probably need to build it yourself.</d=
iv><div>- If uhd_fft works, that&#39;s good news. Device is probably fine.<=
/div><div>- If gqrx doesn&#39;t work, maybe you have several versions of UH=
D, and maybe gqrx had special code to identify specific USRP products, but =
doesn&#39;t know the N230 (it&#39;s a rare device).<br></div></div><div><br=
></div><div>--M<br></div><div><br></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Jul 26, 2024 at 8:54=E2=80=AFAM Tim S=
mith &lt;<a href=3D"mailto:secsubs@gmail.com">secsubs@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr">Hi,<div><br></div><div>I am trying to make an older N230 board work fo=
r me. On MacOS, I got UHD-3.15.0 via MacPorts. &quot;uhd_usrp_probe&quot; d=
iscovers the device over the network and I can run &quot;uhd_fft&quot; but =
when I try to talk to the radio with gqrx, it refuses to find the device. O=
ddly enough, &quot;device scan&quot; on gqrx automatically populates the &q=
uot;device string&quot; as &quot;addr=3D192.168.20.2&quot; but then won&#39=
;t connect. On Ubuntu 22.04 and 24.04, the UHD package is from the 4.xx rel=
ease where support for N230 had been pulled so nothing works on Ubuntu.</di=
v><div><br></div><div>I tried restoring the commits from this PR:=C2=A0<a h=
ref=3D"https://github.com/EttusResearch/uhd/commit/d94140a4129d6b2153b15860=
eeb2406672ebb414" target=3D"_blank">https://github.com/EttusResearch/uhd/co=
mmit/d94140a4129d6b2153b15860eeb2406672ebb414</a> - I copied the entire N23=
0 folder from the 3.15.0 release into the codebase from 4.7.0 and added bac=
k all the comments/includes for N230 but &quot;make&quot; failed miserably =
because underlying functions have probably been entirely changed between 3.=
x and 4.x. I get an error:</div><div>-------------------------</div><div>uh=
d-4.7.0.0/host/lib/usrp/n230/n230_cores.cpp: In constructor =E2=80=98uhd::u=
srp::n230::n230_ref_pll_ctrl::n230_ref_pll_ctrl(uhd::usrp::n230::n230_core_=
spi_core::sptr)=E2=80=99:<br>uhd-4.7.0.0/host/lib/usrp/n230/n230_cores.cpp:=
60:13: error: no matching function for call to =E2=80=98uhd::usrp::adf4001_=
ctrl::adf4001_ctrl(uhd::usrp::n230::n230_core_spi_core::sptr&amp;, const ui=
nt32_t&amp;)=E2=80=99<br>=C2=A0 =C2=A060 | =C2=A0 =C2=A0 _spi(spi)<br></div=
><div>------------------------</div><div><br></div><div>I tried building 3.=
15.0 on Ubuntu 22.04 but that failed with a different set of errors.=C2=A0<=
/div><div><br></div><div>What&#39;s the best way to use/support a N230? =C2=
=A0</div><div><div><br></div><div dir=3D"ltr" class=3D"gmail_signature"><di=
v dir=3D"ltr"><div><div>--<br></div>Thanks,<br><br></div>Tim<br></div></div=
></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000063abe6061e257e9b--

--===============5885705026666363682==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5885705026666363682==--
