Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B36A13DD501
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 13:59:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A3C9384432
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 07:59:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fuwtfFqy";
	dkim-atps=neutral
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 1E0653840A4
	for <usrp-users@lists.ettus.com>; Mon,  2 Aug 2021 07:58:18 -0400 (EDT)
Received: by mail-qk1-f179.google.com with SMTP id x3so16257745qkl.6
        for <usrp-users@lists.ettus.com>; Mon, 02 Aug 2021 04:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=GtC8EgDVav88COo3I5Y4204CTPJsJIoCvsmIj9ysIak=;
        b=fuwtfFqye6w16HYUu6zTgT5AgfSNjTe/QxViu2ieQT7AmIUxnLP9ZASiWgv3pQyLSX
         lmwl23A4YvA5yQimR5prFiJpoBV66ZtTCcGJsdxqW5Kqu9bVS8nRH2+yhpCjWT/NGuKa
         WLXrLC5VMJ9VxcsNRCgft4rV6z++tGN++24k/GFhNbDkiXCTMR7EiO52QsGyWHN+8m1q
         J4K+SZ8uXnX3fx9kIws0GHFzJm+7BA3cyJNLKXOj3+/R1s0Qh7FphOWWroTBExzq4GdT
         Tus2vA8UdfhzhTZGyAnEKMdxQLmlZYOClmUYHX0vi094rV/dLf24KStCDQQCWQ1y4FXS
         BeuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=GtC8EgDVav88COo3I5Y4204CTPJsJIoCvsmIj9ysIak=;
        b=S4Yn9DDIz8+oiPc0OBy24UJC5rUZIOOh/EqV9IxhpOxPYjX0ASKiiSlOvLvewwn3B9
         zObW9Gsr3lgEDdANvRrVsya0Ozngu+MagTigKqu5eP5ReyX1bBVS9uqpXywvhTPlyAHB
         XLFiLZF0oiMms9FF2Vc9wVLzHEWfRG+gUY2jpxyxHTGvbKsH9yYLBzZyd3wvbDTWhj4d
         DqLhziyLBmC1YjfaeSZAW36togF05drC1SDzHb9u2CcoO0nwfCfAo4wcvd9tw85YVaQ+
         QAVqL5v06LLTIDCyQfwmbanqFrg7OI83A6+fKNuOXBYNOdFELTZ4dga8lL17t+Ft9eNn
         892Q==
X-Gm-Message-State: AOAM532IoRg4uS297IJf37ampQgBBnpHyKsMpJRHJIdKlzglxd0TLkGK
	HbnfRyYRThTEM8J24nhFVryUROm2Li0=
X-Google-Smtp-Source: ABdhPJyc3YDBIfOryeUuzyIEl4F3UE86ZAmJTNhIKZHlFXL4PKwmCImk/+LzUJxpdTaoa54FxhajZg==
X-Received: by 2002:a05:620a:a91:: with SMTP id v17mr14962343qkg.437.1627905498303;
        Mon, 02 Aug 2021 04:58:18 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id f15sm4516518qtv.60.2021.08.02.04.58.17
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Aug 2021 04:58:17 -0700 (PDT)
Message-ID: <6107DDD9.6070503@gmail.com>
Date: Mon, 02 Aug 2021 07:58:17 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAE_Rk57FWHzJCE2bT+sf=URPKg+RpS3et46v8rHCUrrPKduT4w@mail.gmail.com>
In-Reply-To: <CAE_Rk57FWHzJCE2bT+sf=URPKg+RpS3et46v8rHCUrrPKduT4w@mail.gmail.com>
Message-ID-Hash: YACKHXBAE56VPDG73FIUFVBCGDEZRHO3
X-Message-ID-Hash: YACKHXBAE56VPDG73FIUFVBCGDEZRHO3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Question on the usrp
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YACKHXBAE56VPDG73FIUFVBCGDEZRHO3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8302987222812601916=="

This is a multi-part message in MIME format.
--===============8302987222812601916==
Content-Type: multipart/alternative;
 boundary="------------060501090407060806070401"

This is a multi-part message in MIME format.
--------------060501090407060806070401
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/02/2021 01:12 AM, Daniel Ozer wrote:
> Hi,
> Its been a while that I'm using the usrp x310 with twinRx and i have 
> some question on it :
>
> 1. Is it possible to use the 184.32M clock in the system while using 
> the twinRx that required 200M clock? (I have no problem to change the 
> bitfile)
That would require hardware changes to the TwinRX board as far as I know.
>
> 2.DDC and DUC (ettus rfnoc blocks): where i can find the spec of each 
> block ?
In terms of a breezy English-language description, like an API 
specification?  I don't think there are any.  Refer to the source code.
> + Is it possible to do a fractional decimation with the DDC?
Not with the as-supplied DDC.  But there are likely others on this list 
who have implemented fractional decimation in RFNOC and may be willing 
to share
   their wisdom.

>
> 3. While using high sample rate 50M+ i saw that once in a while  'D' 
> is written to the terminal . How can get an interrupt that indicates 
> that a packet has lost ? Is it one packet every time or only some of 
> the packet not arriving ? Is there a way to make sure that packets 
> won't lost ?
The recv() call returns metadata that includes an error code.  See:

https://files.ettus.com/manual/structuhd_1_1rx__metadata__t.html

Packets get lost because your network-hardware/cpu/kernel stack cannot 
"keep up".  What type of network interface are you using? If you are using
   a 10G card that supports DPDK, you might investigate DPDK on your system.

https://files.ettus.com/manual/page_dpdk.html



>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------060501090407060806070401
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/02/2021 01:12 AM, Daniel Ozer
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CAE_Rk57FWHzJCE2bT+sf=3DURPKg+RpS3et46v8rHCUrrPKduT4w@mail.gm=
ail.com"
      type=3D"cite">
      <div dir=3D"auto">Hi,
        <div dir=3D"auto">Its been a while that I'm using the usrp x310
          with twinRx and i have some question on it :</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">1. Is it possible to use the 184.32M clock in
          the system while using the twinRx that required 200M clock? (I
          have no problem to change the bitfile)</div>
      </div>
    </blockquote>
    That would require hardware changes to the TwinRX board as far as I
    know.<br>
    <blockquote
cite=3D"mid:CAE_Rk57FWHzJCE2bT+sf=3DURPKg+RpS3et46v8rHCUrrPKduT4w@mail.gm=
ail.com"
      type=3D"cite">
      <div dir=3D"auto">
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">2.DDC and DUC (ettus rfnoc blocks): where i can
          find the spec of each block ?</div>
      </div>
    </blockquote>
    In terms of a breezy English-language description, like an API
    specification?=A0 I don't think there are any.=A0 Refer to the source
    code.<br>
    <blockquote
cite=3D"mid:CAE_Rk57FWHzJCE2bT+sf=3DURPKg+RpS3et46v8rHCUrrPKduT4w@mail.gm=
ail.com"
      type=3D"cite">
      <div dir=3D"auto">
        <div dir=3D"auto">+ Is it possible to do a fractional decimation
          with the DDC?</div>
      </div>
    </blockquote>
    Not with the as-supplied DDC.=A0 But there are likely others on this
    list who have implemented fractional decimation in RFNOC and may be
    willing to share<br>
    =A0 their wisdom.<br>
    <br>
    <blockquote
cite=3D"mid:CAE_Rk57FWHzJCE2bT+sf=3DURPKg+RpS3et46v8rHCUrrPKduT4w@mail.gm=
ail.com"
      type=3D"cite">
      <div dir=3D"auto">
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">3. While using high sample rate 50M+ i saw that
          once in a while=A0 'D' is written to the terminal . How can get
          an interrupt that indicates that a packet has lost ? Is it one
          packet every time or only some of the packet not arriving ? Is
          there a way to make sure that packets won't lost ?</div>
      </div>
    </blockquote>
    The recv() call returns metadata that includes an error code.=A0 See:=
<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/structuhd_1_1rx__metadata__t.html">https://files.ettus.com/manual/st=
ructuhd_1_1rx__metadata__t.html</a><br>
    <br>
    Packets get lost because your network-hardware/cpu/kernel stack
    cannot "keep up".=A0 What type of network interface are you using?=A0=
=A0
    If you are using<br>
    =A0 a 10G card that supports DPDK, you might investigate DPDK on your
    system.<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_dpdk.html">https://files.ettus.com/manual/page_dpdk.html</a><br=
>
    <br>
    <br>
    <br>
    <blockquote
cite=3D"mid:CAE_Rk57FWHzJCE2bT+sf=3DURPKg+RpS3et46v8rHCUrrPKduT4w@mail.gm=
ail.com"
      type=3D"cite">
      <div dir=3D"auto">
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto"><br>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap=3D"">_______________________________________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------060501090407060806070401--

--===============8302987222812601916==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8302987222812601916==--
