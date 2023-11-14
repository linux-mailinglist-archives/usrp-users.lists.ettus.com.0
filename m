Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F18E37EB41F
	for <lists+usrp-users@lfdr.de>; Tue, 14 Nov 2023 16:49:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1850A3855E9
	for <lists+usrp-users@lfdr.de>; Tue, 14 Nov 2023 10:49:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699976976; bh=woU/7zJJj5LL87Y3hO3hW2E0RMMeh7fOrE9t0RH8Pz8=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Yj2lBsf1XCDUVBEB3PAqnByTtYo2Tk1W+H7SGBFKq+uL1UjIxHDTwcDcE3fY00Q3F
	 yRbnGnaCY26sAnf4BgF/oFGHbmeE2uwERilfslEY4EQYCIun7+kjPR6dWYfIElOBun
	 WBEdSJewuFnKDIT2rumeqETMNnK0wp3QXlXHnni8HA+QrtZqHSqDWZIYROjKk9MeyA
	 Xpx8QLKW6DzS6UdLO0BQLrLDLQeKLyvdfGu1SrdOSLn5e5kuhGRJ3nZjlny+k9eEbf
	 VS+NDUoPL/Sie1i3KS2+qI0gkfYzjWi8j2pqoGcF/s3LSU5KvYdMDBfgt6LSELxL2e
	 7/mwcOIgNxZTg==
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	by mm2.emwd.com (Postfix) with ESMTPS id A27C6384697
	for <usrp-users@lists.ettus.com>; Tue, 14 Nov 2023 10:48:43 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hXQ4q4Od";
	dkim-atps=neutral
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-495eb6e2b80so2014956e0c.1
        for <usrp-users@lists.ettus.com>; Tue, 14 Nov 2023 07:48:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699976923; x=1700581723; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/hrKVNYJwT+iMJZ+IJEbZMdNmKc1vAvpiStgOcFwdtU=;
        b=hXQ4q4Odd0t/Da1ppcFVdaKO20mk0GfS2r6phwnQIt3JLJ5Mnws22Hs2gBKuONjnct
         xW9zFaQsbHf7FPZItbWH+raXTEeIywvSQmANVJ7kZMElrckfmLM5vY7HoFvIfiLPZGnp
         UB+4AxEDYSpHP7MgqTzq7gP1srqX0PWGjQlnw0suCLvucBFSZNKKwM2DvLKcU0PfuReH
         itSrXIa6il1wWfngE9K/hO5dwkPV688gTGPYo4dSXW61p91AiADwSd9nejWrTEau/70T
         96L/lVNWQu1LVlxfmEohGUCymFyM8P6KD9WqBI52hU66a3P3AidE9yKI2DKQnUt3ogEu
         Bsbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699976923; x=1700581723;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/hrKVNYJwT+iMJZ+IJEbZMdNmKc1vAvpiStgOcFwdtU=;
        b=ONSk5PRY+zBsnWywHCU0hWYq9P7HeLLj9PyEkGUPzKavvWmb8Dv0GufGulJRQl6YWQ
         fN4qOqI4PA56UEpKiBYYZCPvEOhTYmsD+UOifAr1VphjQeJ0cDS1oU8KbKtSWh6xS2l1
         TBL2AE2Ej91JTydxgoCgQ8olS0hgOAzsvrQ4Did8ToXMIco0oJ5glZt5AsO5+2LdhVXh
         tP/44FLaLdTC7AcWKTUJs4nlJgNjbtk5H9qQQnQVCE/0hmh21m3q9ercDiVQoKIKBLmK
         TVRPXaoSPreOD6wgU16pBzQkC+94KE39ZW8msHz4QcaM6qUhSz7TIZbpNiRFjnuNszfQ
         h9tA==
X-Gm-Message-State: AOJu0YwLbDD5Ub33/j0RRWR4NWmnzGOALQo+uAxsO7e9WR/y9fXqOEUM
	kmMC/8QilbuCeuYbJ00bOlo=
X-Google-Smtp-Source: AGHT+IHMaxPnddcPj9CTWHg6M2ybMRgJRBJGewun1xAO84xDO464+KaxoKobKwOhrPiV6cwBOVvQpQ==
X-Received: by 2002:a05:6122:20a6:b0:495:bf5b:7e49 with SMTP id i38-20020a05612220a600b00495bf5b7e49mr6020097vkd.13.1699976922820;
        Tue, 14 Nov 2023 07:48:42 -0800 (PST)
Received: from [192.168.2.175] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id mk3-20020a056214580300b006263a9e7c63sm2960728qvb.104.2023.11.14.07.48.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Nov 2023 07:48:42 -0800 (PST)
Message-ID: <d29c2940-7109-4541-8b57-29973fa92015@gmail.com>
Date: Tue, 14 Nov 2023 10:48:33 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steve Hamn <stevehamn311@gmail.com>
References: <CAOYGa73uEs_dg2Tb8O8VHpVkyY-HJ3+r2e690zoJvgoT4=h=CA@mail.gmail.com>
 <14c9a612-99e9-4310-a234-bf8f444d618c@gmail.com>
 <CAOYGa71iDGV63jtAVvXR_w=8NvUwX5qgrxFUJw1dTwXJGJPooA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAOYGa71iDGV63jtAVvXR_w=8NvUwX5qgrxFUJw1dTwXJGJPooA@mail.gmail.com>
Message-ID-Hash: PA33CZG6ZJXWMYMT3X2YHGCPIS23RRKA
X-Message-ID-Hash: PA33CZG6ZJXWMYMT3X2YHGCPIS23RRKA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 AGC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PA33CZG6ZJXWMYMT3X2YHGCPIS23RRKA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4674612698079395184=="

This is a multi-part message in MIME format.
--===============4674612698079395184==
Content-Type: multipart/alternative;
 boundary="------------IqYdsb0ch4hx28898cZGaep4"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------IqYdsb0ch4hx28898cZGaep4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 13/11/2023 16:48, Steve Hamn wrote:
> Thanks for the response. Reading that page about the tune_request_t it=20
> says "/The daughterboards that support this functionality are: WBX=20
> (all revisions), WBX-120, SBX (all revisions), SBX-120, CBX, CBX-120,=20
> UBX, UBX-160/" so will that work for the N320? I actually am trying to=20
> avoid the DC signal and have manually tuned 2MHz above the LO=20
> (fc=3D220MHz, BW=3D2MHz-4MHz) but still see this behavior.
The N320 uses an architecture that pretty-much *requires* that=20
offset-tuning work, in my previous response, I had mis-read
 =C2=A0 your message--sorry.

Your strategy would be to offset-tune so that the DC anomaly is just=20
outside your passband, as defined by your sample rate.

Another thing is that when debugging issues like this, it can be VERY=20
VERY useful to perform some kind of spectral analysis
 =C2=A0 on the data.=C2=A0 You may well have an interfering signal that i=
s=20
dominating your samples, and without doing an FFT, you'd
 =C2=A0 never know.


--------------IqYdsb0ch4hx28898cZGaep4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 13/11/2023 16:48, Steve Hamn wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAOYGa71iDGV63jtAVvXR_w=3D8NvUwX5qgrxFUJw1dTwXJGJPooA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Thanks for the response. Reading that page about the
          tune_request_t it says "<i>The daughterboards that support
            this functionality are: WBX (all revisions), WBX-120, SBX
            (all revisions), SBX-120, CBX, CBX-120, UBX, UBX-160</i>" so
          will that work for the N320? I actually am trying to avoid the
          DC signal and have manually tuned 2MHz above the LO
          (fc=3D220MHz, BW=3D2MHz-4MHz) but still see this behavior. <br>
        </div>
      </div>
    </blockquote>
    The N320 uses an architecture that pretty-much *requires* that
    offset-tuning work, in my previous response, I had mis-read<br>
    =C2=A0 your message--sorry.<br>
    <br>
    Your strategy would be to offset-tune so that the DC anomaly is just
    outside your passband, as defined by your sample rate.<br>
    <br>
    Another thing is that when debugging issues like this, it can be
    VERY VERY useful to perform some kind of spectral analysis<br>
    =C2=A0 on the data.=C2=A0 You may well have an interfering signal tha=
t is
    dominating your samples, and without doing an FFT, you'd<br>
    =C2=A0 never know.<br>
    <br>
    <br>
  </body>
</html>

--------------IqYdsb0ch4hx28898cZGaep4--

--===============4674612698079395184==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4674612698079395184==--
