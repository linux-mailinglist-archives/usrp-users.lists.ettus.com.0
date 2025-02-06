Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E80A2AF78
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2025 18:56:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0AB83385C83
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2025 12:56:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738864586; bh=C9Tw1SLRqtD6dhNAibBZAqrL3DtPZS7O0hDFWbErTwI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=K3Hr9hx/J9Ym8PT3CuKUzlFNlMeiH+gkTsJcqBwzS7QCDvfeEd3CColhulcwvOjww
	 4A/cvwrnUvqjUWD/AB0pNuOWTnaFrr4Ez1DvKUd4SMenTvjy7H+UtzVuSfrCaj1ao9
	 4lvn+Mmk7jatiOpy3ECAp9+nG3BPY7v3PQ52T5+6PqCZfeDJl8hnVP1hCk+F3v/2DN
	 lh65lJPd2uBUgdbRAXDNFKMovSCUdYlsuwgpAsAHBR6TSrM0XPdRmGuexybppFXdaF
	 ZK/YRJtM0vQ/q675d9dKknMXyJ4vrBkiEZLaTJyFYnKN9KZ3Ca2T7YCySoI3WY7COd
	 oh9LLDb48X7zQ==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 33033385AE6
	for <usrp-users@lists.ettus.com>; Thu,  6 Feb 2025 12:56:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eJva4MHO";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7b6f7d7e128so226134285a.1
        for <usrp-users@lists.ettus.com>; Thu, 06 Feb 2025 09:56:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738864572; x=1739469372; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xgBMBwg/IOb/qm6YNNXks627LJucHEJBqSDrp8XOVIM=;
        b=eJva4MHO329glLcjSn/C7rffHaXStqElDsHmfLAMReO7Aspp0fPYwelNWkl7a8m7mT
         FfcNp8PhcVXNL8wgpWPzRUtodmjgbdF/CSU8LqgEGBpWtP6WznvsFCQO3FxKG2wyoCH5
         8hU9GySJRB2HbkIeRvgrIkCmJteOV4fWvq0HCjyBok5wiowQZ7lszMaHKs9uK16kD2CZ
         TJV9v40mIHHbNPdSfFRBVSuLxUGevvNVMsXhBn5Ohn/Ku0tshHM33+DTljlAmvN1UNRu
         +oKh5O8D+QtqzLBE30uLixzIfTxbmZtsXkI+1XNjMAHtQuiuvdhF8RoFSpyVD22JDvlZ
         38OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738864572; x=1739469372;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xgBMBwg/IOb/qm6YNNXks627LJucHEJBqSDrp8XOVIM=;
        b=ie9Ck2vDMQcibtR4j5veJ1enSeLlQdQashPB6g3LgE+URrhuDUDbD9NsUyyF+8765K
         gUwfd29xALgwt4BxsB5fhd+uJdTBOCy+nsYTdHDXqlO5BroO0L07fkkcnQX5TUxgIsvC
         VpoMK1dSs5hwxiHQ6lOL14RlVgOtkUQOLyTM2ZKmCCzENN9YZ0AuWgUuKnPNGGEUrrXa
         aDBkNWqZ2MBts6N7TnOFO9J74qZXzauIdTbz8EDXrau4FvLaHx0GKtQ7EFMmUVOe7ZVo
         3XN1Tbk7pxbXfGnR+SZHwR4fPhiioXX0jqss4yB9bGBHU6+PFJD6EWPG0bLKnDNGtytQ
         Ewcw==
X-Gm-Message-State: AOJu0Yz9KQPedKRARDKG9wjrGeA7hCdND1Xf0ssr2y/GFzX7d54/NOv5
	KNBOjUk4ETuqw7biJxu/6bqG6CUQ/deQXlcBRQV7/cMDkG5bS0U5hgVVCw==
X-Gm-Gg: ASbGncudyaYTOrgCrMr5m0d9Freft5IIrPpgPHNpPgx/M5dAUAEqEWRGDRVMewUDl7k
	VYY0OeXhA+xWsJftSZeAF5caF3E6bOFIwE9c5hOnZyFqtw27RvHfLkpfloQHRNQjazaP7lOUYCu
	j7NJZH0qPNadATqEFx2WGL+K7GzHdo6eMy9BLCvpAZCo+146kn8vvZd+3xp2x7KZpwebIQhbX5Y
	MRgbOnJS6gLY6cU45+d0ipYrcTdoaCE9cee7AxMWzOgqBbngVKDf60mLxd2gn133oB+kRB4pfgy
	o7KWavNAUoMFb6XibDg6pnTCuy8RukiiKFs7qA31oIFoCziygy5QxZMo9Q9eIBDsGA85kegQxaO
	gCLtD29G2D5hLhg==
X-Google-Smtp-Source: AGHT+IECLqFKGIHEaJpWp0YzGd0EYTlTgAAWAH8WTU7Wnre9L5/DGRPSBNDBVyIerFkYD7dKuEbMhQ==
X-Received: by 2002:a05:620a:394b:b0:7b6:cb3c:cb81 with SMTP id af79cd13be357-7c04028d7a5mr647972685a.18.1738864572087;
        Thu, 06 Feb 2025 09:56:12 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-20-142-115-37-13.dsl.bell.ca. [142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7c041ecf174sm84444385a.114.2025.02.06.09.56.11
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2025 09:56:11 -0800 (PST)
Message-ID: <43b36a57-2b85-455f-b1c7-4d51d7936607@gmail.com>
Date: Thu, 6 Feb 2025 12:56:10 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CPWPR80MB7022DBE39F16D7D4E29B68F590F62@CPWPR80MB7022.lamprd80.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CPWPR80MB7022DBE39F16D7D4E29B68F590F62@CPWPR80MB7022.lamprd80.prod.outlook.com>
Message-ID-Hash: ZRLGKSAOOVDHYBFKJJAOMHNMRCRDRCYH
X-Message-ID-Hash: ZRLGKSAOOVDHYBFKJJAOMHNMRCRDRCYH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error when running Benchmark on USRP X440: RfnocError - OpTimeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZRLGKSAOOVDHYBFKJJAOMHNMRCRDRCYH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3886796449594937946=="

This is a multi-part message in MIME format.
--===============3886796449594937946==
Content-Type: multipart/alternative;
 boundary="------------AjJLSTxRXzkYhBDV6XwcMqFG"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------AjJLSTxRXzkYhBDV6XwcMqFG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 06/02/2025 12:52, Rilbert Lima da Silva via USRP-users wrote:
> We are encountering an issue when trying to run the benchmark directly=20
> on the USRP X440. During the test execution, we receive the following=20
> error:
>
> RfnocError: OpTimeout: Control operation timed out waiting for ACK.
>
> This error occurs during the benchmark process and prevents the=20
> operation from completing successfully.
>
> We would appreciate it if anyone has encountered this issue or has any=20
> suggestions on how to resolve it. Any guidance or recommendations to=20
> fix the issue, such as adjusting response times or system=20
> configurations, would be greatly appreciated.
>
> We look forward to your feedback and thank you in advance for your help=
.
>
> root@ni-x4xx-342597F:/usr/lib/uhd/examples# ./benchmark_rate --rx_rate=20
> 368.64e6 --tx_rate 368.64e6
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107800;=20
> UHD_4.7.0.0-0-ga5ed1872
> [00:00:00.029550] Creating the usrp device with: ...
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx440,serial=3D342597F,name=3D=
ni-x4xx-342597F,fpga=3DX4_400,claimed=3DFalse
> [WARNING] [MPM.RPCServer] A timeout event occured!
> [INFO] [MPM.PeriphManager] init() called with device args=20
> `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3Dni-x4xx-342597F,product=3Dx=
440,clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.
> Using Device: Single USRP:
> =C2=A0 Device: X400-Series Device
> =C2=A0 Mboard 0: x440
> =C2=A0 RX Channel: 0
> =C2=A0 =C2=A0 RX DSP: n/a
> =C2=A0 =C2=A0 RX Dboard: A
> =C2=A0 =C2=A0 RX Subdev: 0
> =C2=A0 RX Channel: 1
> =C2=A0 =C2=A0 RX DSP: n/a
> =C2=A0 =C2=A0 RX Dboard: A
> =C2=A0 =C2=A0 RX Subdev: 1
> =C2=A0 RX Channel: 2
> =C2=A0 =C2=A0 RX DSP: n/a
> =C2=A0 =C2=A0 RX Dboard: A
> =C2=A0 =C2=A0 RX Subdev: 2
> =C2=A0 RX Channel: 3
> =C2=A0 =C2=A0 RX DSP: n/a
> =C2=A0 =C2=A0 RX Dboard: A
> =C2=A0 =C2=A0 RX Subdev: 3
> =C2=A0 RX Channel: 4
> =C2=A0 =C2=A0 RX DSP: n/a
> =C2=A0 =C2=A0 RX Dboard: B
> =C2=A0 =C2=A0 RX Subdev: 0
> =C2=A0 RX Channel: 5
> =C2=A0 =C2=A0 RX DSP: n/a
> =C2=A0 =C2=A0 RX Dboard: B
> =C2=A0 =C2=A0 RX Subdev: 1
> =C2=A0 RX Channel: 6
> =C2=A0 =C2=A0 RX DSP: n/a
> =C2=A0 =C2=A0 RX Dboard: B
> =C2=A0 =C2=A0 RX Subdev: 2
> =C2=A0 RX Channel: 7
> =C2=A0 =C2=A0 RX DSP: n/a
> =C2=A0 =C2=A0 RX Dboard: B
> =C2=A0 =C2=A0 RX Subdev: 3
> =C2=A0 TX Channel: 0
> =C2=A0 =C2=A0 TX DSP: n/a
> =C2=A0 =C2=A0 TX Dboard: A
> =C2=A0 =C2=A0 TX Subdev: 0
> =C2=A0 TX Channel: 1
> =C2=A0 =C2=A0 TX DSP: n/a
> =C2=A0 =C2=A0 TX Dboard: A
> =C2=A0 =C2=A0 TX Subdev: 1
> =C2=A0 TX Channel: 2
> =C2=A0 =C2=A0 TX DSP: n/a
> =C2=A0 =C2=A0 TX Dboard: A
> =C2=A0 =C2=A0 TX Subdev: 2
> =C2=A0 TX Channel: 3
> =C2=A0 =C2=A0 TX DSP: n/a
> =C2=A0 =C2=A0 TX Dboard: A
> =C2=A0 =C2=A0 TX Subdev: 3
> =C2=A0 TX Channel: 4
> =C2=A0 =C2=A0 TX DSP: n/a
> =C2=A0 =C2=A0 TX Dboard: B
> =C2=A0 =C2=A0 TX Subdev: 0
> =C2=A0 TX Channel: 5
> =C2=A0 =C2=A0 TX DSP: n/a
> =C2=A0 =C2=A0 TX Dboard: B
> =C2=A0 =C2=A0 TX Subdev: 1
> =C2=A0 TX Channel: 6
> =C2=A0 =C2=A0 TX DSP: n/a
> =C2=A0 =C2=A0 TX Dboard: B
> =C2=A0 =C2=A0 TX Subdev: 2
> =C2=A0 TX Channel: 7
> =C2=A0 =C2=A0 TX DSP: n/a
> =C2=A0 =C2=A0 TX Dboard: B
> =C2=A0 =C2=A0 TX Subdev: 3
>
> [00:00:04.785436687] Setting device timestamp to 0...
> [00:00:04.796748855] Testing receive rate 368.640000 Msps on 1 channels
> Setting TX spp to 352
> [00:00:04.808455794] Testing transmit rate 368.640000 Msps on 1 channel=
s
> OUUUUUUterminate called after throwing an instance of 'uhd::op_timeout'
> [12746.728959] audit: type=3D1701 audit(1738862989.543:15):=20
> auid=3D4294967295 uid=3D0 gid=3D0 ses=3D4294967295 subj=3Dkernel pid=3D=
1080=20
> comm=3D"bmark_rx_stream" exe=3D"/usr/lib/uhd/examples/benchmark_rate"=20
> sig=3D6 res=3D1
> =C2=A0 what(): =C2=A0RfnocError: OpTimeout: Control operation timed out=
 waiting=20
> for ACK
> Aborted
> root@ni-x4xx-342597F:/usr/lib/uhd/examples#
There is absolutely no way in heck that you're going to be able to=20
support those sample rates into/out-of the CPU that's
 =C2=A0 actually ON the X440.=C2=A0 It's a (AFAIR) a little dual-core ARM=
 chip,=20
mostly intended to provide management of the FPGA
 =C2=A0 and little else.

Try a rate that's MUCH lower, like 5e6.



--------------AjJLSTxRXzkYhBDV6XwcMqFG
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 06/02/2025 12:52, Rilbert Lima da
      Silva via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CPWPR80MB7022DBE39F16D7D4E29B68F590F62@CPWPR80MB7022.lamprd80=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        We are encountering an issue when trying to run the benchmark
        directly on the USRP X440. During the test execution, we receive
        the following error:</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        RfnocError: OpTimeout: Control operation timed out waiting for
        ACK.</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        This error occurs during the benchmark process and prevents the
        operation from completing successfully.</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        We would appreciate it if anyone has encountered this issue or
        has any suggestions on how to resolve it. Any guidance or
        recommendations to fix the issue, such as adjusting response
        times or system configurations, would be greatly appreciated.</di=
v>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        We look forward to your feedback and thank you in advance for
        your help.</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        root@ni-x4xx-342597F:/usr/lib/uhd/examples# ./benchmark_rate
        --rx_rate 368.64e6 --tx_rate 368.64e6</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107800;
        UHD_4.7.0.0-0-ga5ed1872</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        [00:00:00.029550] Creating the usrp device with: ...</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx440,serial=3D342597F,name=3D=
ni-x4xx-342597F,fpga=3DX4_400,claimed=3DFalse</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        [WARNING] [MPM.RPCServer] A timeout event occured!</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        [INFO] [MPM.PeriphManager] init() called with device args
`fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3Dni-x4xx-342597F,product=3Dx44=
0,clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.</d=
iv>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Using Device: Single USRP:</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 Device: X400-Series Device</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 Mboard 0: x440</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 RX Channel: 0</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX DSP: n/a</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX Dboard: A</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX Subdev: 0</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 RX Channel: 1</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX DSP: n/a</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX Dboard: A</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX Subdev: 1</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 RX Channel: 2</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX DSP: n/a</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX Dboard: A</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX Subdev: 2</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 RX Channel: 3</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX DSP: n/a</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX Dboard: A</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX Subdev: 3</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 RX Channel: 4</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX DSP: n/a</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX Dboard: B</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX Subdev: 0</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 RX Channel: 5</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX DSP: n/a</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX Dboard: B</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX Subdev: 1</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 RX Channel: 6</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX DSP: n/a</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX Dboard: B</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX Subdev: 2</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 RX Channel: 7</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX DSP: n/a</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX Dboard: B</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 RX Subdev: 3</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 TX Channel: 0</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX DSP: n/a</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX Dboard: A</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX Subdev: 0</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 TX Channel: 1</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX DSP: n/a</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX Dboard: A</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX Subdev: 1</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 TX Channel: 2</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX DSP: n/a</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX Dboard: A</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX Subdev: 2</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 TX Channel: 3</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX DSP: n/a</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX Dboard: A</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX Subdev: 3</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 TX Channel: 4</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX DSP: n/a</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX Dboard: B</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX Subdev: 0</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 TX Channel: 5</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX DSP: n/a</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX Dboard: B</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX Subdev: 1</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 TX Channel: 6</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX DSP: n/a</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX Dboard: B</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX Subdev: 2</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 TX Channel: 7</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX DSP: n/a</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX Dboard: B</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 TX Subdev: 3</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        [00:00:04.785436687] Setting device timestamp to 0...</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        [00:00:04.796748855] Testing receive rate 368.640000 Msps on 1
        channels</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Setting TX spp to 352</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        [00:00:04.808455794] Testing transmit rate 368.640000 Msps on 1
        channels</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        OUUUUUUterminate called after throwing an instance of
        'uhd::op_timeout'</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        [12746.728959] audit: type=3D1701 audit(1738862989.543:15):
        auid=3D4294967295 uid=3D0 gid=3D0 ses=3D4294967295 subj=3Dkernel =
pid=3D1080
        comm=3D"bmark_rx_stream"
        exe=3D"/usr/lib/uhd/examples/benchmark_rate" sig=3D6 res=3D1</div=
>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 what(): =C2=A0RfnocError: OpTimeout: Control operation tim=
ed out
        waiting for ACK</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Aborted</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        root@ni-x4xx-342597F:/usr/lib/uhd/examples#</div>
    </blockquote>
    There is absolutely no way in heck that you're going to be able to
    support those sample rates into/out-of the CPU that's<br>
    =C2=A0 actually ON the X440.=C2=A0 It's a (AFAIR) a little dual-core =
ARM chip,
    mostly intended to provide management of the FPGA<br>
    =C2=A0 and little else.<br>
    <br>
    Try a rate that's MUCH lower, like 5e6.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------AjJLSTxRXzkYhBDV6XwcMqFG--

--===============3886796449594937946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3886796449594937946==--
