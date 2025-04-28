Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D2843A9E665
	for <lists+usrp-users@lfdr.de>; Mon, 28 Apr 2025 05:04:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1D4A2385FBD
	for <lists+usrp-users@lfdr.de>; Sun, 27 Apr 2025 23:04:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745809447; bh=2rQecoyZKt46KWr6uy4uriOQMg2pCwv3BALx466iLc4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=MlZ+JqSON0gTHKb4TNDJzFLwkmRYIBDI6+zSAb84Sacx9xeuM4i8L+xc2bN+d40yZ
	 Ih+exw4eSjsyS2zPHQpvuS1RE5NjGq0dPtSO3hVQBHJHbLa+QSRrF2kdKI3XUksdUw
	 IxdnmowUuUQDXTSmfdfh3qCKiD6ug2sxxNuoUNYUs2aeoV06PxUzXXGQYz3kg8mzJ7
	 HaJYjut9P3U7QQQgqXHuW1ymaps3I5obWBKEJ9fxEYkxyLe/wTNrENMGilR561Kj7Q
	 BhK4SFXnJgR67W82HxluxCSEHqYN8vo0Vxc0f7Ll7TDMkJQDcpUxo90s83cyw7Pz5d
	 6HMVfSlRt/+zw==
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 30CC4385B2F
	for <usrp-users@lists.ettus.com>; Sun, 27 Apr 2025 23:03:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ng7vQ2p0";
	dkim-atps=neutral
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-3d5ebc2b725so13929465ab.3
        for <usrp-users@lists.ettus.com>; Sun, 27 Apr 2025 20:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745809386; x=1746414186; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tg2Ef5cm8Hg6JyMoJ8FOsg9HgRMGdLbjnzTQEuU0DKU=;
        b=Ng7vQ2p0LHiUB9IZW+0j/kIJAmDEyt+t/BoQ0Hew20ozx/vk2/uzy12jXScFOHp9Oa
         2Hpw1Jcun5wBpsf20VXnT1ibrTFaRTbNOid8lyycKWwc0fi/WxgelvEWkWyekh6aBaWP
         sEkkeVS/Q2hnM2+43Yt8uqNHu3/5WiIeCfbjjwYMNen8mJrv7q/uysvFQsjWIm/Nuwlv
         yc5YTUjWjtGQ8uEZhvT8VyokM/rtScpuxiyb2SdduXSmAujkvp4MTuODhRG5pQCOABQA
         Hqd7vXbIbU81hr3voQdrs1x6E8grlUvK5kKscQb7Ls9MX8/8msQ7iZ0m/vh7jA+eFmdk
         DqdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745809386; x=1746414186;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tg2Ef5cm8Hg6JyMoJ8FOsg9HgRMGdLbjnzTQEuU0DKU=;
        b=MeM5nkoZcjboLsMPu1XqrGBqVos6z1ai1rL2a5p++rtX8lW9jxjm9jjRhOP1Nomsg4
         D5lKK7cfQgAUFbTJLIjemXL82phUWpTqkbpzkuwexAQIqRZNbcAAYwsL6sTyUUjRT16H
         fADc0cOUPQ/JSKSmfn9JjIMBsA9b76T5P7qEdfagsXfNdh89KyIhiXFAtkS2Pfe4RF/J
         br2pUpR1J2YSuoom7DYhEMg6aRl7p3gNUaSyFPVpTmBS7AerTIpWKAjfh1dPNeFQ6nBt
         EaD8Buwt7gTN9WoCyio30BUCJclpIeBL1RHBmPST3xv2e4BVrujfDgav4tikLDJH5HgQ
         U3Yg==
X-Gm-Message-State: AOJu0YwNvXHvkvMpgOnHsNPXMO8cpS1hYno6/sBonqazq/7tblRQCxWB
	KAv2IKAVwdHPkWKlJW9DtZohRxnSr3wpDqCJvPV48XYsJfVOAuAxIn0CmhDC8z332PXrZv91QBe
	tN/paItCYn3VLnvkG/r9uSuNrCkE=
X-Gm-Gg: ASbGnctt/pK7HCGi4+DftzPlBcsNreXEobktV+Ncki4H7GNEi3/IqDqQDMxJKwaIZrW
	OiCzLlvcc1sos/LgVDwbKRufhMzw/ygmn2fRUME14ztXvMGpCdxbX4130Bqcc1wVN0C/kAcamvc
	EtjGywpRqqYIZvLJ76PWpr
X-Google-Smtp-Source: AGHT+IHfo/s8RrDo2p7D/J+5ds3odaRI2NK5sEhMF0NNZj1O5Tw0zLXZ4pNFkHrgh/Kp0QCoWiImAMZ5a9hP6kZ9KXk=
X-Received: by 2002:a05:6e02:2167:b0:3d5:890b:8db with SMTP id
 e9e14a558f8ab-3d93b428c00mr102198495ab.8.1745809386325; Sun, 27 Apr 2025
 20:03:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2G+q1LtJVVQyQt6at2QNh7PfVrrZhHvZauB8QEipF+w6w@mail.gmail.com>
 <e08576a1-ede9-4f27-9706-8a38cfc50c57@gmail.com> <CAAxXO2GZw0DAYVYFdw3Jx9g5PCivquhcrBB2uk3ZRB4w1KbOvQ@mail.gmail.com>
 <8660a987-f91a-402f-b575-a5b907a2e55e@gmail.com> <CAAxXO2EyLchisQPwFa9B2s9eO+QR5JV98cfoX1nnRAU7hYaj9g@mail.gmail.com>
 <709f178e-0d6a-4c76-b40d-b88f5b0c80cf@gmail.com> <CAAxXO2HWGvwy=V80crP6yajNPeYjvn3qYV-kyPPD0Wcaq-4tAA@mail.gmail.com>
 <CAAxXO2EHUfxCoFaBMiUkp=JYvv4hgNYtbVwpW6udYajdtdxSBA@mail.gmail.com>
 <CAAxXO2H8FN9ND+xwwn2H6u4z0pVrGwXFmwnUFdsi+FTOa=g8Tg@mail.gmail.com> <701bd52a-1b53-4553-bcfc-b5279fba1622@gmail.com>
In-Reply-To: <701bd52a-1b53-4553-bcfc-b5279fba1622@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Mon, 28 Apr 2025 06:02:54 +0300
X-Gm-Features: ATxdqUECoy2NjKFBaZzwVPFaeEmBWY-8aGUhncRpptzjAhlbYxLGnYJzzD-du1Q
Message-ID: <CAAxXO2FapkYJ887B=2YjVStHmn9bS4LvHCk87_y52HpDajNPcQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: Z5E6WNSXQTSUV3KDQIS7VMGL5I7OTRTC
X-Message-ID-Hash: Z5E6WNSXQTSUV3KDQIS7VMGL5I7OTRTC
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: NIC suggestion
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z5E6WNSXQTSUV3KDQIS7VMGL5I7OTRTC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5679729480803550375=="

--===============5679729480803550375==
Content-Type: multipart/alternative; boundary="0000000000005152910633cdec18"

--0000000000005152910633cdec18
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Point taken:) I'm proposing smt different:
pchar +ICMP are just to test line and connectors. First step. Not to bench
USRP.
benchmark_rate is to bench/stress usrp.
These 2 are independent, and complementary.
Pchar is telling me nothing more than my fiber cable and connectors are
good.
It saved me a trip tomorrow to my local PC store, where fiber cable and
connectors are ~7 E each.
benchmark_rate on the other hand is quite interesting.
It points to software,and particularly my uhd_init()

Just found and downloaded the sources to uhd 4.6.0 from Ubuntu Launchpad.
Now I can go through the source of the example you told me:)
Ettus used  to keep an archive of old uhd sources around. Seems it's gone:(
Open source means, among others, free to choose the source version that you
need...
Having the latest source in Github is only partly open source.
During development we need to freeze updates. When in 5 years we go
into production we can't find the old sources anymore:(
If a customer discovers a bug, not in our code, but in one of the libraries
that
we use, what are we gonna do?

BR
Nikos



On Mon, Apr 28, 2025 at 5:01=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 27/04/2025 21:58, Nikos Balkanas wrote:
>
> My bad:
>
> throughput of 5.619 Kb/s requesting ICMP replies, +> throughput of 5,619
> Kb/s requesting ICMP replies
> Local thousand separator is ".", whereas in the US is ",":(
>
> It is STILL the case that the ICMP machinery in these radios is ABSOLUTEL=
Y
> NOT on the fast-path inside
>   the hardware.  The only way to get a good feel for how much sample
> bandwidth they can process is
>   with examples like "benchmark_rate".
>
>
>
> On Mon, Apr 28, 2025 at 12:37=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.=
com>
> wrote:
>
>> Hi Marcus,
>>
>> You were right. No need to change NIC:)
>> This is not a software issue. uhd_rx_streamer_max_num_samps runs right
>> after uhd initialization before
>> any other code had the chance to run.
>> Link capacity doesn't seem to be the issue either...
>> Running pchar on the link, descendant of pathchar, reports a throughput
>> of 5.619 Kb/s requesting ICMP replies,
>> to varying packet sizes (32->9000 (MTU), incr by 32).
>> sudo pchar -m 9000 -p ipv4icmp usrp
>> https://www.kitchenlab.org/www/bmah/Software/pchar/
>>
>> It corresponds to 351.218.019 16-bit samples or 175,609.044 32-bit
>> samples, if each sample is 32-bit(real + imag)
>> Seems that uhd is not running at link capacity but is doing smt else.
>> I will have  to download and check with the sources...
>> The package version for Ubuntu 24.04 is uhd 4.6.0.
>> Where can I download the sources for uhd 4.6.0?
>>
>> BR
>> Nikos
>>
>> On Sat, Apr 26, 2025 at 7:02=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.=
com>
>> wrote:
>>
>>> Thanks for your time.
>>> I will check out the example.
>>> This is not a buffer problem. I just need 1024 Samples (real+imaginary)
>>> for FFT...
>>> I should be able to get them in a single pass.
>>> You saw my code, not a smoking gun there.
>>>
>>> This is probably is a physical problem.
>>> Cable is an SFP fiber dedicated line. Cannot go bad.
>>> Maybe the connections are not sitting right :(...
>>>
>>> BR
>>> Nikos
>>>
>>> On Sat, Apr 26, 2025 at 6:45=E2=80=AFAM Marcus D. Leech <patchvonbraun@=
gmail.com>
>>> wrote:
>>>
>>>> On 25/04/2025 23:33, Nikos Balkanas wrote:
>>>>
>>>> Actually MTU is 9000. This is one of the recommendations...
>>>> I tried it with MTU 1500. It was worse:(
>>>> maxsamples dropped to 364...
>>>>
>>>> Right, 9000, rather than 8000.
>>>>
>>>> Upgrading to 10Gbit wont' give you larger MTU.
>>>>
>>>> What you're trying to do, I think, is to solve a buffer-management
>>>> problem in your *application* at entirely the wrong
>>>>   level in the stack.
>>>>
>>>> It is EXCEEDINGLY COMMON for hardware drivers to only be able to
>>>> deliver in chunks that may not be perfectly adapted to
>>>>   the requirements of your application.  So, a common programming
>>>> pattern is to deal with this in your application.
>>>>
>>>> You should probably look at example code like rx_samples_to_file
>>>>
>>>>
>>>>
>>>> [INFO] [UHD] linux; GNU C++ version 13.2.0; Boost_108300;
>>>> UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1
>>>> [INFO] [X300] X300 initialization sequence...
>>>> [INFO] [X300] Maximum frame size: 1472 bytes.
>>>> [WARNING] [X300] For the 192.168.40.2 connection, UHD recommends a sen=
d
>>>> frame size of at least 8000 for best
>>>> performance, but your configuration will only allow 1472.This may
>>>> negatively impact your maximum achievable sample rate.
>>>> Check the MTU on the interface and/or the send_frame_size argument.
>>>> [WARNING] [X300] For the 192.168.40.2 connection, UHD recommends a
>>>> receive frame size of at least 8000 for best
>>>> performance, but your configuration will only allow 1472.This may
>>>> negatively impact your maximum achievable sample rate.
>>>> Check the MTU on the interface and/or the recv_frame_size argument.
>>>> [INFO] [GPS] No GPSDO found
>>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>>> Target sock buff size: 24912805 bytes.
>>>> Actual sock buff size: 1048576 bytes.
>>>> See the transport application notes on buffer resizing.
>>>> Please run: sudo sysctl -w net.core.wmem_max=3D24912805
>>>> Sat Apr 26 06:30:34 2025 [00] [+] Created USRP with args
>>>> Sat Apr 26 06:30:34 2025 [00] [+] Master clock is at 200 Mhz
>>>> Sat Apr 26 06:30:34 2025 [00] [+] Tuner[0] gain set to 30 (30) dB
>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>>> Target sock buff size: 24912805 bytes.
>>>> Actual sock buff size: 1048576 bytes.
>>>> See the transport application notes on buffer resizing.
>>>> Please run: sudo sysctl -w net.core.wmem_max=3D24912805
>>>> Sat Apr 26 06:30:34 2025 [00] [*] scanner.l:1446:main Incorrect
>>>> maxsamples (364). Expected 19960.
>>>> Sat Apr 26 06:30:34 2025 [00] [+] Max samples/buffer[0]: 364
>>>> [WARNING] [0/Radio#0] Ignoring stream command for finite acquisition o=
f
>>>> zero sam
>>>>
>>>> Nikos
>>>>
>>>> On Sat, Apr 26, 2025 at 5:46=E2=80=AFAM Marcus D. Leech <
>>>> patchvonbraun@gmail.com> wrote:
>>>>
>>>>> On 25/04/2025 22:26, Nikos Balkanas wrote:
>>>>>
>>>>> Thanks Marcus,
>>>>>
>>>>> for your fast reply.
>>>>>
>>>>> On Sat, Apr 26, 2025 at 4:08=E2=80=AFAM Marcus D. Leech <
>>>>> patchvonbraun@gmail.com> wrote:
>>>>>
>>>>>> On 25/04/2025 20:50, Nikos Balkanas wrote:
>>>>>>
>>>>>> Hello,
>>>>>>
>>>>>> I need to buy a new NIC. What would you suggest?
>>>>>> The one I use is an old Mellanox 10 Gbs, before the Connect-4 series=
.
>>>>>> It can only do 1996 S/s, need 19960 (10x more) to work with latest
>>>>>> uhd.
>>>>>> Using Ubuntu 24.04 and uhd 4.6.0
>>>>>>
>>>>>> So, 1.996ksps vs 19.960ksps?   You hardly need a 10Gbit link to
>>>>>> support that.  So, perhaps something
>>>>>>   is being lost here in your requirements?
>>>>>>
>>>>>
>>>>> True. Can't explain it in terms of bandwidth. 16 * 1996 =3D 31.936 Kb=
ps,
>>>>> 16 * 19960 =3D 319.360 Kbps well short of a 10 Gbps line:(
>>>>> Does a complex pair count as 1 sample, or 2?
>>>>> I have followed all the instructions in
>>>>> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks,
>>>>> Even installed the DPDK drivers. My Mellanox is too old to use their
>>>>> OFED drivers:(
>>>>>
>>>>>>
>>>>>> On a related question. it seems that the streamer doesn't crash
>>>>>> anymore
>>>>>> when receiving less than MAXSPS samples, instead it reads 0:(
>>>>>> This was due to the sse2 code not aligned in convert.
>>>>>> I change my stream args to cpu_format=3Dsc16, otw=3Dsc16, so no
>>>>>> conversion required.
>>>>>> Streamer still doesn't read anything. Is there a reason for it?
>>>>>>
>>>>>> You'd need to share more of your code.  This should just work as far
>>>>>> as I can tell.
>>>>>>
>>>>>> Thanks. these are just the usrp code:
>>>>>
>>>>> int main()
>>>>> {
>>>>>       uhd_stream_args_t stream_args =3D
>>>>>                                                            {
>>>>>
>>>>> .cpu_format =3D "sc16",
>>>>>
>>>>> .otw_format =3D "sc16",
>>>>>                                                               .args =
=3D
>>>>> "",
>>>>>
>>>>> .n_channels =3D 1,
>>>>>
>>>>>  .channel_list =3D &channel
>>>>>                                                              };
>>>>> ..uhd_stream_cmd_t stream_cmd =3D
>>>>>                                                              {
>>>>>
>>>>>  .stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,
>>>>>
>>>>> .stream_now =3D true
>>>>>                                                               };
>>>>>
>>>>>     if (uhd_init(0, 0, gain)) do_exit(20);
>>>>>>     if ((err =3D uhd_usrp_get_rx_stream(dev[0], &stream_args,
>>>>>> rx_streamer[0])))
>>>>>>     {
>>>>>>          uhd_get_last_error(errmsg, 127);
>>>>>>          error(log, "Failed to get streamer[0] (%d). %s.\n", 0, FL,
>>>>>> LN, FN, err, errmsg);
>>>>>>         uhd_rx_streamer_free(&rx_streamer[0]);
>>>>>>          rx_streamer[0] =3D NULL;
>>>>>>          uhd_rx_metadata_free(&md[0]);
>>>>>>         md[0] =3D NULL;
>>>>>>         do_exit(30);
>>>>>>     }
>>>>>>      if ((err =3D uhd_rx_streamer_max_num_samps(rx_streamer[0],
>>>>>> &maxsamps)))
>>>>>>
>>>>>      {
>>>>>>          uhd_get_last_error(errmsg, 127);
>>>>>>          error(log, "Failed to get max samples/buffer[0] (%d).
>>>>>> %s.\n", 0, FL, LN, FN, err,
>>>>>>            ..errmsg);
>>>>>>         do_exit(35);
>>>>>>     }
>>>>>>     if (maxsamps !=3D MAXSMPS)
>>>>>>         warn(log, "Incorrect maxsamples (%ld). Expected %d.\n", 0,
>>>>>> FL, LN, FN, maxsamps,
>>>>>>               MAXSMPS);
>>>>>>      info(log, "Max samples/buffer[0]: %ld\n", 0, maxsamps);
>>>>>>
>>>>>>     if ((err =3D uhd_rx_streamer_issue_stream_cmd(rx_streamer[0],
>>>>>> &stream_cmd)))
>>>>>>
>>>>>     {
>>>>>>         uhd_get_last_error(errmsg, 127);
>>>>>>         error(log, "Failed to start streamer[0] (%d). %s.\n", 0, FL,
>>>>>> LN, FN, err, errmsg);
>>>>>>        do_exit(40);
>>>>>>      }
>>>>>>
>>>>>          [...]
>>>>>          do_exit(0)
>>>>>      }
>>>>>
>>>>>
>>>>>> bool uhd_init(size_t channel, double srate, double gain)
>>>>>> {
>>>>>>     double tmp;
>>>>>>     uhd_rx_metadata_error_code_t err;
>>>>>>
>>>>>>      if ((err =3D uhd_set_thread_priority(uhd_default_thread_priorit=
y,
>>>>>> true)))
>>>>>>             warn(log, "Unable to set  main thread priority (%d).
>>>>>> %s.\n", 0, FL, LN, FN,
>>>>>>                   err, uhdError(err));
>>>>>>       /* Create USRP */
>>>>>>       f ((err =3D uhd_usrp_make(&dev[channel], "type=3Dx300")))
>>>>>>       {
>>>>>>           error(log, "Failed to create USRP (%d). %s.\n", 0, FL, LN,
>>>>>> FN, err,
>>>>>>                uhdError(err));
>>>>>>            dev[channel] =3D NULL;
>>>>>>             return(FAIL);
>>>>>>
>>>>>          }
>>>>>>          info(stderr, "Created USRP with args\n", 0);
>>>>>>
>>>>>>     /* Create RX streamer */
>>>>>>     if ((err =3D uhd_rx_streamer_make(&rx_streamer[channel])))
>>>>>>     {
>>>>>>         error(log, "Failed to create rx_streamer[%d] (%d). %s.\n",
>>>>>> 0, FL, LN, FN,
>>>>>>             channel, err, uhdError(err));
>>>>>>          return(FAIL);
>>>>>>     }
>>>>>>     /* Create RX metadata */
>>>>>>     if ((err =3D uhd_rx_metadata_make(&md[channel])))
>>>>>>    {
>>>>>>        error(log, "Failed to create md[%d] (%d). %s.\n", 0, FL, LN,
>>>>>> FN, channel,
>>>>>>            err, uhdError(err));
>>>>>>         return(FAIL);
>>>>>>      }
>>>>>>
>>>>>>     /* Get master clock rate */
>>>>>>      if ((err =3D uhd_usrp_get_master_clock_rate(dev[channel], 0,
>>>>>> &tmp)))
>>>>>>
>>>>>       {
>>>>>>            error(log, "Failed to set master clock to %.0lf Mhz (%d).
>>>>>> %s.\n", 0, FL,
>>>>>>                LN, FN, tmp/1000000, err, uhdError(err));
>>>>>>             return(FAIL);
>>>>>>       }
>>>>>>       info(stderr, "Master clock is at %.0lf Mhz\n", 0, tmp/1000000)=
;
>>>>>>       /* Set the sample rate */
>>>>>>      if (srate && !uhd_set_rx_rate_check(channel, srate))
>>>>>> return(FAIL);
>>>>>>      /* Set the tuner gain SBX-120 is 0-31.5 in .5 db steps */
>>>>>>
>>>>>        if ((err =3D uhd_usrp_set_rx_gain(dev[channel], gain, channel,
>>>>>> "")))
>>>>>>        {
>>>>>>             error(log, "Failed to set tuner[%d] gain to %.0lf db
>>>>>> (%d). %s.\n", 0, FL,
>>>>>>                  LN, FN, channel, gain, err, uhdError(err));
>>>>>>             return(FAIL);
>>>>>>          }
>>>>>>          if (!(err =3D uhd_usrp_get_rx_gain(dev[channel], channel, "=
",
>>>>>> &tmp)))
>>>>>>               info(log, "Tuner[%d] gain set to %.0lf (%.0lf) dB\n",
>>>>>> 0, channel, tmp, gain);
>>>>>>
>>>>>         ./* Set channel bw to conserve tuner resources. Not needed,
>>>>> set by srate */
>>>>>              uhd_usrp_set_rx_bandwidth(dev[channel], srate, channel);
>>>>>          ./* Disable subtracting constant averaged background. Signal
>>>>> looks cleaner */
>>>>>             if ((err =3D
>>>>> uhd_usrp_set_rx_dc_offset_enabled(dev[channel], false, channel)))
>>>>>              {
>>>>>                  warn(log, "Failed to disable FPGA DC offset on
>>>>> channel %d(%d). %s.\n", 0,
>>>>>                      FL, LN, FN, channel, err, uhdError(err));
>>>>>                }
>>>>>                info(stderr, "Disabled FPGA DC offset on channel
>>>>> %d\n", 0, channel);
>>>>>                return(SUCCESS);
>>>>>          }
>>>>>
>>>>> This is the generated output:
>>>>>
>>>>> [INFO] [UHD] linux; GNU C++ version 13.2.0; Boost_108300;
>>>>> UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1
>>>>> [INFO] [X300] X300 initialization sequence...
>>>>> [INFO] [X300] Maximum frame size: 8000 bytes.
>>>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>>>> Sat Apr 26 03:33:48 2025 [00] [+] Created USRP with args
>>>>> Sat Apr 26 03:33:48 2025 [00] [+] Master clock is at 200 Mhz
>>>>> Sat Apr 26 03:33:48 2025 [00] [+] Tuner[0] gain set to 30 (30) dB
>>>>> Sat Apr 26 03:33:48 2025 [00] [*] scanner.l:1446:main Incorrect
>>>>> maxsamples (1996). Expected 19960.
>>>>> Sat Apr 26 03:33:48 2025 [00] [+] Max samples/buffer[0]: 1996
>>>>> [WARNING] [0/Radio#0] Ignoring stream command for finite acquisition
>>>>> of zero samples
>>>>> I hope this reads OK. Maybe next time I should attach the code:)
>>>>>
>>>>>> TIA
>>>>>> Nikos
>>>>>>
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>>>
>>>>>> I believe that max number of samples-per-buffer is limited by MTU
>>>>> size.   Which is typically around 8000 or so for "jumbo frames".
>>>>>
>>>>>
>>>>>
>>>>
>

--0000000000005152910633cdec18
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Poi=
nt taken:) I&#39;m proposing smt different:</div><div class=3D"gmail_defaul=
t" style=3D"font-size:small">pchar=C2=A0+ICMP are just to test line and con=
nectors. First step. Not to bench USRP.</div><div class=3D"gmail_default" s=
tyle=3D"font-size:small">benchmark_rate is to bench/stress usrp.</div><div =
class=3D"gmail_default" style=3D"font-size:small">These 2 are independent, =
and complementary.</div><div class=3D"gmail_default" style=3D"font-size:sma=
ll">Pchar is telling me nothing more than my fiber cable and connectors are=
 good.</div><div class=3D"gmail_default" style=3D"font-size:small">It saved=
 me a trip tomorrow to my local PC store, where fiber cable and connectors =
are ~7 E each.</div><div class=3D"gmail_default" style=3D"font-size:small">=
benchmark_rate on the other hand is quite interesting.</div><div class=3D"g=
mail_default" style=3D"font-size:small">It points to software,and particula=
rly my uhd_init()</div><div class=3D"gmail_default" style=3D"font-size:smal=
l"><br></div><div class=3D"gmail_default" style=3D"font-size:small">Just fo=
und and downloaded the sources to uhd 4.6.0 from Ubuntu Launchpad.</div><di=
v class=3D"gmail_default" style=3D"font-size:small">Now I can go through th=
e source of the example you told me:)</div><div class=3D"gmail_default" sty=
le=3D"font-size:small">Ettus used=C2=A0 to keep an archive of old uhd sourc=
es around. Seems it&#39;s gone:(=C2=A0</div><div class=3D"gmail_default" st=
yle=3D"font-size:small">Open source means, among others, free to choose the=
 source version that you need...</div><div class=3D"gmail_default" style=3D=
"font-size:small">Having the latest source in Github is only partly open so=
urce.</div><div class=3D"gmail_default" style=3D"font-size:small">During de=
velopment we need to freeze updates. When in 5 years we go</div><div class=
=3D"gmail_default" style=3D"font-size:small">into production we can&#39;t f=
ind the old sources anymore:(</div><div class=3D"gmail_default" style=3D"fo=
nt-size:small">If a customer discovers a bug, not in our code, but in one o=
f the libraries that</div><div class=3D"gmail_default" style=3D"font-size:s=
mall">we use, what are we gonna do?</div><div class=3D"gmail_default" style=
=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-s=
ize:small">BR</div><div class=3D"gmail_default" style=3D"font-size:small">N=
ikos=C2=A0</div><div class=3D"gmail_default" style=3D"font-size:small"><br>=
</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div></di=
v><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Mon, Apr 28, 2025 at 5:01=E2=80=AFAM Marcus D. Leech &=
lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><u></u=
>

 =20
   =20
 =20
  <div>
    <div>On 27/04/2025 21:58, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small">My bad:</div=
>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">throughput o=
f
          5.619 Kb/s requesting ICMP replies,=C2=A0+&gt; throughput of 5,61=
9
          Kb/s requesting ICMP replies</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Local
          thousand separator is &quot;.&quot;, whereas in the US is &quot;,=
&quot;:( <br>
        </div>
      </div>
    </blockquote>
    It is STILL the case that the ICMP machinery in these radios is
    ABSOLUTELY NOT on the fast-path inside<br>
    =C2=A0 the hardware.=C2=A0 The only way to get a good feel for how much=
 sample
    bandwidth they can process is<br>
    =C2=A0 with examples like &quot;benchmark_rate&quot;.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 28, 2025 at
          12:37=E2=80=AFAM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@g=
mail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div class=3D"gmail_default" style=3D"font-size:small">Hi
              Marcus,</div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">You were
              right. No need to change NIC:)</div>
            <div class=3D"gmail_default" style=3D"font-size:small">This is
              not a software issue.=C2=A0uhd_rx_streamer_max_num_samps runs
              right after uhd initialization before</div>
            <div class=3D"gmail_default" style=3D"font-size:small">any othe=
r
              code had the chance to run.</div>
            <div class=3D"gmail_default" style=3D"font-size:small">Link
              capacity doesn&#39;t seem to be the issue either...</div>
            <div class=3D"gmail_default" style=3D"font-size:small">Running
              pchar on the link, descendant of pathchar, reports a
              throughput of 5.619 Kb/s requesting ICMP replies,</div>
            <div class=3D"gmail_default" style=3D"font-size:small">to
              varying packet sizes (32-&gt;9000 (MTU), incr by 32).=C2=A0</=
div>
            <div class=3D"gmail_default" style=3D"font-size:small">sudo
              pchar -m 9000 -p ipv4icmp usrp</div>
            <div class=3D"gmail_default" style=3D"font-size:small"><a href=
=3D"https://www.kitchenlab.org/www/bmah/Software/pchar/" target=3D"_blank">=
https://www.kitchenlab.org/www/bmah/Software/pchar/</a></div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">It
              corresponds to 351.218.019 16-bit samples or 175,609.044
              32-bit samples, if each sample is 32-bit(real=C2=A0+ imag)</d=
iv>
            <div class=3D"gmail_default" style=3D"font-size:small">Seems
              that uhd is not running at link capacity but is doing smt
              else.</div>
            <div class=3D"gmail_default" style=3D"font-size:small">I will
              have=C2=A0 to download and check with the sources...</div>
            <div class=3D"gmail_default" style=3D"font-size:small">The
              package version for Ubuntu 24.04 is uhd 4.6.0.</div>
            <div class=3D"gmail_default" style=3D"font-size:small">Where ca=
n
              I download the sources for uhd 4.6.0?</div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">BR</div>
            <div class=3D"gmail_default" style=3D"font-size:small">Nikos</d=
iv>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr 26, 2025 at
              7:02=E2=80=AFAM Nikos Balkanas &lt;<a href=3D"mailto:nbalkana=
s@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
              <div dir=3D"ltr">
                <div class=3D"gmail_default" style=3D"font-size:small">Than=
ks
                  for your time.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">I
                  will check out the example.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">This
                  is not a buffer problem. I just need 1024 Samples
                  (real+imaginary) for FFT...</div>
                <div class=3D"gmail_default" style=3D"font-size:small">I
                  should be able to get them in a single pass.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">You
                  saw my code, not a smoking gun there.</div>
                <div class=3D"gmail_default" style=3D"font-size:small"><br>
                </div>
                <div class=3D"gmail_default" style=3D"font-size:small">This
                  is probably is a physical problem.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">Cabl=
e
                  is an SFP fiber dedicated line. Cannot go bad.</div>
                <div class=3D"gmail_default" style=3D"font-size:small">Mayb=
e
                  the connections are not sitting right :(...</div>
                <div class=3D"gmail_default" style=3D"font-size:small"><br>
                </div>
                <div class=3D"gmail_default" style=3D"font-size:small">BR</=
div>
                <div class=3D"gmail_default" style=3D"font-size:small">Niko=
s</div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr 26, 2025
                  at 6:45=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:=
patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 25/04/2025 23:33, Nikos Balkanas wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div class=3D"gmail_default" style=3D"font-size:sma=
ll">Actually MTU is 9000.
                          This is one of the recommendations...</div>
                        <div class=3D"gmail_default" style=3D"font-size:sma=
ll">I tried it with MTU
                          1500. It was worse:(</div>
                        <div class=3D"gmail_default" style=3D"font-size:sma=
ll">maxsamples dropped to
                          364...</div>
                      </div>
                    </blockquote>
                    Right, 9000, rather than 8000.<br>
                    <br>
                    Upgrading to 10Gbit wont&#39; give you larger MTU.<br>
                    <br>
                    What you&#39;re trying to do, I think, is to solve a
                    buffer-management problem in your *application* at
                    entirely the wrong<br>
                    =C2=A0 level in the stack.<br>
                    <br>
                    It is EXCEEDINGLY COMMON for hardware drivers to
                    only be able to deliver in chunks that may not be
                    perfectly adapted to<br>
                    =C2=A0 the requirements of your application.=C2=A0 So, =
a
                    common programming pattern is to deal with this in
                    your application.<br>
                    <br>
                    You should probably look at example code like
                    rx_samples_to_file<br>
                    <br>
                    <br>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div class=3D"gmail_default" style=3D"font-size:sma=
ll"><br>
                        </div>
                        <div class=3D"gmail_default" style=3D"font-size:sma=
ll">[INFO] [UHD] linux;
                          GNU C++ version 13.2.0; Boost_108300;
                          UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1<br>
                          [INFO] [X300] X300 initialization sequence...<br>
                          [INFO] [X300] Maximum frame size: 1472 bytes.<br>
                          [WARNING] [X300] For the 192.168.40.2
                          connection, UHD recommends a send frame size
                          of at least 8000 for best<br>
                          performance, but your configuration will only
                          allow 1472.This may negatively impact your
                          maximum achievable sample rate.<br>
                          Check the MTU on the interface and/or the
                          send_frame_size argument.<br>
                          [WARNING] [X300] For the 192.168.40.2
                          connection, UHD recommends a receive frame
                          size of at least 8000 for best<br>
                          performance, but your configuration will only
                          allow 1472.This may negatively impact your
                          maximum achievable sample rate.<br>
                          Check the MTU on the interface and/or the
                          recv_frame_size argument.<br>
                          [INFO] [GPS] No GPSDO found<br>
                          [INFO] [X300] Radio 1x clock: 200 MHz<br>
                          [WARNING] [UDP] The send buffer could not be
                          resized sufficiently.<br>
                          Target sock buff size: 24912805 bytes.<br>
                          Actual sock buff size: 1048576 bytes.<br>
                          See the transport application notes on buffer
                          resizing.<br>
                          Please run: sudo sysctl -w
                          net.core.wmem_max=3D24912805<br>
                          Sat Apr 26 06:30:34 2025 [00] [+] Created USRP
                          with args<br>
                          Sat Apr 26 06:30:34 2025 [00] [+] Master clock
                          is at 200 Mhz<br>
                          Sat Apr 26 06:30:34 2025 [00] [+] Tuner[0]
                          gain set to 30 (30) dB<br>
                          [WARNING] [UDP] The send buffer could not be
                          resized sufficiently.<br>
                          Target sock buff size: 24912805 bytes.<br>
                          Actual sock buff size: 1048576 bytes.<br>
                          See the transport application notes on buffer
                          resizing.<br>
                          Please run: sudo sysctl -w
                          net.core.wmem_max=3D24912805<br>
                          Sat Apr 26 06:30:34 2025 [00] [*]
                          scanner.l:1446:main Incorrect maxsamples
                          (364). Expected 19960.<br>
                          Sat Apr 26 06:30:34 2025 [00] [+] Max
                          samples/buffer[0]: 364<br>
                          [WARNING] [0/Radio#0] Ignoring stream command
                          for finite acquisition of zero sam</div>
                        <div class=3D"gmail_default" style=3D"font-size:sma=
ll"><br>
                        </div>
                        <div class=3D"gmail_default" style=3D"font-size:sma=
ll">Nikos</div>
                      </div>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr
                          26, 2025 at 5:46=E2=80=AFAM Marcus D. Leech &lt;<=
a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@g=
mail.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                          <div>
                            <div>On 25/04/2025 22:26, Nikos Balkanas
                              wrote:<br>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">
                                <div dir=3D"ltr">
                                  <div class=3D"gmail_default" style=3D"fon=
t-size:small">Thanks
                                    Marcus,</div>
                                  <div class=3D"gmail_default" style=3D"fon=
t-size:small"><br>
                                  </div>
                                  <div class=3D"gmail_default" style=3D"fon=
t-size:small">for your
                                    fast reply.</div>
                                </div>
                                <br>
                                <div class=3D"gmail_quote">
                                  <div dir=3D"ltr" class=3D"gmail_attr">On
                                    Sat, Apr 26, 2025 at 4:08=E2=80=AFAM Ma=
rcus
                                    D. Leech &lt;<a href=3D"mailto:patchvon=
braun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                                    wrote:<br>
                                  </div>
                                  <blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
                                    <div>
                                      <div>On 25/04/2025 20:50, Nikos
                                        Balkanas wrote:<br>
                                      </div>
                                      <blockquote type=3D"cite">
                                        <div dir=3D"ltr">
                                          <div style=3D"font-size:small">He=
llo,</div>
                                          <div style=3D"font-size:small"><b=
r>
                                          </div>
                                          <div style=3D"font-size:small">I
                                            need to buy a new NIC. What
                                            would you suggest?</div>
                                          <div style=3D"font-size:small">Th=
e
                                            one I use is an old Mellanox
                                            10 Gbs, before the Connect-4
                                            series.</div>
                                          <div style=3D"font-size:small">It
                                            can only do 1996 S/s, need
                                            19960 (10x more) to work
                                            with latest uhd.</div>
                                          <div style=3D"font-size:small">Us=
ing
                                            Ubuntu 24.04 and uhd 4.6.0</div=
>
                                        </div>
                                      </blockquote>
                                      So, 1.996ksps vs 19.960ksps?=C2=A0=C2=
=A0 You
                                      hardly need a 10Gbit link to
                                      support that.=C2=A0 So, perhaps
                                      something<br>
                                      =C2=A0 is being lost here in your
                                      requirements?<br>
                                    </div>
                                  </blockquote>
                                  <div><br>
                                  </div>
                                  <div class=3D"gmail_default" style=3D"fon=
t-size:small">True. Can&#39;t
                                    explain it in terms of bandwidth. 16
                                    * 1996 =3D 31.936 Kbps, 16 * 19960 =3D
                                    319.360 Kbps well short of a 10 Gbps
                                    line:(</div>
                                  <div class=3D"gmail_default" style=3D"fon=
t-size:small">Does a
                                    complex pair count as 1 sample, or
                                    2?</div>
                                  <div class=3D"gmail_default" style=3D"fon=
t-size:small">I have
                                    followed all the instructions in=C2=A0<=
a href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=
" target=3D"_blank">https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_=
and_Tricks</a>,</div>
                                  <div class=3D"gmail_default" style=3D"fon=
t-size:small">Even
                                    installed the DPDK drivers. My
                                    Mellanox is too old to use their
                                    OFED drivers:(</div>
                                  <blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
                                    <div>
                                      <blockquote type=3D"cite">
                                        <div dir=3D"ltr">
                                          <div style=3D"font-size:small"><b=
r>
                                          </div>
                                          <div style=3D"font-size:small">On
                                            a related question. it seems
                                            that the streamer doesn&#39;t
                                            crash anymore</div>
                                          <div style=3D"font-size:small">wh=
en
                                            receiving less than MAXSPS
                                            samples, instead it reads
                                            0:(</div>
                                          <div style=3D"font-size:small">Th=
is
                                            was due to the sse2 code not
                                            aligned in convert.</div>
                                          <div style=3D"font-size:small">I
                                            change my stream args to
                                            cpu_format=3Dsc16, otw=3Dsc16,
                                            so no conversion required.</div=
>
                                          <div style=3D"font-size:small">St=
reamer
                                            still doesn&#39;t read anything=
.
                                            Is there a reason for it?</div>
                                          <div style=3D"font-size:small"><b=
r>
                                          </div>
                                        </div>
                                      </blockquote>
                                      You&#39;d need to share more of your
                                      code.=C2=A0 This should just work as
                                      far as I can tell.<br>
                                      <br>
                                    </div>
                                  </blockquote>
                                  <div><span class=3D"gmail_default" style=
=3D"font-size:small"></span></div>
                                  <div><span class=3D"gmail_default" style=
=3D"font-size:small">Thanks.
                                      these are just the usrp code:</span><=
/div>
                                  <div><br>
                                  </div>
                                  <div class=3D"gmail_default" style=3D"fon=
t-size:small">int main()</div>
                                  <div class=3D"gmail_default" style=3D"fon=
t-size:small">{</div>
                                  <div class=3D"gmail_default" style=3D"fon=
t-size:small">=C2=A0 =C2=A0 =C2=A0
                                    uhd_stream_args_t stream_args =3D<br>
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                    .cpu_format =3D &quot;sc16&quot;,<br>
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                    .otw_format =3D &quot;sc16&quot;,<br>
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .args =3D
                                    &quot;&quot;,<br>
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                    .n_channels =3D 1,<br>
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                    =C2=A0.channel_list =3D &amp;channel<br=
>
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
                                    ..uhd_stream_cmd_t stream_cmd =3D<br>
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                    =C2=A0.stream_mode =3D
                                    UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,<br>
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                    .stream_now =3D true<br>
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 };</div>
                                  <div class=3D"gmail_default" style=3D"fon=
t-size:small"><br>
                                  </div>
                                  <blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
                                    <div> <span class=3D"gmail_default" sty=
le=3D"font-size:small">=C2=A0 =C2=A0 </span>if
                                      (uhd_init(0, 0, gain))
                                      do_exit(20);<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>if
                                      ((err =3D
                                      uhd_usrp_get_rx_stream(dev[0],
                                      &amp;stream_args,
                                      rx_streamer[0])))<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>{<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0</span>uhd_get_last_error(err=
msg,
                                      127);<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0</span>error(log, &quot;Faile=
d to
                                      get streamer[0] (%d). %s.\n&quot;, 0,
                                      FL, LN, FN, err, errmsg);<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>uhd_rx_streame=
r_free(&amp;rx_streamer[0]);<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0</span>rx_streamer[0] =3D NUL=
L;<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0</span>uhd_rx_metadata_free(&=
amp;md[0]);<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>md[0]
                                      =3D NULL;<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>do_exit(30);<b=
r>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>}<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>if
                                      ((err =3D
                                      uhd_rx_streamer_max_num_samps(rx_stre=
amer[0],
                                      &amp;maxsamps)))</div>
                                  </blockquote>
                                  <blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
                                    <div><span class=3D"gmail_default" styl=
e=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>{<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0</span>uhd_get_last_error(err=
msg,
                                      127);<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0</span>error(log, &quot;Faile=
d to
                                      get max samples/buffer[0] (%d).
                                      %s.\n&quot;, 0, FL, LN, FN, err,<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0 =C2=A0</span>..errmsg);<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>do_exit(35);<b=
r>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>}<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>if
                                      (maxsamps !=3D MAXSMPS)<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>warn(log,
                                      &quot;Incorrect maxsamples (%ld).
                                      Expected %d.\n&quot;, 0, FL, LN, FN,
                                      maxsamps,<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0 =C2=A0 =C2=A0=C2=A0</span>MA=
XSMPS);<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>info(log,
                                      &quot;Max samples/buffer[0]: %ld\n&qu=
ot;, 0,
                                      maxsamps);<br>
                                      <br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 i</span>f
                                      ((err =3D
                                      uhd_rx_streamer_issue_stream_cmd(rx_s=
treamer[0],
                                      &amp;stream_cmd)))=C2=A0</div>
                                  </blockquote>
                                  <blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
                                    <div><span class=3D"gmail_default" styl=
e=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>{<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>uhd_get_last_e=
rror(errmsg,
                                      127);<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>error(log,
                                      &quot;Failed to start streamer[0] (%d=
).
                                      %s.\n&quot;, 0, FL, LN, FN, err,
                                      errmsg);<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0</span>do_exit(40);<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>}<br>
                                    </div>
                                  </blockquote>
                                  <div><span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0[...]</span></div>
                                  <div class=3D"gmail_default" style=3D"fon=
t-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                    =C2=A0do_exit(0)</div>
                                  <div class=3D"gmail_default" style=3D"fon=
t-size:small">=C2=A0 =C2=A0 =C2=A0}</div>
                                  <div class=3D"gmail_default" style=3D"fon=
t-size:small">=C2=A0 =C2=A0 =C2=A0</div>
                                  <blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
                                    <div> bool uhd_init(size_t channel,
                                      double srate, double gain)<br>
                                      {<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>double
                                      tmp;<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>uhd_rx_metadata_error_code_t
                                      err;<br>
                                      <br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>if
                                      ((err =3D
                                      uhd_set_thread_priority(uhd_default_t=
hread_priority,
                                      true)))<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0 =C2=A0=C2=A0</span>warn(log,=
 &quot;Unable to
                                      set =C2=A0main thread priority (%d).
                                      %s.\n&quot;, 0, FL, LN, FN,<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0</span>err,
                                      uhdError(err));<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 </span>/*
                                      Create USRP */<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 </span>f
                                      ((err =3D
                                      uhd_usrp_make(&amp;dev[channel],
                                      &quot;type=3Dx300&quot;)))<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0=C2=A0</span>{<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0=C2=A0</span>error(log, &quot=
;Failed to
                                      create USRP (%d). %s.\n&quot;, 0, FL,
                                      LN, FN, err,<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>u=
hdError(err));<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0 =C2=A0</span>dev[channel] =
=3D NULL;<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0 =C2=A0 r</span>eturn(FAIL);=
=C2=A0</div>
                                  </blockquote>
                                  <blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
                                    <div><span class=3D"gmail_default" styl=
e=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0</span>}<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0</span>info(stderr, &quot;Cre=
ated
                                      USRP with args\n&quot;, 0);<br>
                                      <br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>/*
                                      Create RX streamer */<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>if
                                      ((err =3D
                                      uhd_rx_streamer_make(&amp;rx_streamer=
[channel])))<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>{<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>error(log,
                                      &quot;Failed to create rx_streamer[%d=
]
                                      (%d). %s.\n&quot;, 0, FL, LN, FN,<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0 =C2=A0=C2=A0</span>channel, =
err,
                                      uhdError(err));<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0</span>return(FAIL);<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 </span>}<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>/*
                                      Create RX metadata */<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>if
                                      ((err =3D
                                      uhd_rx_metadata_make(&amp;md[channel]=
)))<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0</span>{<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0</span>error(log,
                                      &quot;Failed to create md[%d] (%d).
                                      %s.\n&quot;, 0, FL, LN, FN, channel,<=
br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0 =C2=A0</span>err, uhdError(e=
rr));<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>return(FAIL);<=
br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>}<br>
                                      <br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>/*
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">G</span>et
                                      master clock rate */<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>if
                                      ((err =3D
                                      uhd_usrp_get_master_clock_rate(dev[ch=
annel],
                                      0, &amp;tmp)))=C2=A0</div>
                                  </blockquote>
                                  <blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
                                    <div><span class=3D"gmail_default" styl=
e=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0=C2=A0</span>{<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0 =C2=A0</span>error(log, &quo=
t;Failed to
                                      set master clock to %.0lf Mhz
                                      (%d). %s.\n&quot;, 0, FL,<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>L=
N, FN,
                                      tmp/1000000, err, uhdError(err));<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0 =C2=A0=C2=A0</span>return(FA=
IL);<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 </span>}<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0=C2=A0</span>info(stderr,
                                      &quot;Master clock is at %.0lf Mhz\n&=
quot;,
                                      0, tmp/1000000);<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0=C2=A0</span>/*
                                      Set the sample rate */<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>if
                                      (srate &amp;&amp;
                                      !uhd_set_rx_rate_check(channel,
                                      srate)) return(FAIL);<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>/*
                                      Set the tuner gain SBX-120 is
                                      0-31.5 in .5 db steps */=C2=A0</div>
                                  </blockquote>
                                  <blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
                                    <div><span class=3D"gmail_default" styl=
e=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0i</span>f
                                      ((err =3D
                                      uhd_usrp_set_rx_gain(dev[channel],
                                      gain, channel, &quot;&quot;)))<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0</span>{<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0 =C2=A0=C2=A0</span>error(log=
, &quot;Failed to
                                      set tuner[%d] gain to %.0lf db
                                      (%d). %s.\n&quot;, 0, FL,<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<=
/span>LN, FN, channel,
                                      gain, err, uhdError(err));<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0 =C2=A0=C2=A0</span>return(FA=
IL);<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0</span>}<br>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0i</span>f (!(err =3D
                                      uhd_usrp_get_rx_gain(dev[channel],
                                      channel, &quot;&quot;, &amp;tmp)))<br=
>
                                      <span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0
                                        =C2=A0 =C2=A0 =C2=A0=C2=A0</span>in=
fo(log,
                                      &quot;Tuner[%d] gain set to %.0lf
                                      (%.0lf) dB\n&quot;, 0, channel, tmp,<=
span class=3D"gmail_default" style=3D"font-size:small">=C2=A0</span>gain);<=
/div>
                                  </blockquote>
                                  <span class=3D"gmail_default" style=3D"fo=
nt-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>./*
                                  Set channel bw to conserve tuner
                                  resources. Not needed, set by srate */<br=
>
                                  <span class=3D"gmail_default" style=3D"fo=
nt-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                    =C2=A0</span>uhd_usrp_set_rx_bandwidth(=
dev[channel],
                                  srate, channel);<br>
                                  <span class=3D"gmail_default" style=3D"fo=
nt-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>./*
                                  Disable subtracting constant averaged
                                  background. Signal looks cleaner */<br>
                                  <span class=3D"gmail_default" style=3D"fo=
nt-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>if
                                  ((err =3D
                                  uhd_usrp_set_rx_dc_offset_enabled(dev[cha=
nnel],
                                  false, channel)))<br>
                                  <span class=3D"gmail_default" style=3D"fo=
nt-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                    =C2=A0</span>{<br>
                                  <span class=3D"gmail_default" style=3D"fo=
nt-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                    =C2=A0 =C2=A0 =C2=A0</span>warn(log, &q=
uot;Failed to
                                  disable FPGA DC offset on channel
                                  %d(%d). %s.\n&quot;, 0,<br>
                                  <span class=3D"gmail_default" style=3D"fo=
nt-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</spa=
n>FL, LN, FN, channel,
                                  err, uhdError(err));</div>
                                <div class=3D"gmail_quote"><span class=3D"g=
mail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0
                                    =C2=A0 =C2=A0</span>}<br>
                                  <span class=3D"gmail_default" style=3D"fo=
nt-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                    =C2=A0 =C2=A0</span>info(stderr, &quot;=
Disabled
                                  FPGA DC offset on channel %d\n&quot;, 0,
                                  channel);<span class=3D"gmail_default" st=
yle=3D"font-size:small"></span></div>
                                <div class=3D"gmail_quote"><span class=3D"g=
mail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0
                                    =C2=A0 =C2=A0</span>return(SUCCESS);<br=
>
                                  <div><span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}</span></div>
                                  <div><span class=3D"gmail_default" style=
=3D"font-size:small"><br>
                                    </span></div>
                                  <div><span class=3D"gmail_default" style=
=3D"font-size:small">This is
                                      the generated output:</span>=C2=A0</d=
iv>
                                  <div><br>
                                  </div>
                                  <div><span class=3D"gmail_default" style=
=3D"font-size:small"></span>[INFO]
                                    [UHD] linux; GNU C++ version 13.2.0;
                                    Boost_108300;
                                    UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1</div=
>
                                  [INFO] [X300] X300 initialization
                                  sequence...<br>
                                  [INFO] [X300] Maximum frame size: 8000
                                  bytes.<br>
                                  [INFO] [X300] Radio 1x clock: 200 MHz<br>
                                  Sat Apr 26 03:33:48 2025 [00] [+]
                                  Created USRP with args<br>
                                  Sat Apr 26 03:33:48 2025 [00] [+]
                                  Master clock is at 200 Mhz<br>
                                  Sat Apr 26 03:33:48 2025 [00] [+]
                                  Tuner[0] gain set to 30 (30) dB<br>
                                  Sat Apr 26 03:33:48 2025 [00] [*]
                                  scanner.l:1446:main Incorrect
                                  maxsamples (1996). Expected 19960.<br>
                                  Sat Apr 26 03:33:48 2025 [00] [+] Max
                                  samples/buffer[0]: 1996<br>
                                  <div>[WARNING] [0/Radio#0] Ignoring
                                    stream command for finite
                                    acquisition of zero samples=C2=A0</div>
                                  <div><span class=3D"gmail_default" style=
=3D"font-size:small"></span></div>
                                  <div><span class=3D"gmail_default" style=
=3D"font-size:small">I hope
                                      this reads OK. Maybe next time I
                                      should attach the code:)</span>=C2=A0=
</div>
                                  <blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
                                    <div>
                                      <blockquote type=3D"cite">
                                        <div dir=3D"ltr">
                                          <div style=3D"font-size:small">
                                          </div>
                                          <div style=3D"font-size:small">TI=
A</div>
                                          <div style=3D"font-size:small">Ni=
kos</div>
                                        </div>
                                        <br>
                                        <fieldset></fieldset>
                                        <pre>______________________________=
_________________
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
                            I believe that max number of
                            samples-per-buffer is limited by MTU size.=C2=
=A0=C2=A0
                            Which is typically around 8000 or so for
                            &quot;jumbo frames&quot;.<br>
                            <br>
                            <br>
                          </div>
                        </blockquote>
                      </div>
                    </blockquote>
                    <br>
                  </div>
                </blockquote>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--0000000000005152910633cdec18--

--===============5679729480803550375==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5679729480803550375==--
