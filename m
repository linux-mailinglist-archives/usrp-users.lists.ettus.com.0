Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7214A2C8F3
	for <lists+usrp-users@lfdr.de>; Fri,  7 Feb 2025 17:33:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 58AF0385EEC
	for <lists+usrp-users@lfdr.de>; Fri,  7 Feb 2025 11:33:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738945996; bh=Dv+U7n2Y++EF+QipeuGjhKrIVXh0CgHMrclniePsD1Q=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=eFTFfhRXScCH5ZMXcUKsQ7Nbvu0YVrRfohgmc1xmOhJ/uWeSNhEpKSEP/aG8cCIPs
	 URfDIjechRfu6XAKrmCXXNrB/VouLiPYQRcxxXXhRedrEd8DWzY0rdC4GbDoFanbRD
	 3ekzOh72E5/TVQgW1XA9hohpi3SxiHboYTT9PtdT0lGNFthDLmgT47GP8CZctzO9Ou
	 6hk/sDrDfkizwSU9JiC3VcHaaqQZyz2NS/oFa1B2sfwq/yl9Q4XeY0YApQiE0eWg0B
	 IdABuLMTMjWng0Au6oJKa3LR8a7Hq4XrN0plY7NoOXhG6ftxBlhK7dMlFnGx1+uuYM
	 Gnc7w3Fw3so5Q==
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 0D727385EE5
	for <usrp-users@lists.ettus.com>; Fri,  7 Feb 2025 11:32:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OAhzQCpQ";
	dkim-atps=neutral
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-5fc0c7b391fso675929eaf.3
        for <usrp-users@lists.ettus.com>; Fri, 07 Feb 2025 08:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738945934; x=1739550734; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=53v9y0Z/sCbXHa9r0g21p4Wmd2gVZQM0vPu8d3dD/Zs=;
        b=OAhzQCpQfCgUB7pCP0QWQsQ/z82tgoFrbhhREfu+9cKFjY/ifD1wMOhBnPGbnRydwm
         3LWIDW+0AwWIXG+baS9HhpikVgrUqYm1ta5mq3mXJ8K4D1Vk91uIsInwyYkF3sPPCNSV
         P1SakCF5ggMJqvZkXEBU/XatLQAAX51Tl+PIQEI7kkt+WD1Iu5FeEUaHMBX69bOTyLYT
         8+E3c21TrXtDf6A53CZXEba8VKvwQ2dyQYxj1q6wDGjzqgOVjPs3dWOWxPYlg/uW9AwR
         Bw3qYiS88whRiw3yDXpAaNDhjdO4huhhi3UqDTXph8kCOXKu2uRz1zIH6/xsIGV5Hfrp
         pZpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738945934; x=1739550734;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=53v9y0Z/sCbXHa9r0g21p4Wmd2gVZQM0vPu8d3dD/Zs=;
        b=Kv/GSTSKcp6Yt1tMLo1nFk+O/XyaPYEB3YZyKirroHy8pzvSAvP5YA0hXh4pYSdtXv
         PROPrg4sZPM4DlekP3Rcj3bNll9VBnIeaXN/Tr52YsSXjXwMhQcHzyqX5JaQzepvj73/
         axu9OqF2yW5/HdJV+INKcmCnZ87hbu1wVYnw82wVBNN+rClKh8skw7JD1rWTDfcwFiwX
         h7nE0p8oYF50mKsC0dUEtwvw4b6ntCyP3OgagvfivxNCxwiFA9KOR8ALYUtR1XRGfEkL
         6y9EwLkhRINJ97A9W9yj0AoaJLHEbmI0Jp1B4O+57KN5FF+Qo3I5T/WZPhnzEkgGOSCV
         VXaA==
X-Gm-Message-State: AOJu0Ywmjql37hWlJK6B69yN9bswuGWY++NUJ7an/MKiQz7enWQS4i3g
	PRPcaETC6ozlNXYi41YaQUgW2uCfqK0jIhdywfEpJGKCnYpVhJIRkUB1rN/+XJT9jAY49gru5Ub
	2KZZHrg/Q4xoZMNrn/8A89Bj5izTEJBxH
X-Gm-Gg: ASbGncs1WIqNRG48AlHVIgNIpH7DK4tdwbBRDrvTj8/srw87kMi4GGmahFZVamBXEnG
	igegeKUgajbX4e4qTUJPzPHqe6rkFtzEZ/vKrhAs9Cz8f08W5Vf6N70mhC1Rrsq8khhTHj0s=
X-Google-Smtp-Source: AGHT+IFqGEEm5PSfYt6fvaxayFSg9a8/ojpliDlYi1GFsIbvxMHxjYAn51dN/mpjQiXH45lS8lR9/+XgCZePnV9VkgE=
X-Received: by 2002:a05:6820:16a3:b0:5f8:ac9b:bcc5 with SMTP id
 006d021491bc7-5fc5e45506emr2468683eaf.0.1738945934022; Fri, 07 Feb 2025
 08:32:14 -0800 (PST)
MIME-Version: 1.0
References: <yjuewVxQDt6a5IGJ3wfGKoab6OpNqWTdxdQCdYcpZk@lists.ettus.com>
In-Reply-To: <yjuewVxQDt6a5IGJ3wfGKoab6OpNqWTdxdQCdYcpZk@lists.ettus.com>
From: Chris Rogers <c1337rogers@gmail.com>
Date: Fri, 7 Feb 2025 11:32:02 -0500
X-Gm-Features: AWEUYZkozQluNqUar4KaMpFr4Qc24pfmPQQqs3C6xTqrrJQvZw9F0o5YkwbeDa0
Message-ID: <CAOEzSFQ1VM1ahBwM+02saTafP7CxDoGKqRh59BTBpex16fLL=g@mail.gmail.com>
To: rilbert.silva@embedded.ufcg.edu.br
Message-ID-Hash: LR2N5PUKGZ4YPIORSZXXM4PT2DJI6QMG
X-Message-ID-Hash: LR2N5PUKGZ4YPIORSZXXM4PT2DJI6QMG
X-MailFrom: c1337rogers@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error when running Benchmark on USRP X440: RfnocError - OpTimeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LR2N5PUKGZ4YPIORSZXXM4PT2DJI6QMG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0313884532679170357=="

--===============0313884532679170357==
Content-Type: multipart/alternative; boundary="000000000000ae61b1062d8fe676"

--000000000000ae61b1062d8fe676
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I=E2=80=99d suggest taking a look at this section of the manual
https://files.ettus.com/manual/page_usrp_x4xx.html#x440_usage_mcrs and the
link Marcus sent
https://kb.ettus.com/About_Sampling_Rates_and_Master_Clock_Rates_for_the_US=
RP_X440.
This is a unique USRP architecture that requires some frequency and clock
planning

You should probably manually set your desired Master Clock Rate (MCR) and
Converter Rate (Fc) based on your frequencies of interest. It=E2=80=99s imp=
ortant
to note that the X440 has no analog front end, so you cannot adjust any
analog bandwidth filters, but you can reduce the MCR and Fc which will
reduce the bandwidth digitally, and DDC will further reduce the bandwidth.
You can set these clocks in the device arguments. So basically, if you set
rx_rate=3D100e6, you=E2=80=99ll be getting 100 MHz of bandwidth, but where =
in the
spectrum that 100 MHz is located and how many aliases you=E2=80=99ll see is=
 decided
by how you configure the clocks and what you set the RF center frequency to=
.

Your timeout error is probably caused by running UHD programs on the X440
itself. It=E2=80=99s really designed to stream samples to it from a differe=
nt host
computer over the QSFP ports

On Fri, Feb 7, 2025 at 8:44=E2=80=AFAM Rilbert Lima via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Thank you, Chris.
>
> I have updated the FPGA image from the USRP X440 to the X4_200, and upon
> executing, the sampling rate has been reduced to approximately 5 Msps.
>
> Another matter I would like to inquire about is whether it is possible to
> reduce the analog bandwidth of the signal from 200 MHz to 100 MHz. I am
> aiming to use the X440 with OpenAirInterface5G in FR1, but since the imag=
e
> is from the X4_200, which is tied to a 200 MHz bandwidth, I would like to
> know if there is any workaround to perform this downgrade."
>
> However, in some tests that were performed, the receive timeout error
> appears, even using the 5e6 sampling rate, increasing the value to 99 *Nu=
m
> timeouts (Rx): 99*. And I don't know why these receive errors appeared.
>
>
> root@ni-x4xx-342597F:/usr/lib/uhd/examples# ./benchmark_rate --rx_rate
> 5e6 --tx_rate 5e6
>
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107800;
> UHD_4.7.0.0-0-ga5ed1872
>
> [00:00:00.029460] Creating the usrp device with: ...
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx440,serial=3D342597F,name=3D=
ni-x4xx-342597F,fpga=3DX4_200,claimed=3DFalse
>
> [WARNING] [MPM.RPCServer] A timeout event occured!
>
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DX4_200,mgmt_addr=3D127.0.0.1,name=3Dni-x4xx-342597F,product=3Dx44=
0,clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.
>
> Using Device: Single USRP:
>
> Device: X400-Series Device
>
> Mboard 0: x440
>
> RX Channel: 0
>
> RX DSP: 0
>
> RX Dboard: A
>
> RX Subdev: 0
>
> RX Channel: 1
>
> RX DSP: 1
>
> RX Dboard: A
>
> RX Subdev: 1
>
> RX Channel: 2
>
> RX DSP: 2
>
> RX Dboard: A
>
> RX Subdev: 2
>
> RX Channel: 3
>
> RX DSP: 3
>
> RX Dboard: A
>
> RX Subdev: 3
>
> RX Channel: 4
>
> RX DSP: 4
>
> RX Dboard: B
>
> RX Subdev: 0
>
> RX Channel: 5
>
> RX DSP: 5
>
> RX Dboard: B
>
> RX Subdev: 1
>
> RX Channel: 6
>
> RX DSP: 6
>
> RX Dboard: B
>
> RX Subdev: 2
>
> RX Channel: 7
>
> RX DSP: 7
>
> RX Dboard: B
>
> RX Subdev: 3
>
> TX Channel: 0
>
> TX DSP: 0
>
> TX Dboard: A
>
> TX Subdev: 0
>
> TX Channel: 1
>
> TX DSP: 1
>
> TX Dboard: A
>
> TX Subdev: 1
>
> TX Channel: 2
>
> TX DSP: 2
>
> TX Dboard: A
>
> TX Subdev: 2
>
> TX Channel: 3
>
> TX DSP: 3
>
> TX Dboard: A
>
> TX Subdev: 3
>
> TX Channel: 4
>
> TX DSP: 4
>
> TX Dboard: B
>
> TX Subdev: 0
>
> TX Channel: 5
>
> TX DSP: 5
>
> TX Dboard: B
>
> TX Subdev: 1
>
> TX Channel: 6
>
> TX DSP: 6
>
> TX Dboard: B
>
> TX Subdev: 2
>
> TX Channel: 7
>
> TX DSP: 7
>
> TX Dboard: B
>
> TX Subdev: 3
>
> [00:00:04.112276974] Setting device timestamp to 0...
>
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 49
>
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 49
>
> [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate is
> 5.016 MHz
>
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 49
>
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 49
>
> [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate is
> 5.016 MHz
>
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 49
>
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 49
>
> [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate is
> 5.016 MHz
>
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 49
>
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 49
>
> [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate is
> 5.016 MHz
>
> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 49
>
> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 49
>
> [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate is
> 5.016 MHz
>
> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 49
>
> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 49
>
> [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate is
> 5.016 MHz
>
> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 49
>
> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 49
>
> [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate is
> 5.016 MHz
>
> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 49
>
> [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate is
> 5.016 MHz
>
> [00:00:04.465504150] Testing receive rate 5.015510 Msps on 1 channels
>
> [WARNING] [0/DUC#0] The requested interpolation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even interpolation to ensure that a halfband filter is enabled.
>
> [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate is
> 5.016 MHz
>
> [WARNING] [0/DUC#0] The requested interpolation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even interpolation to ensure that a halfband filter is enabled.
>
> [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate is
> 5.016 MHz
>
> [WARNING] [0/DUC#0] The requested interpolation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even interpolation to ensure that a halfband filter is enabled.
>
> [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate is
> 5.016 MHz
>
> [WARNING] [0/DUC#0] The requested interpolation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even interpolation to ensure that a halfband filter is enabled.
>
> [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate is
> 5.016 MHz
>
> [WARNING] [0/DUC#1] The requested interpolation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even interpolation to ensure that a halfband filter is enabled.
>
> [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate is
> 5.016 MHz
>
> [WARNING] [0/DUC#1] The requested interpolation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even interpolation to ensure that a halfband filter is enabled.
>
> [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate is
> 5.016 MHz
>
> [WARNING] [0/DUC#1] The requested interpolation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even interpolation to ensure that a halfband filter is enabled.
>
> [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate is
> 5.016 MHz
>
> [WARNING] [0/DUC#1] The requested interpolation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even interpolation to ensure that a halfband filter is enabled.
>
> [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate is
> 5.016 MHz
>
> Setting TX spp to 352
>
> [00:00:04.801908845] Testing transmit rate 5.015510 Msps on 1 channels
>
> [00:00:14.826000429] Benchmark complete.
>
> Benchmark rate summary:
>
> Num received samples: 50161056
>
> Num dropped samples: 0
>
> Num overruns detected: 0
>
> Num transmitted samples: 50201888
>
> Num sequence errors (Tx): 0
>
> Num sequence errors (Rx): 0
>
> Num underruns detected: 0
>
> Num late commands: 0
>
> Num timeouts (Tx): 0
>
> Num timeouts (Rx): 0
>
> Done!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000ae61b1062d8fe676
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">



















<p class=3D"MsoNormal" style=3D"margin:0in;font-size:12pt;font-family:&quot=
;Aptos&quot;,sans-serif"><span style=3D"font-size:11pt">I=E2=80=99d
suggest taking a look at this section of the manual <a href=3D"https://file=
s.ettus.com/manual/page_usrp_x4xx.html#x440_usage_mcrs" style=3D"color:rgb(=
70,120,134);text-decoration:underline">https://files.ettus.com/manual/page_=
usrp_x4xx.html#x440_usage_mcrs</a>
and the link Marcus sent <a href=3D"https://kb.ettus.com/About_Sampling_Rat=
es_and_Master_Clock_Rates_for_the_USRP_X440" style=3D"color:rgb(70,120,134)=
;text-decoration:underline">https://kb.ettus.com/About_Sampling_Rates_and_M=
aster_Clock_Rates_for_the_USRP_X440</a>.
This is a unique USRP architecture that requires some frequency and clock
planning<br>
<br>
You should probably manually set your desired Master Clock Rate (MCR) and
Converter Rate (Fc) based on your frequencies of interest. It=E2=80=99s imp=
ortant to
note that the X440 has no analog front end, so you cannot adjust any analog
bandwidth filters, but you can reduce the MCR and Fc which will reduce the
bandwidth digitally, and DDC will further reduce the bandwidth. You can set=
 these
clocks in the device arguments. So basically, if you set rx_rate=3D100e6, y=
ou=E2=80=99ll
be getting 100 MHz of bandwidth, but where in the spectrum that 100 MHz is
located and how many aliases you=E2=80=99ll see is decided by how you confi=
gure the
clocks and what you set the RF center frequency to.<br>
<br>
Your timeout error is probably caused by running UHD programs on the X440 i=
tself.
It=E2=80=99s really designed to stream samples to it from a different host =
computer over
the QSFP ports<span></span></span></p>





</div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Fri, Feb 7, 2025 at 8:44=E2=80=AFAM Rilbert Lima v=
ia USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><p>Thank you, Chris. </p><p>I have updated the FPGA image fr=
om the USRP X440 to the X4_200, and upon executing, the sampling rate has b=
een reduced to approximately 5 Msps.</p><p>Another matter I would like to i=
nquire about is whether it is possible to reduce the analog bandwidth of th=
e signal from 200 MHz to 100 MHz. I am aiming to use the X440 with OpenAirI=
nterface5G in FR1, but since the image is from the X4_200, which is tied to=
 a 200 MHz bandwidth, I would like to know if there is any workaround to pe=
rform this downgrade.&quot;</p><p>However, in some tests that were performe=
d, the receive timeout error appears, even using the 5e6 sampling rate, inc=
reasing the value to 99 *Num timeouts (Rx): 99*. And I don&#39;t know why t=
hese receive errors appeared.</p><p><br></p><p>root@ni-x4xx-342597F:/usr/li=
b/uhd/examples# ./benchmark_rate --rx_rate 5e6 --tx_rate 5e6</p><p>[INFO] [=
UHD] linux; GNU C++ version 11.4.0; Boost_107800; UHD_4.7.0.0-0-ga5ed1872</=
p><p>[00:00:00.029460] Creating the usrp device with: ...</p><p>[INFO] [MPM=
D] Initializing 1 device(s) in parallel with args: mgmt_addr=3D127.0.0.1,ty=
pe=3Dx4xx,product=3Dx440,serial=3D342597F,name=3Dni-x4xx-342597F,fpga=3DX4_=
200,claimed=3DFalse</p><p>[WARNING] [MPM.RPCServer] A timeout event occured=
!</p><p>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX=
4_200,mgmt_addr=3D127.0.0.1,name=3Dni-x4xx-342597F,product=3Dx440,clock_sou=
rce=3Dinternal,time_source=3Dinternal,initializing=3DTrue&#39;.</p><p>Using=
 Device: Single USRP:</p><p>  Device: X400-Series Device</p><p>  Mboard 0: =
x440</p><p>  RX Channel: 0</p><p>    RX DSP: 0</p><p>    RX Dboard: A</p><p=
>    RX Subdev: 0</p><p>  RX Channel: 1</p><p>    RX DSP: 1</p><p>    RX Db=
oard: A</p><p>    RX Subdev: 1</p><p>  RX Channel: 2</p><p>    RX DSP: 2</p=
><p>    RX Dboard: A</p><p>    RX Subdev: 2</p><p>  RX Channel: 3</p><p>   =
 RX DSP: 3</p><p>    RX Dboard: A</p><p>    RX Subdev: 3</p><p>  RX Channel=
: 4</p><p>    RX DSP: 4</p><p>    RX Dboard: B</p><p>    RX Subdev: 0</p><p=
>  RX Channel: 5</p><p>    RX DSP: 5</p><p>    RX Dboard: B</p><p>    RX Su=
bdev: 1</p><p>  RX Channel: 6</p><p>    RX DSP: 6</p><p>    RX Dboard: B</p=
><p>    RX Subdev: 2</p><p>  RX Channel: 7</p><p>    RX DSP: 7</p><p>    RX=
 Dboard: B</p><p>    RX Subdev: 3</p><p>  TX Channel: 0</p><p>    TX DSP: 0=
</p><p>    TX Dboard: A</p><p>    TX Subdev: 0</p><p>  TX Channel: 1</p><p>=
    TX DSP: 1</p><p>    TX Dboard: A</p><p>    TX Subdev: 1</p><p>  TX Chan=
nel: 2</p><p>    TX DSP: 2</p><p>    TX Dboard: A</p><p>    TX Subdev: 2</p=
><p>  TX Channel: 3</p><p>    TX DSP: 3</p><p>    TX Dboard: A</p><p>    TX=
 Subdev: 3</p><p>  TX Channel: 4</p><p>    TX DSP: 4</p><p>    TX Dboard: B=
</p><p>    TX Subdev: 0</p><p>  TX Channel: 5</p><p>    TX DSP: 5</p><p>   =
 TX Dboard: B</p><p>    TX Subdev: 1</p><p>  TX Channel: 6</p><p>    TX DSP=
: 6</p><p>    TX Dboard: B</p><p>    TX Subdev: 2</p><p>  TX Channel: 7</p>=
<p>    TX DSP: 7</p><p>    TX Dboard: B</p><p>    TX Subdev: 3</p><p>[00:00=
:04.112276974] Setting device timestamp to 0...</p><p>[WARNING] [0/DDC#0] T=
he requested decimation is odd; the user should expect passband CIC rolloff=
.</p><p>Select an even decimation to ensure that a halfband filter is enabl=
ed.</p><p>Decimations factorable by 4 will enable 2 halfbands, those factor=
able by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate =
-&gt; 49</p><p>[WARNING] [0/DDC#0] The requested decimation is odd; the use=
r should expect passband CIC rolloff.</p><p>Select an even decimation to en=
sure that a halfband filter is enabled.</p><p>Decimations factorable by 4 w=
ill enable 2 halfbands, those factorable by 8 will enable 3 halfbands.</p><=
p>decimation =3D dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [MULTI_USRP] C=
ould not set RX rate to 5.000 MHz. Actual rate is 5.016 MHz</p><p>[WARNING]=
 [0/DDC#0] The requested decimation is odd; the user should expect passband=
 CIC rolloff.</p><p>Select an even decimation to ensure that a halfband fil=
ter is enabled.</p><p>Decimations factorable by 4 will enable 2 halfbands, =
those factorable by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rat=
e/samp_rate -&gt; 49</p><p>[WARNING] [0/DDC#0] The requested decimation is =
odd; the user should expect passband CIC rolloff.</p><p>Select an even deci=
mation to ensure that a halfband filter is enabled.</p><p>Decimations facto=
rable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 hal=
fbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [M=
ULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate is 5.016 MHz</p>=
<p>[WARNING] [0/DDC#0] The requested decimation is odd; the user should exp=
ect passband CIC rolloff.</p><p>Select an even decimation to ensure that a =
halfband filter is enabled.</p><p>Decimations factorable by 4 will enable 2=
 halfbands, those factorable by 8 will enable 3 halfbands.</p><p>decimation=
 =3D dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [0/DDC#0] The requested de=
cimation is odd; the user should expect passband CIC rolloff.</p><p>Select =
an even decimation to ensure that a halfband filter is enabled.</p><p>Decim=
ations factorable by 4 will enable 2 halfbands, those factorable by 8 will =
enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</p><p>=
[WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate is 5=
.016 MHz</p><p>[WARNING] [0/DDC#0] The requested decimation is odd; the use=
r should expect passband CIC rolloff.</p><p>Select an even decimation to en=
sure that a halfband filter is enabled.</p><p>Decimations factorable by 4 w=
ill enable 2 halfbands, those factorable by 8 will enable 3 halfbands.</p><=
p>decimation =3D dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [0/DDC#0] The =
requested decimation is odd; the user should expect passband CIC rolloff.</=
p><p>Select an even decimation to ensure that a halfband filter is enabled.=
</p><p>Decimations factorable by 4 will enable 2 halfbands, those factorabl=
e by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&g=
t; 49</p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actu=
al rate is 5.016 MHz</p><p>[WARNING] [0/DDC#1] The requested decimation is =
odd; the user should expect passband CIC rolloff.</p><p>Select an even deci=
mation to ensure that a halfband filter is enabled.</p><p>Decimations facto=
rable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 hal=
fbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [0=
/DDC#1] The requested decimation is odd; the user should expect passband CI=
C rolloff.</p><p>Select an even decimation to ensure that a halfband filter=
 is enabled.</p><p>Decimations factorable by 4 will enable 2 halfbands, tho=
se factorable by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/s=
amp_rate -&gt; 49</p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 5.0=
00 MHz. Actual rate is 5.016 MHz</p><p>[WARNING] [0/DDC#1] The requested de=
cimation is odd; the user should expect passband CIC rolloff.</p><p>Select =
an even decimation to ensure that a halfband filter is enabled.</p><p>Decim=
ations factorable by 4 will enable 2 halfbands, those factorable by 8 will =
enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</p><p>=
[WARNING] [0/DDC#1] The requested decimation is odd; the user should expect=
 passband CIC rolloff.</p><p>Select an even decimation to ensure that a hal=
fband filter is enabled.</p><p>Decimations factorable by 4 will enable 2 ha=
lfbands, those factorable by 8 will enable 3 halfbands.</p><p>decimation =
=3D dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [MULTI_USRP] Could not set =
RX rate to 5.000 MHz. Actual rate is 5.016 MHz</p><p>[WARNING] [0/DDC#1] Th=
e requested decimation is odd; the user should expect passband CIC rolloff.=
</p><p>Select an even decimation to ensure that a halfband filter is enable=
d.</p><p>Decimations factorable by 4 will enable 2 halfbands, those factora=
ble by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -=
&gt; 49</p><p>[WARNING] [0/DDC#1] The requested decimation is odd; the user=
 should expect passband CIC rolloff.</p><p>Select an even decimation to ens=
ure that a halfband filter is enabled.</p><p>Decimations factorable by 4 wi=
ll enable 2 halfbands, those factorable by 8 will enable 3 halfbands.</p><p=
>decimation =3D dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [MULTI_USRP] Co=
uld not set RX rate to 5.000 MHz. Actual rate is 5.016 MHz</p><p>[WARNING] =
[0/DDC#1] The requested decimation is odd; the user should expect passband =
CIC rolloff.</p><p>Select an even decimation to ensure that a halfband filt=
er is enabled.</p><p>Decimations factorable by 4 will enable 2 halfbands, t=
hose factorable by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate=
/samp_rate -&gt; 49</p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 5=
.000 MHz. Actual rate is 5.016 MHz</p><p>[00:00:04.465504150] Testing recei=
ve rate 5.015510 Msps on 1 channels</p><p>[WARNING] [0/DUC#0] The requested=
 interpolation is odd; the user should expect passband CIC rolloff.</p><p>S=
elect an even interpolation to ensure that a halfband filter is enabled.</p=
><p>[WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate =
is 5.016 MHz</p><p>[WARNING] [0/DUC#0] The requested interpolation is odd; =
the user should expect passband CIC rolloff.</p><p>Select an even interpola=
tion to ensure that a halfband filter is enabled.</p><p>[WARNING] [MULTI_US=
RP] Could not set TX rate to 5.000 MHz. Actual rate is 5.016 MHz</p><p>[WAR=
NING] [0/DUC#0] The requested interpolation is odd; the user should expect =
passband CIC rolloff.</p><p>Select an even interpolation to ensure that a h=
alfband filter is enabled.</p><p>[WARNING] [MULTI_USRP] Could not set TX ra=
te to 5.000 MHz. Actual rate is 5.016 MHz</p><p>[WARNING] [0/DUC#0] The req=
uested interpolation is odd; the user should expect passband CIC rolloff.</=
p><p>Select an even interpolation to ensure that a halfband filter is enabl=
ed.</p><p>[WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual=
 rate is 5.016 MHz</p><p>[WARNING] [0/DUC#1] The requested interpolation is=
 odd; the user should expect passband CIC rolloff.</p><p>Select an even int=
erpolation to ensure that a halfband filter is enabled.</p><p>[WARNING] [MU=
LTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate is 5.016 MHz</p><=
p>[WARNING] [0/DUC#1] The requested interpolation is odd; the user should e=
xpect passband CIC rolloff.</p><p>Select an even interpolation to ensure th=
at a halfband filter is enabled.</p><p>[WARNING] [MULTI_USRP] Could not set=
 TX rate to 5.000 MHz. Actual rate is 5.016 MHz</p><p>[WARNING] [0/DUC#1] T=
he requested interpolation is odd; the user should expect passband CIC roll=
off.</p><p>Select an even interpolation to ensure that a halfband filter is=
 enabled.</p><p>[WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. =
Actual rate is 5.016 MHz</p><p>[WARNING] [0/DUC#1] The requested interpolat=
ion is odd; the user should expect passband CIC rolloff.</p><p>Select an ev=
en interpolation to ensure that a halfband filter is enabled.</p><p>[WARNIN=
G] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate is 5.016 MH=
z</p><p>Setting TX spp to 352</p><p>[00:00:04.801908845] Testing transmit r=
ate 5.015510 Msps on 1 channels</p><p>[00:00:14.826000429] Benchmark comple=
te.</p><p>Benchmark rate summary:</p><p>  Num received samples:     5016105=
6</p><p>  Num dropped samples:      0</p><p>  Num overruns detected:    0</=
p><p>  Num transmitted samples:  50201888</p><p>  Num sequence errors (Tx):=
 0</p><p>  Num sequence errors (Rx): 0</p><p>  Num underruns detected:   0<=
/p><p>  Num late commands:        0</p><p>  Num timeouts (Tx):        0</p>=
<p>  Num timeouts (Rx):        0</p><p>Done!</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000ae61b1062d8fe676--

--===============0313884532679170357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0313884532679170357==--
