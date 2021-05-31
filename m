Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B08396949
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 23:21:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30ED93840C3
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 17:21:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LoEeTPo2";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id CFF053812BC
	for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 17:20:27 -0400 (EDT)
Received: by mail-qk1-f177.google.com with SMTP id c124so7601256qkd.8
        for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 14:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=CNJwrAIiij/bcn3yrGw3/onuZ1QKUFZAS5K+9Ty6mVs=;
        b=LoEeTPo2+hAuhs9lsTOoxe4/IZ1thAch6TeE5kyqGFMr+vKUZ1CtGFU+EbMHSLoiNC
         0fQxZHM+uoEgXInrJQA39+bhXekuGh5yGc+O7kV5L13oYceXOVcnLWDF0btvCUpgQwq5
         8P1kpwMNi1DdIusrwxo1b7xVGk0aQi2WZ7Bby+B+TnwijosurYuYYJU89RxiidgVPI8P
         p5CQKJVHgEOCrCVE/2nXtYgN7sWoEF0MyBOFtHBnW86IPYeQ1KM9XwrBB0zFL9n2qiW+
         PXlooQTh04cYlg8RqC5DnWORbVWJ/0AIbhPhh0xgBdCBCtNQ3GEhjvxxED3Q7u7Yc4ju
         eD8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=CNJwrAIiij/bcn3yrGw3/onuZ1QKUFZAS5K+9Ty6mVs=;
        b=pplmTSD+eOsKDlrj8CsGWzzYll2B4V8xtTJnH1eJo6ZcOfO3Sexjo+oq/L5JHDv/Vb
         Li+H09NX8pmWX3e26G88NRvo1xwaCI6PkNJj++XNXOOjVuELXc2+wSzIphxFZSAafqZe
         VbgGvgDZmcAEBIjFrGRz0/LUShKfenCE57VGBf6zwfNPp4zkpv03K3TPsuEEk70pVhQF
         kKce5kizFyR1hO/ZPbEY32nHm4a6FOstvIFvz6hueYWWD6PX1eTBTQD2emOHbm7K4QYf
         2swxxFVPg/9hXOnUjO4ylvCgdnBy+YIZF1ZrU3bcgflQwkvp/wiCrDLojxoNba5eG6Mb
         iaLg==
X-Gm-Message-State: AOAM530BGkR56o3gsJx8ByQwovCdEumBhpzYE+Q+zfYAx+BAz05jD3X+
	rg0YFfMzcVWFUWQR/ZIOdkEiZCVh7yA=
X-Google-Smtp-Source: ABdhPJzAQ9VFo/PO8eacuXV1pTzNFxK1OmLdV5VDBv19s27kvRTYT4OYeF/0xNTcCsbyDcDq9ymqYA==
X-Received: by 2002:a37:a756:: with SMTP id q83mr8502110qke.6.1622496026797;
        Mon, 31 May 2021 14:20:26 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id t187sm9880055qkc.56.2021.05.31.14.20.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 May 2021 14:20:26 -0700 (PDT)
Message-ID: <60B55319.4040409@gmail.com>
Date: Mon, 31 May 2021 17:20:25 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAOjuhWmATZti9f1zibrUXiLv6JOz+FDosWm54df_yP8GHKyG9Q@mail.gmail.com> <60B4DA13.5060601@gmail.com> <CAOjuhWmfmP=bzrJ_CTtHqRCnr-BV080dyPEVaaJvCROsEfxU3g@mail.gmail.com> <60B51E47.1040103@gmail.com> <CAOjuhWkVmK_Me3k4x-F4wjLpOyVtNpshA6QF0Q2jRi_qZc9UEQ@mail.gmail.com>
In-Reply-To: <CAOjuhWkVmK_Me3k4x-F4wjLpOyVtNpshA6QF0Q2jRi_qZc9UEQ@mail.gmail.com>
Message-ID-Hash: M6EHZESNNIAMGEXVDJOAKV4B4QPATQNJ
X-Message-ID-Hash: M6EHZESNNIAMGEXVDJOAKV4B4QPATQNJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Samples complex<short> vs complex<float> emulating
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M6EHZESNNIAMGEXVDJOAKV4B4QPATQNJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5254267522462229322=="

This is a multi-part message in MIME format.
--===============5254267522462229322==
Content-Type: multipart/alternative;
 boundary="------------060603040809030306060703"

This is a multi-part message in MIME format.
--------------060603040809030306060703
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 05/31/2021 03:25 PM, Alexey Silyuk wrote:
> maybe you can help me to find some example of recorded files with iq=20
> stream, so I will understand it's values please.
> it may help
>
Google is better than I am at this...


> =D0=BF=D0=BD, 31 =D0=BC=D0=B0=D1=8F 2021 =D0=B3., 20:35 Marcus D. Leech=
 <patchvonbraun@gmail.com=20
> <mailto:patchvonbraun@gmail.com>>:
>
>     On 05/31/2021 09:07 AM, Alexey Silyuk wrote:
>>     Thanks for the answer, so what is the order of pushing samples to
>>     the mock buffer? if i want to ensure that i am receiving correct
>>     data i pushed after calling recv() using float or double type?
>     The ordering on the "wire" is IQIQIQIQ, and similarly on the
>     converted-to-host-format side.
>
>
>>
>>     =D0=BF=D0=BD, 31 =D0=BC=D0=B0=D1=8F 2021 =D0=B3. =D0=B2 15:44, Mar=
cus D. Leech
>>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>>:
>>
>>         On 05/31/2021 08:30 AM, Alexey Silyuk wrote:
>>         > HI everybody, I am new at mailing list.
>>         > These days I am writing an emulator for emulating tx/rx
>>         streams based
>>         > on uhd 3.15LTS
>>         > I am using device usrp2 device from uhd/lib.
>>         > As I saw in examples (rx_samples_to_file), I am creating a
>>         mock
>>         > streamer ( taken from uhd tests ).
>>         > and now i want to push samples inside the buffer.
>>         > I see that i can define type of samples, if am using
>>         'short' type of
>>         > samples, I am creating uint32_t variable, 16 MSB i put real
>>         part of
>>         > sample, and 16 LSB i put imaginary part of sample (i am
>>         using little
>>         > endian)
>>         > After that i am calling usrp->recv() and i get samples as i
>>         defined (
>>         > spp is 2000)
>>         > (0,0)
>>         > (2,2)
>>         > ....
>>         > (1999,1999)
>>         > as expected, according to data I push to the mock buffer.
>>         >
>>         > now while i want to use type 'float' i am using for example
>>         > float real =3D 1.5
>>         > float imag =3D 2.5
>>         > and trying to push sample to the mock buffer, i am doing:
>>         > buffer[0] =3D (uint32_t)real;
>>         > buffer[1] =3D (uint32_t)imag;
>>         >
>>         > and expecting to get after calling usrp->recv()
>>         > (1.5, 2.5)
>>         > but i get incorrect result (convertor settings: cpu_format
>>         "fc32",
>>         > otw_format "sf16" )
>>         >
>>         > i am printing real and imag parameters as bitset<32> and
>>         see in real
>>         > part, in 16 LSB part of result, my 16 MSB bits from sample
>>         value 1.5,
>>>
>>>
>>>         -------------------------------------------------------------=
-----------
>>>         *From:* Marcus D Leech <patchvonbraun@gmail.com>
>>>         *Sent:* Monday, May 31, 2021 9:56 PM
>>>         *To:* Skyvalakis Konstantinos
>>>         *Cc:* usrp-users
>>>         *Subject:* Re: USRP N200
>>>         Yes.
>>>
>>>
>>>         Sent from my iPhone
>>>
>>>>         On May 31, 2021, at 2:55 PM, Skyvalakis Konstantinos
>>>>         <kskyvalakis@isc.tuc.gr> wrote:
>>>>
>>>>         =EF=BB=BF
>>>>
>>>>         So after upgrading UHD I should also rebuild gnuradio right?
>>>>
>>>>         ------------------------------------------------------------=
------------
>>>>         *From:* Marcus D Leech <patchvonbraun@gmail.com>
>>>>         *Sent:* Monday, May 31, 2021 9:39 PM
>>>>         *To:* Skyvalakis Konstantinos
>>>>         *Subject:* Re: USRP N200
>>>>         If you upgrade UHD and use GnuRadio you=E2=80=99ll have to a=
t least
>>>>         relink GR against the new UHD.
>>>>
>>>>         But recent vintage distros like Ubuntu allow you to just
>>>>         install as packages. No build from source required.
>>>>
>>>>         Sent from my iPhone
>>>>
>>>>>         On May 31, 2021, at 2:30 PM, Skyvalakis Konstantinos
>>>>>         <kskyvalakis@isc.tuc.gr> wrote:
>>>>>
>>>>>         =EF=BB=BF
>>>>>
>>>>>         Ok, I just have a simple question for upgrading to a newer
>>>>>         version of UHD.
>>>>>
>>>>>
>>>>>         Do I just need to "git checkout" a newer version of
>>>>>         UHD, build it, etc. etc. and that's all there's to it.
>>>>>
>>>>>
>>>>>         OR do I also have to rebuild my gnuradio install after
>>>>>         installing a newer UHD?
>>>>>
>>>>>
>>>>>         Excuse me if what I'm saying is stupid but I am really
>>>>>         trying to understand how to do things correctly.
>>>>>
>>>>>         -----------------------------------------------------------=
-------------
>>>>>         *From:* Marcus D. Leech <patchvonbraun@gmail.com>
>>>>>         *Sent:* Monday, May 31, 2021 9:17 PM
>>>>>         *To:* Skyvalakis Konstantinos; usrp-users@lists.ettus.com
>>>>>         *Subject:* Re: USRP N200
>>>>>         On 05/31/2021 02:13 PM, Skyvalakis Konstantinos wrote:
>>>>>>
>>>>>>         My UHD version is  UHD_003.010.000.HEAD-0-g6e1ac3fc
>>>>>>
>>>>>>
>>>>>>         and my ethernet interface adapter is a Qualcomm Atheros
>>>>>>         Killer E2400 Gigabit Ethernet Controller (rev 10)=E2=80=8B=
.
>>>>>>
>>>>>>
>>>>>>         Thank you so much for your effort and time with my issue.
>>>>>>         I honestly appreciate it.
>>>>>>
>>>>>>         ----------------------------------------------------------=
--------------
>>>>>>
>>>>>         This issue shows up quite some time ago and I found it in
>>>>>         the Nabble archive for this list:
>>>>>
>>>>>         http://ettus.80997.x6.nabble.com/Re-USRP-users-Discuss-gnur=
adio-RuntimeError-fifo-ctrl-timed-out-looking-for-acks-td8198.html
>>>>>
>>>>>         You might also try upgrading to a much-more-recent UHD.
>>>>>
>>>>>
>>         > and in imagine part zeros, in next sample i see in 16 LSB
>>         part of
>>         > result, 16 MSB bits of sample value 2.5. I mean one sample
>>         i push to
>>         > buffer uses whole sample after calling recv()
>>         >
>>         > P.S i set scale factor to 1.0
>>         >
>>         > What am I doing wrong to use the type 'float' and 'double'
>>         for mock
>>         > samples?
>>         > I am new at usrp so I don't understand what samples I
>>         should use, will
>>         > be glad to get references.
>>         > Thanks
>>         >
>>         >
>>         Your OTW format is still SC16 -- normally only the *HOST*
>>         side uses
>>         floating-point and no actual USRP devices that I'm aware of ca=
n
>>            support floating-point *ON THE WIRE* (OTW).
>>
>>         _______________________________________________
>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>         <mailto:usrp-users@lists.ettus.com>
>>         To unsubscribe send an email to
>>         usrp-users-leave@lists.ettus.com
>>         <mailto:usrp-users-leave@lists.ettus.com>
>>
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com  <mailto:usrp=
-users@lists.ettus.com>
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com  <=
mailto:usrp-users-leave@lists.ettus.com>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------060603040809030306060703
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3DUTF-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 05/31/2021 03:25 PM, Alexey Silyuk
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CAOjuhWkVmK_Me3k4x-F4wjLpOyVtNpshA6QF0Q2jRi_qZc9UEQ@mail.gmai=
l.com"
      type=3D"cite">
      <div dir=3D"auto">maybe you can help me to find some example of
        recorded files with iq stream, so I will understand it's values
        please.
        <div dir=3D"auto">it may help=C2=A0</div>
      </div>
      <br>
    </blockquote>
    Google is better than I am at this...<br>
    <br>
    <br>
    <blockquote
cite=3D"mid:CAOjuhWkVmK_Me3k4x-F4wjLpOyVtNpshA6QF0Q2jRi_qZc9UEQ@mail.gmai=
l.com"
      type=3D"cite">
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">=D0=BF=D0=BD, 31 =D0=BC=D0=B0=
=D1=8F 2021 =D0=B3., 20:35
          Marcus D. Leech &lt;<a moz-do-not-send=3D"true"
            href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.c=
om</a>&gt;:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">
          <div bgcolor=3D"#FFFFFF" text=3D"#000000">
            <div>On 05/31/2021 09:07 AM, Alexey Silyuk wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Thanks for the answer, so what is the orde=
r
                of pushing samples to the mock buffer? if i want to
                ensure that i am receiving correct data i pushed after
                calling recv() using float or double type?</div>
            </blockquote>
            The ordering on the "wire" is IQIQIQIQ, and similarly on the
            converted-to-host-format side.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">=D0=BF=D0=BD, 31 =D0=
=BC=D0=B0=D1=8F 2021 =D0=B3. =D0=B2
                  15:44, Marcus D. Leech &lt;<a moz-do-not-send=3D"true"
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" rel=3D"noreferrer">patchvonbraun@gm=
ail.com</a>&gt;:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">On 05/31/2021 08:30
                  AM, Alexey Silyuk wrote:<br>
                  &gt; HI everybody, I am new at mailing list.<br>
                  &gt; These days I am writing an emulator for emulating
                  tx/rx streams based <br>
                  &gt; on uhd 3.15LTS<br>
                  &gt; I am using device usrp2 device from uhd/lib.<br>
                  &gt; As I saw in examples (rx_samples_to_file), I am
                  creating a mock <br>
                  &gt; streamer ( taken from uhd tests ).<br>
                  &gt; and now i want to push samples inside the buffer.<=
br>
                  &gt; I see that i can define type of samples, if am
                  using 'short' type of <br>
                  &gt; samples, I am creating uint32_t variable, 16 MSB
                  i put real part of <br>
                  &gt; sample, and 16 LSB i put imaginary part of sample
                  (i am using little <br>
                  &gt; endian)<br>
                  &gt; After that i am calling usrp-&gt;recv() and i get
                  samples as i defined ( <br>
                  &gt; spp is 2000)<br>
                  &gt; (0,0)<br>
                  &gt; (2,2)<br>
                  &gt; ....<br>
                  &gt; (1999,1999)<br>
                  &gt; as expected, according to data I push to the mock
                  buffer.<br>
                  &gt;<br>
                  &gt; now while i want to use type 'float' i am using
                  for example<br>
                  &gt; float real =3D 1.5<br>
                  &gt; float imag =3D 2.5<br>
                  &gt; and trying to push sample to the mock buffer, i
                  am doing:<br>
                  &gt; buffer[0] =3D (uint32_t)real;<br>
                  &gt; buffer[1] =3D (uint32_t)imag;<br>
                  &gt;<br>
                  &gt; and expecting to get after calling
                  usrp-&gt;recv()<br>
                  &gt; (1.5, 2.5)<br>
                  &gt; but i get incorrect result (convertor settings:
                  cpu_format "fc32", <br>
                  &gt; otw_format "sf16" )<br>
                  &gt;<br>
                  &gt; i am printing real and imag parameters as
                  bitset&lt;32&gt; and see in real <br>
                  &gt; part, in 16 LSB part of result, my 16 MSB bits
                  from sample value 1.5, <br>
                  <blockquote cite=3D"mid:1622488640848.60454@isc.tuc.gr"
                    type=3D"cite">
                    <p><br>
                    </p>
                    <div dir=3D"auto" style=3D"color: rgb(33, 33, 33);">
                      <hr tabindex=3D"-1" style=3D"display:inline-block;
                        width:98%">
                      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font
                          style=3D"font-size:11pt" color=3D"#000000"
                          face=3D"Calibri, sans-serif"><b>From:</b> Marcu=
s
                          D Leech <a class=3D"moz-txt-link-rfc2396E" href=
=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><b=
r>
                          <b>Sent:</b> Monday, May 31, 2021 9:56 PM<br>
                          <b>To:</b> Skyvalakis Konstantinos<br>
                          <b>Cc:</b> usrp-users<br>
                          <b>Subject:</b> Re: USRP N200</font>
                        <div>=C2=A0</div>
                      </div>
                      <div>Yes.=C2=A0
                        <div><br>
                          <br>
                          <div dir=3D"ltr">Sent from my iPhone</div>
                          <div dir=3D"ltr"><br>
                            <blockquote type=3D"cite">On May 31, 2021, at
                              2:55 PM, Skyvalakis Konstantinos
                              <a class=3D"moz-txt-link-rfc2396E" href=3D"=
mailto:kskyvalakis@isc.tuc.gr">&lt;kskyvalakis@isc.tuc.gr&gt;</a> wrote:<=
br>
                              <br>
                            </blockquote>
                          </div>
                          <blockquote type=3D"cite">
                            <div dir=3D"ltr">=EF=BB=BF
                              <p>So after upgrading UHD I should
                                also=C2=A0rebuild gnuradio right?<br>
                              </p>
                              <div dir=3D"auto"
                                style=3D"color:rgb(33,33,33)">
                                <hr tabindex=3D"-1"
                                  style=3D"display:inline-block;
                                  width:98%">
                                <div id=3D"divRplyFwdMsg" dir=3D"ltr"><fo=
nt
                                    style=3D"font-size:11pt"
                                    color=3D"#000000" face=3D"Calibri,
                                    sans-serif"><b>From:</b> Marcus D
                                    Leech
                                    <a class=3D"moz-txt-link-rfc2396E" hr=
ef=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>=
<br>
                                    <b>Sent:</b> Monday, May 31, 2021
                                    9:39 PM<br>
                                    <b>To:</b> Skyvalakis Konstantinos<br=
>
                                    <b>Subject:</b> Re: USRP N200</font>
                                  <div>=C2=A0</div>
                                </div>
                                <div>If you upgrade UHD and use GnuRadio
                                  you=E2=80=99ll have to at least relink =
GR
                                  against the new UHD.=C2=A0
                                  <div><br>
                                  </div>
                                  <div>But recent vintage distros like
                                    Ubuntu allow you to just install as
                                    packages. No build from source
                                    required.=C2=A0<br>
                                    <br>
                                    <div dir=3D"ltr">Sent from my iPhone<=
/div>
                                    <div dir=3D"ltr"><br>
                                      <blockquote type=3D"cite">On May 31=
,
                                        2021, at 2:30 PM, Skyvalakis
                                        Konstantinos
                                        <a class=3D"moz-txt-link-rfc2396E=
" href=3D"mailto:kskyvalakis@isc.tuc.gr">&lt;kskyvalakis@isc.tuc.gr&gt;</=
a>
                                        wrote:<br>
                                        <br>
                                      </blockquote>
                                    </div>
                                    <blockquote type=3D"cite">
                                      <div dir=3D"ltr">=EF=BB=BF
                                        <p>Ok, I=C2=A0just have=C2=A0a si=
mple
                                          question for upgrading to a
                                          newer version of UHD.<br>
                                        </p>
                                        <p><br>
                                        </p>
                                        <p>Do I just need to "git
                                          checkout" a newer version of
                                          UHD,=C2=A0build it, etc. etc. a=
nd
                                          that's all there's to it.<br>
                                        </p>
                                        <p><br>
                                        </p>
                                        <p>OR do I also have to rebuild
                                          my gnuradio install after
                                          installing a newer UHD?<br>
                                        </p>
                                        <p><br>
                                        </p>
                                        <p>Excuse me if what I'm saying
                                          is stupid but I am really
                                          trying to understand how to do
                                          things correctly.<br>
                                        </p>
                                        <div style=3D"color:rgb(33,33,33)=
">
                                          <hr tabindex=3D"-1"
                                            style=3D"display:inline-block=
;
                                            width:98%">
                                          <div id=3D"divRplyFwdMsg"
                                            dir=3D"ltr"><font
                                              style=3D"font-size:11pt"
                                              color=3D"#000000"
                                              face=3D"Calibri, sans-serif=
"><b>From:</b>
                                              Marcus D. Leech
                                              <a class=3D"moz-txt-link-rf=
c2396E" href=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.c=
om&gt;</a><br>
                                              <b>Sent:</b> Monday, May
                                              31, 2021 9:17 PM<br>
                                              <b>To:</b> Skyvalakis
                                              Konstantinos;
                                              <a class=3D"moz-txt-link-ab=
breviated" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.et=
tus.com</a><br>
                                              <b>Subject:</b> Re: USRP
                                              N200</font>
                                            <div>=C2=A0</div>
                                          </div>
                                          <div>
                                            <div class=3D"moz-cite-prefix=
">On
                                              05/31/2021 02:13 PM,
                                              Skyvalakis Konstantinos
                                              wrote:<br>
                                            </div>
                                            <blockquote type=3D"cite">
                                              <p>My UHD version
                                                is=C2=A0=C2=A0UHD_003.010=
.000.HEAD-0-g6e1ac3fc<br>
                                              </p>
                                              <p><br>
                                              </p>
                                              <p>and my ethernet
                                                interface adapter is
                                                a=C2=A0Qualcomm Atheros
                                                Killer E2400 Gigabit
                                                Ethernet Controller (rev
                                                10)=E2=80=8B.<br>
                                              </p>
                                              <p><br>
                                              </p>
                                              <p>Thank you so much for
                                                your effort and time
                                                with my issue. I
                                                honestly appreciate it.<b=
r>
                                              </p>
                                              <div
                                                style=3D"color:rgb(33,33,=
33)">
                                                <hr tabindex=3D"-1"
                                                  style=3D"display:inline=
-block;
                                                  width:98%">
                                                <br>
                                              </div>
                                            </blockquote>
                                            This issue shows up quite
                                            some time ago and I found it
                                            in the Nabble archive for
                                            this list:<br>
                                            <br>
                                            <a moz-do-not-send=3D"true"
                                              class=3D"moz-txt-link-freet=
ext"
href=3D"http://ettus.80997.x6.nabble.com/Re-USRP-users-Discuss-gnuradio-R=
untimeError-fifo-ctrl-timed-out-looking-for-acks-td8198.html">http://ettu=
s.80997.x6.nabble.com/Re-USRP-users-Discuss-gnuradio-RuntimeError-fifo-ct=
rl-timed-out-looking-for-acks-td8198.html</a><br>
                                            <br>
                                            You might also try upgrading
                                            to a much-more-recent UHD.<br=
>
                                            <br>
                                            <br>
                                          </div>
                                        </div>
                                      </div>
                                    </blockquote>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </blockquote>
                        </div>
                      </div>
                    </div>
                  </blockquote>
                  &gt; and in imagine part zeros, in next sample i see
                  in 16 LSB part of <br>
                  &gt; result, 16 MSB bits of sample value 2.5. I mean
                  one sample i push to <br>
                  &gt; buffer uses whole sample after calling recv()<br>
                  &gt;<br>
                  &gt; P.S i set scale factor to 1.0<br>
                  &gt;<br>
                  &gt; What am I doing wrong to use the type 'float' and
                  'double' for mock <br>
                  &gt; samples?<br>
                  &gt; I am new at usrp so I don't understand what
                  samples I should use, will <br>
                  &gt; be glad to get references.<br>
                  &gt; Thanks<br>
                  &gt;<br>
                  &gt;<br>
                  Your OTW format is still SC16 -- normally only the
                  *HOST* side uses <br>
                  floating-point and no actual USRP devices that I'm
                  aware of can<br>
                  =C2=A0 =C2=A0support floating-point *ON THE WIRE* (OTW)=
.<br>
                  <br>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a moz-do-not-send=3D"true"
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" rel=3D"noreferrer">usrp-users@lists=
.ettus.com</a><br>
                  To unsubscribe send an email to <a
                    moz-do-not-send=3D"true"
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" rel=3D"noreferrer">usrp-users-leave=
@lists.ettus.com</a><br>
                </blockquote>
              </div>
              <br>
              <fieldset></fieldset>
              <br>
              <pre>_______________________________________________
USRP-users mailing list -- <a moz-do-not-send=3D"true" href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@=
lists.ettus.com</a>
To unsubscribe send an email to <a moz-do-not-send=3D"true" href=3D"mailt=
o:usrp-users-leave@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">=
usrp-users-leave@lists.ettus.com</a>
</pre>
            </blockquote>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a moz-do-not-send=3D"true"
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a moz-do-not-send=3D"true"
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.e=
ttus.com</a><br>
        </blockquote>
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

--------------060603040809030306060703--

--===============5254267522462229322==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5254267522462229322==--
