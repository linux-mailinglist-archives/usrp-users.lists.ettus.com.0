Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0A23F9306
	for <lists+usrp-users@lfdr.de>; Fri, 27 Aug 2021 05:45:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 138CC3841A5
	for <lists+usrp-users@lfdr.de>; Thu, 26 Aug 2021 23:45:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OopnN0Co";
	dkim-atps=neutral
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 938B4383EB5
	for <usrp-users@lists.ettus.com>; Thu, 26 Aug 2021 23:44:37 -0400 (EDT)
Received: by mail-qk1-f182.google.com with SMTP id t4so5848002qkb.9
        for <usrp-users@lists.ettus.com>; Thu, 26 Aug 2021 20:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=7fL94YUhNjjpCAv9Qdjsve7KDQ54hxXgfLg7VOroRnw=;
        b=OopnN0CoMpeCPYVWMYsmQvJ68RpNbNZ9jUtt8k+ZQ6MhkISLbpps6Kl7A136SRLjYo
         xC5mrv9ujDMFdr7K+Dpwf+T48jD/Xwc3QHJfaWcm1bt1vKhPPm+7PpqaR0l+/icUBpKM
         PfJyTa8VKrP2cU4SaCT3UkT3rR7izbOeI69UR9bnu8wafSPPBBv7B2B7uDJnCQ6ttCli
         xU3p/Rp7eb+Vxc/La3NJZUI3jzcSMfwQ8Q6E/1sW9IPazfwyO6GKf0xJzSQFK6bUa+P1
         9Cj8YT1HiP2PuQdrx6MpidtMhuKiGzjUpvfMjkfMPtdIS4Oqx0oV34lfzZ0qA7/+ZjcH
         Yqxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=7fL94YUhNjjpCAv9Qdjsve7KDQ54hxXgfLg7VOroRnw=;
        b=HoMTrf3kRtSIHWTEbAzoMzJrBNPU4R6HjMGhHE9n64h41R/tILH1kvJCmpG7lkEN7K
         d5Djl8dX2GpYc9FGEw73hMIfMA9B1tsyPiartQwVRO1dVx9iRglzcVV8QX0fxUjAdpTA
         We0t9I0N8fik38NkhkBbz5+8lu5zRvocl5hjQ3tcMwjOGvO18nTZ0s4o/ReWalNEkggp
         XlxB14PrHy0l0ZUTJS7N1m9WXDcmhf3mo11/CnOKAGHaOqbExH5ZRkIR7EVYmavagpV5
         EwJhjTNHuTSOOkTx/OvLWsfg8Di7VanOHRwFoBcztheYuyWJ4/vRbxEDZWrKNE8SV8Na
         oTgA==
X-Gm-Message-State: AOAM533+pAL5D8HRqqrOei28+rgyhVYVUtOkRaC9FNu0IaVP2W1s3RXp
	6sEljC1hnKGyJxo52mCtxhfw28ul6HBvCg==
X-Google-Smtp-Source: ABdhPJxapwlr3p0/qc8cTqYLJtbJuw5RnSoXOy9yqXxdCwQYDmc0x5xIMJ8V0SwzAHwUV6lEeaSOLg==
X-Received: by 2002:a37:541:: with SMTP id 62mr7219308qkf.478.1630035876874;
        Thu, 26 Aug 2021 20:44:36 -0700 (PDT)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id c15sm4022644qka.46.2021.08.26.20.44.36
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 20:44:36 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <OL1P279MB008360B52DA24BB702B2ADB0A0C69@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
 <OL1P279MB008322048492BE24B21174A2A0C79@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
 <CAL7q81teZZMK5_GfvZugTJiOOGoc5c2w7uGmB5T5y1cqLFh3PQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <f8cbb53b-831e-dc5a-905f-a49b10b7cf35@gmail.com>
Date: Thu, 26 Aug 2021 23:44:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAL7q81teZZMK5_GfvZugTJiOOGoc5c2w7uGmB5T5y1cqLFh3PQ@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: HSMXEQ44FQMPHCHBSWGROTT6ZNYNLZPF
X-Message-ID-Hash: HSMXEQ44FQMPHCHBSWGROTT6ZNYNLZPF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Offset tuning on E310 RFNoC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HSMXEQ44FQMPHCHBSWGROTT6ZNYNLZPF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2498041192311391795=="

This is a multi-part message in MIME format.
--===============2498041192311391795==
Content-Type: multipart/alternative;
 boundary="------------E408C653F52A596040A60A71"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------E408C653F52A596040A60A71
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-08-26 11:37 p.m., Jonathon Pendlum wrote:
> Hi Jorn,
>
> The offset frequency is implemented in the DDC block controller, see:=20
> https://github.com/EttusResearch/uhd/blob/UHD-3.14.L/host/lib/rfnoc/ddc=
_block_ctrl_impl.cpp#L194=20
> <https://github.com/EttusResearch/uhd/blob/UHD-3.14.L/host/lib/rfnoc/dd=
c_block_ctrl_impl.cpp#L194>.
>
> Jonathon
To amplify on what Jonathon said above, the approach would be to use=20
set_rx_frequency to be desired-frequency+desired-offset (or=20
-desired-offset), then use
 =C2=A0 the DDC tuning to rotate the resulting baseband in the appropriat=
e=20
direction and desired-offset magnitude to bring it to zero offset.

In multi-usrp without RFNOC, this is taken care of automatically, and=20
you generally don't have to worry about the math, which not only=20
involves the simple-case above,
 =C2=A0 but factoring-in things like minimum tuning step-size for the=20
hardware being used.=C2=A0 Jonathon, do the RFNOC controllers "understand=
"=20
things like step size, or does
 =C2=A0 the user have to handle that themselves?


>
> On Thu, Aug 26, 2021 at 2:06 AM Skorstad, J=C3=B8rn <jsk@nkom.no=20
> <mailto:jsk@nkom.no>> wrote:
>
>     Hello. I am using the UHD library 3.14.1 and C++ to control an
>     E310 radio. Without using RFNoC blocks it is possible to tune to
>     an offset frequency, using uhd::usrp::multi_usrp::set_rx_freq
>     (const tune_request_t &tune_request, size_t chan =3D 0). However,
>     when the software is using RFNoC blocks, it is only possible to
>     change RX center frequency:
>     uhd::rfnoc::rf_control::core_iface::set_rx_frequency(const double
>     /freq/, const size_t /chan/=C2=A0).
>
>     Is it possible to achieve the same offset tuning functionality
>     using RFNoC blocks? Have tried using set_rx_lo_freq(), but it
>     throws an exception, saying it is not supported on this model. I
>     have an RFNoC image with radio, DDC, window and FFT blocks on.
>
>     Jorn
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------E408C653F52A596040A60A71
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-08-26 11:37 p.m., Jonathon
      Pendlum wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAL7q81teZZMK5_GfvZugTJiOOGoc5c2w7uGmB5T5y1cqLFh3PQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi Jorn,
        <div><br>
        </div>
        <div>The offset frequency is implemented in the DDC block
          controller, see:=C2=A0<a
href=3D"https://github.com/EttusResearch/uhd/blob/UHD-3.14.L/host/lib/rfn=
oc/ddc_block_ctrl_impl.cpp#L194"
            moz-do-not-send=3D"true">https://github.com/EttusResearch/uhd=
/blob/UHD-3.14.L/host/lib/rfnoc/ddc_block_ctrl_impl.cpp#L194</a>.</div>
        <div><br>
        </div>
        <div>Jonathon</div>
      </div>
    </blockquote>
    To amplify on what Jonathon said above, the approach would be to use
    set_rx_frequency to be desired-frequency+desired-offset (or
    -desired-offset), then use<br>
    =C2=A0 the DDC tuning to rotate the resulting baseband in the appropr=
iate
    direction and desired-offset magnitude to bring it to zero offset.<br=
>
    <br>
    In multi-usrp without RFNOC, this is taken care of automatically,
    and you generally don't have to worry about the math, which not only
    involves the simple-case above,<br>
    =C2=A0 but factoring-in things like minimum tuning step-size for the
    hardware being used.=C2=A0 Jonathon, do the RFNOC controllers
    "understand" things like step size, or does<br>
    =C2=A0 the user have to handle that themselves?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAL7q81teZZMK5_GfvZugTJiOOGoc5c2w7uGmB5T5y1cqLFh3PQ@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 26, 2021 at 2:0=
6
          AM Skorstad, J=C3=B8rn &lt;<a href=3D"mailto:jsk@nkom.no"
            moz-do-not-send=3D"true">jsk@nkom.no</a>&gt; wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div style=3D"overflow-wrap: break-word;" lang=3D"NO-BOK">
            <div class=3D"gmail-m_-4372868162054029229WordSection1">
              <p class=3D"MsoNormal">Hello. I am using the UHD library
                3.14.1 and C++ to control an E310 radio. Without using
                RFNoC blocks it is possible to tune to an offset
                frequency, using uhd::usrp::multi_usrp::set_rx_freq
                (const tune_request_t &amp;tune_request, size_t chan =3D
                0). However, when the software is using RFNoC blocks, it
                is only possible to change RX center frequency:
                uhd::rfnoc::rf_control::core_iface::set_rx_frequency(cons=
t
                double=C2=A0<em><span
                    style=3D"font-family:Calibri,sans-serif;font-style:no=
rmal">freq</span></em>,
                const size_t=C2=A0<em><span
                    style=3D"font-family:Calibri,sans-serif;font-style:no=
rmal">chan</span></em>=C2=A0).</p>
              <p class=3D"MsoNormal">=C2=A0</p>
              <p class=3D"MsoNormal">Is it possible to achieve the same
                offset tuning functionality using RFNoC blocks? Have
                tried using set_rx_lo_freq(), but it throws an
                exception, saying it is not supported on this model. I
                have an RFNoC image with radio, DDC, window and FFT
                blocks on.</p>
              <p class=3D"MsoNormal">=C2=A0</p>
              <p class=3D"MsoNormal">Jorn</p>
            </div>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leave@l=
ists.ettus.com</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
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

--------------E408C653F52A596040A60A71--

--===============2498041192311391795==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2498041192311391795==--
