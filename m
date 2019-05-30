Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F13CF2EA29
	for <lists+usrp-users@lfdr.de>; Thu, 30 May 2019 03:19:33 +0200 (CEST)
Received: from [::1] (port=46266 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hW9hz-0003yU-Un; Wed, 29 May 2019 21:18:19 -0400
Received: from mail-qt1-f194.google.com ([209.85.160.194]:33954)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hW9hv-0003pr-Qd
 for usrp-users@lists.ettus.com; Wed, 29 May 2019 21:18:15 -0400
Received: by mail-qt1-f194.google.com with SMTP id h1so5077656qtp.1
 for <usrp-users@lists.ettus.com>; Wed, 29 May 2019 18:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=T+sRr6q9AFZYSK+KKOETG4LGl2QANbAS/B5O18VHZVU=;
 b=r0dWuEYagqo0RycwkdubxO+vwLrd5puoAp7x7p11T2/SJ0q8LtOeHIF83AJpjTPwSZ
 gxtHykaIVqQ6yOITNEfB3Il0vu/JD41QagT9SsE0tzpMzcjUy2Vkp7tnlQaHzRb9x9HF
 RgxS1wIg6+e20Lk0HxcVl1Mc51tcOGRPaUc/sdowSmD1oToyxMJ/yPk04qUKSRQJDNwC
 tFgEyoX16nly7c12PosrDoVl5zv8qScPktAfwl1lGz3hVV3YDfRzE8meteuM9xhArFRO
 meEXup/CMk9ZRS2wHozyWy3/LcuO6YU4MsWOFkbDJLF0xL5vpj5c2MuDJan6TMCXPWPq
 brEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=T+sRr6q9AFZYSK+KKOETG4LGl2QANbAS/B5O18VHZVU=;
 b=gYpgHaCa640s+fRq7Ho7913DoAxe7iO6wjqizQ1mUEBMr6SzFlpP5hWcq4piZ/aVrB
 Mp/YuiqWhs/Z+xz1SabvaWWgvJJGl8RiFGvrn/519X5g142ZK0JlReCqHZvH5PFGNY/m
 h7hdnUEJtJYf1RylTsZKcJN3iqUW+hjaX2j798Dri7O6hj71oR+ubpAQPgK0ccjgjV0O
 XSn6mTC8ztSBWPKCsqu8FoZ+ko8z0nNELZW4fOmwAGWcdpOhm6qAp5/5HXfGJ4vFdSOu
 nqD/PTV2SPUtuuhIxJT78PSdhV1q+N9Ag8NuDIK902AxYo8WEMOWSIz0RJJBZxtWK9bu
 yBZw==
X-Gm-Message-State: APjAAAWGP9tqRNSLsZnhuSnKJGosFPBxDG6tUAiph9+FrgWSVh18J4P+
 Ewb1SwvaBrNfMszDw/WzrF6oh3Uf9h8=
X-Google-Smtp-Source: APXvYqxV0ROWpT20LkJsGIqnwtWOsH0j21V6Ha9CbN8OYfnRMyWO6X4PRTGcwTcMc2cnhukgxQHXkQ==
X-Received: by 2002:a0c:ea28:: with SMTP id t8mr956671qvp.142.1559179055022;
 Wed, 29 May 2019 18:17:35 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id a1sm529734qth.69.2019.05.29.18.17.34
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 18:17:34 -0700 (PDT)
Message-ID: <5CEF2F2D.7040303@gmail.com>
Date: Wed, 29 May 2019 21:17:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <52d1e2cd-c7fd-c7c6-67df-40eea9a53663@ll.mit.edu>
 <757b9f155bf97dd5141224d9da636606fe903582.camel@ettus.com>
 <764B29A5-8AC1-4B9E-8657-D20172B8D904@ll.mit.edu>
 <5C97D942.1010906@gmail.com>
 <30523ca7-350e-1cf7-762c-1ffbc978600e@ll.mit.edu>
 <CA+JMMq8i9R03HDe=5f+EjLs=DS3nnAJ4khOZvd9cNeqHbWsSZw@mail.gmail.com>
 <20a82229-e454-707b-9dc7-ccc0b2a3b138@ll.mit.edu>
 <9e9c3223-beab-df2a-18c0-3993caccb52c@ll.mit.edu>
 <5C9B9249.4090709@gmail.com>
 <7d33f068-495e-c934-591e-5a8b43753014@ll.mit.edu>
 <5C9BD20F.9040405@gmail.com>
 <6bba8fa9-b9fc-f21e-953a-dd2a3043c922@ll.mit.edu>
 <5C9BE3E4.6090602@gmail.com>
 <f3ebc81a-27e5-77cb-735a-13ff70ca955e@ll.mit.edu>
 <5CA8A277.9080304@gmail.com>
 <186E96A5-8C47-469D-8F2A-65ECBEE2C23B@ll.mit.edu>
 <77f0a849-033f-cc30-dfd8-62ebd4e211dd@o2.pl>
 <7fede558-5f2e-2d04-5b57-93ca84d4f015@ll.mit.edu>
 <395d1d73-c042-8df7-c1ae-3b15f42bc7a8@o2.pl>
 <CAM4xKrr+7ktqm896UQuT+C=A_UY8aSobnm5G8-M4Kku9YKPQmg@mail.gmail.com>
In-Reply-To: <CAM4xKrr+7ktqm896UQuT+C=A_UY8aSobnm5G8-M4Kku9YKPQmg@mail.gmail.com>
Subject: Re: [USRP-users] UBX coherence between TX and RX
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============6497857257973209835=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--===============6497857257973209835==
Content-Type: multipart/alternative;
 boundary="------------050204070705090500040108"

This is a multi-part message in MIME format.
--------------050204070705090500040108
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 05/29/2019 06:49 PM, Michael West via USRP-users wrote:
> Thanks to Michael's persistence, we did find an issue in the DUC and 
> DDC where the phase accumulator was the wrong resolution (24-bit 
> instead of 32-bit) and was not being reset at the end of each burst.  
> The fix is now available on the head of the UHD-3.14 branch and will 
> be included in the upcoming 3.14.1.0 release.
>
> Phase may change each time streamers are created, but the phase 
> between TX and RX should remain consistent during streaming.  Tuning 
> must be done with timed commands and a consistent time delta between 
> the tune time of TX and RX must be maintained that is greater than 
> 500us to maintain the coherence across re-tunes.
>
> Regards,
> Michael
My recollection is that there are a class of users who want the phase 
accumulator to continue to spin between bursts.  So this fix may break
   other types of applications.  Just a dim recollection at this point....


>
> On Tue, Apr 9, 2019 at 12:21 AM Piotr Krysik via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Hi Mike,
>
>     Let's keep the discussion on the mailing list. I attach the scripts as
>     they are quite small. There is however a data folder with two 4MB
>     files
>     containing noise in complex short format. The version of the archive
>     with those files is here:
>     https://app.box.com/s/xfpwro8wybog4f1yo1l6yh665tg4sx0r
>
>     First you run:
>     ./record.sh
>
>     then:
>     ./show_figures.m
>
>     (you need to have octave installed for the second script).
>
>     Best Regards,
>     Piotr Krysik
>
>     W dniu 08.04.2019 o 18:30, Michael R. Freedman pisze:
>     > That would be wonderful if I could get your scripts to run.
>     >
>     >
>     > Thanks a bunch for the info!
>     >
>     >
>     > Mike
>     >
>     >
>     > On 04/08/2019 09:56 AM, Piotr Krysik via USRP-users wrote:
>     >> Hi all,
>     >>
>     >> I looked at this thread and it reminded me of something.
>     >>
>     >> Once we purchased few X310 with UBX160 daughter-boards.
>     >>
>     >> One of them had some frequency offset on Tx channel, that
>     decreased over
>     >> time it was running, but very slowly.
>     >>
>     >> The daughter-board was then replaced by National Intruments
>     (after some
>     >> adventures ;) ). The replacement one had exactly the same issue
>     so it
>     >> was also replaced. The next one was ok. So it seemed it was some
>     >> manufacturing issue with UBX.
>     >>
>     >> I don't know if it's the same issue (i.e. due to lack of data),
>     but I
>     >> attach part of the report that was sent to National Instruments:
>     >> -phase offset of the received signal in relation to digital
>     waveform for
>     >> a single X310 with UBX160 for all TX and RX combinations:
>     >> https://imgur.com/a/ODBtT4o
>     >> -schematic:
>     >> https://imgur.com/a/si9fJZp
>     >>
>     >> I got also scripts that were used for recording and plotting that
>     >> figure. If you are interested I can post it somewhere.
>     >>
>     >> What seems different from situation here is that for us it
>     seemed the
>     >> effect wasn't depending on frequency (but I didn't do any extensive
>     >> tests and might not remember).
>     >>
>     >> --
>     >> Best Regards,
>     >> Piotr Krysik
>     >>
>     >> W dniu 07.04.2019 o 03:00, Freedman, Michael - 1008 - MITLL via
>     >> USRP-users pisze:
>     >>> I have switched and am currently running the release 3.14.0.0
>     >>>
>     >>> Sent from my iPhone
>     >>>
>     >>> On Apr 6, 2019, at 8:58 AM, Marcus D. Leech
>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>
>     >>> <mailto:patchvonbraun@gmail.com
>     <mailto:patchvonbraun@gmail.com>>> wrote:
>     >>>
>     >>> On 04/05/2019 11:43 AM, Michael R. Freedman wrote:
>     >>>> Hello,
>     >>>>
>     >>>>
>     >>>> If I remove the DSP from the equation by setting the DSP tuning
>     >>>> policy to manual and assigning it to zero, I am coherent from
>     tx to
>     >>>> rx on all frequencies.  I'm now beginning to think that the
>     DSP is
>     >>>> doing it's tuning differently for tx and rx. Or there is an
>     >>>> accumulated error in opposite directions for both.  Thoughts?
>     >>>>
>     >>>>
>     >>>> Leaving the DSP to zero is not a good solution however as
>     there is
>     >>>> too much LO leakage.
>     >>>>
>     >>>>
>     >>> Could you try UHD 3.14.0.0?
>     >>>
>     >>> I think that you're using the -rc3 version at the moment.
>     >>>
>     >>>
>     >>>> Mike
>     >>>>
>     >>>>
>     >>>> On 03/27/2019 04:58 PM, Marcus D. Leech wrote:
>     >>>>> On 03/27/2019 04:48 PM, Michael R. Freedman wrote:
>     >>>>>> This is on a single UBX card within a single USRP.
>     >>>>>>
>     >>>>>>
>     >>>>>> ./uhd_usrp_probe --args=addr=192.168.40.100
>     >>>>>> [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106501;
>     >>>>>> UHD_3.14.0.0-0-unknown
>     >>>>>> [INFO] [X300] X300 initialization sequence...
>     >>>>>> [INFO] [X300] Maximum frame size: 8000 bytes.
>     >>>>>> [INFO] [X300] Radio 1x clock: 200 MHz
>     >>>>>> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
>     >>>>>> 0xF1F0D00000000000)
>     >>>>>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1320 MB/s)
>     >>>>>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1294 MB/s)
>     >>>>>> [INFO] [0/Radio_0] Initializing block control (NOC ID:
>     >>>>>> 0x12AD100000000001)
>     >>>>>> [INFO] [0/Radio_1] Initializing block control (NOC ID:
>     >>>>>> 0x12AD100000000001)
>     >>>>>> [INFO] [0/DDC_0] Initializing block control (NOC ID:
>     >>>>>> 0xDDC0000000000000)
>     >>>>>> [INFO] [0/DDC_1] Initializing block control (NOC ID:
>     >>>>>> 0xDDC0000000000000)
>     >>>>>> [INFO] [0/DUC_0] Initializing block control (NOC ID:
>     >>>>>> 0xD0C0000000000000)
>     >>>>>> [INFO] [0/DUC_1] Initializing block control (NOC ID:
>     >>>>>> 0xD0C0000000000000)
>     >>>>>> _____________________________________________________
>     >>>>>>   /
>     >>>>>> |       Device: X-Series Device
>     >>>>>> | _____________________________________________________
>     >>>>>> |    /
>     >>>>>> |   |       Mboard: X310
>     >>>>>> |   |   revision: 6
>     >>>>>> |   |   product: 30410
>     >>>>>> |   |   mac-addr0: 00:80:2f:0a:ff:98
>     >>>>>> |   |   mac-addr1: 00:80:2f:0a:ff:99
>     >>>>>> |   |   gateway: 192.168.10.1
>     >>>>>> |   |   ip-addr0: 192.168.10.100
>     >>>>>> |   |   subnet0: 255.255.255.0
>     >>>>>> |   |   ip-addr1: 192.168.20.100
>     >>>>>> |   |   subnet1: 255.255.255.0
>     >>>>>> |   |   ip-addr2: 192.168.30.100
>     >>>>>> |   |   subnet2: 255.255.255.0
>     >>>>>> |   |   ip-addr3: 192.168.40.100
>     >>>>>> |   |   subnet3: 255.255.255.0
>     >>>>>> |   |   serial: F5BE45
>     >>>>>> |   |   FW Version: 6.0
>     >>>>>> |   |   FPGA Version: 35.1
>     >>>>>> |   |   FPGA git hash: 4c165a5
>     >>>>>> |   |   RFNoC capable: Yes
>     >>>>>> |   |
>     >>>>>> |   |   Time sources:  internal, external, gpsdo
>     >>>>>> |   |   Clock sources: internal, external, gpsdo
>     >>>>>> |   |   Sensors: ref_locked
>     >>>>>> |   | _____________________________________________________
>     >>>>>> |   |    /
>     >>>>>> |   |   |       RX Dboard: A
>     >>>>>> |   |   |   ID: UBX-40 v2 (0x007c)
>     >>>>>> |   |   |   Serial: 313C181
>     >>>>>> |   |   | _____________________________________________________
>     >>>>>> |   |   |    /
>     >>>>>> |   |   |   |       RX Frontend: 0
>     >>>>>> |   |   |   |   Name: UBX RX
>     >>>>>> |   |   |   |   Antennas: TX/RX, RX2, CAL
>     >>>>>> |   |   |   |   Sensors: lo_locked
>     >>>>>> |   |   |   |   Freq range: 10.000 to 6000.000 MHz
>     >>>>>> |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
>     >>>>>> |   |   |   |   Bandwidth range: 40000000.0 to 40000000.0 step
>     >>>>>> 0.0 Hz
>     >>>>>> |   |   |   |   Connection Type: IQ
>     >>>>>> |   |   |   |   Uses LO offset: No
>     >>>>>> |   |   | _____________________________________________________
>     >>>>>> |   |   |    /
>     >>>>>> |   |   |   |       RX Codec: A
>     >>>>>> |   |   |   |   Name: ads62p48
>     >>>>>> |   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
>     >>>>>> |   | _____________________________________________________
>     >>>>>> |   |    /
>     >>>>>> |   |   |       RX Dboard: B
>     >>>>>> |   |   |   ID: UBX-40 v2 (0x007c)
>     >>>>>> |   |   |   Serial: 313C191
>     >>>>>> |   |   | _____________________________________________________
>     >>>>>> |   |   |    /
>     >>>>>> |   |   |   |       RX Frontend: 0
>     >>>>>> |   |   |   |   Name: UBX RX
>     >>>>>> |   |   |   |   Antennas: TX/RX, RX2, CAL
>     >>>>>> |   |   |   |   Sensors: lo_locked
>     >>>>>> |   |   |   |   Freq range: 10.000 to 6000.000 MHz
>     >>>>>> |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
>     >>>>>> |   |   |   |   Bandwidth range: 40000000.0 to 40000000.0 step
>     >>>>>> 0.0 Hz
>     >>>>>> |   |   |   |   Connection Type: IQ
>     >>>>>> |   |   |   |   Uses LO offset: No
>     >>>>>> |   |   | _____________________________________________________
>     >>>>>> |   |   |    /
>     >>>>>> |   |   |   |       RX Codec: B
>     >>>>>> |   |   |   |   Name: ads62p48
>     >>>>>> |   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
>     >>>>>> |   | _____________________________________________________
>     >>>>>> |   |    /
>     >>>>>> |   |   |       TX Dboard: A
>     >>>>>> |   |   |   ID: UBX-40 v2 (0x007b)
>     >>>>>> |   |   |   Serial: 313C181
>     >>>>>> |   |   | _____________________________________________________
>     >>>>>> |   |   |    /
>     >>>>>> |   |   |   |       TX Frontend: 0
>     >>>>>> |   |   |   |   Name: UBX TX
>     >>>>>> |   |   |   |   Antennas: TX/RX, CAL
>     >>>>>> |   |   |   |   Sensors: lo_locked
>     >>>>>> |   |   |   |   Freq range: 10.000 to 6000.000 MHz
>     >>>>>> |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
>     >>>>>> |   |   |   |   Bandwidth range: 40000000.0 to 40000000.0 step
>     >>>>>> 0.0 Hz
>     >>>>>> |   |   |   |   Connection Type: QI
>     >>>>>> |   |   |   |   Uses LO offset: No
>     >>>>>> |   |   | _____________________________________________________
>     >>>>>> |   |   |    /
>     >>>>>> |   |   |   |       TX Codec: A
>     >>>>>> |   |   |   |   Name: ad9146
>     >>>>>> |   |   |   |   Gain Elements: None
>     >>>>>> |   | _____________________________________________________
>     >>>>>> |   |    /
>     >>>>>> |   |   |       TX Dboard: B
>     >>>>>> |   |   |   ID: UBX-40 v2 (0x007b)
>     >>>>>> |   |   |   Serial: 313C191
>     >>>>>> |   |   | _____________________________________________________
>     >>>>>> |   |   |    /
>     >>>>>> |   |   |   |       TX Frontend: 0
>     >>>>>> |   |   |   |   Name: UBX TX
>     >>>>>> |   |   |   |   Antennas: TX/RX, CAL
>     >>>>>> |   |   |   |   Sensors: lo_locked
>     >>>>>> |   |   |   |   Freq range: 10.000 to 6000.000 MHz
>     >>>>>> |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
>     >>>>>> |   |   |   |   Bandwidth range: 40000000.0 to 40000000.0 step
>     >>>>>> 0.0 Hz
>     >>>>>> |   |   |   |   Connection Type: QI
>     >>>>>> |   |   |   |   Uses LO offset: No
>     >>>>>> |   |   | _____________________________________________________
>     >>>>>> |   |   |    /
>     >>>>>> |   |   |   |       TX Codec: B
>     >>>>>> |   |   |   |   Name: ad9146
>     >>>>>> |   |   |   |   Gain Elements: None
>     >>>>>> |   | _____________________________________________________
>     >>>>>> |   |    /
>     >>>>>> |   |   |       RFNoC blocks on this device:
>     >>>>>> |   |   |
>     >>>>>> |   |   |   * DmaFIFO_0
>     >>>>>> |   |   |   * Radio_0
>     >>>>>> |   |   |   * Radio_1
>     >>>>>> |   |   |   * DDC_0
>     >>>>>> |   |   |   * DDC_1
>     >>>>>> |   |   |   * DUC_0
>     >>>>>> |   |   |   * DUC_1
>     >>>>>>
>     >>>>>>
>     >>>>>>
>     >>>>>> Mike
>     >>>>>>
>     >>>>> OK, so could you use the tx_waveforms example in
>     multi-channel mode
>     >>>>> and confirm correct output on a spectrum analyser,
>     >>>>>    or another X310 doing receive?
>     >>>>>
>     >>>>>
>     >>>>>>
>     >>>>>> On 03/27/2019 03:42 PM, Marcus D. Leech via USRP-users wrote:
>     >>>>>>> On 03/27/2019 03:39 PM, Michael R. Freedman via USRP-users
>     wrote:
>     >>>>>>>> Marcus,
>     >>>>>>>>
>     >>>>>>>>
>     >>>>>>>> I tried a 10MHz LOOffset with no change.  I also tried it at
>     >>>>>>>> 1155.0MHz and 1160.0MHz.  At 1155 the phase rolls... at
>     1160 it
>     >>>>>>>> does not.
>     >>>>>>>>
>     >>>>>>>>
>     >>>>>>>> Mike
>     >>>>>>>>
>     >>>>>>> Could you give us a dump of uhd_usrp_probe for an X310 that
>     >>>>>>> displays this issue?  What version of UHD?   Also, to be
>     clear,
>     >>>>>>> this is within
>     >>>>>>>    a *single* X310, correct?
>     >>>>>>>
>     >>>>>>>
>     >>>>>>>> On 03/27/2019 11:10 AM, Marcus D. Leech via USRP-users wrote:
>     >>>>>>>>> On 03/27/2019 10:41 AM, Michael R. Freedman via
>     USRP-users wrote:
>     >>>>>>>>>> Any thoughts on this?
>     >>>>>>>>>>
>     >>>>>>>>>>
>     >>>>>>>>>> Mike
>     >>>>>>>>>>
>     >>>>>>>>> Given that in this case, the incoming carrier will be
>     fighting
>     >>>>>>>>> DC-offset removal rather hard, I wonder if this is a weird
>     >>>>>>>>> artifact of DC-offset
>     >>>>>>>>>    removal?
>     >>>>>>>>>
>     >>>>>>>>> If you use offset tuning on the RX, do you still see a
>     >>>>>>>>> significant phase roll?
>     >>>>>>>>>
>     >>>>>>>>>
>     >>>>>>>>>> On 03/25/2019 01:04 PM, Michael R. Freedman via USRP-users
>     >>>>>>>>>> wrote:
>     >>>>>>>>>>> Marcus,
>     >>>>>>>>>>>
>     >>>>>>>>>>>     190Hz is what we calculated.  I have attached a
>     text file
>     >>>>>>>>>>> with the data we used.  This is a single UBX40 tuned
>     to 155MHz
>     >>>>>>>>>>> sampling at 2MHz.
>     >>>>>>>>>>>
>     >>>>>>>>>>>
>     >>>>>>>>>>> Mike
>     >>>>>>>>>>>
>     >>>>>>>>>>>
>     >>>>>>>>>>> On 03/25/2019 12:34 PM, Nick Foster wrote:
>     >>>>>>>>>>>> Well, according to your description, you could transmit a
>     >>>>>>>>>>>> carrier from TX to RX (through an attenuator) with
>     both sides
>     >>>>>>>>>>>> set to the same frequency. Your received signal
>     should look
>     >>>>>>>>>>>> like a sine wave at the frequency of the offset.
>     >>>>>>>>>>>>
>     >>>>>>>>>>>> On Mon, Mar 25, 2019 at 9:16 AM Michael R. Freedman via
>     >>>>>>>>>>>> USRP-users <usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     >>>>>>>>>>>> <mailto:usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>>> wrote:
>     >>>>>>>>>>>>
>     >>>>>>>>>>>>      Hello,
>     >>>>>>>>>>>>
>     >>>>>>>>>>>>      Do you have any suggestions as to how to measure the
>     >>>>>>>>>>>> frequency delta between the transmit channel and the
>     >>>>>>>>>>>>      receive channel?
>     >>>>>>>>>>>>
>     >>>>>>>>>>>>      As I sat down to do this, I realized I have no
>     real way
>     >>>>>>>>>>>>      to do that.
>     >>>>>>>>>>>>
>     >>>>>>>>>>>>
>     >>>>>>>>>>>>      Mike
>     >>>>>>>>>>>>
>     >>>>>>>>>>>>
>     >>>>>>>>>>>>
>     >>>>>>>>>>>>
>     >>>>>>>>>>>>
>     >>>>>>>>>>>>      On 03/24/2019 03:23 PM, Marcus D. Leech via
>     USRP-users
>     >>>>>>>>>>>> wrote:
>     >>>>>>>>>>>>>      On 03/24/2019 02:39 PM, Freedman, Michael -
>     1008 - MITLL
>     >>>>>>>>>>>>>      via USRP-users wrote:
>     >>>>>>>>>>>>>> It is not just a phase offset. It is a frequency
>     >>>>>>>>>>>>>> offset. The phase drifts between the two. I can
>     tolerate
>     >>>>>>>>>>>>>> a phase offset at startup. A freq offset however is
>     >>>>>>>>>>>>>> causing problems.
>     >>>>>>>>>>>>>>
>     >>>>>>>>>>>>>> Mike
>     >>>>>>>>>>>>>>
>     >>>>>>>>>>>>>> Sent from my iPhone
>     >>>>>>>>>>>>>>
>     >>>>>>>>>>>>>> On Mar 24, 2019, at 4:28 AM, Marcus Müller
>     >>>>>>>>>>>>>> <marcus.mueller@ettus.com
>     <mailto:marcus.mueller@ettus.com>>
>     >>>>>>>>>>>>>> <mailto:marcus.mueller@ettus.com
>     <mailto:marcus.mueller@ettus.com>> wrote:
>     >>>>>>>>>>>>>>
>     >>>>>>>>>>>>>> Can you elaborate on what "not coherent" means to
>     >>>>>>>>>>>>>> you – the relative
>     >>>>>>>>>>>>>> phase should be constant after each tune, but if you
>     >>>>>>>>>>>>>> don't tune
>     >>>>>>>>>>>>>> simultaneously, i.e. with timed commands, random at
>     >>>>>>>>>>>>>> each tune.
>     >>>>>>>>>>>>>>
>     >>>>>>>>>>>>>> Best regards,
>     >>>>>>>>>>>>>> Marcus
>     >>>>>>>>>>>>> Also, what version of UHD?  What hardware rev of UBX
>     >>>>>>>>>>>>> cards?
>     >>>>>>>>>>>>>
>     >>>>>>>>>>>>>
>     >>>>>>>>>>>>>> On Sat, 2019-03-23 at 17:06 -0400, Michael R.
>     >>>>>>>>>>>>>> Freedman via USRP-users
>     >>>>>>>>>>>>>> wrote:
>     >>>>>>>>>>>>>>>      Hello,
>     >>>>>>>>>>>>>>>
>     >>>>>>>>>>>>>>>
>     >>>>>>>>>>>>>>>      I have an issue where I tune both the TX and RX
>     >>>>>>>>>>>>>>> side of a UBX40 card
>     >>>>>>>>>>>>>>>      in
>     >>>>>>>>>>>>>>>      an X310 to the same frequency and find that the
>     >>>>>>>>>>>>>>> transmitted signal
>     >>>>>>>>>>>>>>>      and
>     >>>>>>>>>>>>>>>      what is received are not coherent.  I am using an
>     >>>>>>>>>>>>>>> external 10MHz
>     >>>>>>>>>>>>>>>      reference and have tried the documented
>     suggestions.
>     >>>>>>>>>>>>>>>
>     >>>>>>>>>>>>>>>      at 150MHz it is coherent.
>     >>>>>>>>>>>>>>>
>     >>>>>>>>>>>>>>>      at 155MHz it is NOT coherent.
>     >>>>>>>>>>>>>>>
>     >>>>>>>>>>>>>>>
>     >>>>>>>>>>>>>>>      I have tried setting the dboard_clock_rate to
>     >>>>>>>>>>>>>>> 20MHz.  This made the
>     >>>>>>>>>>>>>>>      problem appear at 150MHz as well.  I've tried
>     >>>>>>>>>>>>>>> integer_n tuning.
>     >>>>>>>>>>>>>>>
>     >>>>>>>>>>>>>>>      I have verified that the ref_lock and lo_lock are
>     >>>>>>>>>>>>>>> both true.
>     >>>>>>>>>>>>>>>
>     >>>>>>>>>>>>>>>
>     >>>>>>>>>>>>>>>      Any suggestions?
>     >>>>>>>>>>>>>>>
>     >>>>>>>>>>>>>>>
>     >>>>>>>>>>>>>>>      Mike
>     >>>>>>>>>>>>>>>
>     >>>>>>>>>>>>>>>
>     >>>>>>>>>>>>>>>      _______________________________________________
>     >>>>>>>>>>>>>>>      USRP-users mailing list
>     >>>>>>>>>>>>>>> USRP-users@lists.ettus.com
>     <mailto:USRP-users@lists.ettus.com>
>     >>>>>>>>>>>>>>> <mailto:USRP-users@lists.ettus.com
>     <mailto:USRP-users@lists.ettus.com>>
>     >>>>>>>>>>>>>>>
>     >>>>>>>>>>>>>>>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>     >>>>>>>>>>>>>>>
>     >>>>>>>>>>>>>>
>     >>>>>>>>>>>>>> _______________________________________________
>     >>>>>>>>>>>>>> USRP-users mailing list
>     >>>>>>>>>>>>>> USRP-users@lists.ettus.com
>     <mailto:USRP-users@lists.ettus.com>
>     >>>>>>>>>>>>>> <mailto:USRP-users@lists.ettus.com
>     <mailto:USRP-users@lists.ettus.com>>
>     >>>>>>>>>>>>>>
>     >>>>>>>>>>>>>>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>     >>>>>>>>>>>>>>
>     >>>>>>>>>>>>>
>     >>>>>>>>>>>>>
>     >>>>>>>>>>>>> _______________________________________________
>     >>>>>>>>>>>>> USRP-users mailing list
>     >>>>>>>>>>>>> USRP-users@lists.ettus.com
>     <mailto:USRP-users@lists.ettus.com>
>     >>>>>>>>>>>>> <mailto:USRP-users@lists.ettus.com
>     <mailto:USRP-users@lists.ettus.com>>
>     >>>>>>>>>>>>>
>     >>>>>>>>>>>>>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>     >>>>>>>>>>>>>
>     >>>>>>>>>>>> _______________________________________________
>     >>>>>>>>>>>> USRP-users mailing list
>     >>>>>>>>>>>> USRP-users@lists.ettus.com
>     <mailto:USRP-users@lists.ettus.com>
>     >>>>>>>>>>>> <mailto:USRP-users@lists.ettus.com
>     <mailto:USRP-users@lists.ettus.com>>
>     >>>>>>>>>>>>
>     >>>>>>>>>>>>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>     >>>>>>>>>>>>
>     >>>>>>>>>>>>
>     >>>>>>>>>>>
>     >>>>>>>>>>>
>     >>>>>>>>>>> _______________________________________________
>     >>>>>>>>>>> USRP-users mailing list
>     >>>>>>>>>>> USRP-users@lists.ettus.com
>     <mailto:USRP-users@lists.ettus.com>
>     >>>>>>>>>>>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>     >>>>>>>>>>>
>     >>>>>>>>>>
>     >>>>>>>>>>
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------050204070705090500040108
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 05/29/2019 06:49 PM, Michael West
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAM4xKrr+7ktqm896UQuT+C=A_UY8aSobnm5G8-M4Kku9YKPQmg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Thanks to Michael's persistence, we did find an issue in
          the DUC and DDC where the phase accumulator was the wrong
          resolution (24-bit instead of 32-bit) and was not being reset
          at the end of each burst.  The fix is now available on the
          head of the UHD-3.14 branch and will be included in the
          upcoming 3.14.1.0 release.</div>
        <div><br>
        </div>
        <div>Phase may change each time streamers are created, but the
          phase between TX and RX should remain consistent during
          streaming.  Tuning must be done with timed commands and a
          consistent time delta between the tune time of TX and RX must
          be maintained that is greater than 500us to maintain the
          coherence across re-tunes.<br>
        </div>
        <div><br>
        </div>
        <div>Regards,</div>
        <div>Michael<br>
        </div>
      </div>
    </blockquote>
    My recollection is that there are a class of users who want the
    phase accumulator to continue to spin between bursts.  So this fix
    may break<br>
      other types of applications.  Just a dim recollection at this
    point....<br>
    <br>
    <br>
    <blockquote
cite="mid:CAM4xKrr+7ktqm896UQuT+C=A_UY8aSobnm5G8-M4Kku9YKPQmg@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Tue, Apr 9, 2019 at 12:21
          AM Piotr Krysik via USRP-users &lt;<a moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi
          Mike,<br>
          <br>
          Let's keep the discussion on the mailing list. I attach the
          scripts as<br>
          they are quite small. There is however a data folder with two
          4MB files<br>
          containing noise in complex short format. The version of the
          archive<br>
          with those files is here:<br>
          <a moz-do-not-send="true"
            href="https://app.box.com/s/xfpwro8wybog4f1yo1l6yh665tg4sx0r"
            rel="noreferrer" target="_blank">https://app.box.com/s/xfpwro8wybog4f1yo1l6yh665tg4sx0r</a><br>
          <br>
          First you run:<br>
          ./record.sh<br>
          <br>
          then:<br>
          ./show_figures.m<br>
          <br>
          (you need to have octave installed for the second script).<br>
          <br>
          Best Regards,<br>
          Piotr Krysik<br>
          <br>
          W dniu 08.04.2019 o 18:30, Michael R. Freedman pisze:<br>
          &gt; That would be wonderful if I could get your scripts to
          run.<br>
          &gt;<br>
          &gt;<br>
          &gt; Thanks a bunch for the info!<br>
          &gt;<br>
          &gt;<br>
          &gt; Mike<br>
          &gt;<br>
          &gt;<br>
          &gt; On 04/08/2019 09:56 AM, Piotr Krysik via USRP-users
          wrote:<br>
          &gt;&gt; Hi all,<br>
          &gt;&gt;<br>
          &gt;&gt; I looked at this thread and it reminded me of
          something.<br>
          &gt;&gt;<br>
          &gt;&gt; Once we purchased few X310 with UBX160
          daughter-boards.<br>
          &gt;&gt;<br>
          &gt;&gt; One of them had some frequency offset on Tx channel,
          that decreased over<br>
          &gt;&gt; time it was running, but very slowly.<br>
          &gt;&gt;<br>
          &gt;&gt; The daughter-board was then replaced by National
          Intruments (after some<br>
          &gt;&gt; adventures ;) ). The replacement one had exactly the
          same issue so it<br>
          &gt;&gt; was also replaced. The next one was ok. So it seemed
          it was some<br>
          &gt;&gt; manufacturing issue with UBX.<br>
          &gt;&gt;<br>
          &gt;&gt; I don't know if it's the same issue (i.e. due to lack
          of data), but I<br>
          &gt;&gt; attach part of the report that was sent to National
          Instruments:<br>
          &gt;&gt; -phase offset of the received signal in relation to
          digital waveform for<br>
          &gt;&gt; a single X310 with UBX160 for all TX and RX
          combinations:<br>
          &gt;&gt; <a moz-do-not-send="true"
            href="https://imgur.com/a/ODBtT4o" rel="noreferrer"
            target="_blank">https://imgur.com/a/ODBtT4o</a><br>
          &gt;&gt; -schematic:<br>
          &gt;&gt; <a moz-do-not-send="true"
            href="https://imgur.com/a/si9fJZp" rel="noreferrer"
            target="_blank">https://imgur.com/a/si9fJZp</a><br>
          &gt;&gt;<br>
          &gt;&gt; I got also scripts that were used for recording and
          plotting that<br>
          &gt;&gt; figure. If you are interested I can post it
          somewhere.<br>
          &gt;&gt;<br>
          &gt;&gt; What seems different from situation here is that for
          us it seemed the<br>
          &gt;&gt; effect wasn't depending on frequency (but I didn't do
          any extensive<br>
          &gt;&gt; tests and might not remember).<br>
          &gt;&gt;<br>
          &gt;&gt; -- <br>
          &gt;&gt; Best Regards,<br>
          &gt;&gt; Piotr Krysik<br>
          &gt;&gt;<br>
          &gt;&gt; W dniu 07.04.2019 o 03:00, Freedman, Michael - 1008 -
          MITLL via<br>
          &gt;&gt; USRP-users pisze:<br>
          &gt;&gt;&gt; I have switched and am currently running the
          release 3.14.0.0<br>
          &gt;&gt;&gt;<br>
          &gt;&gt;&gt; Sent from my iPhone<br>
          &gt;&gt;&gt;<br>
          &gt;&gt;&gt; On Apr 6, 2019, at 8:58 AM, Marcus D. Leech &lt;<a
            moz-do-not-send="true" href="mailto:patchvonbraun@gmail.com"
            target="_blank">patchvonbraun@gmail.com</a><br>
          &gt;&gt;&gt; &lt;mailto:<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com" target="_blank">patchvonbraun@gmail.com</a>&gt;&gt;
          wrote:<br>
          &gt;&gt;&gt;<br>
          &gt;&gt;&gt; On 04/05/2019 11:43 AM, Michael R. Freedman
          wrote:<br>
          &gt;&gt;&gt;&gt; Hello,<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; If I remove the DSP from the equation by
          setting the DSP tuning<br>
          &gt;&gt;&gt;&gt; policy to manual and assigning it to zero, I
          am coherent from tx to<br>
          &gt;&gt;&gt;&gt; rx on all frequencies.  I'm now beginning to
          think that the DSP is<br>
          &gt;&gt;&gt;&gt; doing it's tuning differently for tx and rx. 
          Or there is an<br>
          &gt;&gt;&gt;&gt; accumulated error in opposite directions for
          both.  Thoughts?<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; Leaving the DSP to zero is not a good
          solution however as there is<br>
          &gt;&gt;&gt;&gt; too much LO leakage.<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt; Could you try UHD 3.14.0.0?<br>
          &gt;&gt;&gt;<br>
          &gt;&gt;&gt; I think that you're using the -rc3 version at the
          moment.<br>
          &gt;&gt;&gt;<br>
          &gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; Mike<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; On 03/27/2019 04:58 PM, Marcus D. Leech
          wrote:<br>
          &gt;&gt;&gt;&gt;&gt; On 03/27/2019 04:48 PM, Michael R.
          Freedman wrote:<br>
          &gt;&gt;&gt;&gt;&gt;&gt; This is on a single UBX card within a
          single USRP.<br>
          &gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt; ./uhd_usrp_probe
          --args=addr=192.168.40.100<br>
          &gt;&gt;&gt;&gt;&gt;&gt; [INFO] [UHD] linux; GNU C++ version
          7.3.0; Boost_106501;<br>
          &gt;&gt;&gt;&gt;&gt;&gt; UHD_3.14.0.0-0-unknown<br>
          &gt;&gt;&gt;&gt;&gt;&gt; [INFO] [X300] X300 initialization
          sequence...<br>
          &gt;&gt;&gt;&gt;&gt;&gt; [INFO] [X300] Maximum frame size:
          8000 bytes.<br>
          &gt;&gt;&gt;&gt;&gt;&gt; [INFO] [X300] Radio 1x clock: 200 MHz<br>
          &gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/DmaFIFO_0] Initializing
          block control (NOC ID:<br>
          &gt;&gt;&gt;&gt;&gt;&gt; 0xF1F0D00000000000)<br>
          &gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/DmaFIFO_0] BIST passed
          (Throughput: 1320 MB/s)<br>
          &gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/DmaFIFO_0] BIST passed
          (Throughput: 1294 MB/s)<br>
          &gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio_0] Initializing block
          control (NOC ID:<br>
          &gt;&gt;&gt;&gt;&gt;&gt; 0x12AD100000000001)<br>
          &gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio_1] Initializing block
          control (NOC ID:<br>
          &gt;&gt;&gt;&gt;&gt;&gt; 0x12AD100000000001)<br>
          &gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/DDC_0] Initializing block
          control (NOC ID:<br>
          &gt;&gt;&gt;&gt;&gt;&gt; 0xDDC0000000000000)<br>
          &gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/DDC_1] Initializing block
          control (NOC ID:<br>
          &gt;&gt;&gt;&gt;&gt;&gt; 0xDDC0000000000000)<br>
          &gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/DUC_0] Initializing block
          control (NOC ID:<br>
          &gt;&gt;&gt;&gt;&gt;&gt; 0xD0C0000000000000)<br>
          &gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/DUC_1] Initializing block
          control (NOC ID:<br>
          &gt;&gt;&gt;&gt;&gt;&gt; 0xD0C0000000000000)<br>
          &gt;&gt;&gt;&gt;&gt;&gt;   
          _____________________________________________________<br>
          &gt;&gt;&gt;&gt;&gt;&gt;   /<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |       Device: X-Series Device<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |    
          _____________________________________________________<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |    /<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |       Mboard: X310<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   revision: 6<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   product: 30410<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   mac-addr0: 00:80:2f:0a:ff:98<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   mac-addr1: 00:80:2f:0a:ff:99<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   gateway: 192.168.10.1<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   ip-addr0: 192.168.10.100<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   subnet0: 255.255.255.0<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   ip-addr1: 192.168.20.100<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   subnet1: 255.255.255.0<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   ip-addr2: 192.168.30.100<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   subnet2: 255.255.255.0<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   ip-addr3: 192.168.40.100<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   subnet3: 255.255.255.0<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   serial: F5BE45<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   FW Version: 6.0<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   FPGA Version: 35.1<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   FPGA git hash: 4c165a5<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   RFNoC capable: Yes<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   Time sources:  internal,
          external, gpsdo<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   Clock sources: internal,
          external, gpsdo<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   Sensors: ref_locked<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |    
          _____________________________________________________<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |    /<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |       RX Dboard: A<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   ID: UBX-40 v2 (0x007c)<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   Serial: 313C181<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |    
          _____________________________________________________<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |    /<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |       RX Frontend: 0<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Name: UBX RX<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Antennas: TX/RX, RX2,
          CAL<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Sensors: lo_locked<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Freq range: 10.000 to
          6000.000 MHz<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Gain range PGA0: 0.0
          to 31.5 step 0.5 dB<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Bandwidth range:
          40000000.0 to 40000000.0 step<br>
          &gt;&gt;&gt;&gt;&gt;&gt; 0.0 Hz<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Connection Type: IQ<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Uses LO offset: No<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |    
          _____________________________________________________<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |    /<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |       RX Codec: A<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Name: ads62p48<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Gain range digital:
          0.0 to 6.0 step 0.5 dB<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |    
          _____________________________________________________<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |    /<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |       RX Dboard: B<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   ID: UBX-40 v2 (0x007c)<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   Serial: 313C191<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |    
          _____________________________________________________<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |    /<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |       RX Frontend: 0<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Name: UBX RX<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Antennas: TX/RX, RX2,
          CAL<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Sensors: lo_locked<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Freq range: 10.000 to
          6000.000 MHz<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Gain range PGA0: 0.0
          to 31.5 step 0.5 dB<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Bandwidth range:
          40000000.0 to 40000000.0 step<br>
          &gt;&gt;&gt;&gt;&gt;&gt; 0.0 Hz<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Connection Type: IQ<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Uses LO offset: No<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |    
          _____________________________________________________<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |    /<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |       RX Codec: B<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Name: ads62p48<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Gain range digital:
          0.0 to 6.0 step 0.5 dB<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |    
          _____________________________________________________<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |    /<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |       TX Dboard: A<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   ID: UBX-40 v2 (0x007b)<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   Serial: 313C181<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |    
          _____________________________________________________<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |    /<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |       TX Frontend: 0<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Name: UBX TX<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Antennas: TX/RX, CAL<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Sensors: lo_locked<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Freq range: 10.000 to
          6000.000 MHz<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Gain range PGA0: 0.0
          to 31.5 step 0.5 dB<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Bandwidth range:
          40000000.0 to 40000000.0 step<br>
          &gt;&gt;&gt;&gt;&gt;&gt; 0.0 Hz<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Connection Type: QI<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Uses LO offset: No<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |    
          _____________________________________________________<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |    /<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |       TX Codec: A<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Name: ad9146<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Gain Elements: None<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |    
          _____________________________________________________<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |    /<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |       TX Dboard: B<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   ID: UBX-40 v2 (0x007b)<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   Serial: 313C191<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |    
          _____________________________________________________<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |    /<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |       TX Frontend: 0<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Name: UBX TX<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Antennas: TX/RX, CAL<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Sensors: lo_locked<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Freq range: 10.000 to
          6000.000 MHz<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Gain range PGA0: 0.0
          to 31.5 step 0.5 dB<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Bandwidth range:
          40000000.0 to 40000000.0 step<br>
          &gt;&gt;&gt;&gt;&gt;&gt; 0.0 Hz<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Connection Type: QI<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Uses LO offset: No<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |    
          _____________________________________________________<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |    /<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |       TX Codec: B<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Name: ad9146<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   |   Gain Elements: None<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |    
          _____________________________________________________<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |    /<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |       RFNoC blocks on this
          device:<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   * DmaFIFO_0<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   * Radio_0<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   * Radio_1<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   * DDC_0<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   * DDC_1<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   * DUC_0<br>
          &gt;&gt;&gt;&gt;&gt;&gt; |   |   |   * DUC_1<br>
          &gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt; Mike<br>
          &gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt; OK, so could you use the tx_waveforms
          example in multi-channel mode<br>
          &gt;&gt;&gt;&gt;&gt; and confirm correct output on a spectrum
          analyser,<br>
          &gt;&gt;&gt;&gt;&gt;    or another X310 doing receive?<br>
          &gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt; On 03/27/2019 03:42 PM, Marcus D.
          Leech via USRP-users wrote:<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt; On 03/27/2019 03:39 PM, Michael
          R. Freedman via USRP-users wrote:<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Marcus,<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I tried a 10MHz LOOffset with
          no change.  I also tried it at<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1155.0MHz and 1160.0MHz.  At
          1155 the phase rolls... at 1160 it<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; does not.<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Mike<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt; Could you give us a dump of
          uhd_usrp_probe for an X310 that<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt; displays this issue?  What
          version of UHD?   Also, to be clear,<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt; this is within<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;    a *single* X310, correct?<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 03/27/2019 11:10 AM,
          Marcus D. Leech via USRP-users wrote:<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 03/27/2019 10:41 AM,
          Michael R. Freedman via USRP-users wrote:<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Any thoughts on this?<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Mike<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Given that in this case,
          the incoming carrier will be fighting<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; DC-offset removal rather
          hard, I wonder if this is a weird<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; artifact of DC-offset<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;    removal?<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; If you use offset tuning
          on the RX, do you still see a<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; significant phase roll?<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 03/25/2019 01:04
          PM, Michael R. Freedman via USRP-users<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; wrote:<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Marcus,<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     190Hz is what
          we calculated.  I have attached a text file<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; with the data we
          used.  This is a single UBX40 tuned to 155MHz<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; sampling at 2MHz.<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Mike<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 03/25/2019
          12:34 PM, Nick Foster wrote:<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Well,
          according to your description, you could transmit a<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; carrier from
          TX to RX (through an attenuator) with both sides<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; set to the
          same frequency. Your received signal should look<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; like a sine
          wave at the frequency of the offset.<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On Mon, Mar
          25, 2019 at 9:16 AM Michael R. Freedman via<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; USRP-users
          &lt;<a moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a><br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; &lt;mailto:<a
            moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>&gt;&gt;
          wrote:<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;      Hello,<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;      Do you
          have any suggestions as to how to measure the<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          frequency delta between the transmit channel and the<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;      receive
          channel?<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;      As I sat
          down to do this, I realized I have no real way<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;      to do
          that.<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;      Mike<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;      On
          03/24/2019 03:23 PM, Marcus D. Leech via USRP-users<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; wrote:<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;      On
          03/24/2019 02:39 PM, Freedman, Michael - 1008 - MITLL<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;      via
          USRP-users wrote:<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          It is not just a phase offset. It is a frequency<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          offset. The phase drifts between the two. I can tolerate<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; a
          phase offset at startup. A freq offset however is<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          causing problems.<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          Mike<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          Sent from my iPhone<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          On Mar 24, 2019, at 4:28 AM, Marcus Müller<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; &lt;<a
            moz-do-not-send="true"
            href="mailto:marcus.mueller@ettus.com" target="_blank">marcus.mueller@ettus.com</a>&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          &lt;mailto:<a moz-do-not-send="true"
            href="mailto:marcus.mueller@ettus.com" target="_blank">marcus.mueller@ettus.com</a>&gt;
          wrote:<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          Can you elaborate on what "not coherent" means to<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; you –
          the relative<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          phase should be constant after each tune, but if you<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; don't
          tune<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          simultaneously, i.e. with timed commands, random at<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; each
          tune.<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          Best regards,<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          Marcus<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          Also, what version of UHD?  What hardware rev of UBX<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; cards?<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          On Sat, 2019-03-23 at 17:06 -0400, Michael R.<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          Freedman via USRP-users<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          wrote:<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
               Hello,<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
               I have an issue where I tune both the TX and RX<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          side of a UBX40 card<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
               in<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
               an X310 to the same frequency and find that the<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          transmitted signal<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
               and<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
               what is received are not coherent.  I am using an<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          external 10MHz<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
               reference and have tried the documented suggestions.<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
               at 150MHz it is coherent.<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
               at 155MHz it is NOT coherent.<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
               I have tried setting the dboard_clock_rate to<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          20MHz.  This made the<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
               problem appear at 150MHz as well.  I've tried<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          integer_n tuning.<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
               I have verified that the ref_lock and lo_lock are<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          both true.<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
               Any suggestions?<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
               Mike<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
               _______________________________________________<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
               USRP-users mailing list<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
               <a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          &lt;mailto:<a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a>&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
              <br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a
            moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          _______________________________________________<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          USRP-users mailing list<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          <a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          &lt;mailto:<a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a>&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     <br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a
            moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          _______________________________________________<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          USRP-users mailing list<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;      <a
            moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          &lt;mailto:<a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a>&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     <br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a
            moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          _______________________________________________<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          USRP-users mailing list<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;      <a
            moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     
          &lt;mailto:<a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a>&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;     <br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a
            moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          _______________________________________________<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; USRP-users
          mailing list<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a
            moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a
            moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
          <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------050204070705090500040108--


--===============6497857257973209835==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6497857257973209835==--

