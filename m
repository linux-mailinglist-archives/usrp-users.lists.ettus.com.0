Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 655BE5B5EAD
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 18:57:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F08C38100D
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 12:57:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663001825; bh=SH73ZqoP9RVOaKEfDb/IMKRQq6PyZu1d8+ii6TUqkVg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=IYCiUFwOYDPsl+DajKbQ7zpgPAPTyQr/bagi+QJTYIdmz2g5Y9qu2FAoLqKkqs4m2
	 li0mUqzKFTJnfJuT87TgcrskfYx07sRv1sjvxqoKFpLnMR18vhcSdPPNQr6bcxmsKz
	 MoOS+xBTwyDewloly2JsxeXDIv52G1Zw6YIDBX3Uga0/04WajpPegp6iKP3CYDuZXs
	 qB5+mDQwXuJKHP1T5egFqVSR2RdonHfHWVgvmQ/Yf9nPz54R0b3R/+TRy2SByyp9Io
	 OWia1YKduwKY8dHiZkLVSTP+TuCxVnH3ZiP96WS11VmUgckc+caee/8uAu8P2i+UN/
	 7Ctgxvg6fzrnA==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 97957380F1F
	for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 12:55:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="COSP2E9b";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id g12so6276658qts.1
        for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 09:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date;
        bh=s63I7xw8TEoRMggpYboSf1poGdlF/8DsP8vxg/55UtM=;
        b=COSP2E9bE/OAuJDflWI+AhXZ9pieTasyqLPEzigAeBkWNXAxKtRKlx+jBgHWKTZTes
         JH6w1AOyJpFAhkgdkMWaSyfGVAX4C5xx2E6iUqAbpWg1sW10W+Mq5N1NC7sivayDHhVb
         fdX/YIhZ3Ho2ePouXUt0WTdXWdIKRO3webTELMXhMZ3xV5Uv4iOkUQQtIP/dIAKhTiGy
         ueAQASwTfNMILVGWHLZF111Zdce5EjC48vEhLCm9SfR4B+lQsm7IsQGm90TzNKaO9Qva
         V7i6O9waiIYbwKtUj7jxTgp34QWKLVlMKXYeLFazU2raUMG/q95S1i6JOFR2IyPYdb18
         28CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date;
        bh=s63I7xw8TEoRMggpYboSf1poGdlF/8DsP8vxg/55UtM=;
        b=toRMLdB8msTPvREODHtvLfxz/K+aFAEucjYRSC54/VBmCctuWq8Z+mmQFPtOiYUXvY
         ice2TGOokOme7E1djtbBuaUjdx9k6Ctd+7XOZGQuAeO8xthTc2BX1Jke1wfi6MItCMjr
         6wOISK1XXvHrstRn20yTuWtty23oc7yfk1u+VJFwSuI6RJ05tnAsQ3+kM81MoQAZuMwo
         JOQtRwgtTbB228QFwVeM0WG1p74QY4TBOfNH02uJFEb1NLDPlsHXEgJcK5627b8WP884
         ww5GHv7z//pujEQwKNrnGZPvRJ0TO14RegNri2z6b5eucyB19lplR9x5zNvv8YFkKJsK
         eOOw==
X-Gm-Message-State: ACgBeo28+AE1TzpZuXcIF2kC8/Ds5aeadE1aUjPDFwixmvUtuPrRRxo0
	18u4qDsaERvziECGmpO8VV6tnthGk5I=
X-Google-Smtp-Source: AA6agR45oVO0+WIjwEAcKoECnaVyY0Asq3gIKSPpUDpnvGn9fCsb/jxOTpr58lMUIrGp6zXchkYY6w==
X-Received: by 2002:ac8:5e0d:0:b0:35b:af5b:42df with SMTP id h13-20020ac85e0d000000b0035baf5b42dfmr7442403qtx.100.1663001713881;
        Mon, 12 Sep 2022 09:55:13 -0700 (PDT)
Received: from [192.168.2.171] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id fz16-20020a05622a5a9000b00342fc6a8e25sm6942255qtb.50.2022.09.12.09.55.13
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Sep 2022 09:55:13 -0700 (PDT)
Message-ID: <c2cdd76b-629a-93f2-dd98-3559fe4697b4@gmail.com>
Date: Mon, 12 Sep 2022 12:55:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <iRdQGyLbiiWMH75F0xjdt5iiWzK3U70FqLo85dDlA@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <iRdQGyLbiiWMH75F0xjdt5iiWzK3U70FqLo85dDlA@lists.ettus.com>
Message-ID-Hash: LF3A3EYHNN2K3PCRXQH7ZT3TD6AX7GFR
X-Message-ID-Hash: LF3A3EYHNN2K3PCRXQH7ZT3TD6AX7GFR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 sample rate change locking-up
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LF3A3EYHNN2K3PCRXQH7ZT3TD6AX7GFR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7949584384313854130=="

This is a multi-part message in MIME format.
--===============7949584384313854130==
Content-Type: multipart/alternative;
 boundary="------------GzRxQecSDXnSq06E8A9LCTfH"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------GzRxQecSDXnSq06E8A9LCTfH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-09-12 12:46, jason@gardettoengineering.com wrote:
>
> Marcus D. Leech wrote:
>
>     Sample-rate is an inherent property of a /stream/ as I recall,
>     rather than a /session/.=C2=A0 Are you creating a new stream =C2=A0=
 across
>     sample-rate changes, or applying the rate change to an existing
>     stream?
>
> That is an interesting comment. I am not stopping and starting a=20
> stream, just trying to change the rate while running (think how=20
> someone would handle a freq change).
>
> If I am following you correctly, your instinct is that I would have to=20
> stop a stream, make the change, and start the stream again, right? In=20
> which case I would take the hit of the multiple seconds it takes to=20
> start the radio back up, right?
>
Actually, never-mind.=C2=A0 I was thinking of something else.

For example, the simple "uhd_fft" Gnu Radio example let's you change=20
sample-rate on the fly, and it doesn't do anything special
 =C2=A0 to re-create the stream.




>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------GzRxQecSDXnSq06E8A9LCTfH
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-09-12 12:46,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:jason@gardetto=
engineering.com">jason@gardettoengineering.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:iRdQGyLbiiWMH75F0xjdt5iiWzK3U70FqLo85dDlA@lists.ettus.c=
om">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Marcus D. Leech wrote:</p>
      <blockquote>
        <p>Sample-rate is an inherent property of a <em>stream</em> as
          I recall, rather
          than a <em>session</em>.=C2=A0 Are you creating a new stream
          =C2=A0 across sample-rate changes, or applying the rate change =
to
          an
          existing stream?</p>
      </blockquote>
      <p>That is an interesting comment. I am not stopping and starting
        a stream, just trying to change the rate while running (think
        how someone would handle a freq change).</p>
      <p>If I am following you correctly, your instinct is that I would
        have to stop a stream, make the change, and start the stream
        again, right? In which case I would take the hit of the multiple
        seconds it takes to start the radio back up, right?</p>
    </blockquote>
    Actually, never-mind.=C2=A0 I was thinking of something else.<br>
    <br>
    For example, the simple "uhd_fft" Gnu Radio example let's you change
    sample-rate on the fly, and it doesn't do anything special<br>
    =C2=A0 to re-create the stream.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:iRdQGyLbiiWMH75F0xjdt5iiWzK3U70FqLo85dDlA@lists.ettus.c=
om">
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

--------------GzRxQecSDXnSq06E8A9LCTfH--

--===============7949584384313854130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7949584384313854130==--
