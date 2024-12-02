Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D4D9E096B
	for <lists+usrp-users@lfdr.de>; Mon,  2 Dec 2024 18:06:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4678F3858D9
	for <lists+usrp-users@lfdr.de>; Mon,  2 Dec 2024 12:06:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733159177; bh=0RRxWy80EyBI8XKFmq6dBcPcKZSK24vVvIX3+kd//Lc=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=a+GmWaOAf4qggyjyOBLj+mbbEaWT7zE6RDJJiJJOiVSobWyo9R332hxral50W7G5I
	 P6Y2iTD8grhPRKLXWnC9XA+6bBEqsIkc2LWjevOL34kcA4N2LnSdmPartTPHTqdpu3
	 WhF2w1EtQC3ZM1OmdU/uBbaR+Z0mY1zcEObGAXmqPgA18cC4yJ109lopWYNOV/Mq3R
	 8SPCs60D3l+0fFcYnioSMLJKtGOGm4W7N7V3E288sND6pIAFF+kbeyZnh7mBPHNFqw
	 bW13z3ARsh07scgcuLmaxo/caJ3A0COEBOMl4tRoyX7IKRUAGtA2LqzjePl4gINbVF
	 s4/QZ4Jcf35JA==
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 9693A385333
	for <usrp-users@lists.ettus.com>; Mon,  2 Dec 2024 12:05:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eKn3zq4T";
	dkim-atps=neutral
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7b678da9310so384086585a.2
        for <usrp-users@lists.ettus.com>; Mon, 02 Dec 2024 09:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733159140; x=1733763940; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NGv+9D/vreHpyhTl8/z7YsOUNQu0bgcbbrVw7HhsdE4=;
        b=eKn3zq4Ty+HWvCH/wBW4ceK5XjGsm7Zp7+mNQm2betjDcXskZ/jzkXEEyHpZK/de1j
         FMkLvnfNrUM63jm1vFBDm4mIiKOJXjDlIv8KtQNixWVmt2jmkyPl+SGK3K9fdGUYWpEI
         F5VYUD6GNWVjRLunbsrKwPK4vePQUnv9/fac+Gp6P26/tObAwUKSDYdRESmCMqZjsp4h
         j3QSHC6Et3J3ePvoBsg68tUc8rNhRYySllllESq8jn3DZCLdKWyAndHBpwTMzR6KCHxv
         ExsTJPNAti+BJDShQRw26xUCt9uWv+YMZ3KIRkz90sstQFWiomNKuUB98Nos16zsG7Qs
         oVQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733159140; x=1733763940;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NGv+9D/vreHpyhTl8/z7YsOUNQu0bgcbbrVw7HhsdE4=;
        b=j5sSvne947gKQ27DZkyvNy2RBdE1tod53mCIXM8jIozxyoxnxQDbNEJS2MXi1ak+Nj
         RX/R1r2QUuwpK1nW0KbcnMXhyk5YCkPKJ7hEFhnWBaxFgYZ5asghN4r4XAVjc8fUDQc5
         6KP9oOnUOoUlJ134NVVVCFIfx5Zi1ElvDfhlQJvyVE+H2hNumvn+CsqZhl5AXEig613y
         WsNg/UcFLMSOarTkX7K1Q2dMk0XzZX8aHSG+boxvbrZ62LaPftBGsej3pKLyTC1jloUI
         7oMyma0fRDzF7W6auBoYTNy75dPhXCJPuultagWSjIloyaSBsxZxHPpa6iNZvI+OAOM1
         h4ng==
X-Gm-Message-State: AOJu0YwECUTFcVp66kdTbj31x4may/HKxILCf7e0UzG6VJ/cXDVog6wf
	qUIKP9u9C72ufM/zj6K0cmkLeFClh17140I6vfU6kzfDZ068hoH9
X-Gm-Gg: ASbGncvxwviYa1njQPX20Mo8IVSp8+ZNi1cK9SIAsIK6lw4d0PKFzOdwlgKHeWdd96Q
	W646d4P9lkCVyZZKZtO6r8AmO4K2y/YcHikfm3gA4oOn3VXXatzPs8x5l/b+7Cp/b9+mPu2mcok
	cCjvkZZO8qMpjnytiVJND81ceTcr+7DbAHMdQlqlZL+otrAL4aIaNAzg8ajijNJNZSW5QtDJ4ZT
	Y2G5j2HQWk15jCCuTATRADkc5Z7zD50d5iLr1vnCZeZWWLakdb/oaF01ZaB
X-Google-Smtp-Source: AGHT+IF+GOVPWMRoWuNTF9C/EvanR6EsdyvmxsODdRIvQyVz9vqpcRot+nwYCQSvE9Rv17Ja7Ux55Q==
X-Received: by 2002:a05:620a:6501:b0:7b1:8e09:5119 with SMTP id af79cd13be357-7b67c244e96mr3183737685a.2.1733159139707;
        Mon, 02 Dec 2024 09:05:39 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6d87eec1c61sm44502836d6.94.2024.12.02.09.05.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 09:05:39 -0800 (PST)
Message-ID: <a134f6e8-c736-4476-914d-7ed992a231aa@gmail.com>
Date: Mon, 2 Dec 2024 12:05:28 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Muhammad Anas <anasg8274@gmail.com>
References: <CACPignSFf5S5YPP93JKX+TMCMd-SF+wR1AammdqJhtJhZ-4V0w@mail.gmail.com>
 <af845f78-e539-428c-84ff-31cf459ef42b@gmail.com>
 <CACPignQtpeRaA0sqL_Xi=ersE2Qx+Ov0_KZ9_pFaV7r1Q3uKHw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CACPignQtpeRaA0sqL_Xi=ersE2Qx+Ov0_KZ9_pFaV7r1Q3uKHw@mail.gmail.com>
Message-ID-Hash: DMUAJ5M7AGLLF5YS2YD33B2GSTA7OCFF
X-Message-ID-Hash: DMUAJ5M7AGLLF5YS2YD33B2GSTA7OCFF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N210 Gain Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DMUAJ5M7AGLLF5YS2YD33B2GSTA7OCFF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7032134747637738411=="

This is a multi-part message in MIME format.
--===============7032134747637738411==
Content-Type: multipart/alternative;
 boundary="------------0L8yxmg6N8N4izvkNGnWhuv2"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0L8yxmg6N8N4izvkNGnWhuv2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 02/12/2024 11:53, Muhammad Anas wrote:
>
> Daughtercard is WBX, so how much gain should I achieve in Spectrum=20
> analyzer?
>
Actually, I just checked, and I was wrong about the +20dBm. According to=20
the datasheet:

https://kb.ettus.com/WBX#TX_Power_.28Max.29

The *gain control range* on the WBX goes from 0 to 31.5dB.=C2=A0=C2=A0 So=
, if the=20
maximum output power at the antenna connector
 =C2=A0 looks like +20dBm, then at a gain setting of 0, you should expect=
=20
about -11.5dBm.

This assumes that your baseband signal magnitude is somewhere in the=20
{-1.0,+1.0} range, although it's generally
 =C2=A0 a good idea to not exceed {-0.85,+0.85} or so.=C2=A0 Individual s=
ystems=20
will vary slightly.

You can use the "tx_waveforms" example to produce a very simple test:

Something like:

tx_waveforms --args "addr=3D192.168.10.2"=C2=A0 --rate 1e6 --freq 50e6 --=
ampl=20
0.8 --gain 30=C2=A0 --wave-type SIN --wave-freq 10e3

Which will produce a CW tone 10kHz up from your tuned frequency of 50MHz.

I cannot provide guidance on how to set-up your spectrum analyzer.




>
> On Mon, Dec 2, 2024, 9:30 PM Marcus D. Leech <patchvonbraun@gmail.com>=20
> wrote:
>
>     On 02/12/2024 05:43, Muhammad Anas wrote:
>>     Dear,
>>
>>     I'm using USRP N210 with GNU radio companion for transmission of
>>     signal of 50M Hz and testing the signal on the R&S FSH20 Spectrum
>>     analyzer using SMA cable, unfortunately I am not getting the
>>     desired gain level of 20 dBm according to the datasheet of USRP,
>>     in the spectrum analyzer. I'm getting -92 dBm at 0 level gain
>>     from the usrp sink block in GNU radio and getting the only max
>>     -68 dBm gain at 25 gain level from USRP sink block. After 25, to
>>     even 100 level, I'm still getting the -68 dBm at the receiving
>>     point. Here are my settings of FSH20:
>>
>>     Ref: -20 dBm
>>     Att: 20 dB
>>     RBW and VBW: 30k Hz
>>     SWT: 1.29 s
>>
>>     Kindly, help me that if the problem is with the USRP or I will do
>>     something to achieve the desired gain of 20 dBm, without using
>>     any external amplifier. What are the reasons behind this problem
>>     and how I can diagnose them.
>>
>>     Regards
>>     Muhammad Anas
>     You haven't said which daughtercard you're using.=C2=A0 I don't thi=
nk
>     ANY of our radios will produce +20dBm, even at
>     =C2=A0 MAX gain with high baseband magnitude.
>
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------0L8yxmg6N8N4izvkNGnWhuv2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 02/12/2024 11:53, Muhammad Anas
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CACPignQtpeRaA0sqL_Xi=3DersE2Qx+Ov0_KZ9_pFaV7r1Q3uKHw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p dir=3D"ltr">Daughtercard is WBX, so how much gain should I
        achieve in Spectrum analyzer?</p>
    </blockquote>
    Actually, I just checked, and I was wrong about the +20dBm.=C2=A0
    According to the datasheet:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/WBX#T=
X_Power_.28Max.29">https://kb.ettus.com/WBX#TX_Power_.28Max.29</a><br>
    <br>
    The *gain control range* on the WBX goes from 0 to 31.5dB.=C2=A0=C2=A0=
 So, if
    the maximum output power at the antenna connector<br>
    =C2=A0 looks like +20dBm, then at a gain setting of 0, you should exp=
ect
    about -11.5dBm.<br>
    <br>
    This assumes that your baseband signal magnitude is somewhere in the
    {-1.0,+1.0} range, although it's generally<br>
    =C2=A0 a good idea to not exceed {-0.85,+0.85} or so.=C2=A0 Individua=
l systems
    will vary slightly.<br>
    <br>
    You can use the "tx_waveforms" example to produce a very simple
    test:<br>
    <br>
    Something like:<br>
    <br>
    tx_waveforms --args "addr=3D192.168.10.2"=C2=A0 --rate 1e6 --freq 50e=
6
    --ampl 0.8 --gain 30=C2=A0 --wave-type SIN --wave-freq 10e3 <br>
    <br>
    Which will produce a CW tone 10kHz up from your tuned frequency of
    50MHz.<br>
    <br>
    I cannot provide guidance on how to set-up your spectrum analyzer.<br=
>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CACPignQtpeRaA0sqL_Xi=3DersE2Qx+Ov0_KZ9_pFaV7r1Q3uKHw@mail.gm=
ail.com">
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 2, 2024, 9:30 P=
M
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
          <div>
            <div>On 02/12/2024 05:43, Muhammad Anas wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"auto">Dear,
                <div dir=3D"auto"><br>
                </div>
                <div dir=3D"auto">I'm using USRP N210 with GNU radio
                  companion for transmission of signal of 50M Hz and
                  testing the signal on the R&amp;S FSH20 Spectrum
                  analyzer using SMA cable, unfortunately I am not
                  getting the desired gain level of 20 dBm according to
                  the datasheet of USRP, in the spectrum analyzer. I'm
                  getting -92 dBm at 0 level gain from the usrp sink
                  block in GNU radio and getting the only max -68 dBm
                  gain at 25 gain level from USRP sink block. After 25,
                  to even 100 level, I'm still getting the -68 dBm at
                  the receiving point. Here are my settings of FSH20:</di=
v>
                <div dir=3D"auto"><br>
                </div>
                <div dir=3D"auto">Ref: -20 dBm</div>
                <div dir=3D"auto">Att: 20 dB</div>
                <div dir=3D"auto">RBW and VBW: 30k Hz</div>
                <div dir=3D"auto">SWT: 1.29 s</div>
                <div dir=3D"auto"><br>
                </div>
                <div dir=3D"auto">Kindly, help me that if the problem is
                  with the USRP or I will do something to achieve the
                  desired gain of 20 dBm, without using any external
                  amplifier. What are the reasons behind this problem
                  and how I can diagnose them.</div>
                <div dir=3D"auto"><br>
                </div>
                <div dir=3D"auto">Regards</div>
                <div dir=3D"auto">Muhammad Anas</div>
              </div>
            </blockquote>
            You haven't said which daughtercard you're using.=C2=A0 I don=
't
            think ANY of our radios will produce +20dBm, even at<br>
            =C2=A0 MAX gain with high baseband magnitude.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><span style=3D"white-space:pre-wrap=
">
</span></blockquote>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            rel=3D"noreferrer" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.com</a=
><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" rel=3D"noreferrer" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------0L8yxmg6N8N4izvkNGnWhuv2--

--===============7032134747637738411==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7032134747637738411==--
