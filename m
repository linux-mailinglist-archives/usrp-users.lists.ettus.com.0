Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E91460B818
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 21:42:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 467AB383BEC
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 15:42:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666640527; bh=pW3ZKKXakjUhMjzb//1zqrS7vdcG8VEdrpXdzUDCOcA=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=J386N8IZb7V4mF5b2Nri00XPgfEZLKaruxao5SagVu1BU1WYbt78utZ3f0XjWM/ID
	 TPCYCrjzwOY3gFjobbcZyyWBXLJQjadaHUymAwuds68B3EZx0jEPYT1tKV6ZgNAQvI
	 PaVEqYkCqJrM1++INZzVNVuULIeshh3t5swN/+mu0fyP+Bmjng0oOR6DVaoSUDHQSb
	 NjqPxUm/S4ForQ+iWV69wNlGudJOKclM00R4S2kI2+MU3kak5XBF4nqNSSEpwt2dIj
	 naeCet7CrGVRBaFcmT0DS8UXEB8yJMqGFygR4ptybPuM8QLusrbocdCB8/G71QrRmh
	 /BbFxMWbZotVQ==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 8AA94383846
	for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 15:40:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KbxBGBt9";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id a5so6740788qkl.6
        for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 12:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QKmEt5EztvAvzRqXc4ZSlrE76PvAn8VajGD/DMV48Jc=;
        b=KbxBGBt9r2k2vZNsu3uPu5Bw0ltdGjOd5jvgJvLaIBIBpIZhxEj3ELSmttaR9fxPFC
         fcUajK5cqm055t1iYllxap49sK/h/yy6m5S5AlAvrY4lSsdGeDtVtgNR+QzxmvfmWmOI
         WhVinripeqbaOu7teqE1k5NXASApev3OcHuoUoEoGIk514yQPvuYdEdH/Ap7VtY4GDUv
         jTXKJvtoPau3DBjXp8F8c/L+WZY2YxpiQrCGNdK4TmMyve4h8WNnZ3d1ZoRbjuywB0Sp
         4CGlHpNU0marKA6vjyHINLwWtzWnho56hu4FDQ9XakcNCc/sUCAEazIE0TmRp3Y0KVvL
         +X/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QKmEt5EztvAvzRqXc4ZSlrE76PvAn8VajGD/DMV48Jc=;
        b=HaSbmReA2Mq/hnMoDeig18cCFazrDybvw73kbbyA0ALbTfD2iMDn7EOFHhF7k9D2SX
         3dseRRtxJHtxy918QX3wL9kJ6pWFNA8whSoLbCQkrclhxT87auabEuGLQA2EHImK6sKQ
         yHbauQHPh+Y9GQmN2lrt6NzKotOMW3bZum1EtaVls6AHFLOxJpuy3ymS9qOQNwaeNFIa
         55ExZsn9MN+Df3jroLB7MgTcSne03cK+mETKYnYSB1GHkE3jqYmhiblP8deQBrKV7rMy
         j6MHa5liUxiv0sqpA7qh9Wab/Hu3jcoSJBirvdrqecUH9FA3/E3x3go3l6ErKSYSqbl6
         WnyA==
X-Gm-Message-State: ACrzQf3BCJ0UatswRAYvVNplH/stWFVcZyJU5r3+Y/1WdC41DcPIkaXk
	BVtIh30TV3rTHPN6bcNoSoHXHt+NAWo=
X-Google-Smtp-Source: AMsMyM5bnw0lRQOPFZBVCObH+cC6q8QyWNW2/LBrGkdt4+AOfviVzaE6RljgAqIlQ+1FyzhRr3wjMw==
X-Received: by 2002:a05:620a:25c8:b0:6ae:ba71:ea7d with SMTP id y8-20020a05620a25c800b006aeba71ea7dmr24184359qko.547.1666640452950;
        Mon, 24 Oct 2022 12:40:52 -0700 (PDT)
Received: from [192.168.2.171] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id w16-20020a05620a425000b006eeb25369e9sm585636qko.25.2022.10.24.12.40.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 12:40:52 -0700 (PDT)
Message-ID: <77e2fd55-230d-36f8-61d8-54d2d0d78b1a@gmail.com>
Date: Mon, 24 Oct 2022 15:40:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Wade Fife <wade.fife@ettus.com>, Rob Kossler <rkossler@nd.edu>
References: <CAKNV16WYZgzRi_5AtTCpQ5fq=+f5UoM0LMhfBBwg-ZdT03tnGA@mail.gmail.com>
 <375f87d6-a523-7410-88ec-7bff37c7cb5c@gmail.com>
 <CAKNV16VkR3v3kNhE_YQqW_Yjoh4ed-we41FSNPa=ESAKsJLCrg@mail.gmail.com>
 <CAB__hTSpzL+uoyfwn0j+wui4xE_8x14FO1=B2yYG3bBOWVza-g@mail.gmail.com>
 <CAFche=iurXW=i=RnUsg4aCrkTyFa-EFZa3GsDUvBSz30+zFDKg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFche=iurXW=i=RnUsg4aCrkTyFa-EFZa3GsDUvBSz30+zFDKg@mail.gmail.com>
Message-ID-Hash: AMVVVVH4JBXDXDGWP6V6KTD3YFNTJWM2
X-Message-ID-Hash: AMVVVVH4JBXDXDGWP6V6KTD3YFNTJWM2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: EmPa Kro <m10502215@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to use command replace hardware-reboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AMVVVVH4JBXDXDGWP6V6KTD3YFNTJWM2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1733322103613519019=="

This is a multi-part message in MIME format.
--===============1733322103613519019==
Content-Type: multipart/alternative;
 boundary="------------I2dikczlZEVPEsFYEAwXczcD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------I2dikczlZEVPEsFYEAwXczcD
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-10-24 15:24, Wade Fife wrote:
> If you can connect over USB, you can connect to the SCU, which will=20
> allow you to shutdown the device and turn it back on. To connect to=20
> the SCU, see:
>
> https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_micro
> https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_getting_started=
_serial_micro
>
> After shutting down the N310 by normal means (e.g., `shutdown -h now`=20
> over ssh), connect to the SCU and run `powerbtn` to turn it back on.
>
> Wade
Thanks, Wade.

But I have a hard time deciphering how the ability to "fully reboot" has=20
anything to do with the main complaint which is about
 =C2=A0 packet scheduling, I think.=C2=A0 [It is, I admit hard to tell fr=
om the=20
wording of the request].


>
> On Mon, Oct 24, 2022 at 10:07 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>     Not sure if this will help, but you might try all or part of the
>     following:
>     overlay rm n310 &&=C2=A0overlay add n310 &&=C2=A0systemctl restart =
usrp-hwd
>
>     On Sun, Oct 23, 2022 at 1:48 PM EmPa Kro <m10502215@gmail.com> wrot=
e:
>
>         Dear Marcus,
>
>         I use the devices in 5g.
>         If the protocol handling too slow, then it will let N310 meet
>         hardware real time.
>         [Ex: Protocol must complete scheduling and
>         encoding/decoding... in one slot.]
>
>         Best Regards,
>         Kenny
>
>         Marcus D. Leech <patchvonbraun@gmail.com> =E6=96=BC 2022=E5=B9=B4=
10=E6=9C=8824=E6=97=A5 =E9=80=B1=E4=B8=80
>         =E5=87=8C=E6=99=A81:04=E5=AF=AB=E9=81=93=EF=BC=9A
>
>             On 2022-10-23 12:58, EmPa Kro wrote:
>             > Dear USRP develop,
>             >
>             > Because I meet some of hardware real time issue.
>             > I must use my finger off/on power button.
>             > Are there any other ways to reboot?
>             >
>             > I have used software command to reboot, but it can't fix
>             HRT issue.
>             > "ssh root@[N310_IP] \reboot"
>             >
>             > Best regards,
>             > Kenny
>             >
>             Can you expand on what you mean by "HRT issue"?
>
>
>             _______________________________________________
>             USRP-users mailing list -- usrp-users@lists.ettus.com
>             To unsubscribe send an email to
>             usrp-users-leave@lists.ettus.com
>
>         _______________________________________________
>         USRP-users mailing list -- usrp-users@lists.ettus.com
>         To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------I2dikczlZEVPEsFYEAwXczcD
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-10-24 15:24, Wade Fife wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFche=3DiurXW=3Di=3DRnUsg4aCrkTyFa-EFZa3GsDUvBSz30+zFDKg@mai=
l.gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>If you can connect over USB, you can connect to the SCU,
          which will allow you to shutdown the device and turn it back
          on. To connect to the SCU, see:</div>
        <div><br>
        </div>
        <div><a
            href=3D"https://files.ettus.com/manual/page_usrp_n3xx.html#n3=
xx_micro"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_micro</a></div>
        <div><a
href=3D"https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_getting_s=
tarted_serial_micro"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_getting_started_seria=
l_micro</a></div>
        <div><br>
        </div>
        <div>After shutting down the N310 by normal means (e.g.,
          `shutdown -h now` over ssh), connect to the SCU and run
          `powerbtn` to turn it back on.<br>
        </div>
        <div><br>
        </div>
        <div>Wade<br>
        </div>
      </div>
    </blockquote>
    Thanks, Wade.<br>
    <br>
    But I have a hard time deciphering how the ability to "fully reboot"
    has anything to do with the main complaint which is about<br>
    =C2=A0 packet scheduling, I think.=C2=A0 [It is, I admit hard to tell=
 from the
    wording of the request].<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAFche=3DiurXW=3Di=3DRnUsg4aCrkTyFa-EFZa3GsDUvBSz30+zFDKg@mai=
l.gmail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 24, 2022 at 10:=
07
          AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">rkos=
sler@nd.edu</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">Not sure if this will help, but you might try
            all or part of the following:
            <div>overlay rm=C2=A0<span>n310</span>=C2=A0<span>&amp;&amp;<=
/span>=C2=A0overlay
              add=C2=A0<span>n310</span>=C2=A0<span>&amp;&amp;</span>=C2=A0=
systemctl
              restart usrp-hwd<br>
            </div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Sun, Oct 23, 2022 at
              1:48 PM EmPa Kro &lt;<a href=3D"mailto:m10502215@gmail.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">m10502215@gmail.com</a>&g=
t;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <div dir=3D"ltr">Dear Marcus,
                <div><br>
                </div>
                <div>I use the devices in 5g.</div>
                <div>If the protocol handling too slow, then it will let
                  N310 meet hardware real time.</div>
                <div>[Ex: Protocol must complete scheduling and
                  encoding/decoding... in one slot.]</div>
                <div><br>
                </div>
                <div>Best Regards,</div>
                <div>Kenny</div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">Marcus D. Leech &lt=
;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>&gt;
                  =E6=96=BC 2022=E5=B9=B410=E6=9C=8824=E6=97=A5 =E9=80=B1=
=E4=B8=80 =E5=87=8C=E6=99=A81:04=E5=AF=AB=E9=81=93=EF=BC=9A<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">On 2022-10-23
                  12:58, EmPa Kro wrote:<br>
                  &gt; Dear USRP develop,<br>
                  &gt;<br>
                  &gt; Because I meet some of hardware real time issue.<b=
r>
                  &gt; I must use my finger off/on power button.<br>
                  &gt; Are there any other ways to reboot?<br>
                  &gt;<br>
                  &gt; I have used software command to reboot, but it
                  can't fix HRT issue.<br>
                  &gt; "ssh root@[N310_IP] \reboot"<br>
                  &gt;<br>
                  &gt; Best regards,<br>
                  &gt; Kenny<br>
                  &gt;<br>
                  Can you expand on what you mean by "HRT issue"?<br>
                  <br>
                  <br>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a><br>
                  To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users-leave@list=
s.ettus.com</a><br>
                </blockquote>
              </div>
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

--------------I2dikczlZEVPEsFYEAwXczcD--

--===============1733322103613519019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1733322103613519019==--
