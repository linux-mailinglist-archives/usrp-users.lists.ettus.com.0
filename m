Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C993A9D767
	for <lists+usrp-users@lfdr.de>; Sat, 26 Apr 2025 05:33:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 83563385DCB
	for <lists+usrp-users@lfdr.de>; Fri, 25 Apr 2025 23:33:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745638418; bh=xlwZNAkKQ23aVRAF6PFMR3ipm2Uwst4RxAvLNg3fxE0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=XZ7vcB0/SS0UfyzHPWKlaSsGMbss2ZpcweAO3GKqsx7r7jBOlWGL8XuPsh6kje9S0
	 fSzEyI3/FLNUtbxWNRhY5tpD/1lC8kRJ86jwVdvBMdNhjlgncQgOIEFQu4sw5O58Of
	 TILW9JqrPGMQUC9jAw1zGx5aOM0PPqAJgtckui20/kuJ8DSEbt8xfaSbsuhYp2qmqs
	 Npm6th2rOPlO3+ZtUMTzP3ZUT5Pp3QDvMZzZfwGWWE3tUnZ8lT8DovgEXYODy/g4Tz
	 Z1sN1z54wlCX5etaHdMAMwwqqWDcQqFM3lovAxAmq4AE4prc2LinBbQCKVARLYJDpX
	 MJEyWyi6PH5Qg==
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 2018E385BC0
	for <usrp-users@lists.ettus.com>; Fri, 25 Apr 2025 23:33:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HAAq6nzv";
	dkim-atps=neutral
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-861d7a09c88so73613839f.2
        for <usrp-users@lists.ettus.com>; Fri, 25 Apr 2025 20:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745638400; x=1746243200; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=D7BA4nDSKAE2tK90DTu6Nrn2OPswnysYaIdxDbznEFM=;
        b=HAAq6nzvxTj+8+QZwXFfON/jlnqhJ3tcSrf75XDfj7VJ94JZbLa7rXrSelZhOwN2TG
         wVjdWBUeSDdkQZOFaFxvFQM3maB5S92cFwYRBvLRDVsfFuvDmbPW7h7m+omYXmURvgMe
         /PWMgYsegWhGa3idUYJXLH5G5TI7wt+zdiSw1KWZaQL8XWrdwIxD18FnlVyMm9i8N5Zq
         9jPk4lKt09m3v7KK8THHSWe3eocMtWIp/+XCoVMfIv0wQx0Pd592JPXrT+o3I1aOu0Ut
         /wDX+hv82dNmo2/w8rQ8SI7YOiDGmHopUfgM4sDxOlD5D4M8SV1wM1wibWEsI/Y4N64G
         Xkuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745638400; x=1746243200;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D7BA4nDSKAE2tK90DTu6Nrn2OPswnysYaIdxDbznEFM=;
        b=hFjA2oO7/mTMK51LoH7MCG417JD5+bFOzyD5KrH9sJMxr2fk6C4VJqV2qFOQBGbC+e
         tOeg+UblCTHadiI5X0uj9RW+FEHLkv6riPlq4dlgckWCh/uzrS9iscGtqwmSz5HS933n
         HMp47fugFNcw7VegaBcK2RgM5eEpfQh+eITZ//+EQHAyporBKbCkNmDl/NHjlu+fGZHs
         W4ZnoKOgLofBSLdmvAvWWxPzuNZwtDEPIvgcIZP46zrf+YLWrdC3tK8ElvrfA2XNvl/F
         fJMaBh3DdBnWuYSzIUdeBw2/lhKnA0x/U8nggjR4dUrKR8hBBiLIMgAgJoheywj6FNMS
         ZQiw==
X-Gm-Message-State: AOJu0YwkulwL4lO/1u+l+WO0Ky4nRn0Lyjl1ekdn4XU0D/W7jDyfBaDe
	ZSXDVP9E446tFaxfPOMdJ/P7WdV/BY/aK6DWpT0VQuBzEAQh2VOIQbLNEI9D1NeVH6CAqytHH2h
	wWfgMZsKoDyiw1FoVzwYbAKc+KRfOi6gE5z8=
X-Gm-Gg: ASbGncs32lRC7VH3jPQuYMXZUUHxzorOJVekWJXJhb1xsX5u6IM56uU1Ds3T1HbMGQB
	C5QFw1dua4Tm92TXO4noulKNVQGwcB8vIkYDmhocPSTka/NJwYvVtPILC7UacIvMW8S84VE1+4V
	WL1j9STTdoYZVxiv+I8doNQkBpqK8=
X-Google-Smtp-Source: AGHT+IF7duoftByjeT+0Rh5m5awnUtaP51oJHw3ebg6s/tD6N57YXXkPOZp1FmPhNmF2RuGEU2e7Q1ftRPmQGcZWE1c=
X-Received: by 2002:a05:6602:6424:b0:85a:eecd:37b with SMTP id
 ca18e2360f4ac-86467fa70ddmr154701639f.11.1745638400282; Fri, 25 Apr 2025
 20:33:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2G+q1LtJVVQyQt6at2QNh7PfVrrZhHvZauB8QEipF+w6w@mail.gmail.com>
 <e08576a1-ede9-4f27-9706-8a38cfc50c57@gmail.com> <CAAxXO2GZw0DAYVYFdw3Jx9g5PCivquhcrBB2uk3ZRB4w1KbOvQ@mail.gmail.com>
 <8660a987-f91a-402f-b575-a5b907a2e55e@gmail.com>
In-Reply-To: <8660a987-f91a-402f-b575-a5b907a2e55e@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sat, 26 Apr 2025 06:33:08 +0300
X-Gm-Features: ATxdqUFq74EYg0h20Ly-YNazOGkWxsUxer7zhPapumOSbvvvpKDw4viSa8bMNKY
Message-ID: <CAAxXO2EyLchisQPwFa9B2s9eO+QR5JV98cfoX1nnRAU7hYaj9g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 5VH4PNWCEIIJB5SKQPMX3GVP3VMWW2T3
X-Message-ID-Hash: 5VH4PNWCEIIJB5SKQPMX3GVP3VMWW2T3
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: NIC suggestion
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5VH4PNWCEIIJB5SKQPMX3GVP3VMWW2T3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0926016535016783361=="

--===============0926016535016783361==
Content-Type: multipart/alternative; boundary="000000000000c15a6b0633a61ced"

--000000000000c15a6b0633a61ced
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Actually MTU is 9000. This is one of the recommendations...
I tried it with MTU 1500. It was worse:(
maxsamples dropped to 364...

[INFO] [UHD] linux; GNU C++ version 13.2.0; Boost_108300;
UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[WARNING] [X300] For the 192.168.40.2 connection, UHD recommends a send
frame size of at least 8000 for best
performance, but your configuration will only allow 1472.This may
negatively impact your maximum achievable sample rate.
Check the MTU on the interface and/or the send_frame_size argument.
[WARNING] [X300] For the 192.168.40.2 connection, UHD recommends a receive
frame size of at least 8000 for best
performance, but your configuration will only allow 1472.This may
negatively impact your maximum achievable sample rate.
Check the MTU on the interface and/or the recv_frame_size argument.
[INFO] [GPS] No GPSDO found
[INFO] [X300] Radio 1x clock: 200 MHz
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 24912805 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D24912805
Sat Apr 26 06:30:34 2025 [00] [+] Created USRP with args
Sat Apr 26 06:30:34 2025 [00] [+] Master clock is at 200 Mhz
Sat Apr 26 06:30:34 2025 [00] [+] Tuner[0] gain set to 30 (30) dB
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 24912805 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D24912805
Sat Apr 26 06:30:34 2025 [00] [*] scanner.l:1446:main Incorrect maxsamples
(364). Expected 19960.
Sat Apr 26 06:30:34 2025 [00] [+] Max samples/buffer[0]: 364
[WARNING] [0/Radio#0] Ignoring stream command for finite acquisition of
zero sam

Nikos

On Sat, Apr 26, 2025 at 5:46=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 25/04/2025 22:26, Nikos Balkanas wrote:
>
> Thanks Marcus,
>
> for your fast reply.
>
> On Sat, Apr 26, 2025 at 4:08=E2=80=AFAM Marcus D. Leech <patchvonbraun@gm=
ail.com>
> wrote:
>
>> On 25/04/2025 20:50, Nikos Balkanas wrote:
>>
>> Hello,
>>
>> I need to buy a new NIC. What would you suggest?
>> The one I use is an old Mellanox 10 Gbs, before the Connect-4 series.
>> It can only do 1996 S/s, need 19960 (10x more) to work with latest uhd.
>> Using Ubuntu 24.04 and uhd 4.6.0
>>
>> So, 1.996ksps vs 19.960ksps?   You hardly need a 10Gbit link to support
>> that.  So, perhaps something
>>   is being lost here in your requirements?
>>
>
> True. Can't explain it in terms of bandwidth. 16 * 1996 =3D 31.936 Kbps, =
16
> * 19960 =3D 319.360 Kbps well short of a 10 Gbps line:(
> Does a complex pair count as 1 sample, or 2?
> I have followed all the instructions in
> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks,
> Even installed the DPDK drivers. My Mellanox is too old to use their OFED
> drivers:(
>
>>
>> On a related question. it seems that the streamer doesn't crash anymore
>> when receiving less than MAXSPS samples, instead it reads 0:(
>> This was due to the sse2 code not aligned in convert.
>> I change my stream args to cpu_format=3Dsc16, otw=3Dsc16, so no conversi=
on
>> required.
>> Streamer still doesn't read anything. Is there a reason for it?
>>
>> You'd need to share more of your code.  This should just work as far as =
I
>> can tell.
>>
>> Thanks. these are just the usrp code:
>
> int main()
> {
>       uhd_stream_args_t stream_args =3D
>                                                            {
>                                                               .cpu_format
> =3D "sc16",
>                                                               .otw_format
> =3D "sc16",
>                                                               .args =3D "=
",
>                                                               .n_channels
> =3D 1,
>
>  .channel_list =3D &channel
>                                                              };
> ..uhd_stream_cmd_t stream_cmd =3D
>                                                              {
>
>  .stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,
>
> .stream_now =3D true
>                                                               };
>
>     if (uhd_init(0, 0, gain)) do_exit(20);
>>     if ((err =3D uhd_usrp_get_rx_stream(dev[0], &stream_args,
>> rx_streamer[0])))
>>     {
>>          uhd_get_last_error(errmsg, 127);
>>          error(log, "Failed to get streamer[0] (%d). %s.\n", 0, FL, LN,
>> FN, err, errmsg);
>>         uhd_rx_streamer_free(&rx_streamer[0]);
>>          rx_streamer[0] =3D NULL;
>>          uhd_rx_metadata_free(&md[0]);
>>         md[0] =3D NULL;
>>         do_exit(30);
>>     }
>>      if ((err =3D uhd_rx_streamer_max_num_samps(rx_streamer[0],
>> &maxsamps)))
>>
>      {
>>          uhd_get_last_error(errmsg, 127);
>>          error(log, "Failed to get max samples/buffer[0] (%d). %s.\n",
>> 0, FL, LN, FN, err,
>>            ..errmsg);
>>         do_exit(35);
>>     }
>>     if (maxsamps !=3D MAXSMPS)
>>         warn(log, "Incorrect maxsamples (%ld). Expected %d.\n", 0, FL,
>> LN, FN, maxsamps,
>>               MAXSMPS);
>>      info(log, "Max samples/buffer[0]: %ld\n", 0, maxsamps);
>>
>>     if ((err =3D uhd_rx_streamer_issue_stream_cmd(rx_streamer[0],
>> &stream_cmd)))
>>
>     {
>>         uhd_get_last_error(errmsg, 127);
>>         error(log, "Failed to start streamer[0] (%d). %s.\n", 0, FL, LN,
>> FN, err, errmsg);
>>        do_exit(40);
>>      }
>>
>          [...]
>          do_exit(0)
>      }
>
>
>> bool uhd_init(size_t channel, double srate, double gain)
>> {
>>     double tmp;
>>     uhd_rx_metadata_error_code_t err;
>>
>>      if ((err =3D uhd_set_thread_priority(uhd_default_thread_priority,
>> true)))
>>             warn(log, "Unable to set  main thread priority (%d). %s.\n",
>> 0, FL, LN, FN,
>>                   err, uhdError(err));
>>       /* Create USRP */
>>       f ((err =3D uhd_usrp_make(&dev[channel], "type=3Dx300")))
>>       {
>>           error(log, "Failed to create USRP (%d). %s.\n", 0, FL, LN, FN,
>> err,
>>                uhdError(err));
>>            dev[channel] =3D NULL;
>>             return(FAIL);
>>
>          }
>>          info(stderr, "Created USRP with args\n", 0);
>>
>>     /* Create RX streamer */
>>     if ((err =3D uhd_rx_streamer_make(&rx_streamer[channel])))
>>     {
>>         error(log, "Failed to create rx_streamer[%d] (%d). %s.\n", 0,
>> FL, LN, FN,
>>             channel, err, uhdError(err));
>>          return(FAIL);
>>     }
>>     /* Create RX metadata */
>>     if ((err =3D uhd_rx_metadata_make(&md[channel])))
>>    {
>>        error(log, "Failed to create md[%d] (%d). %s.\n", 0, FL, LN, FN,
>> channel,
>>            err, uhdError(err));
>>         return(FAIL);
>>      }
>>
>>     /* Get master clock rate */
>>      if ((err =3D uhd_usrp_get_master_clock_rate(dev[channel], 0, &tmp))=
)
>>
>       {
>>            error(log, "Failed to set master clock to %.0lf Mhz (%d).
>> %s.\n", 0, FL,
>>                LN, FN, tmp/1000000, err, uhdError(err));
>>             return(FAIL);
>>       }
>>       info(stderr, "Master clock is at %.0lf Mhz\n", 0, tmp/1000000);
>>       /* Set the sample rate */
>>      if (srate && !uhd_set_rx_rate_check(channel, srate)) return(FAIL);
>>      /* Set the tuner gain SBX-120 is 0-31.5 in .5 db steps */
>>
>        if ((err =3D uhd_usrp_set_rx_gain(dev[channel], gain, channel, "")=
))
>>        {
>>             error(log, "Failed to set tuner[%d] gain to %.0lf db (%d).
>> %s.\n", 0, FL,
>>                  LN, FN, channel, gain, err, uhdError(err));
>>             return(FAIL);
>>          }
>>          if (!(err =3D uhd_usrp_get_rx_gain(dev[channel], channel, "",
>> &tmp)))
>>               info(log, "Tuner[%d] gain set to %.0lf (%.0lf) dB\n", 0,
>> channel, tmp, gain);
>>
>         ./* Set channel bw to conserve tuner resources. Not needed, set
> by srate */
>              uhd_usrp_set_rx_bandwidth(dev[channel], srate, channel);
>          ./* Disable subtracting constant averaged background. Signal
> looks cleaner */
>             if ((err =3D uhd_usrp_set_rx_dc_offset_enabled(dev[channel],
> false, channel)))
>              {
>                  warn(log, "Failed to disable FPGA DC offset on channel
> %d(%d). %s.\n", 0,
>                      FL, LN, FN, channel, err, uhdError(err));
>                }
>                info(stderr, "Disabled FPGA DC offset on channel %d\n", 0,
> channel);
>                return(SUCCESS);
>          }
>
> This is the generated output:
>
> [INFO] [UHD] linux; GNU C++ version 13.2.0; Boost_108300;
> UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> Sat Apr 26 03:33:48 2025 [00] [+] Created USRP with args
> Sat Apr 26 03:33:48 2025 [00] [+] Master clock is at 200 Mhz
> Sat Apr 26 03:33:48 2025 [00] [+] Tuner[0] gain set to 30 (30) dB
> Sat Apr 26 03:33:48 2025 [00] [*] scanner.l:1446:main Incorrect maxsample=
s
> (1996). Expected 19960.
> Sat Apr 26 03:33:48 2025 [00] [+] Max samples/buffer[0]: 1996
> [WARNING] [0/Radio#0] Ignoring stream command for finite acquisition of
> zero samples
> I hope this reads OK. Maybe next time I should attach the code:)
>
>> TIA
>> Nikos
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>> I believe that max number of samples-per-buffer is limited by MTU size.
> Which is typically around 8000 or so for "jumbo frames".
>
>
>

--000000000000c15a6b0633a61ced
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Act=
ually MTU is 9000. This is one of the recommendations...</div><div class=3D=
"gmail_default" style=3D"font-size:small">I tried it with MTU 1500. It was =
worse:(</div><div class=3D"gmail_default" style=3D"font-size:small">maxsamp=
les dropped to 364...</div><div class=3D"gmail_default" style=3D"font-size:=
small"><br></div><div class=3D"gmail_default" style=3D"font-size:small">[IN=
FO] [UHD] linux; GNU C++ version 13.2.0; Boost_108300; UHD_4.6.0.0+ds1-5.1u=
buntu0.24.04.1<br>[INFO] [X300] X300 initialization sequence...<br>[INFO] [=
X300] Maximum frame size: 1472 bytes.<br>[WARNING] [X300] For the 192.168.4=
0.2 connection, UHD recommends a send frame size of at least 8000 for best<=
br>performance, but your configuration will only allow 1472.This may negati=
vely impact your maximum achievable sample rate.<br>Check the MTU on the in=
terface and/or the send_frame_size argument.<br>[WARNING] [X300] For the 19=
2.168.40.2 connection, UHD recommends a receive frame size of at least 8000=
 for best<br>performance, but your configuration will only allow 1472.This =
may negatively impact your maximum achievable sample rate.<br>Check the MTU=
 on the interface and/or the recv_frame_size argument.<br>[INFO] [GPS] No G=
PSDO found<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>[WARNING] [UDP] The =
send buffer could not be resized sufficiently.<br>Target sock buff size: 24=
912805 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the transport=
 application notes on buffer resizing.<br>Please run: sudo sysctl -w net.co=
re.wmem_max=3D24912805<br>Sat Apr 26 06:30:34 2025 [00] [+] Created USRP wi=
th args<br>Sat Apr 26 06:30:34 2025 [00] [+] Master clock is at 200 Mhz<br>=
Sat Apr 26 06:30:34 2025 [00] [+] Tuner[0] gain set to 30 (30) dB<br>[WARNI=
NG] [UDP] The send buffer could not be resized sufficiently.<br>Target sock=
 buff size: 24912805 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See=
 the transport application notes on buffer resizing.<br>Please run: sudo sy=
sctl -w net.core.wmem_max=3D24912805<br>Sat Apr 26 06:30:34 2025 [00] [*] s=
canner.l:1446:main Incorrect maxsamples (364). Expected 19960.<br>Sat Apr 2=
6 06:30:34 2025 [00] [+] Max samples/buffer[0]: 364<br>[WARNING] [0/Radio#0=
] Ignoring stream command for finite acquisition of zero sam</div><div clas=
s=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail=
_default" style=3D"font-size:small">Nikos</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr 26, 2025 at 5:46=
=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" =
target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 25/04/2025 22:26, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div class=3D"gmail_default" style=3D"font-size:small">Thanks
            Marcus,</div>
          <div class=3D"gmail_default" style=3D"font-size:small"><br>
          </div>
          <div class=3D"gmail_default" style=3D"font-size:small">for your
            fast reply.</div>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr 26, 2025 at
            4:08=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonb=
raun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div>
              <div>On 25/04/2025 20:50, Nikos Balkanas wrote:<br>
              </div>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">
                  <div style=3D"font-size:small">Hello,</div>
                  <div style=3D"font-size:small"><br>
                  </div>
                  <div style=3D"font-size:small">I need to buy a new NIC.
                    What would you suggest?</div>
                  <div style=3D"font-size:small">The one I use is an old
                    Mellanox 10 Gbs, before the Connect-4 series.</div>
                  <div style=3D"font-size:small">It can only do 1996 S/s,
                    need 19960 (10x more) to work with latest uhd.</div>
                  <div style=3D"font-size:small">Using Ubuntu 24.04 and
                    uhd 4.6.0</div>
                </div>
              </blockquote>
              So, 1.996ksps vs 19.960ksps?=C2=A0=C2=A0 You hardly need a 10=
Gbit
              link to support that.=C2=A0 So, perhaps something<br>
              =C2=A0 is being lost here in your requirements?<br>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div class=3D"gmail_default" style=3D"font-size:small">True. Can&=
#39;t
            explain it in terms of bandwidth. 16 * 1996 =3D 31.936 Kbps,
            16 * 19960 =3D 319.360 Kbps well short of a 10 Gbps line:(</div=
>
          <div class=3D"gmail_default" style=3D"font-size:small">Does a
            complex pair count as 1 sample, or 2?</div>
          <div class=3D"gmail_default" style=3D"font-size:small">I have
            followed all the instructions in=C2=A0<a href=3D"https://kb.ett=
us.com/USRP_Host_Performance_Tuning_Tips_and_Tricks" target=3D"_blank">http=
s://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a>,</div>
          <div class=3D"gmail_default" style=3D"font-size:small">Even
            installed the DPDK drivers. My Mellanox is too old to use
            their OFED drivers:(</div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">
                  <div style=3D"font-size:small"><br>
                  </div>
                  <div style=3D"font-size:small">On a related question. it
                    seems that the streamer doesn&#39;t crash anymore</div>
                  <div style=3D"font-size:small">when receiving less than
                    MAXSPS samples, instead it reads 0:(</div>
                  <div style=3D"font-size:small">This was due to the sse2
                    code not aligned in convert.</div>
                  <div style=3D"font-size:small">I change my stream args
                    to cpu_format=3Dsc16, otw=3Dsc16, so no conversion
                    required.</div>
                  <div style=3D"font-size:small">Streamer still doesn&#39;t
                    read anything. Is there a reason for it?</div>
                  <div style=3D"font-size:small"><br>
                  </div>
                </div>
              </blockquote>
              You&#39;d need to share more of your code.=C2=A0 This should =
just
              work as far as I can tell.<br>
              <br>
            </div>
          </blockquote>
          <div><span class=3D"gmail_default" style=3D"font-size:small"></sp=
an></div>
          <div><span class=3D"gmail_default" style=3D"font-size:small">Than=
ks.
              these are just the usrp code:</span></div>
          <div><br>
          </div>
          <div class=3D"gmail_default" style=3D"font-size:small">int main()=
</div>
          <div class=3D"gmail_default" style=3D"font-size:small">{</div>
          <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=
=A0 =C2=A0
            uhd_stream_args_t stream_args =3D<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<=
br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 .cpu_format =3D &quot;sc16&quot;,<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 .otw_format =3D &quot;sc16&quot;,<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 .args =3D &quot;&quot;,<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 .n_channels =3D 1,<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0.channel_list =3D &amp;channel<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0};<br>
            ..uhd_stream_cmd_t stream_cmd =3D<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0{<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0.stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DON=
E,<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0 .stream_now =3D true<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 };</div>
          <div class=3D"gmail_default" style=3D"font-size:small"><br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div> <span class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0
                =C2=A0 </span>if (uhd_init(0, 0, gain)) do_exit(20);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>if
              ((err =3D uhd_usrp_get_rx_stream(dev[0], &amp;stream_args,
              rx_streamer[0])))<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>{<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0</span>uhd_get_last_error(errmsg, 127);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0</span>error(log, &quot;Failed to get streamer=
[0] (%d).
              %s.\n&quot;, 0, FL, LN, FN, err, errmsg);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0=C2=A0</span>uhd_rx_streamer_free(&amp;rx_streamer[0]=
);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0</span>rx_streamer[0] =3D NULL;<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0</span>uhd_rx_metadata_free(&amp;md[0]);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0=C2=A0</span>md[0] =3D NULL;<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0=C2=A0</span>do_exit(30);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>}<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0</span>if
              ((err =3D uhd_rx_streamer_max_num_samps(rx_streamer[0],
              &amp;maxsamps)))</div>
          </blockquote>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div><span class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0 =C2=A0
                =C2=A0</span>{<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0</span>uhd_get_last_error(errmsg, 127);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0</span>error(log, &quot;Failed to get max
              samples/buffer[0] (%d). %s.\n&quot;, 0, FL, LN, FN, err,<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0</span>..errmsg);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0=C2=A0</span>do_exit(35);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>}<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>if
              (maxsamps !=3D MAXSMPS)<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0=C2=A0</span>warn(log, &quot;Incorrect maxsamples (%l=
d). Expected
              %d.\n&quot;, 0, FL, LN, FN, maxsamps,<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>MAXSMPS);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0</span>info(log,
              &quot;Max samples/buffer[0]: %ld\n&quot;, 0, maxsamps);<br>
              <br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 i</span>f
              ((err =3D uhd_rx_streamer_issue_stream_cmd(rx_streamer[0],
              &amp;stream_cmd)))=C2=A0</div>
          </blockquote>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div><span class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0
                =C2=A0=C2=A0</span>{<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0=C2=A0</span>uhd_get_last_error(errmsg, 127);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0=C2=A0</span>error(log, &quot;Failed to start streame=
r[0] (%d).
              %s.\n&quot;, 0, FL, LN, FN, err, errmsg);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0</span>do_exit(40);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0</span>}<br>
            </div>
          </blockquote>
          <div><span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
              =C2=A0 =C2=A0[...]</span></div>
          <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0
            =C2=A0do_exit(0)</div>
          <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=
=A0 =C2=A0}</div>
          <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=
=A0 =C2=A0</div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div> bool uhd_init(size_t channel, double srate, double
              gain)<br>
              {<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>double
              tmp;<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>uhd_rx_metadata_error_code_t
              err;<br>
              <br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0</span>if
              ((err =3D
              uhd_set_thread_priority(uhd_default_thread_priority,
              true)))<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0=C2=A0</span>warn(log, &quot;Unable to =
set =C2=A0main thread
              priority (%d). %s.\n&quot;, 0, FL, LN, FN,<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>err, =
uhdError(err));<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
              </span>/* Create USRP */<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
              </span>f ((err =3D uhd_usrp_make(&amp;dev[channel],
              &quot;type=3Dx300&quot;)))<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0=C2=A0</span>{<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0=C2=A0</span>error(log, &quot;Failed to create=
 USRP (%d).
              %s.\n&quot;, 0, FL, LN, FN, err,<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>uhdError(err));<br=
>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0</span>dev[channel] =3D NULL;<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0 r</span>eturn(FAIL);=C2=A0</div>
          </blockquote>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div><span class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0</span>}<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0</span>info(stderr, &quot;Created USRP with ar=
gs\n&quot;, 0);<br>
              <br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>/*
              Create RX streamer */<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>if
              ((err =3D uhd_rx_streamer_make(&amp;rx_streamer[channel])))<b=
r>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>{<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0=C2=A0</span>error(log, &quot;Failed to create rx_str=
eamer[%d]
              (%d). %s.\n&quot;, 0, FL, LN, FN,<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0=C2=A0</span>channel, err, uhdError(err=
));<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0</span>return(FAIL);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 </span>}<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>/*
              Create RX metadata */<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>if
              ((err =3D uhd_rx_metadata_make(&amp;md[channel])))<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0</span>{<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0</span>error(log, &quot;Failed to create md[%d] (%d).
              %s.\n&quot;, 0, FL, LN, FN, channel,<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0</span>err, uhdError(err));<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0=C2=A0</span>return(FAIL);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0</span>}<br>
              <br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>/*
              <span class=3D"gmail_default" style=3D"font-size:small">G</sp=
an>et
              master clock rate */<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0</span>if
              ((err =3D uhd_usrp_get_master_clock_rate(dev[channel], 0,
              &amp;tmp)))=C2=A0</div>
          </blockquote>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div><span class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0 =C2=A0
                =C2=A0=C2=A0</span>{<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0</span>error(log, &quot;Failed to set m=
aster clock to
              %.0lf Mhz (%d). %s.\n&quot;, 0, FL,<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>LN, FN, tmp/100000=
0, err,
              uhdError(err));<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0=C2=A0</span>return(FAIL);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
              </span>}<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0=C2=A0</span>info(stderr,
              &quot;Master clock is at %.0lf Mhz\n&quot;, 0, tmp/1000000);<=
br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0=C2=A0</span>/*
              Set the sample rate */<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0</span>if
              (srate &amp;&amp; !uhd_set_rx_rate_check(channel, srate))
              return(FAIL);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0</span>/*
              Set the tuner gain SBX-120 is 0-31.5 in .5 db steps */=C2=A0<=
/div>
          </blockquote>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div><span class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0 =C2=A0
                =C2=A0 =C2=A0i</span>f ((err =3D uhd_usrp_set_rx_gain(dev[c=
hannel],
              gain, channel, &quot;&quot;)))<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0</span>{<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0=C2=A0</span>error(log, &quot;Failed to=
 set tuner[%d] gain to
              %.0lf db (%d). %s.\n&quot;, 0, FL,<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>LN, FN, cha=
nnel, gain, err,
              uhdError(err));<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0=C2=A0</span>return(FAIL);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0</span>}<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0i</span>f (!(err =3D uhd_usrp_get_rx_gain(dev[=
channel],
              channel, &quot;&quot;, &amp;tmp)))<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>info(log, &quot;Tun=
er[%d] gain set to %.0lf
              (%.0lf) dB\n&quot;, 0, channel, tmp,<span class=3D"gmail_defa=
ult" style=3D"font-size:small">=C2=A0</span>gain);</div>
          </blockquote>
          <span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0=C2=A0</span>./*
          Set channel bw to conserve tuner resources. Not needed, set by
          srate */<br>
          <span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0</span>uhd_usrp_set_rx_bandwidth(dev[channel], sra=
te,
          channel);<br>
          <span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0</span>./*
          Disable subtracting constant averaged background. Signal looks
          cleaner */<br>
          <span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0=C2=A0</span>if ((err =3D
          uhd_usrp_set_rx_dc_offset_enabled(dev[channel], false,
          channel)))<br>
          <span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0</span>{<br>
          <span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>warn(log, &quot;Failed to dis=
able FPGA DC offset on
          channel %d(%d). %s.\n&quot;, 0,<br>
          <span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>FL, LN, FN, cha=
nnel, err, uhdError(err));</div>
        <div class=3D"gmail_quote"><span class=3D"gmail_default" style=3D"f=
ont-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0</span>}<br>
          <span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0 =C2=A0</span>info(stderr, &quot;Disabled FPGA DC =
offset on channel
          %d\n&quot;, 0, channel);<span class=3D"gmail_default" style=3D"fo=
nt-size:small"></span></div>
        <div class=3D"gmail_quote"><span class=3D"gmail_default" style=3D"f=
ont-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0</span>return(SUCCESS);<br>
          <div><span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
              =C2=A0 =C2=A0}</span></div>
          <div><span class=3D"gmail_default" style=3D"font-size:small"><br>
            </span></div>
          <div><span class=3D"gmail_default" style=3D"font-size:small">This
              is the generated output:</span>=C2=A0</div>
          <div><br>
          </div>
          <div><span class=3D"gmail_default" style=3D"font-size:small"></sp=
an>[INFO]
            [UHD] linux; GNU C++ version 13.2.0; Boost_108300;
            UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1</div>
          [INFO] [X300] X300 initialization sequence...<br>
          [INFO] [X300] Maximum frame size: 8000 bytes.<br>
          [INFO] [X300] Radio 1x clock: 200 MHz<br>
          Sat Apr 26 03:33:48 2025 [00] [+] Created USRP with args<br>
          Sat Apr 26 03:33:48 2025 [00] [+] Master clock is at 200 Mhz<br>
          Sat Apr 26 03:33:48 2025 [00] [+] Tuner[0] gain set to 30 (30)
          dB<br>
          Sat Apr 26 03:33:48 2025 [00] [*] scanner.l:1446:main
          Incorrect maxsamples (1996). Expected 19960.<br>
          Sat Apr 26 03:33:48 2025 [00] [+] Max samples/buffer[0]: 1996<br>
          <div>[WARNING] [0/Radio#0] Ignoring stream command for finite
            acquisition of zero samples=C2=A0</div>
          <div><span class=3D"gmail_default" style=3D"font-size:small"></sp=
an></div>
          <div><span class=3D"gmail_default" style=3D"font-size:small">I
              hope this reads OK. Maybe next time I should attach the
              code:)</span>=C2=A0</div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">
                  <div style=3D"font-size:small"> </div>
                  <div style=3D"font-size:small">TIA</div>
                  <div style=3D"font-size:small">Nikos</div>
                </div>
                <br>
                <fieldset></fieldset>
                <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
              </blockquote>
              <br>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    I believe that max number of samples-per-buffer is limited by MTU
    size.=C2=A0=C2=A0 Which is typically around 8000 or so for &quot;jumbo =
frames&quot;.<br>
    <br>
    <br>
  </div>

</blockquote></div>

--000000000000c15a6b0633a61ced--

--===============0926016535016783361==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0926016535016783361==--
