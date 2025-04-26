Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C35A9D76B
	for <lists+usrp-users@lfdr.de>; Sat, 26 Apr 2025 05:45:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 277A03862B8
	for <lists+usrp-users@lfdr.de>; Fri, 25 Apr 2025 23:45:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745639128; bh=gMGlzZ5CwbYD2tflBklTWq22TcMkCkY0Yg0ZzsQZqoU=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=S+9/usDXEZUaio/nqK5mhEwJDPk+C0GoC4xXEcprojxcGmr+vYJO3cLox74eceR/n
	 7Hxlz4uFdC5kf7eIzLYeSyhH3LXTCWParQ6FCqXpfUGVPqRu8PQBLFRPK/DALiKHBk
	 rHz00X8kVGeLl1GQCVnvWiy3NuBB/+sqkuOn2f5ZF1CV67k//c5u6Pe4un1io+BlaI
	 JuPH5VzkBFOHhCqIsw5hkyva5VoRsGXJ2GsXcU5J7Lhej6lOaTbze8yTvtG20/Q+nE
	 QZuofuJ4nfApyJbjvQKUKugk0N4Cx4xcBVn1BDmywv3A+QW9fP5IRpugDxvBvmDsRQ
	 qtkhTV1RzTG4Q==
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 10EE6385E0C
	for <usrp-users@lists.ettus.com>; Fri, 25 Apr 2025 23:45:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Zmli4mlA";
	dkim-atps=neutral
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7c5b8d13f73so384381785a.0
        for <usrp-users@lists.ettus.com>; Fri, 25 Apr 2025 20:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745639108; x=1746243908; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fOJDJgScqvi/ycGljjo0T9JeM5AzBSxA8eB16RKB5ZI=;
        b=Zmli4mlApIfJ2ZxaxG5qU+xqOQzlgTBBhwk5NE5UWi/m3d9BiCmZn8thXybyBEeNPF
         VINF9duSzNrf5hfZji0T/VJ37h1gAXNyAFKCjIW7eQbFpF12XublTaSgw+z1VIgBPL9X
         CWhDRf7n0nsapBw0wmGL5IzIIYEvNJyPOe3ccpS+HjUo71JnF15sV69TErEoe7h4hMui
         PUtT+1xOxJ/VlrI819sCL1QUHBkt12Kky0dlu0aFxx6tsLT/ZoVEuRiJrHbidfA46cw4
         UgchUQLJ9TRU+RTXGt1gxTEwr6EdEoYMZxoFB8tOiBrcV3drNhCBB3zg9N/tF0RA8Tiq
         M1eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745639108; x=1746243908;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fOJDJgScqvi/ycGljjo0T9JeM5AzBSxA8eB16RKB5ZI=;
        b=HBHFP+7zd/isilaHJ7OM1dk9Y1SqzLUUNca2apSd0pq9ULP/xP60rUNl+6E/Hmbf0d
         NdhDJTJ0dV/WxiRYzYWA4NiT+6OI829/IhXd4C2ICH/hlo6qlYivJfF+rofLzsG6SOrO
         +VV5SooBn0dGaxDmmapAZhbAiE61m+jz9fgYDolNNiyGUhqDMNbcHwWc9Wly80G8WYXA
         5gRBMox7zXjMAfHf5Qyy28CRCCJLY0T2bgk7zoQST38U9EUGLUf6E+LGNBr5wN4DS4rB
         KHyo1qDB7lLI7JGiv3cB6PDbljSiA8R3Jue1suXVSt1156nR0snyS/Jp/9AxdVv7N5iw
         WKEw==
X-Gm-Message-State: AOJu0YxeXq9e3hjBwuAQxZ0Duvzv0MrbMpQ5fLy1cypfvmVbtf9nrVxt
	w/k7+vW8VFW4l2XdMxCFaiJcFLX2eNGCPFTwZa1pLkSz0eSppSuMZ4hTsw==
X-Gm-Gg: ASbGncvVNRJvOT9XRoiD2zD08d47aUcVqNOmWU4DZQZvcZPdw1R2rJ2PkP9Yrktnp1m
	U+gnb1IOa8EL0bO5Et4W2CQ40o/SIuJ/KmjWLMdFoReQG+68MCdX+yhaaa/1T8CYb/3+FR+9l0q
	ZXzqq+WnsLV2m99nZdeO3OLBdSbbDI5Hiue2WI8jX3zQlCjM4PJc+PbQi+i81FxYWdXKu9Pj/HB
	b0hMMAvjhX5bnPvV9d0swCkEtLiYuZ1No1kHcQPHP3+bI31CtqfPFrLrkfICIiNofSpQ38JRST7
	ZC3L6vbD9KpQsR3pVqQFePUZNZQsvkyOWbeIsMD8Zt6i5KaLzEIGyq1F7m2rTHotL4ZprYRy8Hh
	Ma6/6SVy9BlnKWhDrMEfqn5+S6q3hg+rU05zB4bHRZFWDyz4=
X-Google-Smtp-Source: AGHT+IFrkJcKY3vs7McdDG17GqAo37mXngMf3K4cyAUhwp1r4vV/1THbBxYNg2XhweF/P2xlhrawEw==
X-Received: by 2002:a05:620a:1720:b0:7c5:d1b2:166b with SMTP id af79cd13be357-7c9606a0f90mr720234585a.8.1745639108245;
        Fri, 25 Apr 2025 20:45:08 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-120.dsl.bell.ca. [174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7c958cac826sm303112785a.29.2025.04.25.20.45.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 20:45:07 -0700 (PDT)
Message-ID: <709f178e-0d6a-4c76-b40d-b88f5b0c80cf@gmail.com>
Date: Fri, 25 Apr 2025 23:45:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nikos Balkanas <nbalkanas@gmail.com>
References: <CAAxXO2G+q1LtJVVQyQt6at2QNh7PfVrrZhHvZauB8QEipF+w6w@mail.gmail.com>
 <e08576a1-ede9-4f27-9706-8a38cfc50c57@gmail.com>
 <CAAxXO2GZw0DAYVYFdw3Jx9g5PCivquhcrBB2uk3ZRB4w1KbOvQ@mail.gmail.com>
 <8660a987-f91a-402f-b575-a5b907a2e55e@gmail.com>
 <CAAxXO2EyLchisQPwFa9B2s9eO+QR5JV98cfoX1nnRAU7hYaj9g@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2EyLchisQPwFa9B2s9eO+QR5JV98cfoX1nnRAU7hYaj9g@mail.gmail.com>
Message-ID-Hash: 6KDKYAOYRX7JDLPCWAVLKNFEQCQTNAAW
X-Message-ID-Hash: 6KDKYAOYRX7JDLPCWAVLKNFEQCQTNAAW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: NIC suggestion
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6KDKYAOYRX7JDLPCWAVLKNFEQCQTNAAW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5673919237179791569=="

This is a multi-part message in MIME format.
--===============5673919237179791569==
Content-Type: multipart/alternative;
 boundary="------------bav02tKUOWI7wa490cyifgCc"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------bav02tKUOWI7wa490cyifgCc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 25/04/2025 23:33, Nikos Balkanas wrote:
> Actually MTU is 9000. This is one of the recommendations...
> I tried it with MTU 1500. It was worse:(
> maxsamples dropped to 364...
Right, 9000, rather than 8000.

Upgrading to 10Gbit wont' give you larger MTU.

What you're trying to do, I think, is to solve a buffer-management=20
problem in your *application* at entirely the wrong
 =C2=A0 level in the stack.

It is EXCEEDINGLY COMMON for hardware drivers to only be able to deliver=20
in chunks that may not be perfectly adapted to
 =C2=A0 the requirements of your application.=C2=A0 So, a common programm=
ing=20
pattern is to deal with this in your application.

You should probably look at example code like rx_samples_to_file


>
> [INFO] [UHD] linux; GNU C++ version 13.2.0; Boost_108300;=20
> UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [WARNING] [X300] For the 192.168.40.2 connection, UHD recommends a=20
> send frame size of at least 8000 for best
> performance, but your configuration will only allow 1472.This may=20
> negatively impact your maximum achievable sample rate.
> Check the MTU on the interface and/or the send_frame_size argument.
> [WARNING] [X300] For the 192.168.40.2 connection, UHD recommends a=20
> receive frame size of at least 8000 for best
> performance, but your configuration will only allow 1472.This may=20
> negatively impact your maximum achievable sample rate.
> Check the MTU on the interface and/or the recv_frame_size argument.
> [INFO] [GPS] No GPSDO found
> [INFO] [X300] Radio 1x clock: 200 MHz
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 24912805 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D24912805
> Sat Apr 26 06:30:34 2025 [00] [+] Created USRP with args
> Sat Apr 26 06:30:34 2025 [00] [+] Master clock is at 200 Mhz
> Sat Apr 26 06:30:34 2025 [00] [+] Tuner[0] gain set to 30 (30) dB
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 24912805 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D24912805
> Sat Apr 26 06:30:34 2025 [00] [*] scanner.l:1446:main Incorrect=20
> maxsamples (364). Expected 19960.
> Sat Apr 26 06:30:34 2025 [00] [+] Max samples/buffer[0]: 364
> [WARNING] [0/Radio#0] Ignoring stream command for finite acquisition=20
> of zero sam
>
> Nikos
>
> On Sat, Apr 26, 2025 at 5:46=E2=80=AFAM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 25/04/2025 22:26, Nikos Balkanas wrote:
>>     Thanks Marcus,
>>
>>     for your fast reply.
>>
>>     On Sat, Apr 26, 2025 at 4:08=E2=80=AFAM Marcus D. Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         On 25/04/2025 20:50, Nikos Balkanas wrote:
>>>         Hello,
>>>
>>>         I need to buy a new NIC. What would you suggest?
>>>         The one I use is an old Mellanox 10 Gbs, before the
>>>         Connect-4 series.
>>>         It can only do 1996 S/s, need 19960 (10x more) to work with
>>>         latest uhd.
>>>         Using Ubuntu 24.04 and uhd 4.6.0
>>         So, 1.996ksps vs 19.960ksps?=C2=A0=C2=A0 You hardly need a 10G=
bit link
>>         to support that.=C2=A0 So, perhaps something
>>         =C2=A0 is being lost here in your requirements?
>>
>>
>>     True. Can't explain it in terms of bandwidth. 16 * 1996 =3D 31.936
>>     Kbps, 16 * 19960 =3D 319.360 Kbps well short of a 10 Gbps line:(
>>     Does a complex pair count as 1 sample, or 2?
>>     I have followed all the instructions in
>>     https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks,
>>     Even installed the DPDK drivers. My Mellanox is too old to use
>>     their OFED drivers:(
>>
>>>
>>>         On a related question. it seems that the streamer doesn't
>>>         crash anymore
>>>         when receiving less than MAXSPS samples, instead it reads 0:(
>>>         This was due to the sse2 code not aligned in convert.
>>>         I change my stream args to cpu_format=3Dsc16, otw=3Dsc16, so =
no
>>>         conversion required.
>>>         Streamer still doesn't read anything. Is there a reason for i=
t?
>>>
>>         You'd need to share more of your code.=C2=A0 This should just =
work
>>         as far as I can tell.
>>
>>     Thanks. these are just the usrp code:
>>
>>     int main()
>>     {
>>     =C2=A0 uhd_stream_args_t stream_args =3D
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0{
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .cpu_format =3D "sc16",
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .otw_format =3D "sc16",
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .args =3D "",
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .n_channels =3D 1,
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.channel_list =3D &channe=
l
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};
>>     ..uhd_stream_cmd_t stream_cmd =3D
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.stream_mode =3D UHD_STRE=
AM_MODE_NUM_SAMPS_AND_DONE,
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .stream_now =3D true
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 };
>>
>>         if (uhd_init(0, 0, gain)) do_exit(20);
>>         if ((err =3D uhd_usrp_get_rx_stream(dev[0], &stream_args,
>>         rx_streamer[0])))
>>         {
>>         uhd_get_last_error(errmsg, 127);
>>         error(log, "Failed to get streamer[0] (%d). %s.\n", 0, FL,
>>         LN, FN, err, errmsg);
>>         uhd_rx_streamer_free(&rx_streamer[0]);
>>         rx_streamer[0] =3D NULL;
>>         uhd_rx_metadata_free(&md[0]);
>>         md[0] =3D NULL;
>>         do_exit(30);
>>         }
>>         if ((err =3D uhd_rx_streamer_max_num_samps(rx_streamer[0],
>>         &maxsamps)))
>>
>>         {
>>         uhd_get_last_error(errmsg, 127);
>>         error(log, "Failed to get max samples/buffer[0] (%d). %s.\n",
>>         0, FL, LN, FN, err,
>>         ..errmsg);
>>         do_exit(35);
>>         }
>>         if (maxsamps !=3D MAXSMPS)
>>         warn(log, "Incorrect maxsamples (%ld). Expected %d.\n", 0,
>>         FL, LN, FN, maxsamps,
>>         MAXSMPS);
>>         info(log, "Max samples/buffer[0]: %ld\n", 0, maxsamps);
>>
>>         =C2=A0 =C2=A0 if ((err =3D
>>         uhd_rx_streamer_issue_stream_cmd(rx_streamer[0], &stream_cmd))=
)
>>
>>         {
>>         uhd_get_last_error(errmsg, 127);
>>         error(log, "Failed to start streamer[0] (%d). %s.\n", 0, FL,
>>         LN, FN, err, errmsg);
>>         do_exit(40);
>>         }
>>
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[...]
>>     =C2=A0 =C2=A0 =C2=A0do_exit(0)
>>     =C2=A0}
>>
>>         bool uhd_init(size_t channel, double srate, double gain)
>>         {
>>         double tmp;
>>         uhd_rx_metadata_error_code_t err;
>>
>>         if ((err =3D
>>         uhd_set_thread_priority(uhd_default_thread_priority, true)))
>>         warn(log, "Unable to set =C2=A0main thread priority (%d). %s.\=
n",
>>         0, FL, LN, FN,
>>         err, uhdError(err));
>>         /* Create USRP */
>>         f ((err =3D uhd_usrp_make(&dev[channel], "type=3Dx300")))
>>         {
>>         error(log, "Failed to create USRP (%d). %s.\n", 0, FL, LN,
>>         FN, err,
>>         uhdError(err));
>>         dev[channel] =3D NULL;
>>         =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return(FAIL);
>>
>>         }
>>         info(stderr, "Created USRP with args\n", 0);
>>
>>         /* Create RX streamer */
>>         if ((err =3D uhd_rx_streamer_make(&rx_streamer[channel])))
>>         {
>>         error(log, "Failed to create rx_streamer[%d] (%d). %s.\n", 0,
>>         FL, LN, FN,
>>         channel, err, uhdError(err));
>>         return(FAIL);
>>         }
>>         /* Create RX metadata */
>>         if ((err =3D uhd_rx_metadata_make(&md[channel])))
>>         {
>>         error(log, "Failed to create md[%d] (%d). %s.\n", 0, FL, LN,
>>         FN, channel,
>>         err, uhdError(err));
>>         return(FAIL);
>>         }
>>
>>         /* Get master clock rate */
>>         if ((err =3D uhd_usrp_get_master_clock_rate(dev[channel], 0,
>>         &tmp)))
>>
>>         {
>>         error(log, "Failed to set master clock to %.0lf Mhz (%d).
>>         %s.\n", 0, FL,
>>         LN, FN, tmp/1000000, err, uhdError(err));
>>         return(FAIL);
>>         }
>>         info(stderr, "Master clock is at %.0lf Mhz\n", 0, tmp/1000000)=
;
>>         /* Set the sample rate */
>>         if (srate && !uhd_set_rx_rate_check(channel, srate))
>>         return(FAIL);
>>         /* Set the tuner gain SBX-120 is 0-31.5 in .5 db steps */
>>
>>         =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((err =3D uhd_usrp_set_rx_gain(d=
ev[channel], gain,
>>         channel, "")))
>>         {
>>         error(log, "Failed to set tuner[%d] gain to %.0lf db (%d).
>>         %s.\n", 0, FL,
>>         LN, FN, channel, gain, err, uhdError(err));
>>         return(FAIL);
>>         }
>>         =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(err =3D uhd_usrp_get_r=
x_gain(dev[channel],
>>         channel, "", &tmp)))
>>         info(log, "Tuner[%d] gain set to %.0lf (%.0lf) dB\n", 0,
>>         channel, tmp,gain);
>>
>>     ./* Set channel bw to conserve tuner resources. Not needed, set
>>     by srate */
>>     uhd_usrp_set_rx_bandwidth(dev[channel], srate, channel);
>>     ./* Disable subtracting constant averaged background. Signal
>>     looks cleaner */
>>     if ((err =3D uhd_usrp_set_rx_dc_offset_enabled(dev[channel], false=
,
>>     channel)))
>>     {
>>     warn(log, "Failed to disable FPGA DC offset on channel %d(%d).
>>     %s.\n", 0,
>>     FL, LN, FN, channel, err, uhdError(err));
>>     }
>>     info(stderr, "Disabled FPGA DC offset on channel %d\n", 0, channel=
);
>>     return(SUCCESS);
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}
>>
>>     This is the generated output:
>>
>>     [INFO] [UHD] linux; GNU C++ version 13.2.0; Boost_108300;
>>     UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1
>>     [INFO] [X300] X300 initialization sequence...
>>     [INFO] [X300] Maximum frame size: 8000 bytes.
>>     [INFO] [X300] Radio 1x clock: 200 MHz
>>     Sat Apr 26 03:33:48 2025 [00] [+] Created USRP with args
>>     Sat Apr 26 03:33:48 2025 [00] [+] Master clock is at 200 Mhz
>>     Sat Apr 26 03:33:48 2025 [00] [+] Tuner[0] gain set to 30 (30) dB
>>     Sat Apr 26 03:33:48 2025 [00] [*] scanner.l:1446:main Incorrect
>>     maxsamples (1996). Expected 19960.
>>     Sat Apr 26 03:33:48 2025 [00] [+] Max samples/buffer[0]: 1996
>>     [WARNING] [0/Radio#0] Ignoring stream command for finite
>>     acquisition of zero samples
>>     I hope this reads OK. Maybe next time I should attach the code:)
>>
>>>         TIA
>>>         Nikos
>>>
>>>         _______________________________________________
>>>         USRP-users mailing list --usrp-users@lists.ettus.com
>>>         To unsubscribe send an email tousrp-users-leave@lists.ettus.c=
om
>>
>     I believe that max number of samples-per-buffer is limited by MTU
>     size.=C2=A0=C2=A0 Which is typically around 8000 or so for "jumbo f=
rames".
>
>

--------------bav02tKUOWI7wa490cyifgCc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 25/04/2025 23:33, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2EyLchisQPwFa9B2s9eO+QR5JV98cfoX1nnRAU7hYaj9g@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small">Actually M=
TU
          is 9000. This is one of the recommendations...</div>
        <div class=3D"gmail_default" style=3D"font-size:small">I tried it
          with MTU 1500. It was worse:(</div>
        <div class=3D"gmail_default" style=3D"font-size:small">maxsamples
          dropped to 364...</div>
      </div>
    </blockquote>
    Right, 9000, rather than 8000.<br>
    <br>
    Upgrading to 10Gbit wont' give you larger MTU.<br>
    <br>
    What you're trying to do, I think, is to solve a buffer-management
    problem in your *application* at entirely the wrong<br>
    =C2=A0 level in the stack.<br>
    <br>
    It is EXCEEDINGLY COMMON for hardware drivers to only be able to
    deliver in chunks that may not be perfectly adapted to<br>
    =C2=A0 the requirements of your application.=C2=A0 So, a common progr=
amming
    pattern is to deal with this in your application.<br>
    <br>
    You should probably look at example code like rx_samples_to_file<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2EyLchisQPwFa9B2s9eO+QR5JV98cfoX1nnRAU7hYaj9g@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">[INFO] [UH=
D]
          linux; GNU C++ version 13.2.0; Boost_108300;
          UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1<br>
          [INFO] [X300] X300 initialization sequence...<br>
          [INFO] [X300] Maximum frame size: 1472 bytes.<br>
          [WARNING] [X300] For the 192.168.40.2 connection, UHD
          recommends a send frame size of at least 8000 for best<br>
          performance, but your configuration will only allow 1472.This
          may negatively impact your maximum achievable sample rate.<br>
          Check the MTU on the interface and/or the send_frame_size
          argument.<br>
          [WARNING] [X300] For the 192.168.40.2 connection, UHD
          recommends a receive frame size of at least 8000 for best<br>
          performance, but your configuration will only allow 1472.This
          may negatively impact your maximum achievable sample rate.<br>
          Check the MTU on the interface and/or the recv_frame_size
          argument.<br>
          [INFO] [GPS] No GPSDO found<br>
          [INFO] [X300] Radio 1x clock: 200 MHz<br>
          [WARNING] [UDP] The send buffer could not be resized
          sufficiently.<br>
          Target sock buff size: 24912805 bytes.<br>
          Actual sock buff size: 1048576 bytes.<br>
          See the transport application notes on buffer resizing.<br>
          Please run: sudo sysctl -w net.core.wmem_max=3D24912805<br>
          Sat Apr 26 06:30:34 2025 [00] [+] Created USRP with args<br>
          Sat Apr 26 06:30:34 2025 [00] [+] Master clock is at 200 Mhz<br=
>
          Sat Apr 26 06:30:34 2025 [00] [+] Tuner[0] gain set to 30 (30)
          dB<br>
          [WARNING] [UDP] The send buffer could not be resized
          sufficiently.<br>
          Target sock buff size: 24912805 bytes.<br>
          Actual sock buff size: 1048576 bytes.<br>
          See the transport application notes on buffer resizing.<br>
          Please run: sudo sysctl -w net.core.wmem_max=3D24912805<br>
          Sat Apr 26 06:30:34 2025 [00] [*] scanner.l:1446:main
          Incorrect maxsamples (364). Expected 19960.<br>
          Sat Apr 26 06:30:34 2025 [00] [+] Max samples/buffer[0]: 364<br=
>
          [WARNING] [0/Radio#0] Ignoring stream command for finite
          acquisition of zero sam</div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">Nikos</div=
>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr 26, 2025 at
          5:46=E2=80=AFAM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div>
            <div>On 25/04/2025 22:26, Nikos Balkanas wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div dir=3D"ltr">
                  <div class=3D"gmail_default" style=3D"font-size:small">=
Thanks
                    Marcus,</div>
                  <div class=3D"gmail_default" style=3D"font-size:small">=
<br>
                  </div>
                  <div class=3D"gmail_default" style=3D"font-size:small">=
for
                    your fast reply.</div>
                </div>
                <br>
                <div class=3D"gmail_quote">
                  <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr 26, 2=
025
                    at 4:08=E2=80=AFAM Marcus D. Leech &lt;<a
                      href=3D"mailto:patchvonbraun@gmail.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">patchvonbraun@gmail=
.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                    <div>
                      <div>On 25/04/2025 20:50, Nikos Balkanas wrote:<br>
                      </div>
                      <blockquote type=3D"cite">
                        <div dir=3D"ltr">
                          <div style=3D"font-size:small">Hello,</div>
                          <div style=3D"font-size:small"><br>
                          </div>
                          <div style=3D"font-size:small">I need to buy a
                            new NIC. What would you suggest?</div>
                          <div style=3D"font-size:small">The one I use is
                            an old Mellanox 10 Gbs, before the Connect-4
                            series.</div>
                          <div style=3D"font-size:small">It can only do
                            1996 S/s, need 19960 (10x more) to work with
                            latest uhd.</div>
                          <div style=3D"font-size:small">Using Ubuntu
                            24.04 and uhd 4.6.0</div>
                        </div>
                      </blockquote>
                      So, 1.996ksps vs 19.960ksps?=C2=A0=C2=A0 You hardly=
 need a
                      10Gbit link to support that.=C2=A0 So, perhaps
                      something<br>
                      =C2=A0 is being lost here in your requirements?<br>
                    </div>
                  </blockquote>
                  <div><br>
                  </div>
                  <div class=3D"gmail_default" style=3D"font-size:small">=
True.
                    Can't explain it in terms of bandwidth. 16 * 1996 =3D
                    31.936 Kbps, 16 * 19960 =3D 319.360 Kbps well short o=
f
                    a 10 Gbps line:(</div>
                  <div class=3D"gmail_default" style=3D"font-size:small">=
Does
                    a complex pair count as 1 sample, or 2?</div>
                  <div class=3D"gmail_default" style=3D"font-size:small">=
I
                    have followed all the instructions in=C2=A0<a
href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=
"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">https://kb.ettus.co=
m/USRP_Host_Performance_Tuning_Tips_and_Tricks</a>,</div>
                  <div class=3D"gmail_default" style=3D"font-size:small">=
Even
                    installed the DPDK drivers. My Mellanox is too old
                    to use their OFED drivers:(</div>
                  <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                    <div>
                      <blockquote type=3D"cite">
                        <div dir=3D"ltr">
                          <div style=3D"font-size:small"><br>
                          </div>
                          <div style=3D"font-size:small">On a related
                            question. it seems that the streamer doesn't
                            crash anymore</div>
                          <div style=3D"font-size:small">when receiving
                            less than MAXSPS samples, instead it reads
                            0:(</div>
                          <div style=3D"font-size:small">This was due to
                            the sse2 code not aligned in convert.</div>
                          <div style=3D"font-size:small">I change my
                            stream args to cpu_format=3Dsc16, otw=3Dsc16,=
 so
                            no conversion required.</div>
                          <div style=3D"font-size:small">Streamer still
                            doesn't read anything. Is there a reason for
                            it?</div>
                          <div style=3D"font-size:small"><br>
                          </div>
                        </div>
                      </blockquote>
                      You'd need to share more of your code.=C2=A0 This
                      should just work as far as I can tell.<br>
                      <br>
                    </div>
                  </blockquote>
                  <div><span class=3D"gmail_default"
                      style=3D"font-size:small"></span></div>
                  <div><span class=3D"gmail_default"
                      style=3D"font-size:small">Thanks. these are just th=
e
                      usrp code:</span></div>
                  <div><br>
                  </div>
                  <div class=3D"gmail_default" style=3D"font-size:small">=
int
                    main()</div>
                  <div class=3D"gmail_default" style=3D"font-size:small">=
{</div>
                  <div class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0 =C2=A0
                    =C2=A0 uhd_stream_args_t stream_args =3D<br>
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .cpu_format =3D "s=
c16",<br>
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .otw_format =3D "s=
c16",<br>
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .args =3D "",<br>
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .n_channels =3D 1,=
<br>
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.channel_lis=
t =3D &amp;channel<br>
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
                    ..uhd_stream_cmd_t stream_cmd =3D<br>
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.stream_mode=
 =3D
                    UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,<br>
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .stream_now=
 =3D true<br>
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 };</div>
                  <div class=3D"gmail_default" style=3D"font-size:small">=
<br>
                  </div>
                  <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                    <div> <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 </span>if
                      (uhd_init(0, 0, gain)) do_exit(20);<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>if ((err =3D
                      uhd_usrp_get_rx_stream(dev[0], &amp;stream_args,
                      rx_streamer[0])))<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>{<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>uhd_get_last_error(errmsg,
                      127);<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>error(log,
                      "Failed to get streamer[0] (%d). %s.\n", 0, FL,
                      LN, FN, err, errmsg);<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>uhd_rx_streamer_free(&amp;rx_streamer[0]);<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>rx_streamer[0]
                      =3D NULL;<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>uhd_rx_metadata_free(&amp;md[0]);<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>md[0] =3D
                      NULL;<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>do_exit(30);<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>}<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</s=
pan>if ((err =3D
                      uhd_rx_streamer_max_num_samps(rx_streamer[0],
                      &amp;maxsamps)))</div>
                  </blockquote>
                  <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                    <div><span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</s=
pan>{<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>uhd_get_last_error(errmsg,
                      127);<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>error(log,
                      "Failed to get max samples/buffer[0] (%d). %s.\n",
                      0, FL, LN, FN, err,<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0</span>..errmsg);<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>do_exit(35);<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>}<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>if (maxsamps
                      !=3D MAXSMPS)<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>warn(log,
                      "Incorrect maxsamples (%ld). Expected %d.\n", 0,
                      FL, LN, FN, maxsamps,<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>MAXSMPS);<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</s=
pan>info(log,
                      "Max samples/buffer[0]: %ld\n", 0, maxsamps);<br>
                      <br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 i</span>f=
 ((err =3D
                      uhd_rx_streamer_issue_stream_cmd(rx_streamer[0],
                      &amp;stream_cmd)))=C2=A0</div>
                  </blockquote>
                  <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                    <div><span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>{<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>uhd_get_last_error(errmsg,
                      127);<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>error(log,
                      "Failed to start streamer[0] (%d). %s.\n", 0, FL,
                      LN, FN, err, errmsg);<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0</span>do_exit(40);<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</s=
pan>}<br>
                    </div>
                  </blockquote>
                  <div><span class=3D"gmail_default"
                      style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0[...]</span></div>
                  <div class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0 =C2=A0
                    =C2=A0 =C2=A0 =C2=A0do_exit(0)</div>
                  <div class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0 =C2=A0
                    =C2=A0}</div>
                  <div class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0 =C2=A0
                    =C2=A0</div>
                  <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                    <div> bool uhd_init(size_t channel, double srate,
                      double gain)<br>
                      {<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>double tmp;<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>uhd_rx_metadata_error_code_t
                      err;<br>
                      <br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</s=
pan>if ((err =3D
                      uhd_set_thread_priority(uhd_default_thread_priority=
,
                      true)))<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0</span>warn(log,
                      "Unable to set =C2=A0main thread priority (%d). %s.=
\n",
                      0, FL, LN, FN,<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>err,
                      uhdError(err));<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 </=
span>/* Create
                      USRP */<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 </=
span>f ((err =3D
                      uhd_usrp_make(&amp;dev[channel], "type=3Dx300")))<b=
r>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0=C2=
=A0</span>{<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=C2=A0</span>error(log,
                      "Failed to create USRP (%d). %s.\n", 0, FL, LN,
                      FN, err,<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>uhdError(err));<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0</span>dev[channel]
                      =3D NULL;<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 r</span>eturn(FAIL);=C2=A0</div>
                  </blockquote>
                  <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                    <div><span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>}<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>info(stderr,
                      "Created USRP with args\n", 0);<br>
                      <br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>/* Create RX
                      streamer */<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>if ((err =3D
                      uhd_rx_streamer_make(&amp;rx_streamer[channel])))<b=
r>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>{<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>error(log,
                      "Failed to create rx_streamer[%d] (%d). %s.\n", 0,
                      FL, LN, FN,<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0</span>channel,
                      err, uhdError(err));<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>return(FAIL);<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 </span>}<=
br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>/* Create RX
                      metadata */<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>if ((err =3D
                      uhd_rx_metadata_make(&amp;md[channel])))<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0</span>{<b=
r>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0</span>error(log,
                      "Failed to create md[%d] (%d). %s.\n", 0, FL, LN,
                      FN, channel,<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0</span>err,
                      uhdError(err));<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>return(FAIL);<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</s=
pan>}<br>
                      <br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>/* <span
                        class=3D"gmail_default" style=3D"font-size:small"=
>G</span>et
                      master clock rate */<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</s=
pan>if ((err =3D
                      uhd_usrp_get_master_clock_rate(dev[channel], 0,
                      &amp;tmp)))=C2=A0</div>
                  </blockquote>
                  <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                    <div><span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0=C2=
=A0</span>{<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0</span>error(log,
                      "Failed to set master clock to %.0lf Mhz (%d).
                      %s.\n", 0, FL,<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>LN,
                      FN, tmp/1000000, err, uhdError(err));<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0</span>return(FAIL);<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 </=
span>}<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0=C2=
=A0</span>info(stderr,
                      "Master clock is at %.0lf Mhz\n", 0, tmp/1000000);<=
br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0=C2=
=A0</span>/* Set the
                      sample rate */<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</s=
pan>if (srate
                      &amp;&amp; !uhd_set_rx_rate_check(channel, srate))
                      return(FAIL);<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</s=
pan>/* Set the
                      tuner gain SBX-120 is 0-31.5 in .5 db steps */=C2=A0=
</div>
                  </blockquote>
                  <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                    <div><span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0i</span>f ((err =3D
                      uhd_usrp_set_rx_gain(dev[channel], gain, channel,
                      "")))<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0</span>{<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0</span>error(log,
                      "Failed to set tuner[%d] gain to %.0lf db (%d).
                      %s.\n", 0, FL,<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>LN,
                      FN, channel, gain, err, uhdError(err));<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0</span>return(FAIL);<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>}<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0i</span>f
                      (!(err =3D uhd_usrp_get_rx_gain(dev[channel],
                      channel, "", &amp;tmp)))<br>
                      <span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>info(log,
                      "Tuner[%d] gain set to %.0lf (%.0lf) dB\n", 0,
                      channel, tmp,<span class=3D"gmail_default"
                        style=3D"font-size:small">=C2=A0</span>gain);</di=
v>
                  </blockquote>
                  <span class=3D"gmail_default" style=3D"font-size:small"=
>=C2=A0
                    =C2=A0 =C2=A0 =C2=A0=C2=A0</span>./* Set channel bw t=
o conserve tuner
                  resources. Not needed, set by srate */<br>
                  <span class=3D"gmail_default" style=3D"font-size:small"=
>=C2=A0
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>uhd_u=
srp_set_rx_bandwidth(dev[channel],
                  srate, channel);<br>
                  <span class=3D"gmail_default" style=3D"font-size:small"=
>=C2=A0
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>./* Disable subtrac=
ting constant
                  averaged background. Signal looks cleaner */<br>
                  <span class=3D"gmail_default" style=3D"font-size:small"=
>=C2=A0
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>if ((e=
rr =3D
                  uhd_usrp_set_rx_dc_offset_enabled(dev[channel], false,
                  channel)))<br>
                  <span class=3D"gmail_default" style=3D"font-size:small"=
>=C2=A0
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>{<br>
                  <span class=3D"gmail_default" style=3D"font-size:small"=
>=C2=A0
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
</span>warn(log, "Failed to disable
                  FPGA DC offset on channel %d(%d). %s.\n", 0,<br>
                  <span class=3D"gmail_default" style=3D"font-size:small"=
>=C2=A0
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0</span>FL, LN, FN, channel, err,
                  uhdError(err));</div>
                <div class=3D"gmail_quote"><span class=3D"gmail_default"
                    style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>}<br>
                  <span class=3D"gmail_default" style=3D"font-size:small"=
>=C2=A0
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</spa=
n>info(stderr, "Disabled FPGA DC
                  offset on channel %d\n", 0, channel);<span
                    class=3D"gmail_default" style=3D"font-size:small"></s=
pan></div>
                <div class=3D"gmail_quote"><span class=3D"gmail_default"
                    style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>return(SUCCESS);<br>
                  <div><span class=3D"gmail_default"
                      style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0}</span></div>
                  <div><span class=3D"gmail_default"
                      style=3D"font-size:small"><br>
                    </span></div>
                  <div><span class=3D"gmail_default"
                      style=3D"font-size:small">This is the generated
                      output:</span>=C2=A0</div>
                  <div><br>
                  </div>
                  <div><span class=3D"gmail_default"
                      style=3D"font-size:small"></span>[INFO] [UHD] linux=
;
                    GNU C++ version 13.2.0; Boost_108300;
                    UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1</div>
                  [INFO] [X300] X300 initialization sequence...<br>
                  [INFO] [X300] Maximum frame size: 8000 bytes.<br>
                  [INFO] [X300] Radio 1x clock: 200 MHz<br>
                  Sat Apr 26 03:33:48 2025 [00] [+] Created USRP with
                  args<br>
                  Sat Apr 26 03:33:48 2025 [00] [+] Master clock is at
                  200 Mhz<br>
                  Sat Apr 26 03:33:48 2025 [00] [+] Tuner[0] gain set to
                  30 (30) dB<br>
                  Sat Apr 26 03:33:48 2025 [00] [*] scanner.l:1446:main
                  Incorrect maxsamples (1996). Expected 19960.<br>
                  Sat Apr 26 03:33:48 2025 [00] [+] Max
                  samples/buffer[0]: 1996<br>
                  <div>[WARNING] [0/Radio#0] Ignoring stream command for
                    finite acquisition of zero samples=C2=A0</div>
                  <div><span class=3D"gmail_default"
                      style=3D"font-size:small"></span></div>
                  <div><span class=3D"gmail_default"
                      style=3D"font-size:small">I hope this reads OK.
                      Maybe next time I should attach the code:)</span>=C2=
=A0</div>
                  <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                    <div>
                      <blockquote type=3D"cite">
                        <div dir=3D"ltr">
                          <div style=3D"font-size:small"> </div>
                          <div style=3D"font-size:small">TIA</div>
                          <div style=3D"font-size:small">Nikos</div>
                        </div>
                        <br>
                        <fieldset></fieldset>
                        <pre>____________________________________________=
___
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">usrp-users@lists.=
ettus.com</a>
To unsubscribe send an email to <a
                        href=3D"mailto:usrp-users-leave@lists.ettus.com"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">usrp-users-leave@=
lists.ettus.com</a>
</pre>
                      </blockquote>
                      <br>
                    </div>
                  </blockquote>
                </div>
              </div>
            </blockquote>
            I believe that max number of samples-per-buffer is limited
            by MTU size.=C2=A0=C2=A0 Which is typically around 8000 or so=
 for
            "jumbo frames".<br>
            <br>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------bav02tKUOWI7wa490cyifgCc--

--===============5673919237179791569==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5673919237179791569==--
