Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71749AA630E
	for <lists+usrp-users@lfdr.de>; Thu,  1 May 2025 20:45:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A398D385A68
	for <lists+usrp-users@lfdr.de>; Thu,  1 May 2025 14:45:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746125128; bh=lnYXVCRgTMgCQ9vO8oothbbExWAm4rdYqWwBEwVJil8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=os1B6OY59oQdqEdqGQSbusvzeRhqn2Z0RNfKvgDFo5IuYfSYuDbWxhGnLN1eVnjgq
	 o7tEg34FCTrxblyZEY+lTAtbj9Q6HAqVUH4tHil/aE/Hrx/fVksq70ZJNRBwO7JWGj
	 pF6Xi8xvIk1Qed61lDsc0l7MJgIeRosmxStJ9gEPFtQZ665GoOKUJegH3Wh+JjJMff
	 KjYRN9mRMv+4xKWJ8J7UhCQw/cy2Ir73ZaaK/bIWNCfhIAFoHkJRad4XEmg3f8SxtJ
	 pqeedFScV5YiRKxj6sGUbSdlZ76uN1zCwxunUsrx7ZcRCZZ1NMK1m1ncGskQvRdGzL
	 kusyaUiYaK5zQ==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id BEABE385926
	for <usrp-users@lists.ettus.com>; Thu,  1 May 2025 14:43:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="caRmjvwU";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7c5ba363f1aso202065485a.0
        for <usrp-users@lists.ettus.com>; Thu, 01 May 2025 11:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746125028; x=1746729828; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zIJ9RMkLbPh2muLXoehciY0/DMLpqcsYTIZp2GnlqFQ=;
        b=caRmjvwU4ChOh31Hlp55M4eGEeMnDa47XL66SJwc0MBv8dGvl1b5/u3wiOgZ9JkOVi
         e2O81Hn2+QItFa2lV1BkJ6ZWyfdIye6n2b1YdrGAJGCX/jAeJSXFFzem2BOVqL2nY0Ww
         lgYMt8nj6w/m/7+1XPxl7Fd7dRscd/Rb1IHaQW6HpHHoS6Roi6ZVq5Daz1om8Vz+x71R
         iETHiqcq7cKYNx93uVJkYmjbCBHpnvAQbre9yRTjgHKHjlpJHFYGU7RRtbcVcZRRrdKq
         0dUDie5VqtuOfi9pzbcJ/55jD8+sMBEjPHHLLjYfWPT/GYj31HLlQ41cl9cOvmP2jUxo
         i+tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746125028; x=1746729828;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zIJ9RMkLbPh2muLXoehciY0/DMLpqcsYTIZp2GnlqFQ=;
        b=Nrj4xRPVQE1Ek+oKvfsFBioyU/r6HpQfFBilicljT/0Lzd+gM6WKPoHadcGndr0D0O
         4pkxIdpyXplDzcZy7pdLgJW9ULnpPKHd2447UsAqMtukBXuTr5D8u0y/4q4aP1VcNC3w
         /dcB4SU/nE1h2L7dCnH6YLnUJDSM4cjvQRH3T+OvOvrbH8UsTVWn7bmeL3vocjLDmzW7
         bto+O9Gq/Y42VdmTjWlcPBEA9ntQnhrrfnZJv3PnZrf10ouHWPdkwcliKO8vTZ3IJUHa
         z5KSuS78rnbTNhmUPXOkQsv8fBBlKM/VWsAbYB2aPtRRx2oh2zHzHK7/QOkPIv9gi26L
         5KHg==
X-Gm-Message-State: AOJu0YygP00HOodEuoAAyUYRwSXMyZOQ4NFeo8ZWHex0HeCW7mEnsQPb
	dk9yGK73VH47zioB09uQb6oNwtcfKQ17GYd38SzYq0pzs/n/Lxhbfen+LQ==
X-Gm-Gg: ASbGncsvPepE9YqMl2ePcDPtxkd/gL4J5I4DhF1Du1ThccHi15DmAhFXIAx7lWIadrE
	W+xxJr2IRTSER1iwkF6ottTUhLOO8vFgSYo/JC5sQec14cUFDjDyIX6N2l6/nKJCln5CjxACJZD
	pjYSAltOn9lDUMfEJXVw4bEmGU9cJLdKTVNq5hIiRviD+R2uuZKzj1TN1RZwtzDfUV41gKDPy+P
	9vARbdrbY83IiAPfob8hu1NMjbUpsu6by8GVMz+GS0pL3gRXefwqRxkCuiRXJHkYLAcU+4N7rDc
	pzWTskYPNiJPyn59uV+9/BWhpk/8PUPjiqntdPS/shnus/1iKw==
X-Google-Smtp-Source: AGHT+IGLw2xIEJsQylF6u7WxJ/nSN3Tgm3/pfADUMLSkBuEke658A7P6h/9z0BIVZLrkm/kx6WseqQ==
X-Received: by 2002:a05:620a:2994:b0:7c5:d7c4:576e with SMTP id af79cd13be357-7cad5b4e3e0mr23420185a.31.1746125028517;
        Thu, 01 May 2025 11:43:48 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7cad242a486sm76499985a.67.2025.05.01.11.43.47
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 May 2025 11:43:48 -0700 (PDT)
Message-ID: <456542db-41cc-4fea-a35b-2d3af2c3290c@gmail.com>
Date: Thu, 1 May 2025 14:43:37 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <CAAZwqcBNFqB3Wi-NVt1jhw+b=14ObFB5X0_ROfPcxtzgp4GY_Q@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAZwqcBNFqB3Wi-NVt1jhw+b=14ObFB5X0_ROfPcxtzgp4GY_Q@mail.gmail.com>
Message-ID-Hash: SL5XVWSF2IQ4SEGNGRRV2EAWQGYPJZCL
X-Message-ID-Hash: SL5XVWSF2IQ4SEGNGRRV2EAWQGYPJZCL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows while recording GRB signal - USRP B200 mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SL5XVWSF2IQ4SEGNGRRV2EAWQGYPJZCL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9001397914433995848=="

This is a multi-part message in MIME format.
--===============9001397914433995848==
Content-Type: multipart/alternative;
 boundary="------------ybAMX0HictlM0lpW1A9TjULT"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ybAMX0HictlM0lpW1A9TjULT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 01/05/2025 14:28, Pedro Pertusso wrote:
> Hi,
>
> I=E2=80=99m using a USRP B200 mini to receive the GOES Rebroadcast (GRB=
)=20
> signal at 1.6866 GHz. Before recording, I ran a benchmark using the=20
> /benchmark_rate/ script at a rate of 13 MHz, which completed without=20
> any dropped samples. The command I used was:
> sudo ./benchmark_rate --args "type=3Db200" --rx_rate 13e6 --duration 60=
0=20
> --rx_spb 4096 --ref internal --priority high
>
> Following the benchmark, I attempted to record the signal at a rate of=20
> 13 MHz using the /rx_samples_to_file/ script with the following command=
:
> ./rx_samples_to_file --rate 13000000 --freq 1686600000 --file=20
> GRB_recording.dat --duration 600 --type short --spb 4096 --gain 37=20
> --ref internal --wirefmt sc16
>
> Unlike the benchmark, this resulted in several overflows. These=20
> overflows occurred in bursts (typically 3 to 4 at a time) and appeared=20
> roughly every 1 to 2 minutes.
> I=E2=80=99m running this setup on a ThinkPad T14 Gen 4 running Debian 1=
2 with=20
> an Intel i7-1355U, 32 GB of DDR5 RAM, and a 1 TB NVMe SSD. The USRP is=20
> connected via USB 3.0 Micro-B. During recording, CPU usage remains=20
> below 25%, and I haven=E2=80=99t identified any resource bottlenecks.
>
> While reviewing the USRP documentation, I came across two parameters=20
> that might help: /recv_frame_size/ and /num_recv_frames/. I haven=E2=80=
=99t=20
> had the chance to test them yet, but I was planning to try something li=
ke:
> --args "recv_frame_size=3D8192,num_recv_frames=3D1024"
>
> Any help or guidance would be greatly appreciated!
>
> Best regards,
> Pedro
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
The "num_recv_frames" parameter MIGHT help.

But your main issue might be that your recording mechanism simply can't=20
keep up.

At 13Msps, recording "shorts", you're recording 4 bytes per sample, or=20
52Mbyte/second.=C2=A0=C2=A0 It may be that your system can't
 =C2=A0 sustain write rates that high for extended periods.

Your NVME interface and USB interface may be sharing an underlying PCIe=20
subsystem, and thus contending for resources.=C2=A0 CPU
 =C2=A0 utilization is not the whole story in this kind of work...


--------------ybAMX0HictlM0lpW1A9TjULT
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 01/05/2025 14:28, Pedro Pertusso
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAAZwqcBNFqB3Wi-NVt1jhw+b=3D14ObFB5X0_ROfPcxtzgp4GY_Q@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Hi,</div>
        <div><br>
        </div>
        <div>I=E2=80=99m using a USRP B200 mini to receive the GOES Rebro=
adcast
          (GRB) signal at 1.6866 GHz. Before recording, I ran a
          benchmark using the <i>benchmark_rate</i> script at a rate of
          13 MHz, which completed without any dropped samples. The
          command I used was:</div>
        <div><span style=3D"font-family:arial,sans-serif">sudo
            ./benchmark_rate --args "type=3Db200" --rx_rate 13e6
            --duration 600 --rx_spb 4096 --ref internal --priority high</=
span></div>
        <div><span style=3D"font-family:arial,sans-serif"><br>
          </span></div>
        Following the benchmark, I attempted to record the signal at a
        rate of 13 MHz using the <i>rx_samples_to_file</i> script with
        the following command:<br>
        <div>./rx_samples_to_file --rate 13000000 --freq 1686600000
          --file GRB_recording.dat --duration 600 --type short --spb=C2=A0=
<span
            style=3D"font-family:arial,sans-serif">4096</span> --gain 37
          --ref internal --wirefmt sc16</div>
        <div><br>
        </div>
        Unlike the benchmark, this resulted in several overflows. These
        overflows occurred in bursts (typically 3 to 4 at a time) and
        appeared roughly every 1 to 2 minutes.<br>
        <div>I=E2=80=99m running this setup on a ThinkPad T14 Gen 4 runni=
ng
          Debian 12 with an Intel i7-1355U, 32 GB of DDR5 RAM, and a 1
          TB NVMe SSD. The USRP is connected via USB 3.0 Micro-B. During
          recording, CPU usage remains below 25%, and I haven=E2=80=99t
          identified any resource bottlenecks.</div>
        <div><br>
        </div>
        While reviewing the USRP documentation, I came across two
        parameters that might help: <i>recv_frame_size</i> and <i>num_rec=
v_frames</i>.
        I haven=E2=80=99t had the chance to test them yet, but I was plan=
ning to
        try something like:<br>
        <div>--args "recv_frame_size=3D8192,num_recv_frames=3D1024"</div>
        <div><br>
        </div>
        <div>Any help or guidance would be greatly appreciated!</div>
        <div><br>
        </div>
        Best regards,<br>
        Pedro</div>
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
    The "num_recv_frames" parameter MIGHT help.<br>
    <br>
    But your main issue might be that your recording mechanism simply
    can't keep up.<br>
    <br>
    At 13Msps, recording "shorts", you're recording 4 bytes per sample,
    or 52Mbyte/second.=C2=A0=C2=A0 It may be that your system can't<br>
    =C2=A0 sustain write rates that high for extended periods.<br>
    <br>
    Your NVME interface and USB interface may be sharing an underlying
    PCIe subsystem, and thus contending for resources.=C2=A0 CPU<br>
    =C2=A0 utilization is not the whole story in this kind of work...<br>
    <br>
    <br>
  </body>
</html>

--------------ybAMX0HictlM0lpW1A9TjULT--

--===============9001397914433995848==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9001397914433995848==--
