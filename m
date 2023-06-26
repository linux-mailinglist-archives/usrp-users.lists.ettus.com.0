Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3F873E31F
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jun 2023 17:22:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DC38F380AF0
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jun 2023 11:22:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687792943; bh=KGXpHYMhwe/kXD13SDlxXXeBYYbO5XqljeR54SaxCI0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=F/hu0wKHN0ReiFLUiHlliwiGkIzWlJ/Z760JarcNHGHTPdsZElfNVtp3+vrisReQm
	 cFE1OXXBxNQQRasCWz9M6exVHKz7mmpS1/Xs0rb356hUuu5Ijs5uLp66ahhX5PsH1n
	 72NJtaq2Ry4YiNGLlMxkEFa6eJuAmG5WVV8ov/9PKuwgF4zLDeipOfYWS9hezjP0/T
	 dDgnD+Oha6EWo+LR56vTi26nV9pFSGsWOFGH+bOUeLO7uFsdHYKufqrnTzVEDPk0Wk
	 WGc8DOH3HxWudckpNlAShTeDoftAVz603dCENOp7dsOxExjKRuF//MvB4aKkF7Qmfs
	 wPU076RyCbGxQ==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 265F438093F
	for <usrp-users@lists.ettus.com>; Mon, 26 Jun 2023 11:21:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="imjgQgzc";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7659dc74d91so174270085a.0
        for <usrp-users@lists.ettus.com>; Mon, 26 Jun 2023 08:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687792879; x=1690384879;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=koame9XdCgrIwOxhNw6V/sazTXeKrKb3r6ZCmlHv+dE=;
        b=imjgQgzcVRN1DVLxBDVfwFr66+jRT5WOnf6xc0oNFjmM5BCl28SlIj1VVt92lcT7x4
         /amd41AxG2gpd6MRZom87PGmtd4b7fVrq5pi7y789PER6ASnlSljGbhNlN7nj4rijq9T
         TvbyZws52O0R2ZvNmGKS0eZhHYDeRyF1qROEcIXLjJOYwuCR/VRPtHTlAn2Zz/C1RaTR
         eChzhUu8RsgjXwdlPMqgH5UMQV1NmuiBaX6F+qdowEvf8bCzhdnziD5IvGQ/P/61spXb
         369xIQi2imnRSmTdvMC1cIF54NoHgd+4E46BHZxldHVYLLZ9e3QckyOFsLy0KtblWa1L
         NCwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687792879; x=1690384879;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=koame9XdCgrIwOxhNw6V/sazTXeKrKb3r6ZCmlHv+dE=;
        b=Sxjr5ZjNKXKyoddB4VV6BeatEf/nW66zmI+tf8hLpUH7qX+LcrB/iEONBiHiboGJQi
         AIkPQbED/oJpr7emJEFC4IP7fQsqiXhJuxrP4mRR+jBWWWtjj0CVfeW0iQ6vqmXBY4JT
         NnylSNmb7qRG3+jQvrQ/2RLAS+8obOwEqs232uiJzLJCScYIuw/wm60NbHtVKP3Qcje2
         /lUm3leuuWaTxN9S2xEYX1cIA3Jam5bTg8NQMSppJPKKktZlO9GCjgYPB16YjiVrTYfn
         Ixw+AEmWdsEqoslWTKCdLOe5Hlf7EaDFClpwYDHeSw/zNM3yGY5J+QRWjljCsX6mmSAZ
         F4sQ==
X-Gm-Message-State: AC+VfDwkKXn8ugWilXeEauS7PRv/d2L6EBepYt/0M9T0WqY3juhkih9u
	QYm0bgL6FTPyNqzSxS2VBsiCxcwmZCo=
X-Google-Smtp-Source: ACHHUZ6THPbXQ4Ua5ZgJcnMMoFMiIFvV8jjs2lOYA/FVkMOlBvGv6g0SJSiGu7CirQUymU/lDdrY/w==
X-Received: by 2002:a05:6214:ca1:b0:62f:d00c:7f41 with SMTP id s1-20020a0562140ca100b0062fd00c7f41mr31959237qvs.26.1687792879077;
        Mon, 26 Jun 2023 08:21:19 -0700 (PDT)
Received: from [192.168.2.171] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id jo30-20020a056214501e00b006262de12a8csm3235626qvb.65.2023.06.26.08.21.18
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jun 2023 08:21:18 -0700 (PDT)
Message-ID: <9b273b3f-114d-c9c4-d407-b62dbeb290ac@gmail.com>
Date: Mon, 26 Jun 2023 11:21:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAHRiTbnhtWyYk3A+q_J7PLhbKPb9USF5ZPnUxzFLGZCm938m+g@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAHRiTbnhtWyYk3A+q_J7PLhbKPb9USF5ZPnUxzFLGZCm938m+g@mail.gmail.com>
Message-ID-Hash: GCCX2KERT5XGFFU3BUCZNLQSSKQXHVHL
X-Message-ID-Hash: GCCX2KERT5XGFFU3BUCZNLQSSKQXHVHL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRx in coherent setup
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GCCX2KERT5XGFFU3BUCZNLQSSKQXHVHL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3982908689633376140=="

This is a multi-part message in MIME format.
--===============3982908689633376140==
Content-Type: multipart/alternative;
 boundary="------------OpWq0sfqEg0n2ejkzowHtFKm"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------OpWq0sfqEg0n2ejkzowHtFKm
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/06/2023 11:12, Carlo Venier wrote:
> Good evening to everybody,
>
> I am trying to use an X300 with two TwinRX in a coherent setup.
> After synchronization, in the case of fixed frequency operation (no
> re-tuning) the phase differences among the channels are constant and
> they remain constant over time.
> However, if I re-tune the TwinRx on the exact same frequency, I expect
> that the phase differences remain the same, but it does not happen. How
> is it possible?
>
> The LO settings are the following:
>
> multi_usrp->set_rx_lo_export_enabled(true,
> uhd::usrp::multi_usrp::ALL_LOS, 0);
> multi_usrp->set_rx_lo_source("internal",=20
> uhd::usrp::multi_usrp::ALL_LOS, 0);
> multi_usrp->set_rx_lo_source("companion",
> uhd::usrp::multi_usrp::ALL_LOS, 1);
> multi_usrp->set_rx_lo_source("external",=20
> uhd::usrp::multi_usrp::ALL_LOS, 2);
> multi_usrp->set_rx_lo_source("external",=20
> uhd::usrp::multi_usrp::ALL_LOS, 3);
>
> Moreover, by using the timed command before tuning all the channels
> (code snippet at "https://files.ettus.com/manual/page_sync.html", "Alig=
n
> LOs in the front-end"), I get into the issue at
> ("https://github.com/EttusResearch/uhd/issues/606") and the X300 is not
> usable until a power-cycle.
> I get the same issues when using both the uhd3.15.0.0 and the uhd4.4.0.=
0.
Hopefully this bug will get fixed.

I think that without timed-tuning, even though you're sharing LOs, the=20
DDC phase-accumulators will be
 =C2=A0 "ticking over" between the individual (untimed) tuning commands. =
So=20
there will be unpredictable phase
 =C2=A0 between all the channels.
>
> Should I expect the same phase differences when I re-tune to the exact
> same frequency or is it okay for the phase differences to change and I
> am missing something?
> Do you have any suggestion on how to solve the issue?
>
> Thanks,
>
> Best regards,
> Carlo Venier
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------OpWq0sfqEg0n2ejkzowHtFKm
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/06/2023 11:12, Carlo Venier
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAHRiTbnhtWyYk3A+q_J7PLhbKPb9USF5ZPnUxzFLGZCm938m+g@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto"><span style=3D"font-size:12.8px">Good evening to
          everybody,</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">I am trying to use an X300 with
          two TwinRX in a coherent setup.</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">After synchronization, in the
          case of fixed frequency operation (no</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">re-tuning) the phase differences
          among the channels are constant and</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">they remain constant over time.<=
/span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">However, if I re-tune the TwinRx
          on the exact same frequency, I expect</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">that the phase differences remai=
n
          the same, but it does not happen. How</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">is it possible?</span><br
          style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">The LO settings are the
          following:</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">multi_usrp-&gt;set_rx_lo_export_=
e</span><span
          style=3D"font-size:12.8px">nabled(true,</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">uhd::usrp::multi_usrp::ALL_LOS</=
span><span
          style=3D"font-size:12.8px">, 0);</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">multi_usrp-&gt;set_rx_lo_source(=
"</span><span
          style=3D"font-size:12.8px">internal",
          uhd::usrp::multi_usrp::ALL_LOS</span><span
          style=3D"font-size:12.8px">, 0);</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">multi_usrp-&gt;set_rx_lo_source(=
"</span><span
          style=3D"font-size:12.8px">companion",</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">uhd::usrp::multi_usrp::ALL_LOS</=
span><span
          style=3D"font-size:12.8px">, 1);</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">multi_usrp-&gt;set_rx_lo_source(=
"</span><span
          style=3D"font-size:12.8px">external",
          uhd::usrp::multi_usrp::ALL_LOS</span><span
          style=3D"font-size:12.8px">, 2);</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">multi_usrp-&gt;set_rx_lo_source(=
"</span><span
          style=3D"font-size:12.8px">external",
          uhd::usrp::multi_usrp::ALL_LOS</span><span
          style=3D"font-size:12.8px">, 3);</span><br
          style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Moreover, by using the timed
          command before tuning all the channels</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">(code snippet at "</span><a
          href=3D"https://files.ettus.com/manual/page_sync.html"
          style=3D"text-decoration-line:none;color:rgb(66,133,244);font-s=
ize:12.8px"
          target=3D"_blank" rel=3D"noreferrer" moz-do-not-send=3D"true"
          class=3D"moz-txt-link-freetext">https://files.ettus.com/manual/=
page_sync.html</a><span
          style=3D"font-size:12.8px">", "Align</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">LOs in the front-end"), I get
          into the issue at</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">("</span><a
          href=3D"https://github.com/EttusResearch/uhd/issues/606"
          style=3D"text-decoration-line:none;color:rgb(66,133,244);font-s=
ize:12.8px"
          target=3D"_blank" rel=3D"noreferrer" moz-do-not-send=3D"true"
          class=3D"moz-txt-link-freetext">https://github.com/EttusResearc=
h/uhd/issues/606</a><span
          style=3D"font-size:12.8px">") and the X300 is not</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">usable until a power-cycle.</spa=
n><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">I get the same issues when using
          both the uhd3.15.0.0 and the uhd4.4.0.0.</span><br
          style=3D"font-size:12.8px">
      </div>
    </blockquote>
    Hopefully this bug will get fixed.<br>
    <br>
    I think that without timed-tuning, even though you're sharing LOs,
    the DDC phase-accumulators will be<br>
    =C2=A0 "ticking over" between the individual (untimed) tuning command=
s.=C2=A0
    So there will be unpredictable phase<br>
    =C2=A0 between all the channels.<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAHRiTbnhtWyYk3A+q_J7PLhbKPb9USF5ZPnUxzFLGZCm938m+g@mail.gmai=
l.com">
      <div dir=3D"auto"><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Should I expect the same phase
          differences when I re-tune to the exact</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">same frequency or is it okay for
          the phase differences to change and I</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">am missing something?</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Do you have any suggestion on ho=
w
          to solve the issue?</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Thanks,</span><br
          style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Best regards,</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Carlo Venier</span></div>
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

--------------OpWq0sfqEg0n2ejkzowHtFKm--

--===============3982908689633376140==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3982908689633376140==--
