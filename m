Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC98830A9D
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jan 2024 17:12:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EED9C3810A7
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jan 2024 11:12:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705507934; bh=UYrh08rFs3rOkibApJnbGgfFT9+22qKe9YpmtwRKK28=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=eFSBujKYVaWfUnzHHg2fWof9HJBBN5AUmB8ZgkyF/5LEfvIR1gbgLSKhg3D5TXw3y
	 EX5UZoQlyNSmTDaTJoi48IS0hmVmNQnbTLtoqvBpW02uNaMhbsJkpl73iNiDMAfV0c
	 QrqkrBPlxYklurKaytwQHAaQcMYL5JSdDG0y+NNdkv7Fjkf4p1VnKl/eP7t8pNsNvr
	 44sBGVi5rZ9xUPnIGBIov4fMv4+dMTij/XD8hEQoYmQDWagM8EpmgVFjlkfWFZuU4a
	 8kxJRGeMjukd+OY8Ua1anst+ygH/76SAT2AyZmKpQpzuI1IGIfPUJ12nJYYpFDOppD
	 LTpe4N9IXpNng==
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 47CC3380EE5
	for <usrp-users@lists.ettus.com>; Wed, 17 Jan 2024 11:11:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JwvecDEp";
	dkim-atps=neutral
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7831806c527so1044758285a.3
        for <usrp-users@lists.ettus.com>; Wed, 17 Jan 2024 08:11:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705507899; x=1706112699; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nO4JixfcUOvPxFoWV/PYvLJg281JtlT5b1Vsif2ZZ34=;
        b=JwvecDEpMNjqVgZt0HL9EkiBWqpCS600Jc53D18/2CeWYRsVpUZH6M4h+js/t1HtHg
         wXWDkkUNrplqommmLbUrTDgrQDnu+gbUqVB2xNj76z0WgsdhoUqzoVUdADgywFg65zzb
         uiaSnr1NnSY5HQqNzCo6LaGaxi0WdehKLycrM0pwoKcQClYrluFR5m3yB6FG6ppCKwQc
         n9M5xa1zH4OSURuChZr2P+Q5c6Xg6FzvG4RuOTqhzbvREW1cb1PV92ZUKdjqL2b9LGD2
         8zutAAxEMgTZ8RUUhmS9IyHBBDohmCb6Ghz8trcAaaF+CFdnzW3zRSyIRz7xyWth+VPj
         hWPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705507899; x=1706112699;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nO4JixfcUOvPxFoWV/PYvLJg281JtlT5b1Vsif2ZZ34=;
        b=DjgDBud258FvCCR+rTErD4G00dham7FpfbplBL2uDeVkUznCpVezEXavPQEwRGaAwb
         7WPS0aeQDArjknZUlGPxCvPu81yks/Opqhx2+tKXNu7gBKSUUEpNCXga5maHcHFRdqzv
         ubiOnoCL31Af7b38UgmMhm/+Sh8mxSGnv290ZvGyRjtaIwe8Z+u6KKMN+XFCn7h12HCt
         W2vFC7BtbSWaPJMlKMKvz3AsJKbGwVdARvvxMu5BpzeNB0c5BgD77tWXYVp4FO0CfmiB
         ia0UWsZtqeZXO0YSlgWvehzFc7l5KXxwD+A08jEuoXuKZF5Wgn3wvXIcBhpgOX0lfMHc
         0SpQ==
X-Gm-Message-State: AOJu0YxkWCwkD+5ScaIxrBvli2zi+NetDW+UiIKMibQzzyhAHKlf+B/A
	cfX+bj91wrwSKAOTaxT0vk6XOZD53m0=
X-Google-Smtp-Source: AGHT+IEH6I/tUy7g+7aTTTWLIJsR15HI9XeUx4MbG4ludit3IKYpxnnOh2i7C1r9kB5CbzSnxWN8WA==
X-Received: by 2002:a05:620a:1a0e:b0:783:3891:f222 with SMTP id bk14-20020a05620a1a0e00b007833891f222mr11391692qkb.9.1705507899465;
        Wed, 17 Jan 2024 08:11:39 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id g7-20020a05620a218700b00783273e2de8sm4598789qka.121.2024.01.17.08.11.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jan 2024 08:11:39 -0800 (PST)
Message-ID: <18adfa5d-7099-433c-9c13-b4d23a089480@gmail.com>
Date: Wed, 17 Jan 2024 11:11:30 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <YZ0xkbmW8jjYE8RqhmwKCKO6Eqs1LtwMR9EEEwJXBY@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <YZ0xkbmW8jjYE8RqhmwKCKO6Eqs1LtwMR9EEEwJXBY@lists.ettus.com>
Message-ID-Hash: IAJEM65MGEVP4F54PDJ6LTE7UKKKQPVL
X-Message-ID-Hash: IAJEM65MGEVP4F54PDJ6LTE7UKKKQPVL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Synchronize UBX-40 v1 Vs WBX-v3 + simple GDB
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IAJEM65MGEVP4F54PDJ6LTE7UKKKQPVL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5352811381663491283=="

This is a multi-part message in MIME format.
--===============5352811381663491283==
Content-Type: multipart/alternative;
 boundary="------------Wq5hUtxLncdn0CDr7vpbt1Mv"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Wq5hUtxLncdn0CDr7vpbt1Mv
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 17/01/2024 04:57, je.amghar@gmail.com wrote:
>
> Hi,
> I am currently conducting frequency synchronization tests on two USRP=20
> X310 devices, each equipped with different daughterboards =E2=80=93 the=
 first=20
> with a UBX-40 v1 Dboard and the second with a WBX-v3 simple GDB=20
> Dboard. In my setup, I am using an R&S SMF 100A generator to produce a=20
> sine wave spanning a frequency range from 700MHz to 910MHz. To=20
> visualize the signals, I am utilizing GNU Radio with a QT GUI Time=20
> Sink block.
>
> However, I have encountered an interesting observation: the=20
> synchronization between the two devices seems to work effectively only=20
> at specific frequencies, with distinct step sizes. For instance:
>
>  *
>
>     For the WBX daughterboard, synchronization is successful at 704,
>     736, 768, 800, 832, 864, and 896 MHz, showing a consistent step of
>     32 MHz between frequencies.
>
>  *
>
>     On the other hand, with the UBX daughterboard, synchronization is
>     achieved at 704, 768, 832, and 896 MHz, but with a larger step
>     size of 64 MHz.
>
> I am puzzled by the disparities between the daughterboards and the=20
> origin of these step values (32 MHz and 64 MHz). Moreover, I have=20
> previously conducted similar tests using an NI2900 (B200), and it=20
> exhibited synchronization across the entire frequency range with a=20
> 1MHz step.
>
> I am seeking insights into the reasons behind these specific=20
> synchronization frequencies, the observed step sizes, and potential=20
> differences in the daughterboard characteristics or configuration=20
> parameters that might contribute to this behavior. Any guidance or=20
> suggestions to optimize the setup would be greatly appreciated.
>
> Thank you.
> Jea
>
I think we're going to need more information on what it is you mean by=20
"frequency synchronization", and exactly what you're
 =C2=A0 measuring, and what your test setup is.

Are you measuring phase-coherence between boards of a different=20
architecture?=C2=A0 What exactly are you measuring?

Are your X310 referenced to a common 10Mhz clock?


--------------Wq5hUtxLncdn0CDr7vpbt1Mv
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 17/01/2024 04:57,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:je.amghar@gmai=
l.com">je.amghar@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:YZ0xkbmW8jjYE8RqhmwKCKO6Eqs1LtwMR9EEEwJXBY@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi,<br>
        I am currently conducting frequency synchronization tests on two
        USRP X310 devices, each equipped with different daughterboards =E2=
=80=93
        the first with a UBX-40 v1 Dboard and the second with a WBX-v3
        simple GDB Dboard. In my setup, I am using an R&amp;S SMF 100A
        generator to produce a sine wave spanning a frequency range from
        700MHz to 910MHz. To visualize the signals, I am utilizing GNU
        Radio with a QT GUI Time Sink block.</p>
      <p>However, I have encountered an interesting observation: the
        synchronization between the two devices seems to work
        effectively only at specific frequencies, with distinct step
        sizes. For instance:</p>
      <ul>
        <li>
          <p>For the WBX daughterboard, synchronization is successful at
            704, 736, 768, 800, 832, 864, and 896 MHz, showing a
            consistent step of 32 MHz between frequencies.</p>
        </li>
        <li>
          <p>On the other hand, with the UBX daughterboard,
            synchronization is achieved at 704, 768, 832, and 896 MHz,
            but with a larger step size of 64 MHz.</p>
        </li>
      </ul>
      <p>I am puzzled by the disparities between the daughterboards and
        the origin of these step values (32 MHz and 64 MHz). Moreover, I
        have previously conducted similar tests using an NI2900 (B200),
        and it exhibited synchronization across the entire frequency
        range with a 1MHz step.</p>
      <p>I am seeking insights into the reasons behind these specific
        synchronization frequencies, the observed step sizes, and
        potential differences in the daughterboard characteristics or
        configuration parameters that might contribute to this behavior.
        Any guidance or suggestions to optimize the setup would be
        greatly appreciated.<br>
        <br>
        Thank you.<br>
        Jea</p>
    </blockquote>
    I think we're going to need more information on what it is you mean=C2=
=A0
    by "frequency synchronization", and exactly what you're<br>
    =C2=A0 measuring, and what your test setup is.<br>
    <br>
    Are you measuring phase-coherence between boards of a different
    architecture?=C2=A0 What exactly are you measuring?<br>
    <br>
    Are your X310 referenced to a common 10Mhz clock?<br>
    <br>
    <br>
  </body>
</html>

--------------Wq5hUtxLncdn0CDr7vpbt1Mv--

--===============5352811381663491283==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5352811381663491283==--
