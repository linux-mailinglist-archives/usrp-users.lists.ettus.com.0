Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CAF6F4A1C
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 21:07:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A7F30384667
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 15:07:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683054426; bh=E2TNcgz95T3MSugAiiOyN69B41/GM7secuTbwlNM9ag=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=NpI6cIUUD14TZSCEMDyEpm5L9/oxlczCMMxjXp8E/20gxsmIxEUmtvcyHpdWqbaTW
	 P45ygCuQl1JAa4A2/+gGIlMmHx8nWGKA7ZJmyaguGhDmkrShi+hW0+jyNU4pB7l62c
	 2QPCP8maf2Aa2wnq46A1y4HwhfTmC+36SN+Dr9sC16evR4LmXtJr6hllLcnMlPA/l+
	 GYTBdQOHi9sflsyWKx1UQLBOub019WCwI3yYCRmhad2Q9IUalPO46Upbg3YqPsY+hl
	 sq+VQ6t3C+hUAAG/iwBFtlymKu2y0JQlGqPTyDxvbdhM6yuBLOpHMSNmCjwnwQMvMO
	 qXsY16I06l8HQ==
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 96D4138428A
	for <usrp-users@lists.ettus.com>; Tue,  2 May 2023 15:06:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Bvn+1YbV";
	dkim-atps=neutral
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-74da25049e0so330816485a.0
        for <usrp-users@lists.ettus.com>; Tue, 02 May 2023 12:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683054388; x=1685646388;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=leZKpcTsbboQyP6V4/Y+640ajpfghO1g0RNYn/dR4l0=;
        b=Bvn+1YbVpD0DGQKLTEpmm/yBFXfHpYFbmGpWO9f9E8PrFLcbDAxAgsE129nUiV8bAC
         osIq1Kl872UUUJt8uTpMPRUmJkRP6uO9FAG84N8W5BVl9+3p+XNlPmXrPGOMSe6L3mgV
         SumBU4ftykwBeThz4/pqU3oOR8P8GK4vOmGFUM+9iuCGYy1Hvs0bUWkz9rhL2A8mzk3V
         l+nTR+1Zi5D18rSMPlKAGg7l9WB8QvukVrxzfixYy2VuK0EwGGkKQbTdiI1mNfRygL2M
         EQKqC26qglzLl+IwSzFI3GjpaBtDpbhFliaXXx9NM7FSbIoUlgdg+2xhZtKbiBSar/IR
         K0Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683054388; x=1685646388;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=leZKpcTsbboQyP6V4/Y+640ajpfghO1g0RNYn/dR4l0=;
        b=GFbcyTJVosPOiT14n6s8CC52Tm//8ZetcqS9YE69ur5VDpIEajNfisQXr7uw9dL3tO
         S6/T6qjkH9/WD4TC1MHJqeuFl42C3XN0E6a0wYzZw/eMM2iIAONzx6Nw/gsPdh+Tnw/b
         tPl7iVGoqNvW4ZGaStED6F4Xj7ruP//3uJd3JEPElb6MpNVnX/FOxJheb1udnUZX3Cxp
         5aZJLNmi4yLBaNQclcX9a0e5tnTLyGWppAIRnHZnEhJqw2abIHWdTj2FM26KCCade/SD
         O3jk/hBFxjKeB4Jfyi3+T4+UiXzOcB8v4Tb9Ht8lovsW0hIR76Ro8U9fH9+qG3h0Rt7U
         eBnA==
X-Gm-Message-State: AC+VfDz6AS1raYVXwKJyiFVFcriXC613RCHZsZU5rSg6vcrfM5zsfb4l
	uuV1ba3KNu3ZZD4hEeaVbLbajv8ZjZA=
X-Google-Smtp-Source: ACHHUZ74gyuOPJ2V5DbFO4gb46JtbSxeWobaME669rTBdtkbSdNoIG0bDNTxVr4zX8vn0WmV9GTUQA==
X-Received: by 2002:a05:622a:489:b0:3f0:a108:863b with SMTP id p9-20020a05622a048900b003f0a108863bmr29706747qtx.43.1683054387688;
        Tue, 02 May 2023 12:06:27 -0700 (PDT)
Received: from [192.168.2.168] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id x27-20020ac8701b000000b003ef3e8f8823sm1604621qtm.89.2023.05.02.12.06.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 12:06:27 -0700 (PDT)
Message-ID: <4790c743-ed15-2991-3c1b-98b984fda0e0@gmail.com>
Date: Tue, 2 May 2023 15:06:26 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <2stHtyiK3DpoGfxBlzfkJuezZUBR4yFYndPs5yhHnk@lists.ettus.com>
 <CAEXYVK4Ts0dGUfgAs5Js-iozwK5EUS_gqa-KOXuM9SDORYTQ7w@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEXYVK4Ts0dGUfgAs5Js-iozwK5EUS_gqa-KOXuM9SDORYTQ7w@mail.gmail.com>
Message-ID-Hash: THRYMDFA2YGGRAMJQC67A753DCVMOELX
X-Message-ID-Hash: THRYMDFA2YGGRAMJQC67A753DCVMOELX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Tail of every transmit trimmed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/THRYMDFA2YGGRAMJQC67A753DCVMOELX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6282454884051626665=="

This is a multi-part message in MIME format.
--===============6282454884051626665==
Content-Type: multipart/alternative;
 boundary="------------nFdiz9jqQBJF38EZLCoIV0js"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------nFdiz9jqQBJF38EZLCoIV0js
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 02/05/2023 14:15, Brian Padalino wrote:
> On Tue, May 2, 2023 at 2:04=E2=80=AFPM <ri28856@mit.edu> wrote:
>
>         What is the sample rate of your transmitted samples? If it
>         isn't 200 Msps
>         for the X310, then you are using the DUC.
>
>     I use a couple different sample rates. The plots I showed earlier
>     were taken at 25 MSPs.
>
>
> Try interpolating on the host to 200 Msps and see how things go.
>
> Interpolating by 8x goes through the 3 halfband filters. Note the=20
> halfband filters have 0's in between=C2=A0each coefficient.
>
>         Not adding 0's to the end of a burst which you intend to be
>         interpolated is
>         problematic in general, since you won't be flushing the FIR
>         filters of
>         their current state.=C2=A0 Remember there is no automatic zero
>         stuffing to push
>         the last of the data through.
>
>     What=E2=80=99s the point of the start/end burst flags then? In theo=
ry UHD
>     should know the number of taps on the DUC/DDC for a given sample
>     rate and be able to push zeros for me. How do I know how many
>     zeroes I need to pad? I=E2=80=99ve apparently empirically determine=
d it,
>     but is there documentation somewhere?
>
>
> The source code is your best bet:
>
> https://github.com/EttusResearch/uhd/tree/master/fpga/usrp3
>
> The DUC can be seen here:
>
> https://github.com/EttusResearch/uhd/tree/master/fpga/usrp3/lib/rfnoc/b=
locks/rfnoc_block_duc
>
> Brian
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
I'll observe that "stuffing the TX tail" has been a thing in digital=20
comms over radio since I first got involved in the mid 1980s in
 =C2=A0 such things.=C2=A0 This shouldn't be a huge surprise to anyone.

On the UHD side, UHD has absolutely no idea what the properties of the=20
FPGA DUC chain are--they will vary not only from
 =C2=A0 device to device, but also version to version within the same dev=
ice=20
type.

On the FPGA side, it has a bit more insight into what's going on, but=20
the "TX_EOB" basically means "dont' expect any more
 =C2=A0 data from me until I start a new transmission".=C2=A0=C2=A0 Which=
 means the=20
FPGA code will do things like turn off bits and pieces of
 =C2=A0 the TX chain.=C2=A0 But there may be some samples "in flight" whe=
n that=20
happens.=C2=A0=C2=A0 It COULD keep track of all of this, but
 =C2=A0 doing so means more "stuff" in the FPGA which means less room for=
=20
user-added features or RFNoC blocks.=C2=A0 It is also the
 =C2=A0 case that the ideal "tail envelope" will be completely=20
application-specific, and the FPGA will have no knowledge of what
 =C2=A0 that "ideal tail envelope" would be.



--------------nFdiz9jqQBJF38EZLCoIV0js
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 02/05/2023 14:15, Brian Padalino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK4Ts0dGUfgAs5Js-iozwK5EUS_gqa-KOXuM9SDORYTQ7w@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">On Tue, May 2, 2023 at 2:04=E2=80=AFPM &lt;<a
            href=3D"mailto:ri28856@mit.edu" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">ri28856@mit.edu</a>&gt; wrote=
:<br>
        </div>
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <blockquote>
              <p>What is the sample rate of your transmitted samples?=C2=A0
                If it isn't 200 Msps <br>
                for the X310, then you are using the DUC.</p>
            </blockquote>
            <p>I use a couple different sample rates. The plots I showed
              earlier were taken at 25 MSPs.</p>
          </blockquote>
          <div><br>
          </div>
          <div>Try interpolating on the host to 200 Msps and see how
            things go.</div>
          <div><br>
          </div>
          <div>Interpolating by 8x goes through the 3 halfband filters.=C2=
=A0
            Note the halfband filters have 0's in between=C2=A0each
            coefficient.</div>
          <div>=C2=A0</div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <p> </p>
            <blockquote>
              <p>Not adding 0's to the end of a burst which you intend
                to be interpolated is <br>
                problematic in general, since you won't be flushing the
                FIR filters of <br>
                their current state.=C2=A0 Remember there is no automatic
                zero stuffing to push <br>
                the last of the data through.</p>
            </blockquote>
            <p>What=E2=80=99s the point of the start/end burst flags then=
? In
              theory UHD should know the number of taps on the DUC/DDC
              for a given sample rate and be able to push zeros for me.
              How do I know how many zeroes I need to pad? I=E2=80=99ve
              apparently empirically determined it, but is there
              documentation somewhere?</p>
          </blockquote>
          <div><br>
          </div>
          <div>The source code is your best bet:</div>
          <div><br>
          </div>
          <div>=C2=A0=C2=A0<a
              href=3D"https://github.com/EttusResearch/uhd/tree/master/fp=
ga/usrp3"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tps://github.com/EttusResearch/uhd/tree/master/fpga/usrp3</a></div>
          <div><br>
          </div>
          <div>The DUC can be seen here:</div>
          <div><br>
          </div>
          <div>=C2=A0=C2=A0<a
href=3D"https://github.com/EttusResearch/uhd/tree/master/fpga/usrp3/lib/r=
fnoc/blocks/rfnoc_block_duc"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tps://github.com/EttusResearch/uhd/tree/master/fpga/usrp3/lib/rfnoc/block=
s/rfnoc_block_duc</a></div>
          <div><br>
          </div>
          <div>Brian</div>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a></pre>
    </blockquote>
    I'll observe that "stuffing the TX tail" has been a thing in digital
    comms over radio since I first got involved in the mid 1980s in<br>
    =C2=A0 such things.=C2=A0 This shouldn't be a huge surprise to anyone=
.<br>
    <br>
    On the UHD side, UHD has absolutely no idea what the properties of
    the FPGA DUC chain are--they will vary not only from<br>
    =C2=A0 device to device, but also version to version within the same
    device type.<br>
    <br>
    On the FPGA side, it has a bit more insight into what's going on,
    but the "TX_EOB" basically means "dont' expect any more<br>
    =C2=A0 data from me until I start a new transmission".=C2=A0=C2=A0 Wh=
ich means the
    FPGA code will do things like turn off bits and pieces of<br>
    =C2=A0 the TX chain.=C2=A0 But there may be some samples "in flight" =
when that
    happens.=C2=A0=C2=A0 It COULD keep track of all of this, but<br>
    =C2=A0 doing so means more "stuff" in the FPGA which means less room =
for
    user-added features or RFNoC blocks.=C2=A0 It is also the<br>
    =C2=A0 case that the ideal "tail envelope" will be completely
    application-specific, and the FPGA will have no knowledge of what<br>
    =C2=A0 that "ideal tail envelope" would be.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK4Ts0dGUfgAs5Js-iozwK5EUS_gqa-KOXuM9SDORYTQ7w@mail.gmai=
l.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------nFdiz9jqQBJF38EZLCoIV0js--

--===============6282454884051626665==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6282454884051626665==--
