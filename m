Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5AE6A218E
	for <lists+usrp-users@lfdr.de>; Fri, 24 Feb 2023 19:33:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D153A38451A
	for <lists+usrp-users@lfdr.de>; Fri, 24 Feb 2023 13:33:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677263622; bh=Hf2fTn64IzqpyT0s22pRjkDgOIS9qNcUZwokHBoNHCo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DzEvx43KDMxqlTDksHPl7pdtin5woWdKIeGf5Kx3RFbY63dIC1ya/WChzJwa6JS8O
	 F+A1IHIX1cwogjjW5+UewnIjrYBMw6lF9judhsT7n3rw+SkPRIHBOgpJTyfCgBhQ11
	 R9KK1CueTL1E+W4/9qJisuDUdvWWO7aX7s7QGa/ugnwRk5HjEoQT9hjzDJCAshb7vy
	 YMWOPStC38c7VSbUiqheK+9TZhUJwpRLQ7T3ql2/odptj89ru/la45d0xnwuphAt8s
	 w21M9k6+23N6xz/XTVaznLTA9TZ2jxUqR4Rgi9Gogt+wduZ17EiKLvsNTe1Mw+NRqh
	 Gv6srZUoaFKAw==
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 61FAB384396
	for <usrp-users@lists.ettus.com>; Fri, 24 Feb 2023 13:32:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="g9o+6W6p";
	dkim-atps=neutral
Received: by mail-qt1-f172.google.com with SMTP id l13so385083qtv.3
        for <usrp-users@lists.ettus.com>; Fri, 24 Feb 2023 10:32:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Is/F2+dmnNEE6BSYEtbZ/vAF+MDZucqbepVIOXK9T8=;
        b=g9o+6W6pI9h3xupIJgpfDzCpjYiUulHE56LHxcnsVTJjNk5Fgibw1JOMyrcrmlf5uv
         hUPLnOTgk6VSKun7DKog1J7axFrVYtlk9eqruoPBP/tGJd9J7dRpBUY705DG9r7ebNcT
         MC49UnsZWENgC4eWOc4hAiC6QIUpdG7VqDd8F2oUsolpBdbCfcPoa//KcbD86oW3o0p2
         5QA8YrKQD9P95tqkRUA/Gn6spM1YJR1uHAsxbHYPxn5wNkK5GYueVsIxvr3ahwM5Ofm+
         We601cyfVY9NHhAa/F7mJW5cYhnylFB5DymoDcSw40brC5mui5Du9ESSIBHPAHm7BxCE
         /1kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/Is/F2+dmnNEE6BSYEtbZ/vAF+MDZucqbepVIOXK9T8=;
        b=yQeuYZVylQacDchxGWWXdTOGIUzjBOCIQdtyeF3f32erN8ETzLTrIejNm0LG9qKHII
         TqGjYI1vTAAfSW1lWIvdUlr6Fu0zZL2p1xU6r7drQQDO5DKJPwZxUDa+o39rHg5SoUzM
         D7U5IuYve+w909RVu+j8KDFpkW2G8JcgUjPc5BtnXV7VPr+lsFUtStYjUgObyhZNWz9C
         8JxeyDtRpUp++Vp3zMY/tL2mGNKZukHUqN8ZgEwNknyDrjEqRsYhV/FhiVKW78q1HOPF
         R62f3M10keoTAP4maNoLklm9gsxC/h1tz3TWX4WP++xORf52X7c8mVao0WCTd1gqyGxe
         s8/w==
X-Gm-Message-State: AO0yUKXuqEVwz7SvQg1cwMaCURS3XfGlqHvE54llr31PvD+fu/jZmjL0
	xIeicMg736sn0s//cUUI+z3s9OaQfXw=
X-Google-Smtp-Source: AK7set/mQN56bVaH7cmAG0RT12TCuopTGgQCBk0v8UXgZOpGXGH0zxcF94otYiPhGnaQ4nPHeSuhdA==
X-Received: by 2002:ac8:58d6:0:b0:3bf:c3be:758e with SMTP id u22-20020ac858d6000000b003bfc3be758emr892330qta.16.1677263574565;
        Fri, 24 Feb 2023 10:32:54 -0800 (PST)
Received: from [192.168.2.156] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id 75-20020a370b4e000000b007427421b70bsm1450110qkl.50.2023.02.24.10.32.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 10:32:54 -0800 (PST)
Message-ID: <e2ce046b-564b-8f06-42e3-cb0c6b3de552@gmail.com>
Date: Fri, 24 Feb 2023 13:32:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CjcUDMlFhJtAsV42npogDjBbyYWiqrUy7kZzMXYhkG0@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CjcUDMlFhJtAsV42npogDjBbyYWiqrUy7kZzMXYhkG0@lists.ettus.com>
Message-ID-Hash: IR2TPJCME7J5SCXTM7ATMALW2FYG2QWC
X-Message-ID-Hash: IR2TPJCME7J5SCXTM7ATMALW2FYG2QWC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: using rfnoc_graph and usrp
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IR2TPJCME7J5SCXTM7ATMALW2FYG2QWC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6581171610274861527=="

This is a multi-part message in MIME format.
--===============6581171610274861527==
Content-Type: multipart/alternative;
 boundary="------------mgDCEdR77cAOuwKuK4Nh2f32"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------mgDCEdR77cAOuwKuK4Nh2f32
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 24/02/2023 11:05, jmaloyan@umass.edu wrote:
>
> Hello,
>
> I am currently getting the following error, but I am lost as to how to=20
> work around it=E2=80=A6
>
> |[ERROR] [RPC] Someone tried to claim this device again (From:=20
> 192.168.10.1)|
>
> |[WARNING] [MPM.RPCServer] Someone tried to claim this device again=20
> (From: 192.168.10.1)|
>
> It appears the problem comes from instantiating an object=20
> uhd::rfnoc_graph, then, when this object already exists, I try to=20
> create a uhd::usrp::multi_usrp object. For example=E2=80=A6
>
> |auto graph =3D uhd::rfnoc::rfnoc_graph::make(args);|
>
> |uhd::usrp::multi_usrp::sptr usrp =3D=20
> uhd::usrp::multi_usrp::make("addr0=3D192.168.10.2");|
>
> It appears that trying to create both causes the error above to=20
> happen. However, I want to be able to create an rfnoc_graph and use=20
> multi_usrp to get and set the TOD on the ettus N321. How exactly can I=20
> work around this? I saw the rfnoc_graph has a function called=20
> =E2=80=9Csynchronize_devices()=E2=80=9D, however, it does not seem this=
 function can=20
> get and set the TOD as I need.
>
> Thanks,
>
> Joe
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Also:

https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1mb__controller.html


--------------mgDCEdR77cAOuwKuK4Nh2f32
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 24/02/2023 11:05, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.ed=
u</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:CjcUDMlFhJtAsV42npogDjBbyYWiqrUy7kZzMXYhkG0@lists.ettus=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello,</p>
      <p>I am currently getting the following error, but I am lost as to
        how to work around it=E2=80=A6</p>
      <p><code>[ERROR] [RPC] Someone tried to claim this device again
          (From: 192.168.10.1)</code></p>
      <p><code>[WARNING] [MPM.RPCServer] Someone tried to claim this
          device again (From: 192.168.10.1)</code></p>
      <p>It appears the problem comes from instantiating an object
        uhd::rfnoc_graph, then, when this object already exists, I try
        to create a uhd::usrp::multi_usrp object. For example=E2=80=A6</p=
>
      <p><code>auto graph =3D uhd::rfnoc::rfnoc_graph::make(args);</code>=
</p>
      <p><code>uhd::usrp::multi_usrp::sptr usrp =3D
          uhd::usrp::multi_usrp::make("addr0=3D192.168.10.2");</code></p>
      <p>It appears that trying to create both causes the error above to
        happen. However, I want to be able to create an rfnoc_graph and
        use multi_usrp to get and set the TOD on the ettus N321. How
        exactly can I work around this? I saw the rfnoc_graph has a
        function called =E2=80=9Csynchronize_devices()=E2=80=9D, however,=
 it does not
        seem this function can get and set the TOD as I need.</p>
      <p>Thanks,</p>
      <p>Joe</p>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    Also:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
/classuhd_1_1rfnoc_1_1mb__controller.html">https://files.ettus.com/manual=
/classuhd_1_1rfnoc_1_1mb__controller.html</a><br>
    <br>
    <br>
  </body>
</html>

--------------mgDCEdR77cAOuwKuK4Nh2f32--

--===============6581171610274861527==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6581171610274861527==--
