Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 806FD411F6F
	for <lists+usrp-users@lfdr.de>; Mon, 20 Sep 2021 19:39:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 695A4384560
	for <lists+usrp-users@lfdr.de>; Mon, 20 Sep 2021 13:39:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Tbi8CLzB";
	dkim-atps=neutral
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 6937E38443C
	for <usrp-users@lists.ettus.com>; Mon, 20 Sep 2021 13:39:04 -0400 (EDT)
Received: by mail-qt1-f169.google.com with SMTP id r1so2051589qta.12
        for <usrp-users@lists.ettus.com>; Mon, 20 Sep 2021 10:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=mhXc99Rms3oQhChoVGbHS2r9uXHAHb6LEUsgR6pD+7k=;
        b=Tbi8CLzBNLtYLrCFCcYOwp+4DSm+IODtIMOor44kK9F30yy5d+uR5d3RzcY0vTX/zq
         234K0O3jTQHDPZPA/QSLoH+i00OxnqMCH1ITgoDOmg508stS+YzeH2tAAwOu4ET0jqIW
         PUslwf9KP1KWYNU2irAcH3gfzXYtjiEmgsDKHujD86WkuTlKa1mlFHILUK1EDQT/w8k0
         U0kYFcpTJiW+BE5/2oF18A0nDMijsm9UA38XOcSj0hoJ3/FHk02F7/EExyQdK6J94RLE
         HlUmDp3nzNccz31dKN0qp1114WOyW5DBkC5UG1wCnkIXm7K+1vIP7hIzChRHFO2RR03s
         4dRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=mhXc99Rms3oQhChoVGbHS2r9uXHAHb6LEUsgR6pD+7k=;
        b=t1G3lRpYsExGUa+uULoN9A09EuxPeuFKWSyAz658RhJkyfVnEz4zfO9lJ+fri9jKUv
         O0quyGWI0TSZAZGf4K5KaYI10saApG8mmDdh2VDNB5mUsxyUYfAOwMAn2BZxdMunxu6C
         YWw0YxitkquDwJSrF3UJvsMDlddONQwkcvqcD/YvKcFFeNi6/FUtosB0XVLv3cgsLrYQ
         RnCUMNtCpiq/kGXgtBPmYs+zq5z0HbiCl4dVVhdiCKxD8vKIDJpb64OcReJpEh07CCya
         wzbgkTYz6ygXE6Sidh09azP+yERQDVqbyXSvd+HhtnlZIig/zhHeAiq6j0CnSbM5O6hN
         Ii2w==
X-Gm-Message-State: AOAM531kXLDkXQbaonekDETtHTLjlL0tQUUI9e2XGuz/RnhH5ouvCAFP
	F8xtTTwD0aJbOepHyLfnLPmD8t4VPlhREQ==
X-Google-Smtp-Source: ABdhPJwyFRuUhB4oceOkQWQ2PA7UZ6mOINDMaBk8/JjYu321Lznl9RTihleep3FQE6Z4WUSDRyqaYQ==
X-Received: by 2002:aed:3147:: with SMTP id 65mr23568202qtg.233.1632159543675;
        Mon, 20 Sep 2021 10:39:03 -0700 (PDT)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id x9sm11665293qko.125.2021.09.20.10.39.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Sep 2021 10:39:03 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <HJEQoDKoLiRWNhCUND7luUFQQWflXnSmNFYy49UtSdQ@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <ff77b83f-05bb-dfc5-df09-7141e68b2e6e@gmail.com>
Date: Mon, 20 Sep 2021 13:39:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <HJEQoDKoLiRWNhCUND7luUFQQWflXnSmNFYy49UtSdQ@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: X6REP42FLWTFZXQLLLZKYPDHJQGO7DZM
X-Message-ID-Hash: X6REP42FLWTFZXQLLLZKYPDHJQGO7DZM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Create two stream with python UHD
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X6REP42FLWTFZXQLLLZKYPDHJQGO7DZM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2877572066656715179=="

This is a multi-part message in MIME format.
--===============2877572066656715179==
Content-Type: multipart/alternative;
 boundary="------------1A1A6A79BE210E49925BEF19"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------1A1A6A79BE210E49925BEF19
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-20 12:31 p.m., christophe.grimault@novagrid.com wrote:
>
> Marcus,
>
> Is is not supported by the python version only ?
>
> In the example, with two streams, the subdev is =E2=80=9CA:B A:B=E2=80=9D=
 and shall=20
> allow 2 channels ? Am i wrong ?
>
> Therefore, how can I create to streams, using the DDCs from the DSP,=20
> on two different frequencies ? Shall I use only one rx_streamer ?
>
> Best regards
>
>
Theoretically, it should work, regardless of interface.=C2=A0 But I can't=
=20
remember on the N210 hardware whether the mux-control is flexible enough=20
to do what you want.

I don't have a N210 or LFRX, but I DO have a USRP2 + BASIC_RX and can=20
problem try to approximate your setup and get back to you.


> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------1A1A6A79BE210E49925BEF19
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-20 12:31 p.m.,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:christophe.gri=
mault@novagrid.com">christophe.grimault@novagrid.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:HJEQoDKoLiRWNhCUND7luUFQQWflXnSmNFYy49UtSdQ@lists.ettus=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Marcus,</p>
      <p>Is is not supported by the python version only ? </p>
      <p>In the example, with two streams, the subdev is =E2=80=9CA:B A:B=
=E2=80=9D and
        shall allow 2 channels ? Am i wrong ?</p>
      <p>Therefore, how can I create to streams, using the DDCs from the
        DSP, on two different frequencies ? Shall I use only one
        rx_streamer ?</p>
      <p>Best regards</p>
      <br>
    </blockquote>
    Theoretically, it should work, regardless of interface.=C2=A0 But I c=
an't
    remember on the N210 hardware whether the mux-control is flexible
    enough to do what you want.<br>
    <br>
    I don't have a N210 or LFRX, but I DO have a USRP2 + BASIC_RX and
    can problem try to approximate your setup and get back to you.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:HJEQoDKoLiRWNhCUND7luUFQQWflXnSmNFYy49UtSdQ@lists.ettus=
.com">
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

--------------1A1A6A79BE210E49925BEF19--

--===============2877572066656715179==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2877572066656715179==--
