Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3540388A41D
	for <lists+usrp-users@lfdr.de>; Mon, 25 Mar 2024 15:18:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 35123385311
	for <lists+usrp-users@lfdr.de>; Mon, 25 Mar 2024 10:18:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1711376336; bh=NlkI2xSd0YtJUmfGsejdooush2DD1CSQAfhTUONVRy4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=GNsFRbFQyVyJv1hJuAdGPREsZWRy/hHHL/M/Hcha74b3bLXAdlIrUgU1+G+ORDt3R
	 0fhEN2cEHriR/jl1+2SqrGz8/9b/tGcR1o/+9OIT5tJbToL9Vt75UdHvgu9UyHR9Xj
	 pT4F0cmfv0/IXy/As9hfT9EOhBUOerFUUEDyIMCcEHgoZs0u7Y84hCKMmcY0ti6ea3
	 F/3sg+zFDjF8Qli4aZS4NwnMexa+CLzgxmtdSg1W5X9CA1LuO1x4geBlA+6RT30kvP
	 JhjC+R8GXAJwqIWeChUBhK6em6qjBg44yEvcCyyHNditbtnfWQkw0SHqhd+6KvQPOs
	 PXwVTo7j9XnBA==
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	by mm2.emwd.com (Postfix) with ESMTPS id BD8E7383C77
	for <usrp-users@lists.ettus.com>; Mon, 25 Mar 2024 10:18:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Tj4E+9su";
	dkim-atps=neutral
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3c3ca4f939fso1010827b6e.1
        for <usrp-users@lists.ettus.com>; Mon, 25 Mar 2024 07:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711376306; x=1711981106; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fx8wYt5sjcfj7iIa3dsA+9V0o6lO0r/dIq5gWYCpykk=;
        b=Tj4E+9sukZJ9a3PI3SHcjCJ0uQOwVcOdn1Di/9atOSDQlhG4kM2qhoPmfazdJ5JnSi
         rwP6fXBRHhAC18gXnqry4aTajPZQJpmGMhJXjNi8cv4FNk8gUkEEm7ja/E2UAe9ANik7
         6onmI/g9DjxCT4aPUz9N3D96MysPNXU89iTeOUp4KtCwPATF10LPcGlEH6WXuIx2y6GG
         kxpfuRrnbYw4vC85vqbtNI7RKyQAMQGso5pGTzKQ+67uhvg0wZHW909c1NukyzTwTsPL
         VBdCD9j4hbWuXIDwKUeUaRTYUcsK7P0q7qrHHJyxSFVdxAAesteKg2RSYkW9M7IoJo1P
         8GSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711376306; x=1711981106;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Fx8wYt5sjcfj7iIa3dsA+9V0o6lO0r/dIq5gWYCpykk=;
        b=lwoC9tTZEZW6+J/guGIld2vUZ+xM5OsD0GEPlklmmWuhHTKQVLcOra6nvSJSmV+G2M
         QaPw/npyws6z5aWam4ocdWLMSxALo86QCqBNOrwHSEiwKqIZhAPjU0PyzPcObEOkvvAJ
         9wYE7zo94b0Fq7sOtnPapgkWwOzXNHPMii5tbVaebf2S3mL/F/yrFbb+4BIgEEuN9HmC
         GMLOx6WS6XIoGhRhLYYmdmyh70hqU4pl0m5o2TCBzDBN4rFDR4sIfYctyKPWl9XPFab6
         gA8CPAKvH8tYg5vcFZ/uIkfyzM7hC4tHZBGkI/AhnKsRunwnAbUbXslrjsYb4zX9lo/j
         pwlA==
X-Gm-Message-State: AOJu0YwACQaAPB//HQ/1DbjF5GPaic7QN94BKel7Es4fG/ztI8z0FX7D
	KMRk3nTZnaqGRTJ0R2dIGUoe9n5Lti5Tqj/ckHya3ias/TPbEILpoun1BLm5
X-Google-Smtp-Source: AGHT+IGP+Q6HhGPjab/AJm7qqhoVA5ZVtxSvuvbNEfQ/rxgZL6VMrNAAUmMb3NQ57IShOlCoCJ1hCQ==
X-Received: by 2002:a05:6808:640e:b0:3c3:c94c:bbbc with SMTP id fg14-20020a056808640e00b003c3c94cbbbcmr5310781oib.45.1711376305559;
        Mon, 25 Mar 2024 07:18:25 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.156])
        by smtp.googlemail.com with ESMTPSA id f1-20020a0562141d2100b00690bf9548aasm4109426qvd.108.2024.03.25.07.18.25
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Mar 2024 07:18:25 -0700 (PDT)
Message-ID: <4f8996e4-8a81-4de2-aed3-ac4a7e5d5baa@gmail.com>
Date: Mon, 25 Mar 2024 10:18:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <9a2bd2a19b7b4757b3ce3353bd56d407@rafael.co.il>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <9a2bd2a19b7b4757b3ce3353bd56d407@rafael.co.il>
Message-ID-Hash: KPPMF6MCYLAQUHLQ6CXO6NMYNQ53MZVS
X-Message-ID-Hash: KPPMF6MCYLAQUHLQ6CXO6NMYNQ53MZVS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N321 - Dropped packets
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KPPMF6MCYLAQUHLQ6CXO6NMYNQ53MZVS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8527507197837834652=="

This is a multi-part message in MIME format.
--===============8527507197837834652==
Content-Type: multipart/alternative;
 boundary="------------ycebo3TCOrLAQ3FuRA5hTzq2"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ycebo3TCOrLAQ3FuRA5hTzq2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 25/03/2024 10:05, DOR-ISAAC SHABTAY wrote:
> Hi,
>
>
> I'm using usrp N321 to sample data at IQ rate of 250 MSPS.
> I have dropped packets.
>
> _______________________________________________________________________=
_
> sync; sudo nice -n -20 /usr/lib/uhd/examples/rx_samples_to_file --freq=20
> 1e9 --rate 250e6 --file /media/data/data10.dat --args "addr=3D192.168.1=
0.2"
>
> Creating the usrp device with: addr=3D192.168.10.2...
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;=20
> UHD_4.6.0.0-0ubuntu1~jammy1
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D32AC3CE,na=
me=3Dni-n3xx-32AC3CE,fpga=3DXG,claimed=3DFalse,addr=3D192.168.10.2
> [INFO] [MPM.PeriphManager] init() called with device args=20
> `fpga=3DXG,mgmt_addr=3D192.168.10.2,name=3Dni-n3xx-32AC3CE,product=3Dn3=
20,clock_source=3Dinternal,time_source=3Dinternal'.
> Using Device: Single USRP:
> =C2=A0 Device: N300-Series Device
> =C2=A0 Mboard 0: n320
> =C2=A0 RX Channel: 0
> =C2=A0 =C2=A0 RX DSP: 0
> =C2=A0 =C2=A0 RX Dboard: A
> =C2=A0 =C2=A0 RX Subdev: Rhodium
> =C2=A0 RX Channel: 1
> =C2=A0 =C2=A0 RX DSP: 1
> =C2=A0 =C2=A0 RX Dboard: B
> =C2=A0 =C2=A0 RX Subdev: Rhodium
> =C2=A0 TX Channel: 0
> =C2=A0 =C2=A0 TX DSP: 0
> =C2=A0 =C2=A0 TX Dboard: A
> =C2=A0 =C2=A0 TX Subdev: Rhodium
> =C2=A0 TX Channel: 1
> =C2=A0 =C2=A0 TX DSP: 1
> =C2=A0 =C2=A0 TX Dboard: B
> =C2=A0 =C2=A0 TX Subdev: Rhodium
>
> Setting RX Rate: 250.000000 Msps...
> Actual RX Rate: 245.760000 Msps...
>
> Setting RX Freq: 1000.000000 MHz...
> Setting RX LO Offset: 0.000000 MHz...
> [WARNING] [MULTI_USRP] Could not set RX rate to 250.000 MHz. Actual=20
> rate is 245.760 MHz
> [WARNING] [MULTI_USRP] Could not set RX rate to 250.000 MHz. Actual=20
> rate is 245.760 MHz
> Actual RX Freq: 1000.000000 MHz...
>
> [INFO] [MPM.Rhodium-0] init() called with args=20
> `fpga=3DXG,mgmt_addr=3D192.168.10.2,name=3Dni-n3xx-32AC3CE,product=3Dn3=
20,clock_source=3Dinternal,time_source=3Dinternal'
> [INFO] [MPM.Rhodium-1] init() called with args=20
> `fpga=3DXG,mgmt_addr=3D192.168.10.2,name=3Dni-n3xx-32AC3CE,product=3Dn3=
20,clock_source=3Dinternal,time_source=3Dinternal'
> Locking LO on channel 0
> Waiting for "lo_locked": ++++++++++ locked.
>
> Press Ctrl + C to stop streaming...
>
> =C2=A0 Disk write test indicates that an overflow is likely to occur.
> =C2=A0 Your write medium must sustain a rate of 983.040MB/s,
> =C2=A0 but write test returned write speed of 346.000MB/s.
> =C2=A0 The disk write rate is also affected by system load
> =C2=A0 and OS/disk caching capacity.
> OGot an overflow indication. Please consider the following:
> =C2=A0 Your write medium must sustain a rate of 983.040MB/s.
> =C2=A0 Dropped samples will not be written to the file.
> =C2=A0 Please modify this example for your purposes.
> =C2=A0 This message will not appear again.
> ODDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD=
DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD=
DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDODDDDDDDDDDDDDDDDDDDDDDDDDDD=
DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD=
DDDDDDDDDODDDDDDDDDDDDDDDDOODDDDDDDDDDDDDDDDDDDDDDDDODDDDDDDDDDDDDDDDDDDD=
DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD=
DDDDDO^C
> Done!
>
> _______________________________________________________________________=
__
>
> Host PC: Intel NUC - NUC11TNHi7
>
> Ubuntu 22.04
>
> Linux kernel version - 6.5.0
>
> we have separate HDs for OS (SATA 2.5'') and storage (fast=C2=A0SSD NVM=
E)
>
> we are using QNA-T310G1S as adapter SFP <--> Thunderbolt.
>
> we tried the following (from=20
> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=20
> <https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks>=C2=A0=
and
> https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD=20
> <https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD>):
>
>   * CPU Governor (CPU governor to |performance|=C2=A0for all cores)
>   * Adjust Network Buffers
>   * Adjust Ethernet MTU (the MTU is 9000)
>   * Increasing Ring Buffers
>   * Increasing=C2=A0num_recv_frames (num_recv_frames=3D512)
>   * Extra=C2=A0nice=C2=A0Priority (sudo nice -n -20)
>
>
> Can we use dpdk with QNAP? what is the 'dpdk_mac' than?
>
>
> Thanks,
> David Stanley
>
>
> This message (including any attachments) issued by RAFAEL- ADVANCED=20
> DEFENSE SYSTEMS LTD. (hereinafter "RAFAEL") contains confidential=20
> information intended for a specific individual and purpose, may=20
> constitute information that is privileged or confidential or otherwise=20
> protected from disclosure. If you are not the intended recipient, you=20
> should contact us immediately and thereafter delete this message from=20
> your system. You are hereby notified that any disclosure, copying,=20
> dissemination, distribution or forwarding of this message, or the=20
> taking of any action based on it, is strictly prohibited. If you have=20
> received this e-mail in error, please notify us immediately by e-mail=20
> mailto:lawraf@rafael.co.il and completely delete or destroy any and=20
> all electronic or other copies of the original message and any=20
> attachments thereof..
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
If you specify a "--file /dev/null" is it able to keep up?

250Msps and 8 bytes per sample written to the file is a LOT of data, and=20
even with a fast SSD your system may not be able to
 =C2=A0 keep up.

Although, the 'D' suggests that your network interface is dropping=20
frames.=C2=A0=C2=A0=C2=A0 It's unlikely that it is supported by DPDK.


--------------ycebo3TCOrLAQ3FuRA5hTzq2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 25/03/2024 10:05, DOR-ISAAC SHABTAY
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:9a2bd2a19b7b4757b3ce3353bd56d407@rafael.co.il">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
        dir=3D"ltr">
        Hi,
        <div><br>
        </div>
        <div><br>
        </div>
        <div>I'm using usrp N321 to sample data at IQ rate of 250 MSPS.</=
div>
        <div>I have dropped packets.</div>
        <div><br>
        </div>
        <div>____________________________________________________________=
____________</div>
        <div>
          <div>sync; sudo nice -n -20
            /usr/lib/uhd/examples/rx_samples_to_file --freq 1e9 --rate
            250e6 --file /media/data/data10.dat --args
            "addr=3D192.168.10.2"</div>
          <div><br>
          </div>
          <div>Creating the usrp device with: addr=3D192.168.10.2...</div=
>
          <div>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
            UHD_4.6.0.0-0ubuntu1~jammy1</div>
          <div>[INFO] [MPMD] Initializing 1 device(s) in parallel with
            args:
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D32AC3CE,name=
=3Dni-n3xx-32AC3CE,fpga=3DXG,claimed=3DFalse,addr=3D192.168.10.2</div>
          <div>[INFO] [MPM.PeriphManager] init() called with device args
`fpga=3DXG,mgmt_addr=3D192.168.10.2,name=3Dni-n3xx-32AC3CE,product=3Dn320=
,clock_source=3Dinternal,time_source=3Dinternal'.</div>
          <div>Using Device: Single USRP:</div>
          <div>=C2=A0 Device: N300-Series Device</div>
          <div>=C2=A0 Mboard 0: n320</div>
          <div>=C2=A0 RX Channel: 0</div>
          <div>=C2=A0 =C2=A0 RX DSP: 0</div>
          <div>=C2=A0 =C2=A0 RX Dboard: A</div>
          <div>=C2=A0 =C2=A0 RX Subdev: Rhodium</div>
          <div>=C2=A0 RX Channel: 1</div>
          <div>=C2=A0 =C2=A0 RX DSP: 1</div>
          <div>=C2=A0 =C2=A0 RX Dboard: B</div>
          <div>=C2=A0 =C2=A0 RX Subdev: Rhodium</div>
          <div>=C2=A0 TX Channel: 0</div>
          <div>=C2=A0 =C2=A0 TX DSP: 0</div>
          <div>=C2=A0 =C2=A0 TX Dboard: A</div>
          <div>=C2=A0 =C2=A0 TX Subdev: Rhodium</div>
          <div>=C2=A0 TX Channel: 1</div>
          <div>=C2=A0 =C2=A0 TX DSP: 1</div>
          <div>=C2=A0 =C2=A0 TX Dboard: B</div>
          <div>=C2=A0 =C2=A0 TX Subdev: Rhodium</div>
          <div><br>
          </div>
          <div>Setting RX Rate: 250.000000 Msps...</div>
          <div>Actual RX Rate: 245.760000 Msps...</div>
          <div><br>
          </div>
          <div>Setting RX Freq: 1000.000000 MHz...</div>
          <div>Setting RX LO Offset: 0.000000 MHz...</div>
          <div>[WARNING] [MULTI_USRP] Could not set RX rate to 250.000
            MHz. Actual rate is 245.760 MHz</div>
          <div>[WARNING] [MULTI_USRP] Could not set RX rate to 250.000
            MHz. Actual rate is 245.760 MHz</div>
          <div>Actual RX Freq: 1000.000000 MHz...</div>
          <div><br>
          </div>
          <div>[INFO] [MPM.Rhodium-0] init() called with args
`fpga=3DXG,mgmt_addr=3D192.168.10.2,name=3Dni-n3xx-32AC3CE,product=3Dn320=
,clock_source=3Dinternal,time_source=3Dinternal'</div>
          <div>[INFO] [MPM.Rhodium-1] init() called with args
`fpga=3DXG,mgmt_addr=3D192.168.10.2,name=3Dni-n3xx-32AC3CE,product=3Dn320=
,clock_source=3Dinternal,time_source=3Dinternal'</div>
          <div>Locking LO on channel 0</div>
          <div>Waiting for "lo_locked": ++++++++++ locked.</div>
          <div><br>
          </div>
          <div>Press Ctrl + C to stop streaming...</div>
          <div><br>
          </div>
          <div>=C2=A0 Disk write test indicates that an overflow is likel=
y to
            occur.</div>
          <div>=C2=A0 Your write medium must sustain a rate of 983.040MB/=
s,</div>
          <div>=C2=A0 but write test returned write speed of 346.000MB/s.=
</div>
          <div>=C2=A0 The disk write rate is also affected by system load=
</div>
          <div>=C2=A0 and OS/disk caching capacity.</div>
          <div>OGot an overflow indication. Please consider the
            following:</div>
          <div>=C2=A0 Your write medium must sustain a rate of 983.040MB/=
s.</div>
          <div>=C2=A0 Dropped samples will not be written to the file.</d=
iv>
          <div>=C2=A0 Please modify this example for your purposes.</div>
          <div>=C2=A0 This message will not appear again.</div>
          <div>ODDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD=
DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD=
DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDODDDDDDDDDDDDDD=
DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD=
DDDDDDDDDDDDDDDDDDDDDDODDDDDDDDDDDDDDDDOODDDDDDDDDDDDDDDDDDDDDDDDODDDDDDD=
DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD=
DDDDDDDDDDDDDDDDDDO^C</div>
          <div>Done!</div>
          <div><br>
          </div>
_________________________________________________________________________=
</div>
        <div><br>
        </div>
        <div>Host PC:=C2=A0<span style=3D"font-size: 12pt;">Intel NUC -=C2=
=A0</span><span
style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont;">=
NUC11TNHi7</span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; f=
ont-size: 16px;"><br>
          </span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; f=
ont-size: 16px;"><span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;">Ubuntu
              22.04</span><br>
          </span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; f=
ont-size: 16px;"><span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;"><br>
            </span></span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; f=
ont-size: 16px;"><span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;"><span>Linux
                kernel version - 6.5.0</span></span></span></div>
        <div><br>
        </div>
        <div>we have separate HDs for OS (SATA 2.5'') and storage
          (fast=C2=A0SSD NVME)</div>
        <div><br>
        </div>
        <div>we are using=C2=A0<span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;">QNA-T310G1S
            as adapter SFP &lt;--&gt; Thunderbolt.</span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;"><br>
          </span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;">we
            tried the following (from=C2=A0<a
href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=
"
              class=3D"OWAAutoLink moz-txt-link-freetext" id=3D"LPlnk4318=
"
              moz-do-not-send=3D"true">https://kb.ettus.com/USRP_Host_Per=
formance_Tuning_Tips_and_Tricks</a>=C2=A0and=C2=A0<br>
            <a
href=3D"https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD"
              class=3D"OWAAutoLink moz-txt-link-freetext"
              moz-do-not-send=3D"true">https://kb.ettus.com/Getting_Start=
ed_with_DPDK_and_UHD</a>):</span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;"><br>
          </span></div>
        <div>
          <ul style=3D"margin-bottom: 0px; margin-top: 0px;">
            <li><span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;"><span>CPU
                  Governor (<span
style=3D"font-family: &quot;Lucida Sans Unicode&quot;, &quot;Lucida Grand=
e&quot;, sans-serif; font-size: 14px;">CPU
                    governor to=C2=A0</span><code
style=3D"font-family: monospace, Courier; background-color: rgb(249, 249,=
 249); border: 1px solid rgb(221, 221, 221); border-radius: 2px; padding:=
 1px 4px; font-size: 14px;">performance</code><span
style=3D"font-family: &quot;Lucida Sans Unicode&quot;, &quot;Lucida Grand=
e&quot;, sans-serif; font-size: 14px;">=C2=A0for
                    all cores)</span></span></span></li>
            <li><span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;"><span><span>Adjust
                    Network Buffers</span></span></span></li>
            <li><span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;"><span><span><span>Adjust
                      Ethernet MTU (the MTU is 9000)</span></span></span>=
</span></li>
            <li><span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;"><span><span><span><span>Increasing
                        Ring Buffers</span></span></span></span></span></=
li>
            <li><span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;"><span><span><span><span><span>Increasing=C2=A0num_recv_frames
                          (<span
style=3D"font-family: monospace, Courier; font-size: 14px; background-col=
or: rgb(249, 249, 249);">num_recv_frames=3D512)</span></span><br>
                      </span></span></span></span></span></li>
            <li><span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;"><span><span><span><span><span><span
style=3D"font-family: monospace, Courier; font-size: 14px; background-col=
or: rgb(249, 249, 249);"><span>Extra=C2=A0nice=C2=A0Priority
                              (<span>sudo nice -n -20)</span></span><br>
                          </span></span></span></span></span></span></spa=
n></li>
          </ul>
        </div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;"><span><span><span><span><br>
                  </span></span></span></span></span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;"><span><span><span><span>Can
                    we use dpdk with QNAP? what is the '<span>dpdk_mac'
                      than?</span></span></span></span></span></span></di=
v>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;"><span><span><span><span><span><br>
                    </span></span></span></span></span></span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;"><span><span><span><span><span><br>
                    </span></span></span></span></span></span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;"><span><span><span><span><span>Thanks,</span></span></span></span=
></span></span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;"><span><span><span><span><span>David
                      Stanley</span></span></span></span></span></span></=
div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;"><span><span><span><span><span><br>
                    </span></span></span></span></span></span></div>
        <div><span
style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;"><span><span><span><span><span><br>
                    </span></span></span></span></span></span></div>
      </div>
      This message (including any attachments) issued by RAFAEL-
      ADVANCED DEFENSE SYSTEMS LTD. (hereinafter "RAFAEL") contains
      confidential information intended for a specific individual and
      purpose, may constitute information that is privileged or
      confidential or otherwise protected from disclosure. If you are
      not the intended recipient, you should contact us immediately and
      thereafter delete this message from your system. You are hereby
      notified that any disclosure, copying, dissemination, distribution
      or forwarding of this message, or the taking of any action based
      on it, is strictly prohibited. If you have received this e-mail in
      error, please notify us immediately by e-mail
      <a class=3D"moz-txt-link-freetext" href=3D"mailto:lawraf@rafael.co.=
il">mailto:lawraf@rafael.co.il</a> and completely delete or destroy any
      and all electronic or other copies of the original message and any
      attachments thereof..
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
    If you specify a "--file /dev/null" is it able to keep up?<br>
    <br>
    250Msps and 8 bytes per sample written to the file is a LOT of data,
    and even with a fast SSD your system may not be able to<br>
    =C2=A0 keep up.<br>
    <br>
    Although, the 'D' suggests that your network interface is dropping
    frames.=C2=A0=C2=A0=C2=A0 It's unlikely that it is supported by DPDK.=
<br>
    <br>
    <br>
  </body>
</html>

--------------ycebo3TCOrLAQ3FuRA5hTzq2--

--===============8527507197837834652==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8527507197837834652==--
