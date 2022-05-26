Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6464C53510E
	for <lists+usrp-users@lfdr.de>; Thu, 26 May 2022 16:55:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 57147384C43
	for <lists+usrp-users@lfdr.de>; Thu, 26 May 2022 10:55:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653576906; bh=rUEpDe7yovHHOPKjk2hWcmNP9jraWl/BWs63UR3DdaI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=QA9WnQGVqIvQf+xRR74tySGlZxMEFDUG+oS81uOKX+FrkesosOxcb4vuOP06GQOGT
	 2xT14wXphuBFjtr0b7FHnT/e7a4k9IfMCTJzZUgesZwHPUCSOrV0EpnecjVRBeIsj5
	 eYD/gBVOqaSK5b02f6btkpzL6hJgaREBSMfTs7se9IDvQpc4IVM+lYgQwhLQl1DvdW
	 4QSBawHXLyh5b5GUAciOzEcL8DpewNjQNN0QUx3LqaS6MAeL7setZgPIM1DaQG4Cr3
	 URUCFQlKEPcAXikUIjAlbb9TM5Y2mDfYSq2U3rcqtCMYr1E7WEhUtb7K2MFAepF8nW
	 dlfpzkGHGZY6A==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 40F57384610
	for <usrp-users@lists.ettus.com>; Thu, 26 May 2022 10:53:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BKvPN4Q4";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id p63so1785234qkf.0
        for <usrp-users@lists.ettus.com>; Thu, 26 May 2022 07:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=RLJ530VPUtWl6PgFvcpAdRfLPfk0TJvBvuOzk5uUqa4=;
        b=BKvPN4Q4oAOllq4/RQ7D4pif2bnZUKXoTucB7Du5c4tGD1u2hyYTovyljEx5h9LEQ+
         mRI0r9L+3F9RGOI/hL6taNcm1LfR/IL9ajsC2Ejyu9fx4xMe2Ho9eriNAuijKvwzNZgX
         yfEjvwgoFQ1xDevNQXxvweYMpPF1PKq2WQYFmKSq9AGIYZkZroGcecqt7AAklId/cD2j
         bKlG0+UNsAreh3/eHJ7uyvCYaVHSC/Bzn5mQMIBLNc7BAWUsvPVnhK7kQ2S/aNG1yW7T
         q8RcKxSO/fvcyYMGtoGA4DvmjIVwaZkR7QO4i+9T7roZRbl7Z4BpxO2ETVn/PnimJYMN
         elXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=RLJ530VPUtWl6PgFvcpAdRfLPfk0TJvBvuOzk5uUqa4=;
        b=rkDyYkWuuS+twjUj8sFY77SIwPQg+fWsMqQaPnZMy7TxBE3/PehfcqdOsrkYDaD+Sj
         O6+MN41C5fQOt0AQudYCx9nE32QLDgav8Sdf1/0z/MPaLyG52kME0RFCu4Od8E0rvzwL
         ncTleWSKNTtlKDSJihq/ekGC23qQKFx+Ppsyz1+3NFRkVybJ6dIib7dMJHA3oOq7+JiY
         LAGLZ5HBsHE2NCP1R+BOs7KCE9keWDBGXz7pds0jm/ytoxlkRojDGFjYSFLWUV6k4Ghq
         uIPMrLJ+cR8616DJZ74yBe6hKVpd3v06dQaH5reSOskM3K80OTKjGUOdl8UjhjXOqdIB
         oSOA==
X-Gm-Message-State: AOAM533UUubuPiXvtzKzeXHIyD/Vptcya7NzWCAsouZFzjKOCmL5nUKl
	/Dj4bD38QXBj3Z0lZg8iuOk2mnSETM4=
X-Google-Smtp-Source: ABdhPJzAANpXPNN9rM7KS3S3xH28T+TbY0voiVM4KJkmpagtZJpNIetP8GNENCQKthsoBiQhHHEhoQ==
X-Received: by 2002:a05:620a:f05:b0:67e:1a49:363a with SMTP id v5-20020a05620a0f0500b0067e1a49363amr24817811qkl.364.1653576830395;
        Thu, 26 May 2022 07:53:50 -0700 (PDT)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id v10-20020ac8728a000000b002f8f406338fsm1060428qto.42.2022.05.26.07.53.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 May 2022 07:53:49 -0700 (PDT)
Message-ID: <5436640c-3154-9dda-1572-6db34dcb3749@gmail.com>
Date: Thu, 26 May 2022 10:53:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <lrlDTDkE2cGyZDMRJrwkVF4KpHaPluLMUnA3u3qNqg@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <lrlDTDkE2cGyZDMRJrwkVF4KpHaPluLMUnA3u3qNqg@lists.ettus.com>
Message-ID-Hash: FRPPJQ7MCXS4IQAUBXQBEMWGJXRVVED6
X-Message-ID-Hash: FRPPJQ7MCXS4IQAUBXQBEMWGJXRVVED6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X300 DDC - Filter Taps
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FRPPJQ7MCXS4IQAUBXQBEMWGJXRVVED6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4599788523831592612=="

This is a multi-part message in MIME format.
--===============4599788523831592612==
Content-Type: multipart/alternative;
 boundary="------------gyY0XdB7RhS7aoKWv05F2ZRk"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------gyY0XdB7RhS7aoKWv05F2ZRk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-05-26 10:31, luca.vigna@argotecgroup.com wrote:
>
> Hi all!
>
>
> I am starting to look through some of the FPGA code of the USRP X300=20
> in order to understand which is the DDC chain configuration in the=20
> default image.
>
>
> I have understood that in the DDC chain there is 1 CIC filter + 3=20
> Halfband filters. Since I want to characterize the DDC chain I have=20
> the following questions:
>
> 1.
>
>     How are they used? I suppose that the halfband filters are used
>     based on the decimation factor we need (max. 1024)
>
> 2.
>
>     Which is the order of the CIC filter?
>
> 3.
>
>     How many taps each halfband filters have? Which are the taps?
>
>
> Thank you in advance,
>
> Luca
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Some of that is configured on the *HOST* side, in=20
host/lib/usrp/cores/rx_dsp_core_3000.cpp=C2=A0=C2=A0 In fact a lot of the=
 DSP=20
setup and configuration is
 =C2=A0 "orchestrated" on the host side, with the host setting registers =
on=20
the FPGA.=C2=A0 The FPGA doesn't really "know" how to configure the DDC c=
hain=20
itself--that
 =C2=A0 is determined by the host library.

The filter coefficients and order of the CIC filter is determined in the=20
FPGA code *somewhere*, but I'm not sure where.=C2=A0 It has literally bee=
n=20
nearly a decade since I
 =C2=A0 had all of that in my head.


--------------gyY0XdB7RhS7aoKWv05F2ZRk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-05-26 10:31,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:luca.vigna@arg=
otecgroup.com">luca.vigna@argotecgroup.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:lrlDTDkE2cGyZDMRJrwkVF4KpHaPluLMUnA3u3qNqg@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi all!</p>
      <p><br>
      </p>
      <p>I am starting to look through some of the FPGA code of the USRP
        X300 in order to understand which is the DDC chain configuration
        in the default image.</p>
      <p><br>
      </p>
      <p>I have understood that in the DDC chain there is 1 CIC filter +
        3 Halfband filters. Since I want to characterize the DDC chain I
        have the following questions:</p>
      <ol>
        <li>
          <p>How are they used? I suppose that the halfband filters are
            used based on the decimation factor we need (max. 1024)</p>
        </li>
        <li>
          <p>Which is the order of the CIC filter?</p>
        </li>
        <li>
          <p>How many taps each halfband filters have? Which are the
            taps?</p>
        </li>
      </ol>
      <p><br>
      </p>
      <p>Thank you in advance,</p>
      <p>Luca</p>
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
    Some of that is configured on the *HOST* side, in=C2=A0
    host/lib/usrp/cores/rx_dsp_core_3000.cpp=C2=A0=C2=A0 In fact a lot of=
 the DSP
    setup and configuration is<br>
    =C2=A0 "orchestrated" on the host side, with the host setting registe=
rs
    on the FPGA.=C2=A0 The FPGA doesn't really "know" how to configure th=
e
    DDC chain itself--that<br>
    =C2=A0 is determined by the host library.<br>
    <br>
    The filter coefficients and order of the CIC filter is determined in
    the FPGA code *somewhere*, but I'm not sure where.=C2=A0 It has liter=
ally
    been nearly a decade since I<br>
    =C2=A0 had all of that in my head.<br>
    <br>
    <br>
  </body>
</html>

--------------gyY0XdB7RhS7aoKWv05F2ZRk--

--===============4599788523831592612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4599788523831592612==--
