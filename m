Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F9B51E799
	for <lists+usrp-users@lfdr.de>; Sat,  7 May 2022 15:58:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D066384A50
	for <lists+usrp-users@lfdr.de>; Sat,  7 May 2022 09:58:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651931925; bh=95ReCYAvaHdKWcpanO8os4vZEpUQRQnPHOF2gQ3X7Qc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ljvDmn13zcgAx9b20ISsG1DdvGoJaKQl1Lq3NxciXcdrqai4uwXhlQ+Osn1KuX5Yg
	 LbFeNfobSWnEdw+2gZtFnIQGxTvseqti1oHI2dovmuPhiDCDuoQtAQ9tqdNv5qkXAW
	 QEppNpv3zqA7VkGUrxXaqVuPCQ8gbrEnYHNNsHEyXRr2Q77n+wLU5fVjjya8oABh5u
	 4DVq8a1zb7NBczCVeZ8TjtXZTmuC0SLCzSlNgoYKsafNwlRSUYr5H4b6xFofTPSFFU
	 cE248EmTtc8CMnq5UIwt1Z0vRnaZKqwBvlCQCeefigjKaQ1CZnE0CWdU4UiT5BDGCz
	 ASknKkVP/75Zw==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id A9681384D3C
	for <usrp-users@lists.ettus.com>; Sat,  7 May 2022 09:50:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OsCzq8mC";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id n8so7374204qke.11
        for <usrp-users@lists.ettus.com>; Sat, 07 May 2022 06:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=TsW72X11g9QHcRF1fgUMNaIG5qjXz4s0bhmiIm+1oII=;
        b=OsCzq8mCi6DJn/uXBraTUPjNBJlzvTpCDa64UuRQSY4vB+75eWF9TfnYHDhMCoSWQa
         EtARjcFz5df9DMRFDJAOVB6qrHf9ixhfhbC77PrIpblLU1Maa5DZFZPB+AHmlDkXnCTr
         q0YQP4e+psA/ed3Z+52Mtc0CRn9KIiVgWCBxdJZ66iwaLyXLt4pdQPtoia+c5W0xwSj2
         NRyaqclTJ8QQGfHzUNRdnA2fWD+NPscApJIEmAWiTSgFIReMMmw4HtcGHwItYAm5HS5y
         QlP2PQhUT1bZbNlrNftg/gwaofQ7Ph7fsHi0fJN5LvZQFwMyQ1a2oFlbbmJhV+lbjpCR
         zvzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=TsW72X11g9QHcRF1fgUMNaIG5qjXz4s0bhmiIm+1oII=;
        b=136bjAj84DLQlUbVDx0Tg/2AeRYqbz8F2Jha173EGX/MG/++B4Wcn8rtHLli2mDgfT
         wG+jyqhhhuy7d16AoTvGhaqGOM1b5j3J/4bVXG0iD1OHTEkbbsdboFDgohEM6DpfLjnH
         3Gu2iY3d0SPlItJ6Qo0dZZEgoUb5aX21ffnZRGxblqSVdihHvPVvCebR3f6TRFIUqrWz
         NnfUcnZZdGKr99rhvW8q43zLQ9BPbj6IwWtK6ELotE+6bvnWMvqAXNI/zjQPzYv678VV
         nanJzi34ZGim7AeE1tLFf47R9ALsS04txnAYIQS+8uR1TMpqJwF4PS1elBTSu9TwtJ/d
         QqDg==
X-Gm-Message-State: AOAM530Rdp0Nzyb6bLrhQzQPbR7pLrSVNs+nf1CQIaewN5yDYwoDVs9x
	6Py+Ucw85ZE973WU6u9D1SxbdkKsPLM=
X-Google-Smtp-Source: ABdhPJx2hx++aD+SaWvaaaJ1U7GzA8GeWaNHBUMHD1Bpo6bVgpqmv/BupI74vTFuAj+oithze5l5jg==
X-Received: by 2002:a37:6285:0:b0:69f:9d2a:3258 with SMTP id w127-20020a376285000000b0069f9d2a3258mr6104395qkb.150.1651931432611;
        Sat, 07 May 2022 06:50:32 -0700 (PDT)
Received: from [192.168.2.188] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id g10-20020ac8480a000000b002f39b99f6aesm4130786qtq.72.2022.05.07.06.50.31
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 May 2022 06:50:31 -0700 (PDT)
Message-ID: <1afd5983-b34b-d054-cd1c-2bda53b76ec1@gmail.com>
Date: Sat, 7 May 2022 09:50:21 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <LOYP265MB1887CCC056B0637CA4A49C74A5C49@LOYP265MB1887.GBRP265.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <LOYP265MB1887CCC056B0637CA4A49C74A5C49@LOYP265MB1887.GBRP265.PROD.OUTLOOK.COM>
Message-ID-Hash: T26YRIENIFBP72LWQOU43I2WXQA2BLT3
X-Message-ID-Hash: T26YRIENIFBP72LWQOU43I2WXQA2BLT3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X300 simultaneously transmit 2 signals of different sample rate and center frequency
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T26YRIENIFBP72LWQOU43I2WXQA2BLT3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0189991828031421930=="

This is a multi-part message in MIME format.
--===============0189991828031421930==
Content-Type: multipart/alternative;
 boundary="------------SyqDffOJ2HMvVaQh84Hez0zq"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------SyqDffOJ2HMvVaQh84Hez0zq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-05-07 08:22, ?? WANG Cui wrote:
>
> Hi,
>
> I searched around and still can=E2=80=99t get clear answer, so I would =
seek=20
> help here.
>
> I want to simultaneously transmit 2 baseband files which are different=20
> sample rate (one is rate 2.5 MHz at freq 1.5 GHz, and the other is=20
> rate 8 MHz at freq 1.8 GHz), and would like to utilize 2 daughter=20
> boards of X300.
>
> I tried to configure it with 2 multi_usrp objects, but the call failed=20
> when get second tx_streamer (however, the first get call succeed.),=20
> with: Error: RuntimeError: Multiple sampling rates downstream of TX=20
> terminator 0: ...
>
> I know X300 can transmit/receive 2 channels at 2 different sample=20
> rate, just wonder is it possible to simultaneously transmit 2 channels=20
> as described above? Or have to resample one file to the same sample=20
> rate of the other file, then transmit together?
>
> Thanks in advance,
>
> WANG Cui
>
>
You can't have multiple multi_usrp objects pointing to the same device,=20
so you'll have to resample one of your streams and use a
 =C2=A0 single multi_usrp object.



--------------SyqDffOJ2HMvVaQh84Hez0zq
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-05-07 08:22, ?? WANG Cui wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:LOYP265MB1887CCC056B0637CA4A49C74A5C49@LOYP265MB1887.GBRP265.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:11.0pt;
	font-family:DengXian;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:DengXian;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:DengXian;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi,<o:p></o:p></p>
        <p class=3D"MsoNormal">I searched around and still can=E2=80=99t =
get clear
          answer, so I would seek help here.<o:p></o:p></p>
        <p class=3D"MsoNormal">I want to simultaneously transmit 2
          baseband files which are different sample rate (one is rate
          2.5 MHz at freq 1.5 GHz, and the other is rate 8 MHz at freq
          1.8 GHz), and would like to utilize 2 daughter boards of X300.<=
o:p></o:p></p>
        <p class=3D"MsoNormal">I tried to configure it with 2 multi_usrp
          objects, but the call failed when get second tx_streamer
          (however, the first get call succeed.), with: Error:
          RuntimeError: Multiple sampling rates downstream of TX
          terminator 0: ...<o:p></o:p></p>
        <p class=3D"MsoNormal">I know X300 can transmit/receive 2 channel=
s
          at 2 different sample rate, just wonder is it possible to
          simultaneously transmit 2 channels as described above? Or have
          to resample one file to the same sample rate of the other
          file, then transmit together?<o:p></o:p></p>
        <p class=3D"MsoNormal">Thanks in advance,<o:p></o:p></p>
        <p class=3D"MsoNormal">WANG Cui<o:p></o:p></p>
      </div>
      <br>
    </blockquote>
    You can't have multiple multi_usrp objects pointing to the same
    device, so you'll have to resample one of your streams and use a<br>
    =C2=A0 single multi_usrp object.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------SyqDffOJ2HMvVaQh84Hez0zq--

--===============0189991828031421930==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0189991828031421930==--
