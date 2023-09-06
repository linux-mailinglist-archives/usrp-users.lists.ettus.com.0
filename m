Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A69D1793DB2
	for <lists+usrp-users@lfdr.de>; Wed,  6 Sep 2023 15:31:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3BF3D384B4B
	for <lists+usrp-users@lfdr.de>; Wed,  6 Sep 2023 09:31:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694007091; bh=e5X1tj7lD7XAhxmOPMo20tnwV2B4X1aL9G2mzf3AbDY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=HGEQUc1RB6s+yghqm+2OwYV+KnykRLAKOJV0ekQXGsE5MILP2pEfn0VJOYMmziFaq
	 oslRe8XnM3bFJoVTcFvFvtzWIH/TflijJetzO4MDnFERMZFrQHCsml86SmPvJvB7cO
	 eUdNnp3OzzGCCHw3U7Wxcy1+/71UATaYMRQJAjClpnht+xAZFwaciceNXD+lbDYHFM
	 CCbI4UBCH+Jrz8KnZTiFE9THzTYousktA+bGkKP6WK9+zswTjK+MqKeSCX7b9Jis2x
	 uYP8uWu1196VpO2apNiHiDUl5O2SINUqGOGuBWYd8z9JGv5X1YBxVp33XyKbF62lo4
	 SQ9qC53cJ7uhg==
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 51D4438479A
	for <usrp-users@lists.ettus.com>; Wed,  6 Sep 2023 09:30:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="VUyr6W9u";
	dkim-atps=neutral
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1c1f7f7151fso20767765ad.1
        for <usrp-users@lists.ettus.com>; Wed, 06 Sep 2023 06:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1694007030; x=1694611830; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j+FeZqoe6XlPNOng2exP2M87vV4gvWWypEcQ8XTwcwE=;
        b=VUyr6W9u8RwZedE40mpHhWzY6OYfTUWqIVce0NAZFqa9a/HsGLRVBwkXk2YBQhTKAg
         vcFCb988ClX/E+Hrl5Caz93JiSlSS4yMS0UweefUFrkpyQXsOIzII7YELktrHXmBt1AD
         nwc4KUO1cerqfN1+Tb0NrV/CuMeL2ZfnSslVk82dz2ZBKw5lsaddKvP365uxv3FdEEOL
         NybYzMScu/7hPYqCp9ej6JakjLNd1lGXsEAP39gdH+ZEymv/ReND2fsO6bJ6zkAnEbbb
         oJt+dVmNVDHXv3GlbDeY1fhPGEoR/ExlAifhvX3TQuAZZlWXQfnjrXWOCApsSppsNQA6
         ue1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694007030; x=1694611830;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=j+FeZqoe6XlPNOng2exP2M87vV4gvWWypEcQ8XTwcwE=;
        b=YGZp9dM6JaSXNaMl6kEYBZVbzL1qI1/1yPiiJSdvxRqqB5AHfmZEXUbTkCKl2z4jb5
         OMYqzCbsWtjA1c2p6glBoa/ZcPOrIAUOc6zRijmplCVdP8jGG6R0k9Wiv+BeQXlT8iVx
         5uVI0Wo+WQc4+TlSBH7jjev9cHDH0dfkd45EuXGAIvHhT1YEGSrHiuSc4uQhML/fh5W5
         0hcZhrpMIZf/C2AIlLIOW4ybkubNKcS316cxgfERSAOl7czGBiyGNp68ErGdpFm7D8I9
         nCpvUGyo9pKFVwdTpA9RJTVw61TDUy0Qy/bhwsDkW9ru7J21mdU0zhEXm2ZW7nPEGOYJ
         3huA==
X-Gm-Message-State: AOJu0YwVt43XADwcHYvqemLoI4jqJdjXV+MTf1zKOJZrd8XIUNfxeGq1
	97XGJ650vctaAeONsJgJl8pWfHZr32Q3rP6PpZZWdg==
X-Google-Smtp-Source: AGHT+IFkRhP1kOx2m88uaUkOrLY82CIFJZUAC+pgbk5hzKR2NipbfoGgjr2KQNyISyJB4vYJdiGBnQ==
X-Received: by 2002:a17:90a:f30a:b0:268:1d18:a19f with SMTP id ca10-20020a17090af30a00b002681d18a19fmr13207654pjb.25.1694007029702;
        Wed, 06 Sep 2023 06:30:29 -0700 (PDT)
Received: from [172.20.0.215] ([207.108.138.254])
        by smtp.gmail.com with ESMTPSA id 14-20020a17090a190e00b00262ca945cecsm13571265pjg.54.2023.09.06.06.30.28
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Sep 2023 06:30:28 -0700 (PDT)
Message-ID: <0e80b28f-d242-bc52-d950-51309d8f8602@ettus.com>
Date: Wed, 6 Sep 2023 06:30:27 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: usrp-users@lists.ettus.com
References: <CADDf8danBBvZkGBxyWGu+8Gk=OVugkVc5=erFR3b4ZJ4regZwA@mail.gmail.com>
 <3291f4c6-0b70-71d8-1986-fc0822d33bc5@gmail.com>
 <CADDf8dawZd_mcd0f5=8PUG6QLd+RDQeVthavE0Ltmf_bu0GDDg@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CADDf8dawZd_mcd0f5=8PUG6QLd+RDQeVthavE0Ltmf_bu0GDDg@mail.gmail.com>
Message-ID-Hash: 75C7FCF7JLGMIGXAXTA7JPEQKQKSDFOG
X-Message-ID-Hash: 75C7FCF7JLGMIGXAXTA7JPEQKQKSDFOG
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: phase maintenance in a USRP loop
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/75C7FCF7JLGMIGXAXTA7JPEQKQKSDFOG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2872950752783939836=="

This is a multi-part message in MIME format.
--===============2872950752783939836==
Content-Type: multipart/alternative;
 boundary="------------7kq3NiQYXQYZOLrV0scGeCly"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7kq3NiQYXQYZOLrV0scGeCly
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

How so? As Marcus said, two radios with independent oscillators will=20
phase-drift against each other during operation.

On 8/15/23 10:23, Ali G. Dezfuli wrote:
> Thanks Marcus,
> They work continuously up to not having any dample drift caused by=20
> sampling clock offset
>
> On Tuesday, August 15, 2023, Marcus D. Leech <patchvonbraun@gmail.com>=20
> wrote:
>
>     On 15/08/2023 05:43, Ali G. Dezfuli wrote:
>
>         Hi all,
>
>         I have two transceivers A and B each one is connected by
>         cables to a USRP B200mini (TX/RX for send and RX2 for receive)
>
>         Using GNU Radio, for each iteration, transceiver A starts to
>         send a burst of RC-filtered, BPSK-modulated PN sequence.
>         Side B waits for the burst and as soon as it gets that (by
>         correlation), detects the
>         phase ramp (because of the carrier frequency offset (CFO)) on
>         the PN symbols
>         and makes a new burst with the same phase ramp, and sends its
>         burst back to side A.
>         Then I observe the phase of the received symbols at A.
>
>         As far as there is no sample loss/insertion, I suppose the
>         phase continuity is held and
>         should receive a constant phase on the received symbols at A
>         whose value depends
>         on the delay between A and B which is fixed.
>
>         I observe these issues:
>         1- in some iterations, the received phase at A is not fixed.
>         2- in some iterations, the received phase at A is fixed but
>         does not equal other iterations.
>
>         Would be grateful if anyone could help me with this.
>         Thanks!
>
>         _______________________________________________
>         USRP-users mailing list -- usrp-users@lists.ettus.com
>         To unsubscribe send an email to
>         usrp-users-leave@lists.ettus.com
>         <mailto:usrp-users-leave@lists.ettus.com>
>
>     You haven't noted whether the two USRPs are syncrhonized or not.
>
>     Two radios that are not synchronized to a common clock will NOT
>     have mutual phase-coherence over any
>     =C2=A0 non-trivial interval.
>
>     Are you running RX continuously, or starting/stopping streams?
>
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------7kq3NiQYXQYZOLrV0scGeCly
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>How so? As Marcus said, two radios with independent oscillators
      will phase-drift against each other during operation.<br>
    </p>
    <div class=3D"moz-cite-prefix">On 8/15/23 10:23, Ali G. Dezfuli wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CADDf8dawZd_mcd0f5=3D8PUG6QLd+RDQeVthavE0Ltmf_bu0GDDg@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      Thanks Marcus,
      <div>They work continuously up to not having any dample drift
        caused by sampling clock offset<br>
        <br>
        On Tuesday, August 15, 2023, Marcus D. Leech &lt;<a
          href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"true=
"
          class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&gt;
        wrote:<br>
        <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">On
          15/08/2023 05:43, Ali G. Dezfuli wrote:<br>
          <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            Hi all,<br>
            <br>
            I have two transceivers A and B each one is connected by
            cables to a USRP B200mini (TX/RX for send and RX2 for
            receive)<br>
            <br>
            Using GNU Radio, for each iteration, transceiver A starts to
            send a burst of RC-filtered, BPSK-modulated PN sequence.<br>
            Side B waits for the burst and as soon as it gets that (by
            correlation), detects the<br>
            phase ramp (because of the carrier frequency offset (CFO))
            on the PN symbols<br>
            and makes a new burst with the same phase ramp, and sends
            its burst back to side A.<br>
            Then I observe the phase of the received symbols at A.<br>
            <br>
            As far as there is no sample loss/insertion, I suppose the
            phase continuity is held and<br>
            should receive a constant phase on the received symbols at A
            whose value depends<br>
            on the delay between A and B which is fixed.<br>
            <br>
            I observe these issues:<br>
            1- in some iterations, the received phase at A is not fixed.<=
br>
            2- in some iterations, the received phase at A is fixed but
            does not equal other iterations.<br>
            <br>
            Would be grateful if anyone could help me with this.<br>
            Thanks!<br>
            <br>
            ______________________________<wbr>_________________<br>
            USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">us=
rp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leave=
@lists.ettus.c<wbr>om</a><br>
          </blockquote>
          You haven't noted whether the two USRPs are syncrhonized or
          not.<br>
          <br>
          Two radios that are not synchronized to a common clock will
          NOT have mutual phase-coherence over any<br>
          =C2=A0 non-trivial interval.<br>
          <br>
          Are you running RX continuously, or starting/stopping streams?<=
br>
          <br>
          <br>
          <br>
          ______________________________<wbr>_________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leave@l=
ists.ettus.c<wbr>om</a><br>
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
  </body>
</html>

--------------7kq3NiQYXQYZOLrV0scGeCly--

--===============2872950752783939836==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2872950752783939836==--
