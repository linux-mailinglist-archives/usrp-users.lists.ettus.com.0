Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FE67B25E4
	for <lists+usrp-users@lfdr.de>; Thu, 28 Sep 2023 21:22:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A3995384FDA
	for <lists+usrp-users@lfdr.de>; Thu, 28 Sep 2023 15:22:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695928974; bh=usP8tfQNPsNF3NjfS+V85D7ocjeK90uZsuyWHN73zjA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=x3eA/9/kiGz1z3wKqapEpAOBapjN/fhQ/WCF+eV/bI/H5xU10hRbYwouB5h2eBSqZ
	 Ryax9oxLiSeVcStWc2E1OXpp80w3OrSpF0uW7tFu3ovgjS38W4ZOK5yoSixIJmtLBT
	 O0eeR9mlQI5x1KBrJ92Ac9QOjIyv2Y2xJJ7XLjodNZPOeox92K59TeKxz2fhA2gNIu
	 gNaFF5/K238pRPprWxzEJ+ALmzhOEc6wpBHwBVE3MZfvBDGVfwgPv1JA5qRIMn+ad1
	 WBRGmdh93N1S2u2OMShi4zg+aftfzUDCf8RLrkWI8LDi5xDYxbIHrEEjgU2MvXX4kk
	 47aWo86ODjMvQ==
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 0BA9C384FCE
	for <usrp-users@lists.ettus.com>; Thu, 28 Sep 2023 15:22:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="aEUbvacB";
	dkim-atps=neutral
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-32008e339adso12351477f8f.2
        for <usrp-users@lists.ettus.com>; Thu, 28 Sep 2023 12:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1695928969; x=1696533769; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PI88Zt3ezp/hqvQ5d9S7k1cOxg23tw99Nm9eHMKKN6Y=;
        b=aEUbvacBVNyh4tX1IrX/2m1T5Sw3wajJ3OHdK2QBsBT1kUSXDcZ5UMnyMolR2QyyXL
         FDTiSzk99bzRHTBntaaKRtuv50IUjnO0+gOnNf15zQFNPg6jkUsOSTY4OKomr0H/D7gs
         J5aYy3W4kRyNlm1VJBGM054H6OuRWbyrA4/eCscmlwI9yn33WYztgCmuEjvyIUlQSpBW
         4RLHL/QWVGjKzqfTk64tHhIRFyyYrpfsMZuvTv1/Xe8Yk9GNtURcqY45equ+jNsuoZzm
         tfynVKi4+huD8Jjro6++b4UN5xi9dZSvnAJhYEa48HVp0t36FW3rFIDmM5X7HMeUCDGq
         msmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695928969; x=1696533769;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PI88Zt3ezp/hqvQ5d9S7k1cOxg23tw99Nm9eHMKKN6Y=;
        b=LnDBk5llj1uNq6WSq2oIAK2tE3fmppU0U5LWC0FZ/Rlwh94f+VeBZYPvN62JaWFuKT
         s94bkTRXMs5MehpTtQs5pLlNLqcali8iGYtnr/o1BADSRxdeO2rL2KU3ML4W430VKmO8
         H/DMzAtxI7Af8nCigYt2aM1Pd5aLpsTUEA0eAC0aIFS374SKSIs4A97P0fsWcumXqp9s
         hj8mf11nZZHuryw1Qa+85n9yVlHXFDB8jsmIgPtv4fe2w4bbLgwzIu7FNVCfz1Ldcbtm
         O4JRSvqFe4YSWOzmsLLiQgD/AaAYRLws5TwZdLgTxo5V8cb/aInYRaGNir1aXmFXVtO/
         YZpg==
X-Gm-Message-State: AOJu0YxhnUr/MHKTvA/xC83L+Lkh0pScqP/ypXUAZSBfuL9iPUsvnoIC
	z96WVkdg8PVGraPX8QLTm3gIWUlUOCyre1R9UilYBLcN
X-Google-Smtp-Source: AGHT+IHgtgJEASdvNpjAwrRk8ZuMCE6To9JSQHmnL7/0m6zSGoC/85guzjRbYqp0h9fCYXKRYlVihw==
X-Received: by 2002:a5d:4741:0:b0:31f:d5db:a13 with SMTP id o1-20020a5d4741000000b0031fd5db0a13mr1777867wrs.61.1695928969456;
        Thu, 28 Sep 2023 12:22:49 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3868:df00:10fc:1619:bea3:90d1? ([2001:9e8:3868:df00:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id g7-20020a5d46c7000000b0031fbbe347e1sm20023383wrs.65.2023.09.28.12.22.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Sep 2023 12:22:48 -0700 (PDT)
Message-ID: <8715fa2e-1fad-35b3-7e0c-b3968ae614bf@ettus.com>
Date: Thu, 28 Sep 2023 21:22:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <6BD824DC-9003-4D17-9008-1FFF11B7D4E8@stanford.edu>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <6BD824DC-9003-4D17-9008-1FFF11B7D4E8@stanford.edu>
Message-ID-Hash: VJ4RW5GAOP5SZKQMDEX326BOYHRCTL6V
X-Message-ID-Hash: VJ4RW5GAOP5SZKQMDEX326BOYHRCTL6V
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Appears Laggy Using UHD 4.5
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VJ4RW5GAOP5SZKQMDEX326BOYHRCTL6V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5189244089852627275=="

This is a multi-part message in MIME format.
--===============5189244089852627275==
Content-Type: multipart/alternative;
 boundary="------------0iRyXr6XCCSqzTmMQHaSNoX4"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0iRyXr6XCCSqzTmMQHaSNoX4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello Ms. Broome,

that does sound complicated and undesirable. From the top of my head, I h=
ave no idea what=20
could cause this. Barring any method of directly debug this =E2=80=93 how=
 quickly does=20
reproduction for you work? Meaning, from the start of your application to=
 the application=20
hanging or no samples flowing, how long does it take?

Let me quickly throw in my thoughts on the things you write, so that we m=
aybe find a good=20
way forward, or maybe someone else spots something:

On 28.09.23 19:54, Anna Lamkin Broome wrote:
> When running our code on the X310 with UHD 4.5 I get warnings for both =
radio 0 and radio=20
> 1 (we transmit on one UBX160 and receive on the other): *[WARNING] [0/R=
adio#0]=20
> *Attempting to set tick rate to 0. Skipping.
The ability to emit that warning was added in UHD 4.0.0.0; I think it's q=
uite normal to=20
see this during initialization.
> The code uses timed commands to transmit and receive samples from a fre=
quency-swept=20
> pulse at a consistent interval (pulse repetition frequency). Our applic=
ation requires a=20
> high PRF and we can tolerate some late command errors, but need to log =
them for=20
> post-processing.
Sounds good to me.
> Using UHD 4.5, the behavior is not as expected in that something seems =
to be hanging. At=20
> some point during the process=E2=80=94I think once we first hit a late =
command error=E2=80=94the timing=20
> becomes very off from what it should be, and eventually, samples stop b=
eing transmitted=20
> or received and the application just hangs. Sometimes when killing the =
application, I=20
> get this warning: *[WARNING] [RFNOC::GRAPH::DETAIL] *Cannot forward act=
ion tx_event from=20
> 0/Radio#0:INPUT_EDGE:0, no neighbour found! These warnings do not happe=
n when running=20
> the application with UHD 3.15.
I think this is just the fact that in UHD 4, RFNoC is much tighter in int=
egration with the=20
host-side UHD. (The USRP's FPGA conains a flowgraph, conceptually not too=
 different from a=20
flowgraph as in GNU Radio or Simulink, to handle the samples. Now, at hos=
t-side=20
application teardown, we need to tell the components of that graph to shu=
t down, and=20
disengage. This might be a minor misunderstanding about what is still the=
re during shutdown.)
>
> I have tried running the benchmark_rate example with the same host comp=
uter and X310=20
> running UHD 3.15 and UHD 4.5. With UHD 4.5 and high sample rates, I get=
 an error:=20
> uhd::op_timeout: RfnocError: OpTimeout: Control operation timed out wai=
ting for ACK,=20
> which stops the test before it begins running. Lower sample rates in UH=
D 4.5 run, but=20
> produce more errors (including sequence errors) than the same set up ru=
nning UHD 3.15.
Great work! Just to get a feeling: at which rates does this happen now, a=
t which it did=20
work on 3.15?
>
> I have tried refreshing the FPGA image for UHD 4.5 with no change in be=
havior. The=20
> behavior is replicable using multiple host computers (Mac and Ubuntu). =
If anyone has=20
> suggestions on debugging steps, or potential reasons why UHD 4.5 would =
seem laggy=20
> compared to UHD 3.15 (despite running well with UHD 4.x on the B205mini=
), I would=20
> greatly appreciate them. I suspect it may have something to do with the=
 command queue=20
> and how it evolves after getting behind.

Yeah, that would be a suspicion I share =E2=80=93 but here's where I'll h=
ave to admit that I=20
haven't followed the changes to the radio ctrl changes lately, and flow c=
ontrol under UHD=20
4 is indeed a bit different than under 3.15.

Best,
Marcus M

--------------0iRyXr6XCCSqzTmMQHaSNoX4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hello Ms. Broome,<br>
    </p>
    <p>that does sound complicated and undesirable. From the top of my
      head, I have no idea what could cause this. Barring any method of
      directly debug this =E2=80=93 how quickly does reproduction for you=
 work?
      Meaning, from the start of your application to the application
      hanging or no samples flowing, how long does it take?<br>
    </p>
    <p>Let me quickly throw in my thoughts on the things you write, so
      that we maybe find a good way forward, or maybe someone else spots
      something:<br>
    </p>
    <div class=3D"moz-cite-prefix">On 28.09.23 19:54, Anna Lamkin Broome
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:6BD824DC-9003-4D17-9008-1FFF11B7D4E8@stanford.edu">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
    </blockquote>
    <blockquote type=3D"cite"
      cite=3D"mid:6BD824DC-9003-4D17-9008-1FFF11B7D4E8@stanford.edu">
      <div dir=3D"auto" style=3D"overflow-wrap: break-word;
        -webkit-nbsp-mode: space; line-break: after-white-space;">
        <div dir=3D"auto" style=3D"overflow-wrap: break-word;
          -webkit-nbsp-mode: space; line-break: after-white-space;">
          <div>When running our code on the X310 with UHD 4.5 I get
            warnings for both radio 0 and radio 1 (we transmit on one
            UBX160 and receive on the other):=C2=A0<span style=3D"font-fa=
mily:
              Menlo; font-size: 11px; font-variant-ligatures:
              no-common-ligatures; color: rgb(159, 160, 28);"><b>[WARNING=
]
                [0/Radio#0] </b></span><span style=3D"font-family: Menlo;
              font-size: 11px; font-variant-ligatures:
              no-common-ligatures;">Attempting to set tick rate to 0.
              Skipping.=C2=A0</span></div>
        </div>
      </div>
    </blockquote>
    The ability to emit that warning was added in UHD 4.0.0.0; I think
    it's quite normal to see this during initialization.<br>
    <blockquote type=3D"cite"
      cite=3D"mid:6BD824DC-9003-4D17-9008-1FFF11B7D4E8@stanford.edu">
      <div dir=3D"auto" style=3D"overflow-wrap: break-word;
        -webkit-nbsp-mode: space; line-break: after-white-space;">
        <div dir=3D"auto" style=3D"overflow-wrap: break-word;
          -webkit-nbsp-mode: space; line-break: after-white-space;">
          <div>The code uses timed commands to transmit and receive
            samples from a frequency-swept pulse at a consistent
            interval (pulse repetition frequency). Our application
            requires a high PRF and we can tolerate some late command
            errors, but need to log them for post-processing. </div>
        </div>
      </div>
    </blockquote>
    Sounds good to me.<br>
    <blockquote type=3D"cite"
      cite=3D"mid:6BD824DC-9003-4D17-9008-1FFF11B7D4E8@stanford.edu">
      <div dir=3D"auto" style=3D"overflow-wrap: break-word;
        -webkit-nbsp-mode: space; line-break: after-white-space;">
        <div dir=3D"auto" style=3D"overflow-wrap: break-word;
          -webkit-nbsp-mode: space; line-break: after-white-space;">
          <div>Using UHD 4.5, the behavior is not as expected in that
            something seems to be hanging. At some point during the
            process=E2=80=94I think once we first hit a late command erro=
r=E2=80=94the
            timing becomes very off from what it should be, and
            eventually, samples stop being transmitted or received and
            the application just hangs. Sometimes when killing the
            application, I get this warning:=C2=A0<span style=3D"font-fam=
ily:
              Menlo; font-size: 11px; font-variant-ligatures:
              no-common-ligatures; color: rgb(159, 160, 28);"><b>[WARNING=
]
                [RFNOC::GRAPH::DETAIL]
              </b></span><span style=3D"font-family: Menlo; font-size:
              11px; font-variant-ligatures: no-common-ligatures;">Cannot
              forward action tx_event from 0/Radio#0:INPUT_EDGE:0, no
              neighbour found!=C2=A0</span>These warnings do not happen w=
hen
            running the application with UHD 3.15. <br>
          </div>
        </div>
      </div>
    </blockquote>
    I think this is just the fact that in UHD 4, RFNoC is much tighter
    in integration with the host-side UHD. (The USRP's FPGA conains a
    flowgraph, conceptually not too different from a flowgraph as in GNU
    Radio or Simulink, to handle the samples. Now, at host-side
    application teardown, we need to tell the components of that graph
    to shut down, and disengage. This might be a minor misunderstanding
    about what is still there during shutdown.)<br>
    <blockquote type=3D"cite"
      cite=3D"mid:6BD824DC-9003-4D17-9008-1FFF11B7D4E8@stanford.edu">
      <div dir=3D"auto" style=3D"overflow-wrap: break-word;
        -webkit-nbsp-mode: space; line-break: after-white-space;">
        <div dir=3D"auto" style=3D"overflow-wrap: break-word;
          -webkit-nbsp-mode: space; line-break: after-white-space;">
          <div><span style=3D"font-family: Menlo; font-size: 11px;
              font-variant-ligatures: no-common-ligatures;"><br>
            </span></div>
          <div>I have tried running the benchmark_rate example with the
            same host computer and X310 running UHD 3.15 and UHD 4.5.
            With UHD 4.5 and high sample rates, I get an error:=C2=A0<spa=
n style=3D"color: rgb(232, 145, 45); font-family: Monaco, Menlo, Consolas=
, &quot;Courier New&quot;, monospace; orphans: 2; white-space: pre-wrap; =
widows: 2; background-color: rgba(232, 232, 232, 0.04);">uhd::op_timeout:
 RfnocError: OpTimeout: Control operation timed out waiting for ACK</span=
>,
            which stops the test before it begins running. Lower sample
            rates in UHD 4.5 run, but produce more errors (including
            sequence errors) than the same set up running UHD 3.15. <br>
          </div>
        </div>
      </div>
    </blockquote>
    Great work! Just to get a feeling: at which rates does this happen
    now, at which it did work on 3.15?<br>
    <blockquote type=3D"cite"
      cite=3D"mid:6BD824DC-9003-4D17-9008-1FFF11B7D4E8@stanford.edu">
      <div dir=3D"auto" style=3D"overflow-wrap: break-word;
        -webkit-nbsp-mode: space; line-break: after-white-space;">
        <div dir=3D"auto" style=3D"overflow-wrap: break-word;
          -webkit-nbsp-mode: space; line-break: after-white-space;">
          <div><br>
          </div>
          <div>I have tried refreshing the FPGA image for UHD 4.5 with
            no change in behavior. The behavior is replicable using
            multiple host computers (Mac and Ubuntu). If anyone has
            suggestions on debugging steps, or potential reasons why UHD
            4.5 would seem laggy compared to UHD 3.15 (despite running
            well with UHD 4.x on the B205mini), I would greatly
            appreciate them. I suspect it may have something to do with
            the command queue and how it evolves after getting behind. <b=
r>
          </div>
        </div>
      </div>
    </blockquote>
    <p>Yeah, that would be a suspicion I share =E2=80=93 but here's where=
 I'll
      have to admit that I haven't followed the changes to the radio
      ctrl changes lately, and flow control under UHD 4 is indeed a bit
      different than under 3.15.</p>
    <p>Best,<br>
      Marcus M<br>
    </p>
  </body>
</html>

--------------0iRyXr6XCCSqzTmMQHaSNoX4--

--===============5189244089852627275==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5189244089852627275==--
