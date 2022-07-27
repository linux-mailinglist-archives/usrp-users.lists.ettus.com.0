Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC24E5829EA
	for <lists+usrp-users@lfdr.de>; Wed, 27 Jul 2022 17:46:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0012F383D87
	for <lists+usrp-users@lfdr.de>; Wed, 27 Jul 2022 11:46:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658936792; bh=bFvirxUrDQwmnbf59bbviH+QH+Prjp0HhwixGsBsBGk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=rxEa62BMQuKkvUbcegJJxdzvdNaSDsXuy8c+2J1gI8pP/8HWASiilRzSZAtix1ZE2
	 lULILt/IkLLsBWx/VJ4+sIfxPlkHzjOaUgPMu4bpu3I4ubfFB7GkU14/V5XQBsgudj
	 Hi3ANIUmo1dwgW50afidVWARh1a6o841Cx7goMLD8nsCjcF6c9VDG5I6GMDxoWjFoP
	 athWCSaUtHukypL0UNQ5Y70Cvivp2GHuiHWXajP7oOHs7txtJSiN5+VT3pXjqRW2QR
	 jU9/w/bAvYsuHos6VJ3Wd9XtdfRZgeF7fCgcwa3SOcbuHEAWxuncJPY3dBOvyZKxmF
	 PoXZe/40hFfhw==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 46FD9383CAB
	for <usrp-users@lists.ettus.com>; Wed, 27 Jul 2022 11:45:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="afEg12g1";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id b25so13529489qka.11
        for <usrp-users@lists.ettus.com>; Wed, 27 Jul 2022 08:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc;
        bh=ukctnpLMmCUP74pSc1yVXK6nNn30/LyeMELxXPNolMY=;
        b=afEg12g1vqGJB8I65ANjuqK1wqMVTjma3tzIAe06yo614IoVBCnuHoL7DvhqZVPTnU
         kcSDwdaRfJKvS3V88QbGEeUh8iCFFQLH6LelabfvSUZBj7n2cNIbJimYA4oYiX8VQnAZ
         1youDo6MtaaKsumASqWLlqJHEpnwIHhUYcxZt5mzsP4oD3Qt3pfEEApW6QiQDHBAGz4d
         WE6ZUBmK8Z+rUmnA2cchYGyEaKB4Ey9q/Gk7Rd3EH/7M8ZtocbPQq9qRchB/SsogMBaI
         DDBI9nbioEwJ9OIwvYUBNVmLv7P/6v13swnhFKwDm8IATCUXeD8P2zQ3OlecqNYygInu
         zssA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc;
        bh=ukctnpLMmCUP74pSc1yVXK6nNn30/LyeMELxXPNolMY=;
        b=ZrHfEsN8LOalSair6z8WpuKwyZJq8EZtiuqcamKhemMwvSxX4cEpW2Ly0XxE6MT6lL
         M2zuzQeUrK5QSVhNxiEapSlano8T0lsQqNNH1GEb8FbV3BrFcfSPwBSz37n35Gpru29O
         Wp/ESxtRKySvp1tdjnM09RijzVePJrJXvL2fxNYdKdxWox5f2uXXkQ93mXAgtDeAAPNn
         iRFcYMShDGbbs8nek1u/tLc/BI46leL6K7RrA+T5gM5sZhgu8oIPC9QpBGwxVrPDbeMd
         4wqYBQnV2WYCJkAOQRI/brr1dAsOh9S4WLfurtBTN+dogS2Cq6NvX6xxzWn/wCPRc9ZH
         Y27Q==
X-Gm-Message-State: AJIora+4KWfNE2jJxb+4ZF01Xw9qX25/qaZ3tLP9ZlyACXlgXXl50m1u
	lOWNOaulSKQftko2hoyBNCQhaSbx4So=
X-Google-Smtp-Source: AGRyM1sLaxasqLHlWyfU9k5bhKMpQpPOjjjLkkPTw3+o4opaQasACCKO8aDslNAnqxI2nGngr79VPQ==
X-Received: by 2002:a37:9ad8:0:b0:6b5:df54:bbf with SMTP id c207-20020a379ad8000000b006b5df540bbfmr16888849qke.521.1658936713386;
        Wed, 27 Jul 2022 08:45:13 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id q13-20020a05620a2a4d00b006b59f02224asm13761635qkp.60.2022.07.27.08.45.12
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 08:45:12 -0700 (PDT)
Message-ID: <b95a1d8f-608f-ff79-1e44-3a79b2f6f889@gmail.com>
Date: Wed, 27 Jul 2022 11:45:11 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <3ee43cde-ca0f-074e-57a6-5b041cd1cc8e@sma-rty.com>
 <CAB__hTR2t4CRv_MrEH5ioTBoSC=77F4AhAuPDwyLaBc3vouStw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTR2t4CRv_MrEH5ioTBoSC=77F4AhAuPDwyLaBc3vouStw@mail.gmail.com>
Message-ID-Hash: G2354SV3COOP26RBYCWAQPYBII66JSSN
X-Message-ID-Hash: G2354SV3COOP26RBYCWAQPYBII66JSSN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Suggested SFP+ for Ettus N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G2354SV3COOP26RBYCWAQPYBII66JSSN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3936682623917748482=="

This is a multi-part message in MIME format.
--===============3936682623917748482==
Content-Type: multipart/alternative;
 boundary="------------tDtsCbybSMmJ80lNt4r9ngn9"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------tDtsCbybSMmJ80lNt4r9ngn9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-07-27 11:30, Rob Kossler wrote:
> Hi Federico,
> I have several N310s and different types of 10Gb links: direct attach=20
> copper, multi-mode (850nm), single mode (1310nm).=C2=A0 All have worked=
=20
> well including the transceivers from lower cost vendors such as FS and=20
> GTek. I have also used the X520-DA2.=C2=A0 So, while it is possible tha=
t=20
> your transceivers are causing the problem, I want to point out that=20
> there are other causes for sequence errors related to the optimization=20
> of networking on the host. Do your sequence errors happen at all=20
> transfer rates or only at very high rates?
>
> Rob
>
>
It was noted that he had errors even with "ping", so I don't think it's=20
a host-performance issue.

I have recently deployed a 10Ge connection on an *X310*, using an=20
82599-based card with SFP+, transceivers from 10GTek intended for 850nm=20
multi-mode fiber with
 =C2=A0 duplex LC terminations, and matching OM3 LC-terminated duplex cab=
le,=20
also from 10GTek.=C2=A0 That worked flawlessly.=C2=A0 Not exactly the sam=
e=20
situation (N310 vs X310), but
 =C2=A0 an indicator that this can work just fine.

The fiber ends can get dirty if you run the cabling without the caps=20
on--wipe with an alcohol wipe and let dry.




>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------tDtsCbybSMmJ80lNt4r9ngn9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-07-27 11:30, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTR2t4CRv_MrEH5ioTBoSC=3D77F4AhAuPDwyLaBc3vouStw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi Federico,
        <div>I have several N310s and different types of 10Gb links:
          direct attach copper, multi-mode (850nm), single mode
          (1310nm).=C2=A0 All have worked well including the transceivers
          from lower cost vendors such as FS and GTek. I have also used
          the X520-DA2.=C2=A0 So, while it is possible that your transcei=
vers
          are causing the problem, I want to point out that there are
          other causes for sequence errors related to the optimization
          of networking on the host. Do your sequence errors happen at
          all transfer rates or only at very high rates?</div>
        <div><br>
        </div>
        <div>Rob</div>
        <div><br>
        </div>
      </div>
      <br>
    </blockquote>
    It was noted that he had errors even with "ping", so I don't think
    it's a host-performance issue.<br>
    <br>
    I have recently deployed a 10Ge connection on an *X310*, using an
    82599-based card with SFP+, transceivers from 10GTek intended for
    850nm multi-mode fiber with<br>
    =C2=A0 duplex LC terminations, and matching OM3 LC-terminated duplex
    cable, also from 10GTek.=C2=A0 That worked flawlessly.=C2=A0 Not exac=
tly the
    same situation (N310 vs X310), but<br>
    =C2=A0 an indicator that this can work just fine.<br>
    <br>
    The fiber ends can get dirty if you run the cabling without the caps
    on--wipe with an alcohol wipe and let dry.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTR2t4CRv_MrEH5ioTBoSC=3D77F4AhAuPDwyLaBc3vouStw@mail.gm=
ail.com">
      <p><br>
      </p>
      <div class=3D"gmail_quote">
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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
    <br>
  </body>
</html>

--------------tDtsCbybSMmJ80lNt4r9ngn9--

--===============3936682623917748482==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3936682623917748482==--
