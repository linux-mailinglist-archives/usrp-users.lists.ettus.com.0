Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC592964A67
	for <lists+usrp-users@lfdr.de>; Thu, 29 Aug 2024 17:44:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 28B92384E6C
	for <lists+usrp-users@lfdr.de>; Thu, 29 Aug 2024 11:44:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724946282; bh=5UFgA4Mii6kVWaXbmJkVACCyNFqpFH4Bi5Fjh2TDK+I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=SKStMa6z1ahU2+4Az9P+mJhOG4baAi6jpqtG9XRWT47xRNEz/jRK2z9AgxKSdec9g
	 UQv2cFeTvn0wqCIkKxfhrx6Dt0fjWMhr7OUfMGn0DbnGpknTXdcgCYJ0tV2TJSEFT5
	 gr79PVvPUh2BJRnlTLTyMf+xCWg72fboxQo1Zo8lhSJVtLfxvmIDNQNlqJn9piWm5x
	 /00I6kLYKAg3RgEdtNjVyQ5R/hEznyBFoyPsAH1OsvTd2ws2tCQWA+4gardWSqWwps
	 b9mYMOFyToLKkbmhZcBm42G1/9mVJBQ77pPPDxROdWtxdYcNp3MkDAPpRcc9G3PgP5
	 HbuWE1VJYyQ2Q==
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id A0B40381206
	for <usrp-users@lists.ettus.com>; Thu, 29 Aug 2024 11:43:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gK3ZERiD";
	dkim-atps=neutral
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-44ff9281e93so3927611cf.2
        for <usrp-users@lists.ettus.com>; Thu, 29 Aug 2024 08:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724946236; x=1725551036; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+7YyOueRPHn6tjVuSqNXeKuGBrvlkrX8isLW6HRzUKQ=;
        b=gK3ZERiDzJHCcwAzA3DjqVIbL8eqdymjvgA9+b/nTRFDVApqzU2PJboH28QmdjQwBr
         0Qymuy1YaxeVbBwPk6C909WaILh21l2spFlxeCGLqCJ8G02mWOMvE5fkZDgzWfVFKNxc
         G74eSECqJYtM35p6dnaZlXbff6mAk3Dz1Af/amEZylfJE0LlbgPq6V8AOXyGG0PP7fWt
         pLM474EH0T6zbmXalGIKHZh8C6niFdlJiJpk9V2wr9x3zgBAkt5uwjyoCimbb1JtA/6J
         6e+QrivhS1xppyD6kqA2vF0Hjrpq+i11CmY82wd2KVmqvlL239DN5wuy1rJymnaQnRf5
         YF7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724946236; x=1725551036;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+7YyOueRPHn6tjVuSqNXeKuGBrvlkrX8isLW6HRzUKQ=;
        b=MNA/eGpnAuu7JQTMte5WbvNHZlAG3siLXiF0oaJfernhjGCpXlLb1lBPTN7haVe3/i
         IPpQUHPdXW4eOk4dwmvjaOYzIf9T7DIOuVvdmVItILG7aBtRBWkFq0daN8ZDhNqDNlsc
         +ssmDhVvEjohoImke0/+8Esyf2odxa4hjjtnClVBvY4PgvhmNeyUrtEgpEHP/+Ax1usX
         eVYUOgFPlA0o49or0Rxvs2atooIow3kifKaWPuGehP+29LZ6RmFa9YFGmIK45H9CBqhy
         dBz585R8NUWt7a5hxScfEz4F77gBtIsuD1Txu2dPshkhgI0OUzJLCiPFsGxsiCZgR9C2
         eYcQ==
X-Gm-Message-State: AOJu0Yxd8pcgH5LY07HymvmEwm/Y6KiyHJpgk73p7eO6SCEqjsqBSybf
	iqjw7y2hKzgypIjc3fp+qWcvxp/npe+3bZoirU23b6mwTjnb/kdwIfpiKQ==
X-Google-Smtp-Source: AGHT+IEO1Ycpo5EaQ+epPQtKAf76SeHrAZJAYkGjcQmwZW8umP7fRqq/lAMCNoAcidjUQZCLnFDIUA==
X-Received: by 2002:a05:622a:578f:b0:447:e61d:2895 with SMTP id d75a77b69052e-4567f592050mr33238531cf.20.1724946235711;
        Thu, 29 Aug 2024 08:43:55 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-45682d6970asm5787231cf.66.2024.08.29.08.43.55
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2024 08:43:55 -0700 (PDT)
Message-ID: <415710e9-b220-4c18-805a-778e1934180a@gmail.com>
Date: Thu, 29 Aug 2024 11:43:44 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <K8FSwvOlK2rfjZMpoii2QHXxx6ULW4oJXRydfwaQ@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <K8FSwvOlK2rfjZMpoii2QHXxx6ULW4oJXRydfwaQ@lists.ettus.com>
Message-ID-Hash: WHAADZ7TMPZSRQ6ZRA72TURYR4UBQ7YQ
X-Message-ID-Hash: WHAADZ7TMPZSRQ6ZRA72TURYR4UBQ7YQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why does the self-calibration utility not work?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WHAADZ7TMPZSRQ6ZRA72TURYR4UBQ7YQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2897893169132824068=="

This is a multi-part message in MIME format.
--===============2897893169132824068==
Content-Type: multipart/alternative;
 boundary="------------o6oPOqKucBYgPSq0Da910Jz3"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------o6oPOqKucBYgPSq0Da910Jz3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/08/2024 13:31, Hossein via USRP-users wrote:
>
> Usually, I generate signals by MATLAB and convert it to binary data.=20
> Then, I use =E2=80=9Crfnoc_replay_samples_from_file=E2=80=9D utility li=
ke the following:
>
> ./rfnoc_replay_samples_from_file --args=20
> =E2=80=98type=3Dx300,addr=3D192.168.20.2,second_addr=3D192.168.40.2,mas=
ter_clock_rate=3D200e6,ignore-cal-file=3D1=E2=80=99=20
> --freq 2.3e9 --file tx_singleTone.dat --rate 100e6 --ant =E2=80=98TX/RX=
=E2=80=99
>
> As to the OFDM signal, I upconvert the baseband signal to a low IF=20
> frequency by MATLAB, not with the UHD driver.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
OK, let's try something simple.

Use the tx_waveforms example to emit a single tone.

Then use the tx_samples_from_file (NOT the RFNOC version)

Are the results different?


--------------o6oPOqKucBYgPSq0Da910Jz3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/08/2024 13:31, Hossein via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:K8FSwvOlK2rfjZMpoii2QHXxx6ULW4oJXRydfwaQ@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Usually, I generate signals by MATLAB and convert it to binary
        data. Then, I use =E2=80=9Crfnoc_replay_samples_from_file=E2=80=9D=
 utility like
        the following:</p>
      <p>./rfnoc_replay_samples_from_file --args
=E2=80=98type=3Dx300,addr=3D192.168.20.2,second_addr=3D192.168.40.2,maste=
r_clock_rate=3D200e6,ignore-cal-file=3D1=E2=80=99
        --freq 2.3e9 --file tx_singleTone.dat --rate 100e6 --ant =E2=80=98=
TX/RX=E2=80=99</p>
      <p>As to the OFDM signal, I upconvert the baseband signal to a low
        IF frequency by MATLAB, not with the UHD driver.<img
          src=3D"/home/attar/Downloads/singleTone_ignore-cal-file.jpg"
          alt=3D"" title=3D"" draggable=3D"true" moz-do-not-send=3D"true"
          contenteditable=3D"false"><br>
      </p>
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
    OK, let's try something simple.<br>
    <br>
    Use the tx_waveforms example to emit a single tone.<br>
    <br>
    Then use the tx_samples_from_file (NOT the RFNOC version)<br>
    <br>
    Are the results different?<br>
    <br>
    <br>
  </body>
</html>

--------------o6oPOqKucBYgPSq0Da910Jz3--

--===============2897893169132824068==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2897893169132824068==--
