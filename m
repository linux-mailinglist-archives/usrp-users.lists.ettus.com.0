Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B39AC316A
	for <lists+usrp-users@lfdr.de>; Sat, 24 May 2025 23:03:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 696423852E6
	for <lists+usrp-users@lfdr.de>; Sat, 24 May 2025 17:03:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748120624; bh=qaTWPnqR+S6hu+PEeQOI+K2I3eNFl+7ySt7XgOgMZlk=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=qzET1fTlnwZfwGi0IeTmmMVA3w+3H92wYjYhfmsvGwKo39EJAiKblJh6PVZhkpd+P
	 Iyhh36PKtaartJMN7W2KiJC0HMvVZJVOvipsyakumkPyRgkG4HsTJDitF3x0LToFDU
	 Q50kg61Ovwcrhae9kuALPppmhu9Zila7J2DL3hItL4FtVWiqmKcpfjrpfFN+E8aheQ
	 cRTVUGpH5pfxaEWHirvP7UzRP4qKMqFlRr80/gbhFjbu2OJoWiSBr2Yp6V8xad5HSP
	 loXiTugtcCW2d19rHpPoUBsu8YPjmE3HB5RoHXEv/fGehBiIs8MkZTP9BIoTg4LBO+
	 DQHQIlPrbF3Vg==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id BD500384670
	for <usrp-users@lists.ettus.com>; Sat, 24 May 2025 17:02:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ne8GXR4G";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-4768f90bf36so8538211cf.0
        for <usrp-users@lists.ettus.com>; Sat, 24 May 2025 14:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748120571; x=1748725371; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ar4RwQQQ298Hj5m9ATGHEAWVFnI5qgPM7i8/dxIL72A=;
        b=ne8GXR4GAw6FryWb4Ej63QGLQh1zemMYurSzHjAO8i3pYMCTSAIFAki9E+2aVKdt7Q
         1QTb401QOITDHZcTwkPkyu3UK5tZF6yMfoYKcTalH6Za320EiqKVqkYgiQQOLBu75ATM
         MZ9CryCuIeLIWh9+jH8+CuR5nZ6i9pyVncFejWZYd7CNlDpwhz3VoC1yTPBFwkLT1xcy
         AnG9RTZ89c+WzZz/XkgYpiUrLI4yNduAqkm3i51lx/hdYzLKgfm0pcTfQLEXIhdSjR9c
         XvuCF5H9iB5XeEzG+BBVPwCLbYZ8IFQ3kMSl75OWPaFEuIF/02yluigwjPwPSAYZjy6j
         EoVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748120571; x=1748725371;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ar4RwQQQ298Hj5m9ATGHEAWVFnI5qgPM7i8/dxIL72A=;
        b=uYszLmUBjuawNFBAMzVk3N+twh1/rm5biWBrNDr598jR8CQmbafjXWYW1EhGHR6OQX
         iPM2MaarPF5UmB5499LRr0ijh+2vgFgmu7zOaNePt4s64mEsJja/MJ2wxxljt3LctG9A
         /aF3jwfZgWgKZMQ07fYKBH7Fp4SRhYw3TbBfov8aBQNhnOSUtqFSet4dSP/Qym1jzACC
         X4PwpLzpsWYIPPNLm0T8djW5LpsVhYINoTY9NQ/olGVv0yYVWfl5eA7GT19MprzNTRXf
         nncB3HD0faUlIuBUT4hDBfao9a6nlOUdjFIzOeJCF3hYji0zjWWIArlvrCI5vHGY2zpV
         wB9A==
X-Gm-Message-State: AOJu0YxQoTPJWcYryPJI81RFrKFcVexyJo7cT8+zBurgW8NF9wlKarl1
	jLD4D6ceJ5CoooGuhruzzTqX6OIHpfsdeUUT39nplWDTHRrGtlgkQqFWtOwWN4cD
X-Gm-Gg: ASbGncssKymSIIuISAWwk7o1kJm6Jdpn/FaNErl7O3tBPnlQrD+aSkfFMwfO/m9gxqz
	BAesgOMRboEx3fh6bXGZSEJyxmx1dp19+meqPBS08HdFhIc/j4U0Br3izN0whDjor29bgWZMx2s
	5LXpBBrvX5dO+WwR+ShQEGuCkq5ZcP4wo0tYZsyXfKDIQ+svCB72rHoCf6BpJBjwEFW58kaGi20
	1kX9W1J677isEoIaub0x1/gIh3P5bqi9MHgmtzWttlASy4ytiRnGJWcVzOztYGamgH4T6ndu27q
	gCmwDkL56wA3mKmn0bBPcuPS9oxQGaR4RboyKWtcLfH245NWDDgGZb3oC34kFh1pkwZSv9p/g6U
	QRc1kUYc6mNkRRsZwuaQLsIPC8FRHwynhIs83Xj4ansqVF80=
X-Google-Smtp-Source: AGHT+IFRTwa5P6caUhFf4eVUaBgmTV/PncC6fJ/9MRQC1fd64WYZK2RVKwLiSPHej0/RgHJbzXowWg==
X-Received: by 2002:a05:622a:1f8e:b0:476:8eb5:1669 with SMTP id d75a77b69052e-49f4781ed76mr66593431cf.32.1748120570973;
        Sat, 24 May 2025 14:02:50 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-07-174-93-0-120.dsl.bell.ca. [174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-494ae42bdd4sm135062211cf.47.2025.05.24.14.02.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 May 2025 14:02:50 -0700 (PDT)
Message-ID: <aa4e163d-9e85-467a-a4b1-3331599d36c0@gmail.com>
Date: Sat, 24 May 2025 17:02:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nikos Balkanas <nbalkanas@gmail.com>
References: <CAAxXO2GepjAKY2rp33tEm3SuM1NNTtodD0AEb62M5nSyXnOKTA@mail.gmail.com>
 <7d797c2c-9229-42dd-beb0-bddd4eebf019@gmail.com>
 <CAAxXO2GKPJLnhT9D+VR6_tC9890=Vd2g8sGoKxhf5+Hc2aOwhA@mail.gmail.com>
 <CAAxXO2ExVVHMk8N4JLOUMYSj_1Dw7CWDumRuL+oYb+VF9eFw8A@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2ExVVHMk8N4JLOUMYSj_1Dw7CWDumRuL+oYb+VF9eFw8A@mail.gmail.com>
Message-ID-Hash: 6D4VXDKNEW3RZBANOYNRYXFPHKKFWBGF
X-Message-ID-Hash: 6D4VXDKNEW3RZBANOYNRYXFPHKKFWBGF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sensor issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6D4VXDKNEW3RZBANOYNRYXFPHKKFWBGF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4882915625350905922=="

This is a multi-part message in MIME format.
--===============4882915625350905922==
Content-Type: multipart/alternative;
 boundary="------------nJW00IbWQ2Oh3HsDFPDWXgOX"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------nJW00IbWQ2Oh3HsDFPDWXgOX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2025-05-24 16:42, Nikos Balkanas wrote:
> Spectrum looks much nicer at the expense of less accurate tuning.
> There is still some LO leakage...
> I have my offset at sr/2=C2=A0+20e6. maybe I need more.
I always just set my offset, when I use it at all, to Fs/1.8=C2=A0 or=20
thereabouts.=C2=A0 This moves the LO leakage
 =C2=A0 a little bit out-of-band.


>
> On Sat, May 24, 2025 at 10:57=E2=80=AFPM Nikos Balkanas <nbalkanas@gmai=
l.com>=20
> wrote:
>
>     Ty very much,
>
>     That worked.It converged in just 2 loops:)
>     I thought I was linking sensor to sensor, and lo_locked was
>     updating in real time:(
>     But this was a sensor_value_handle, not a sensor:(
>
>     BR
>     Nikos
>
>
>     On Sat, May 24, 2025 at 9:44=E2=80=AFPM Marcus D. Leech
>     <patchvonbraun@gmail.com> wrote:
>
>         On 2025-05-24 14:35, Nikos Balkanas wrote:
>         > uhd_usrp_get_rx_sensor(dev[channel], "lo_locked", channel,
>         &lo_locked)))
>         You need to repeatedly call this in your while loop.
>
>         All you're doing is getting the sensor value once, immediately
>         after
>         tuning, and then spinning on the value of the "value_to_bool"
>         conversion, which
>         =C2=A0=C2=A0 will never change, because you aren't getting a fr=
esh value
>         of the
>         sensor.
>
>         _______________________________________________
>         USRP-users mailing list -- usrp-users@lists.ettus.com
>         To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>

--------------nJW00IbWQ2Oh3HsDFPDWXgOX
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2025-05-24 16:42, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2ExVVHMk8N4JLOUMYSj_1Dw7CWDumRuL+oYb+VF9eFw8A@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small">Spectrum
          looks much nicer at the expense of less accurate tuning.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">There is
          still some LO leakage...</div>
        <div class=3D"gmail_default" style=3D"font-size:small">I have my
          offset at sr/2=C2=A0+20e6. maybe I need more.</div>
      </div>
    </blockquote>
    I always just set my offset, when I use it at all, to Fs/1.8=C2=A0 or
    thereabouts.=C2=A0 This moves the LO leakage<br>
    =C2=A0 a little bit out-of-band.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2ExVVHMk8N4JLOUMYSj_1Dw7CWDumRuL+oYb+VF9eFw8A@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sat, May 24, 2025 at
          10:57=E2=80=AFPM Nikos Balkanas &lt;<a
            href=3D"mailto:nbalkanas@gmail.com" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">nbalkanas@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div dir=3D"ltr">
            <div class=3D"gmail_default" style=3D"font-size:small">Ty ver=
y
              much,</div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">That
              worked.It converged in just 2 loops:)</div>
            <div class=3D"gmail_default" style=3D"font-size:small">I thou=
ght
              I was linking sensor to sensor, and lo_locked was updating
              in real time:(</div>
            <div class=3D"gmail_default" style=3D"font-size:small">But th=
is
              was a sensor_value_handle, not a sensor:(</div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">BR</di=
v>
            <div class=3D"gmail_default" style=3D"font-size:small">Nikos<=
/div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Sat, May 24, 2025 at
              9:44=E2=80=AFPM Marcus D. Leech &lt;<a
                href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
patchvonbraun@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">On
              2025-05-24 14:35, Nikos Balkanas wrote:<br>
              &gt; uhd_usrp_get_rx_sensor(dev[channel], "lo_locked",
              channel, &amp;lo_locked)))<br>
              You need to repeatedly call this in your while loop.<br>
              <br>
              All you're doing is getting the sensor value once,
              immediately after <br>
              tuning, and then spinning on the value of the
              "value_to_bool" <br>
              conversion, which<br>
              =C2=A0=C2=A0 will never change, because you aren't getting =
a fresh
              value of the <br>
              sensor.<br>
              <br>
              _______________________________________________<br>
              USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a><br>
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br>
            </blockquote>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------nJW00IbWQ2Oh3HsDFPDWXgOX--

--===============4882915625350905922==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4882915625350905922==--
