Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E881D70FFCF
	for <lists+usrp-users@lfdr.de>; Wed, 24 May 2023 23:13:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A98AE384924
	for <lists+usrp-users@lfdr.de>; Wed, 24 May 2023 17:13:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684962814; bh=P3yil24LJVF+fOfsfGQlNhzEtIx+VSlhNkxTtb3pYbs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=JWUd6EuxdENX+B26ustjXuXTTlMf0C1VavGnmPPukeD6Sz3aCNQ4fZoRoyGL2hqut
	 /cuk2ABGUIePryya6OIxMA++zC2QbZc/+9XwtzI67BbslqARBhogdgIbB/6VUxUxux
	 dcTZN1w1HPM0Xgc1eOYnBOgupSf2YjP8eZvOG9Xx/hfwOb4f4xU9s1wu7ZeW+9GzQE
	 VX4oTvqiDdjvpJQ7rK7ne+WfX4h8C6MuCgQ+2SAkSLx2DP9R3eoR8QL4u0F+6nnBLR
	 6YVRXBE0SPB2V7+IG4u3AXO9MGMcGgONAdq/RexMDggDfIi422pVOrg/AC8dp7yBps
	 2p0fzJfTDI2lA==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id C3DA3384908
	for <usrp-users@lists.ettus.com>; Wed, 24 May 2023 17:12:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YBGun/Ob";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-75b1975ea18so14866285a.3
        for <usrp-users@lists.ettus.com>; Wed, 24 May 2023 14:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684962756; x=1687554756;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NMx217s3SApNfnXvXa0kHgJYNmUwpFa6HXoDMhGHRhA=;
        b=YBGun/ObZZgG4oLGOfKuKACK14eiSlAmNkfdjdRd5Cy7yaAJRl3ol6Jf/v8PXO0axm
         cg0vt4mcLcLAdyWJOLK69AuVZr8RTw85lT0U4H1iXvWSGpd2tUK4pO1Bo5x4qOg/7Fr/
         k2TjemDcVmHyLUThngKMhl+kasfWaLDB/PnBBoLikUaULVsSjd3l0worEGUM6NIgi9fK
         GQiCvsaIMEkRO9iQMulC6cB8jiqej8BcEmRNtr40I85ef90OJh6mciw0Es1SPBn/zrxx
         RJiEqmqYPBFl8K0YVcLuI4BdGH/0JmtirDyrEt/F+oAm5Ng9DOISNqRgxh06GyenaUcH
         ayjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684962756; x=1687554756;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NMx217s3SApNfnXvXa0kHgJYNmUwpFa6HXoDMhGHRhA=;
        b=A7ikih4eUum4wqghCy2fswBJDNy/fQHRV9U0YlbecAQGUqPlcH3kqpUHyIwpbN0XW+
         W5NFN2UpzwBhZf/mYzdp+WUD95+2gAMn8lQShVAVb6HXg8drM0g0B8kIDGfmVH2F6fBc
         ui2frkoEl/eYRKQdakyPaG3O1BGzUNk+VDflTjEaFB1UHCNtFP/9qiDHype6OWi9DaAA
         7Ka31hEmkAIJI3bhf/K9mufYp3rRHGWufFDCQok3scWZu+bfSbbW7in+jvOcp6WIJHnN
         PKP+29hSQdA4sy7hbc3F809V01QpVG+ckTiqtHWmtr/sLyVJTGJK9lBOIxrTULeBGaZX
         nWNA==
X-Gm-Message-State: AC+VfDxtfX07XPc/39mX/e9VvsSoZiOOdk1j+JHdxyaZ+JlGqh5o7Whs
	p63iTyqs/X0hZ1ynrFoeFS1GNokFPW9bSQ==
X-Google-Smtp-Source: ACHHUZ4EvR0yNdEW2s6Klq6WJYNJfwEkrmImeGro/Tio7WiTdne8agj808e/yLMdeVba2d05zHm8/Q==
X-Received: by 2002:a37:aa88:0:b0:75b:23a0:e7dc with SMTP id t130-20020a37aa88000000b0075b23a0e7dcmr8702754qke.61.1684962755936;
        Wed, 24 May 2023 14:12:35 -0700 (PDT)
Received: from [192.168.2.133] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id f28-20020a05620a12fc00b0075c985e387fsm180075qkl.20.2023.05.24.14.12.35
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 May 2023 14:12:35 -0700 (PDT)
Message-ID: <c157a530-5c52-0fd4-79a4-0c65810ee0f0@gmail.com>
Date: Wed, 24 May 2023 17:12:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.com>
Message-ID-Hash: A3TDX55P7FTHBOMP2WCZIDCXZZLXQG7Y
X-Message-ID-Hash: A3TDX55P7FTHBOMP2WCZIDCXZZLXQG7Y
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A3TDX55P7FTHBOMP2WCZIDCXZZLXQG7Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3327479535236913658=="

This is a multi-part message in MIME format.
--===============3327479535236913658==
Content-Type: multipart/alternative;
 boundary="------------O6vIZh4ccmmtwsV3fPihDf7T"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------O6vIZh4ccmmtwsV3fPihDf7T
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 24/05/2023 16:22, mena@chaosinc.com wrote:
>
> Thanks. Two follow up questions:
>
> 1.
>
>     For a given sample rate, is there a way to deterministically
>     calculate the group delay?
>
Look at the filter code in the version of the FPGA image that you're=20
using, determine which filter bits and
 =C2=A0 pieces are "in circuit" when you select your sample-rate, and=20
calculate the group delay from that.

 =C2=A0 Many folks who have run into the same problem have used a "measur=
e it=20
in the lab" approach, and done
 =C2=A0 that for new releases of the FPGA code--the R&D team does=20
occasionally make changes to the filter
 =C2=A0 parameters and "doctrine" in order to optimize for certain types =
of=20
applications.=C2=A0 This may well
 =C2=A0 de-optimize for others.=C2=A0 SDRs are general-purpose devices, w=
hich=20
means that there will be cases where they
 =C2=A0 aren't "out of the factory" optimized for any *particular* applic=
ation.

The approach some have take is to pad at one end or the other (or both)=20
to account for these delays, which comprise
 =C2=A0 a deterministic-but-version-dependent component, and an analog=20
component that is less deterministic, but at much
 =C2=A0 smaller times scales.


> 1.
>
>     Why do I not see the same delay at the back end of the
>     transmission (i.e. after the GPIO goes low)?
>
My suspicion is that part of what you're seeing is an analog switching=20
effect, and things like turn-on/turn-off
 =C2=A0 times are not perfectly symmetric.

This issue (lack of tight synchronization between ATR signals and actual=20
waveforms appearing at the antenna) has been
 =C2=A0 an issue in digital comms since I got involved in the 1980s, albe=
it,=20
in the 1980s, the time-scales were much larger.
 =C2=A0 You simply had to account for these effects for every new radio y=
our=20
application encountered.=C2=A0=C2=A0 In the DSP age, the
 =C2=A0 effects are at much smaller time-scales, but so are the data rate=
s.


>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------O6vIZh4ccmmtwsV3fPihDf7T
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 24/05/2023 16:22, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:mena@chaosinc.com">mena@chaosinc.com<=
/a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Thanks. Two follow up questions:</p>
      <ol style=3D"">
        <li>
          <p>For a given sample rate, is there a way to
            deterministically calculate the group delay?</p>
        </li>
      </ol>
    </blockquote>
    Look at the filter code in the version of the FPGA image that you're
    using, determine which filter bits and<br>
    =C2=A0 pieces are "in circuit" when you select your sample-rate, and
    calculate the group delay from that.<br>
    <br>
    =C2=A0 Many folks who have run into the same problem have used a "mea=
sure
    it in the lab" approach, and done<br>
    =C2=A0 that for new releases of the FPGA code--the R&amp;D team does
    occasionally make changes to the filter<br>
    =C2=A0 parameters and "doctrine" in order to optimize for certain typ=
es
    of applications.=C2=A0 This may well<br>
    =C2=A0 de-optimize for others.=C2=A0 SDRs are general-purpose devices=
, which
    means that there will be cases where they<br>
    =C2=A0 aren't "out of the factory" optimized for any *particular*
    application.<br>
    <br>
    The approach some have take is to pad at one end or the other (or
    both) to account for these delays, which comprise<br>
    =C2=A0 a deterministic-but-version-dependent component, and an analog
    component that is less deterministic, but at much<br>
    =C2=A0 smaller times scales.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.=
com">
      <ol style=3D"">
        <li>
          <p>Why do I not see the same delay at the back end of the
            transmission (i.e. after the GPIO goes low)?</p>
        </li>
      </ol>
    </blockquote>
    My suspicion is that part of what you're seeing is an analog
    switching effect, and things like turn-on/turn-off<br>
    =C2=A0 times are not perfectly symmetric.<br>
    <br>
    This issue (lack of tight synchronization between ATR signals and
    actual waveforms appearing at the antenna) has been<br>
    =C2=A0 an issue in digital comms since I got involved in the 1980s,
    albeit, in the 1980s, the time-scales were much larger.<br>
    =C2=A0 You simply had to account for these effects for every new radi=
o
    your application encountered.=C2=A0=C2=A0 In the DSP age, the<br>
    =C2=A0 effects are at much smaller time-scales, but so are the data
    rates.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.=
com">
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

--------------O6vIZh4ccmmtwsV3fPihDf7T--

--===============3327479535236913658==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3327479535236913658==--
