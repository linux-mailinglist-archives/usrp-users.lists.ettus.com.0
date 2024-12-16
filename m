Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F0E9F3966
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 19:57:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3A33D38552A
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 13:57:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734375434; bh=Qa8uK0oBA73+PAFWxZTsETBxy+81b5vzPwDYi69tKsA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=tMMokXAX1IsbR7ZEBKT2QNiWu88rkLtiDYTy3KnVDZwb+R1ZL4K439eXS9jvukq/U
	 E2CYk8+iNoX3GGy8rkhShjL8+f6kZB7XWcLABtCr54+8U9bVu1esH4wu64gDMipcI3
	 Wunx6BHmKqgphD3b25b3tXf71kvsJY6Nor4guxmb4SGzKP2Ofxt8b/AB8WS8y8Jgxg
	 fjxWSIujtoGUGCTySwEwVM0RWIuobAKUFmEKmigpOwG9N2qDy9Phrhk98ooB3LadfA
	 8VJTtPHalAhef3Etv/kNk5Ljm94MUSYv6oKBn1/7bFuPLQa4WuUiIKdOiYe2wz8Jrw
	 T5BJnBIQp7d4w==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 85F31385465
	for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2024 13:56:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IfJet56y";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6d92e457230so45228326d6.1
        for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2024 10:56:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734375388; x=1734980188; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EDl7os9Rr9e8LL95bqtqf4oMryZXrMSRzTcOUBj6g7M=;
        b=IfJet56yOc/tuA96zhEVSHEVojx0exYAML/8fiybpK+yZErg1Lv2txcT/B/lggt2hg
         5xsk75ftfh8BdVEyP+KM4e9lWIMbIwPFQOYdOoL3jv8bc3BYj/gHiDPWPbrgq0hOYLj7
         8jrgksNFlnM2HRUD9GmmYpAPz/k5taPYIdlOKpg/6bqRhQFT0nKhkGvb4EAQGnAsvO17
         LtLYBxilwZMAuQh4tQ2+DctuGNWHrMnEBvzCUPNucZk3WrnMp5hQJMbJAV9ubfOsAPCc
         lSEXYaOAM3YhkvcwCRq+4XHzPFKQKFSl+prO2bWXB1CQlrC8kBap8olNgcivpc9BzjF2
         bFmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734375388; x=1734980188;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EDl7os9Rr9e8LL95bqtqf4oMryZXrMSRzTcOUBj6g7M=;
        b=rr9a2qK3Caps9te3Uu7l+bRBf4ZT7LdjGyNB0R/f+9VhkZSwMrku8vuJTjjR3cmolZ
         7k4AFNwDFTWLvNcCgBCiWok6FXIoMr7V7WzRVaVdmYGFytQuRpzC3itqkoeNI/tHkYYu
         27l4U7V14h0tGbBtGTHMzVoU+v06zay8jmGON+TesHqmTg02i61ZlLpkYo0n5ygp9XAV
         3XjNR0nq/cDnUr15sa/Nb1yP0A1CthYvbe/h/wsScydNvE1ab+jEHiTNHOa19f7Dr9Am
         ITrFvBr37FjGw2FSdMz3QTEBT/frRXqIA3nxk7Sqsk9MDlqAaPVzuxGNeWwMcv6Oaw0T
         wo0w==
X-Gm-Message-State: AOJu0YyO3YHoEO4FbtCKCjUJznCIyHnwmDT2+L/8eolUht3djZA5lo0Q
	Tm7dJgZ7k1+1HqgAdDdsAbctMUeKvERXTAnQq2tFal6c4pG7vAsRA8eaJg==
X-Gm-Gg: ASbGncvSgmBOPa/CGwR83vcneEnEfOPGC+YYVFgvv9zRzHtkkmuxjugyquBEsnom5MT
	2MtH35Roc/BaApElxBZFA9duQNxe/wvgp9cZquqr+uSJeoPdv9r6bFYcNoTseCNcPKWFyN9kTs7
	Z4NS6AVNesZEXmilO1TzdYYI0msNhoVaLWG0b/3lBQhdlO/E0LJMFgGYz/RR1k1s6BwgQa/Cjws
	h6JOekcGwiobG91/5BS9q/+s3aTzluzq2DEVJXvqLDo0vs88bE+dlrb/3qiL3z0TF1JArqHV//Z
	QyXMeD2xLrJRYpZ72/E+hpjep51T5Glg5hmceaqm2WvX4vbEXv9suyI=
X-Google-Smtp-Source: AGHT+IFT4trQhI0eqMDmBIBpwA6G/d8qPyWnKHTcuf25dvm7ZTWUwdCs4y7gsuR27GU83zwDIR4ILA==
X-Received: by 2002:a05:6214:5191:b0:6d8:a5f7:f108 with SMTP id 6a1803df08f44-6dc8ca836admr203307616d6.26.1734375387608;
        Mon, 16 Dec 2024 10:56:27 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6dccf2a5e51sm29324786d6.92.2024.12.16.10.56.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Dec 2024 10:56:27 -0800 (PST)
Message-ID: <c9c6714e-8ef3-48ba-8a90-25be1f6b2285@gmail.com>
Date: Mon, 16 Dec 2024 13:56:26 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <244d0fbb-2687-c74e-0b9d-e1de1122d382@novagrid.com>
 <5fbd3c1d-1ab1-f199-7419-a670665f37f4@novagrid.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <5fbd3c1d-1ab1-f199-7419-a670665f37f4@novagrid.com>
Message-ID-Hash: DTJF7CRCLPUEQEIQNCZRHCR7UXE5QPK3
X-Message-ID-Hash: DTJF7CRCLPUEQEIQNCZRHCR7UXE5QPK3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sampling channels at different rates
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DTJF7CRCLPUEQEIQNCZRHCR7UXE5QPK3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3912216200836877183=="

This is a multi-part message in MIME format.
--===============3912216200836877183==
Content-Type: multipart/alternative;
 boundary="------------M2QQMBamEaPVSbvpN0OxPB1u"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------M2QQMBamEaPVSbvpN0OxPB1u
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 16/12/2024 13:47, Christophe Grimault wrote:
>
> I followed your advice and I'm getting closer !-)
>
> I tried this :
>
> usrp =3D uhd.usrp.MultiUSRP(f"addr=3D192.168.30.2")
> duration =3D10.0 start_time_spec =3D uhd.libpyuhd.types.time_spec(usrp.=
get_time_now().get_real_secs() +1.0)
>
> rx_rates =3D [390625.0*2,390625.0]
>
> # --------------- # Craft commands # --------------- # Start with chan=20
> 0 ... usrp.set_rx_rate(rx_rates[0],chan=3D0)
> rx_tune_request0 =3D uhd.types.TuneRequest(1100.0e6)
> usrp.set_rx_freq(tune_request=3Drx_tune_request0,chan=3D0)
> usrp.set_rx_gain(45.0,chan=3D0)
> num_samps0 =3D math.ceil(int(usrp.get_rx_rate(chan=3D0)) * duration)
>
> rx_streamer_args0 =3D uhd.usrp.StreamArgs("fc32","sc16")
> rx_streamer_args0.channels =3D [0]
> rx_streamer0 =3D usrp.get_rx_stream(rx_streamer_args0)
> max_samps_per_packet =3D rx_streamer0.get_max_num_samps()
> L0 =3D math.ceil(num_samps0 / max_samps_per_packet) * max_samps_per_pac=
ket
> recv_buffer0 =3D np.zeros(L0,dtype=3Dnp.complex64)
> stream_cmd0 =3D uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)#nu=
m_done) stream_cmd0.stream_now =3DFalse stream_cmd0.num_samps =3D num_sam=
ps0
> stream_cmd0.time_spec =3D start_time_spec
>
> # Then chan 1, which is 2 times slower. usrp.set_rx_rate(rx_rates[1],ch=
an=3D1)
> rx_tune_request1 =3D uhd.types.TuneRequest(1100.0e6)
> usrp.set_rx_freq(tune_request=3Drx_tune_request1,chan=3D1)
> usrp.set_rx_gain(35.0,chan=3D1)
> num_samps1 =3D math.ceil(int(usrp.get_rx_rate(chan=3D1)) * duration)
>
> rx_streamer_args1 =3D uhd.usrp.StreamArgs("fc32","sc16")
> rx_streamer_args1.channels =3D [1]
> rx_streamer1 =3D usrp.get_rx_stream(rx_streamer_args1)
> max_samps_per_packet =3D rx_streamer1.get_max_num_samps()
> L1 =3D math.ceil(num_samps1 / max_samps_per_packet) * max_samps_per_pac=
ket
> recv_buffer1 =3D np.zeros(L1,dtype=3Dnp.complex64)
> stream_cmd1 =3D uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)#nu=
m_done) stream_cmd1.stream_now =3DFalse stream_cmd1.num_samps =3D num_sam=
ps1
> stream_cmd1.time_spec =3D start_time_spec
>
> # -------------------------------------------------- # Launch sampling=20
> on both streamers, i.e. channels #=20
> -------------------------------------------------- rx_streamer0.issue_s=
tream_cmd(stream_cmd0)
> rx_streamer1.issue_stream_cmd(stream_cmd1)
>
> metadata0 =3D uhd.types.RXMetadata()
> nb_samples0 =3D rx_streamer0.recv(recv_buffer0, metadata0,3.0)
>
> metadata1 =3D uhd.types.RXMetadata()
> nb_samples1 =3D rx_streamer1.recv(recv_buffer1, metadata1,3.0)
>
> metadata0.time_spec.get_real_secs() - metadata1.time_spec.get_real_secs=
()
>
> And got the attached figures.
>
> Over the 10 s of capture, I switch of the signal at the same time on=20
> both channels (exact same time because the switch is before the RF=20
> coupler). Both capture are roughly aligned in time, but when I zoom, I=20
> see 26 us of delay (which is roughly 10 samples at rx_rate_1 of=20
> 390625). Am I wrong expecting a "perfect timing" ? And when I compute :
>
> metadata0.time_spec.get_real_secs() - metadata1.time_spec.get_real_secs=
()
>
> still I get 0.0 us.
>
> What am I doing wrong ? Shall I launch threads ?
>
> Any thoughts ?
>
> Thanks in advance
>
> Chris
>
A cursory inspection of your code doesn't indicate any glaring errors,=20
but your start-time is only 1 second ahead of when
 =C2=A0 you get the time from the device.=C2=A0 That MAY not be enough to=
 get both=20
streamers set-up so that they'll "trigger" at the
 =C2=A0 same time.

What device type is this?


>
> Christophe Grimault
> NovaGrid SAS
> Les Jardins de la Teillais
> 3, all=C3=A9e de la grande =C3=A9galonne
> 35740 Pac=C3=A9, France
> Tel : (33)2 23 41 37 97
> Mob: (33)6 82 22 46 93
> www.novagrid.com
> Le 16/12/2024 =C3=A0 15:15, Christophe Grimault a =C3=A9crit=C2=A0:
>>
>> Dear users,
>>
>> I'm using python wrappers with UHD >=3D 4.5 and a X300 with 2 twinRx.
>>
>> I would like to know if it is possible to create a streamer, for more=20
>> than N channels, with a sampling rate which different for each channel=
.
>>
>> As for now, when I try this, I get all my 4 channels with the same=20
>> sampling rate, which is the one of the last channel added.
>>
>> Is it just possible to do it ? Say, for example,=C2=A0 have a streamer=
=20
>> with 2 channels :
>>
>>   * chan 0 on fc =3D 140 Mhz, rx_rate=3D20 MS/s
>>   * chan 1 on fc =3D 140 MHz, rx_rate=3D1 MS/s
>>
>> Thanks in advance
>>
>> Chris
>>
>>
>> --=20
>> Christophe Grimault
>> NovaGrid SAS
>> Les Jardins de la Teillais
>> 3, all=C3=A9e de la grande =C3=A9galonne
>> 35740 Pac=C3=A9, France
>> Tel : (33)2 23 41 37 97
>> Mob: (33)6 82 22 46 93
>> www.novagrid.com
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------M2QQMBamEaPVSbvpN0OxPB1u
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 16/12/2024 13:47, Christophe
      Grimault wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:5fbd3c1d-1ab1-f199-7419-a670665f37f4@novagrid.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I followed your advice and I'm getting closer !-)</p>
      <p>I tried this :</p>
      <div style=3D"background-color:#1e1f22;color:#bcbec4">
        <pre
        style=3D"font-family:'JetBrains Mono',monospace;font-size:10,5pt;=
">usrp =3D uhd.usrp.MultiUSRP(<span
        style=3D"color:#6aab73;">f"addr=3D192.168.30.2"</span>)
duration =3D <span style=3D"color:#2aacb8;">10.0
</span>start_time_spec =3D uhd.libpyuhd.types.time_spec(usrp.get_time_now=
<span
        style=3D"color:#54a857;">()</span>.get_real_secs<span
        style=3D"color:#54a857;">() </span>+ <span style=3D"color:#2aacb8=
;">1.0</span>)

rx_rates =3D [<span style=3D"color:#2aacb8;">390625.0</span>*<span
        style=3D"color:#2aacb8;">2</span>, <span style=3D"color:#2aacb8;"=
>390625.0</span>]

<span style=3D"color:#aca453;"># ---------------
</span><span style=3D"color:#aca453;"># Craft commands
</span><span style=3D"color:#aca453;"># ---------------
</span><span style=3D"color:#aca453;">
</span><span style=3D"color:#aca453;"># Start with chan 0 ...
</span>usrp.set_rx_rate(rx_rates[<span style=3D"color:#2aacb8;">0</span>]=
, <span
        style=3D"color:#aa4926;">chan</span>=3D<span style=3D"color:#2aac=
b8;">0</span>)
rx_tune_request0 =3D uhd.types.TuneRequest(<span style=3D"color:#2aacb8;"=
>1100.0e6</span>)
usrp.set_rx_freq(<span style=3D"color:#aa4926;">tune_request</span>=3Drx_=
tune_request0, <span
        style=3D"color:#aa4926;">chan</span>=3D<span style=3D"color:#2aac=
b8;">0</span>)
usrp.set_rx_gain(<span style=3D"color:#2aacb8;">45.0</span>, <span
        style=3D"color:#aa4926;">chan</span>=3D<span style=3D"color:#2aac=
b8;">0</span>)
num_samps0 =3D math.ceil(<span style=3D"color:#8888c6;">int</span><span
        style=3D"color:#54a857;">(</span>usrp.get_rx_rate<span
        style=3D"color:#359ff4;">(</span><span style=3D"color:#aa4926;">c=
han</span>=3D<span
        style=3D"color:#2aacb8;">0</span><span style=3D"color:#359ff4;">)=
</span><span
        style=3D"color:#54a857;">) </span>* duration)

rx_streamer_args0 =3D uhd.usrp.StreamArgs(<span style=3D"color:#6aab73;">=
"fc32"</span>, <span
        style=3D"color:#6aab73;">"sc16"</span>)
rx_streamer_args0.channels =3D [<span style=3D"color:#2aacb8;">0</span>]
rx_streamer0 =3D usrp.get_rx_stream(rx_streamer_args0)
max_samps_per_packet =3D rx_streamer0.get_max_num_samps()
L0 =3D math.ceil(num_samps0 / max_samps_per_packet) * max_samps_per_packe=
t
recv_buffer0 =3D np.zeros(L0, <span style=3D"color:#aa4926;">dtype</span>=
=3Dnp.complex64)
stream_cmd0 =3D uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)  <sp=
an
        style=3D"color:#aca453;">#num_done)
</span>stream_cmd0.stream_now =3D <span style=3D"color:#cf8e6d;">False
</span>stream_cmd0.num_samps =3D num_samps0
stream_cmd0.time_spec =3D start_time_spec

<span style=3D"color:#aca453;"># Then chan 1, which is 2 times slower.
</span>usrp.set_rx_rate(rx_rates[<span style=3D"color:#2aacb8;">1</span>]=
, <span
        style=3D"color:#aa4926;">chan</span>=3D<span style=3D"color:#2aac=
b8;">1</span>)
rx_tune_request1 =3D uhd.types.TuneRequest(<span style=3D"color:#2aacb8;"=
>1100.0e6</span>)
usrp.set_rx_freq(<span style=3D"color:#aa4926;">tune_request</span>=3Drx_=
tune_request1, <span
        style=3D"color:#aa4926;">chan</span>=3D<span style=3D"color:#2aac=
b8;">1</span>)
usrp.set_rx_gain(<span style=3D"color:#2aacb8;">35.0</span>, <span
        style=3D"color:#aa4926;">chan</span>=3D<span style=3D"color:#2aac=
b8;">1</span>)
num_samps1 =3D math.ceil(<span style=3D"color:#8888c6;">int</span><span
        style=3D"color:#54a857;">(</span>usrp.get_rx_rate<span
        style=3D"color:#359ff4;">(</span><span style=3D"color:#aa4926;">c=
han</span>=3D<span
        style=3D"color:#2aacb8;">1</span><span style=3D"color:#359ff4;">)=
</span><span
        style=3D"color:#54a857;">) </span>* duration)

rx_streamer_args1 =3D uhd.usrp.StreamArgs(<span style=3D"color:#6aab73;">=
"fc32"</span>, <span
        style=3D"color:#6aab73;">"sc16"</span>)
rx_streamer_args1.channels =3D [<span style=3D"color:#2aacb8;">1</span>]
rx_streamer1 =3D usrp.get_rx_stream(rx_streamer_args1)
max_samps_per_packet =3D rx_streamer1.get_max_num_samps()
L1 =3D math.ceil(num_samps1 / max_samps_per_packet) * max_samps_per_packe=
t
recv_buffer1 =3D np.zeros(L1, <span style=3D"color:#aa4926;">dtype</span>=
=3Dnp.complex64)
stream_cmd1 =3D uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)  <sp=
an
        style=3D"color:#aca453;">#num_done)
</span>stream_cmd1.stream_now =3D <span style=3D"color:#cf8e6d;">False
</span>stream_cmd1.num_samps =3D num_samps1
stream_cmd1.time_spec =3D start_time_spec

<span style=3D"color:#aca453;"># ----------------------------------------=
----------
</span><span style=3D"color:#aca453;"># Launch sampling on both streamers=
, i.e. channels
</span><span style=3D"color:#aca453;"># ---------------------------------=
-----------------
</span><span style=3D"color:#aca453;">
</span>rx_streamer0.issue_stream_cmd(stream_cmd0)
rx_streamer1.issue_stream_cmd(stream_cmd1)

metadata0 =3D uhd.types.RXMetadata()
nb_samples0 =3D rx_streamer0.recv(recv_buffer0, metadata0, <span
        style=3D"color:#2aacb8;">3.0</span>)

metadata1 =3D uhd.types.RXMetadata()
nb_samples1 =3D rx_streamer1.recv(recv_buffer1, metadata1, <span
        style=3D"color:#2aacb8;">3.0</span>)

metadata0.time_spec.get_real_secs() - metadata1.time_spec.get_real_secs()=
</pre>
      </div>
      <p>And got the attached figures.</p>
      <p>Over the 10 s of capture, I switch of the signal at the same
        time on both channels (exact same time because the switch is
        before the RF coupler). Both capture are roughly aligned in
        time, but when I zoom, I see 26 us of delay (which is roughly 10
        samples at rx_rate_1 of 390625). Am I wrong expecting a "perfect
        timing" ? And when I compute :</p>
      <p>metadata0.time_spec.get_real_secs() -
        metadata1.time_spec.get_real_secs()</p>
      <p>still I get 0.0 us.</p>
      <p>What am I doing wrong ? Shall I launch threads ?</p>
      <p>Any thoughts ?</p>
      <p>Thanks in advance</p>
      <p>Chris<br>
      </p>
    </blockquote>
    A cursory inspection of your code doesn't indicate any glaring
    errors, but your start-time is only 1 second ahead of when<br>
    =C2=A0 you get the time from the device.=C2=A0 That MAY not be enough=
 to get
    both streamers set-up so that they'll "trigger" at the<br>
    =C2=A0 same time.<br>
    <br>
    What device type is this?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:5fbd3c1d-1ab1-f199-7419-a670665f37f4@novagrid.com">
      <p> </p>
      <p><br>
      </p>
      <pre class=3D"moz-signature" cols=3D"72">Christophe Grimault
NovaGrid SAS
Les Jardins de la Teillais
3, all=C3=A9e de la grande =C3=A9galonne
35740 Pac=C3=A9, France
Tel : (33)2 23 41 37 97
Mob: (33)6 82 22 46 93
<a class=3D"moz-txt-link-abbreviated" href=3D"http://www.novagrid.com"
      moz-do-not-send=3D"true">www.novagrid.com</a></pre>
      <div class=3D"moz-cite-prefix">Le 16/12/2024 =C3=A0 15:15, Christop=
he
        Grimault a =C3=A9crit=C2=A0:<br>
      </div>
      <blockquote type=3D"cite"
        cite=3D"mid:244d0fbb-2687-c74e-0b9d-e1de1122d382@novagrid.com">
        <meta http-equiv=3D"content-type"
          content=3D"text/html; charset=3DUTF-8">
        <p>Dear users,</p>
        <p>I'm using python wrappers with UHD &gt;=3D 4.5 and a X300 with
          2 twinRx.</p>
        <p>I would like to know if it is possible to create a streamer,
          for more than N channels, with a sampling rate which different
          for each channel.</p>
        <p>As for now, when I try this, I get all my 4 channels with the
          same sampling rate, which is the one of the last channel
          added.</p>
        <p>Is it just possible to do it ? Say, for example,=C2=A0 have a
          streamer with 2 channels : <br>
        </p>
        <ul>
          <li>chan 0 on fc =3D 140 Mhz, rx_rate=3D20 MS/s</li>
          <li>chan 1 on fc =3D 140 MHz, rx_rate=3D1 MS/s</li>
        </ul>
        <p>Thanks in advance<br>
        </p>
        <p>Chris<br>
        </p>
        <p><br>
        </p>
        <pre class=3D"moz-signature" cols=3D"72">--=20
Christophe Grimault
NovaGrid SAS
Les Jardins de la Teillais
3, all=C3=A9e de la grande =C3=A9galonne
35740 Pac=C3=A9, France
Tel : (33)2 23 41 37 97
Mob: (33)6 82 22 46 93
<a class=3D"moz-txt-link-abbreviated" href=3D"http://www.novagrid.com"
        moz-do-not-send=3D"true">www.novagrid.com</a></pre>
        <br>
        <fieldset class=3D"moz-mime-attachment-header"></fieldset>
        <pre class=3D"moz-quote-pre" wrap=3D"">__________________________=
_____________________
USRP-users mailing list -- <a
        class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
        href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D"tru=
e">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a
        class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
        href=3D"mailto:usrp-users-leave@lists.ettus.com"
        moz-do-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
      </blockquote>
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

--------------M2QQMBamEaPVSbvpN0OxPB1u--

--===============3912216200836877183==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3912216200836877183==--
