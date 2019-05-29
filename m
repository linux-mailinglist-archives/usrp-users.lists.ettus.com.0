Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7202E892
	for <lists+usrp-users@lfdr.de>; Thu, 30 May 2019 00:52:01 +0200 (CEST)
Received: from [::1] (port=49868 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hW7P8-00058d-Bq; Wed, 29 May 2019 18:50:42 -0400
Received: from mail-it1-f196.google.com ([209.85.166.196]:38015)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.west@ettus.com>)
 id 1hW7P3-00053L-U4
 for USRP-users@lists.ettus.com; Wed, 29 May 2019 18:50:38 -0400
Received: by mail-it1-f196.google.com with SMTP id i63so2025893ita.3
 for <USRP-users@lists.ettus.com>; Wed, 29 May 2019 15:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tWcbJzo5qH5/tlCp4uyRCzU6cZkZC5UfvoIEfsHr4AQ=;
 b=ovskzLkyCdWJ1NIqmCnx/wspQoJgYVJHuFYMOFlMijyCWbupKq39sN/rcuEYa1R++e
 /70cJkABgNApdx84g/1vDenhJzSvwgXpl5mlMQlwHepdkdLFgpU9WiafbFtamTk0b+wT
 Y50xT5ObnDnWVC5w7vldb0+O3Q7Zt6BkwbGFdS5V8Z9CSC48f1QkLWqda9rMaOPcGiGd
 fCZ1vp1r1r25MiwPJa6XV+bhmSbls4SES5BIwo1UnhUxd+5O7snqhGffDEAwUkEtwMdo
 til4JAVpls1ZCEba30ySRNe/RSNN65L1uig308OaLw1DJ0U2NURAQTySzi2/uuT9Z/l/
 mjoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tWcbJzo5qH5/tlCp4uyRCzU6cZkZC5UfvoIEfsHr4AQ=;
 b=Z//ELYQlAINQDsxT4hbvB+eOm/6/fCD1ESnvoIAKuZf+M5IXUgENyMfD9/1S1oUqdp
 lG/jJj3YSCIWS5Fs0blf2+LoYVBuXEzLtjf+YJh765ZqmwNYSzeiJI20XQGCYugA2PP7
 1ucv/dLqyhvjqesmaTNjwFhG1P6ppgdMq0+M3KGynLfXf6sBRtLo+Wp57ncDuRPL/NaP
 Ui4qALDbQcCvjzgjFvOaxuTvvj41IkmDG4sbUkhInYQh/zbQwaCfjrGCXRnvwOCzh1iQ
 RHYAbZN6QMMDr4AEGEkb21g1PWUtJu1ljJIIYD6MyctS0p8oh4i7474R/26vaIidX8MP
 vOxA==
X-Gm-Message-State: APjAAAWFa+pvuVoHKr7TYzy/457+jCMCdHZ3v6vnotkCdwFNnJSQdQY/
 C/tun4iGUmoPqpCt/JE2wo9NqgMS1cFPryVs4tjD01ZB
X-Google-Smtp-Source: APXvYqw5aHzUkI0IFJaCCLWVSxa1rTFCeA1aatYwLA1VFgHtD3/qIBimReH7TruM6Vil/5qAIWi7rTBdfCTX2YHSYU4=
X-Received: by 2002:a24:303:: with SMTP id e3mr560281ite.156.1559170197008;
 Wed, 29 May 2019 15:49:57 -0700 (PDT)
MIME-Version: 1.0
References: <52d1e2cd-c7fd-c7c6-67df-40eea9a53663@ll.mit.edu>
 <757b9f155bf97dd5141224d9da636606fe903582.camel@ettus.com>
 <764B29A5-8AC1-4B9E-8657-D20172B8D904@ll.mit.edu> <5C97D942.1010906@gmail.com>
 <30523ca7-350e-1cf7-762c-1ffbc978600e@ll.mit.edu>
 <CA+JMMq8i9R03HDe=5f+EjLs=DS3nnAJ4khOZvd9cNeqHbWsSZw@mail.gmail.com>
 <20a82229-e454-707b-9dc7-ccc0b2a3b138@ll.mit.edu>
 <9e9c3223-beab-df2a-18c0-3993caccb52c@ll.mit.edu>
 <5C9B9249.4090709@gmail.com> <7d33f068-495e-c934-591e-5a8b43753014@ll.mit.edu>
 <5C9BD20F.9040405@gmail.com> <6bba8fa9-b9fc-f21e-953a-dd2a3043c922@ll.mit.edu>
 <5C9BE3E4.6090602@gmail.com> <f3ebc81a-27e5-77cb-735a-13ff70ca955e@ll.mit.edu>
 <5CA8A277.9080304@gmail.com> <186E96A5-8C47-469D-8F2A-65ECBEE2C23B@ll.mit.edu>
 <77f0a849-033f-cc30-dfd8-62ebd4e211dd@o2.pl>
 <7fede558-5f2e-2d04-5b57-93ca84d4f015@ll.mit.edu>
 <395d1d73-c042-8df7-c1ae-3b15f42bc7a8@o2.pl>
In-Reply-To: <395d1d73-c042-8df7-c1ae-3b15f42bc7a8@o2.pl>
Date: Wed, 29 May 2019 15:49:45 -0700
Message-ID: <CAM4xKrr+7ktqm896UQuT+C=A_UY8aSobnm5G8-M4Kku9YKPQmg@mail.gmail.com>
To: Piotr Krysik <perper@o2.pl>
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
From: Michael West via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael West <michael.west@ettus.com>
Cc: USRP List <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0708355925872728797=="
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

--===============0708355925872728797==
Content-Type: multipart/alternative; boundary="000000000000bcf9dd058a0e998d"

--000000000000bcf9dd058a0e998d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks to Michael's persistence, we did find an issue in the DUC and DDC
where the phase accumulator was the wrong resolution (24-bit instead of
32-bit) and was not being reset at the end of each burst.  The fix is now
available on the head of the UHD-3.14 branch and will be included in the
upcoming 3.14.1.0 release.

Phase may change each time streamers are created, but the phase between TX
and RX should remain consistent during streaming.  Tuning must be done with
timed commands and a consistent time delta between the tune time of TX and
RX must be maintained that is greater than 500us to maintain the coherence
across re-tunes.

Regards,
Michael

On Tue, Apr 9, 2019 at 12:21 AM Piotr Krysik via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Mike,
>
> Let's keep the discussion on the mailing list. I attach the scripts as
> they are quite small. There is however a data folder with two 4MB files
> containing noise in complex short format. The version of the archive
> with those files is here:
> https://app.box.com/s/xfpwro8wybog4f1yo1l6yh665tg4sx0r
>
> First you run:
> ./record.sh
>
> then:
> ./show_figures.m
>
> (you need to have octave installed for the second script).
>
> Best Regards,
> Piotr Krysik
>
> W dniu 08.04.2019 o 18:30, Michael R. Freedman pisze:
> > That would be wonderful if I could get your scripts to run.
> >
> >
> > Thanks a bunch for the info!
> >
> >
> > Mike
> >
> >
> > On 04/08/2019 09:56 AM, Piotr Krysik via USRP-users wrote:
> >> Hi all,
> >>
> >> I looked at this thread and it reminded me of something.
> >>
> >> Once we purchased few X310 with UBX160 daughter-boards.
> >>
> >> One of them had some frequency offset on Tx channel, that decreased ov=
er
> >> time it was running, but very slowly.
> >>
> >> The daughter-board was then replaced by National Intruments (after som=
e
> >> adventures ;) ). The replacement one had exactly the same issue so it
> >> was also replaced. The next one was ok. So it seemed it was some
> >> manufacturing issue with UBX.
> >>
> >> I don't know if it's the same issue (i.e. due to lack of data), but I
> >> attach part of the report that was sent to National Instruments:
> >> -phase offset of the received signal in relation to digital waveform f=
or
> >> a single X310 with UBX160 for all TX and RX combinations:
> >> https://imgur.com/a/ODBtT4o
> >> -schematic:
> >> https://imgur.com/a/si9fJZp
> >>
> >> I got also scripts that were used for recording and plotting that
> >> figure. If you are interested I can post it somewhere.
> >>
> >> What seems different from situation here is that for us it seemed the
> >> effect wasn't depending on frequency (but I didn't do any extensive
> >> tests and might not remember).
> >>
> >> --
> >> Best Regards,
> >> Piotr Krysik
> >>
> >> W dniu 07.04.2019 o 03:00, Freedman, Michael - 1008 - MITLL via
> >> USRP-users pisze:
> >>> I have switched and am currently running the release 3.14.0.0
> >>>
> >>> Sent from my iPhone
> >>>
> >>> On Apr 6, 2019, at 8:58 AM, Marcus D. Leech <patchvonbraun@gmail.com
> >>> <mailto:patchvonbraun@gmail.com>> wrote:
> >>>
> >>> On 04/05/2019 11:43 AM, Michael R. Freedman wrote:
> >>>> Hello,
> >>>>
> >>>>
> >>>> If I remove the DSP from the equation by setting the DSP tuning
> >>>> policy to manual and assigning it to zero, I am coherent from tx to
> >>>> rx on all frequencies.  I'm now beginning to think that the DSP is
> >>>> doing it's tuning differently for tx and rx.  Or there is an
> >>>> accumulated error in opposite directions for both.  Thoughts?
> >>>>
> >>>>
> >>>> Leaving the DSP to zero is not a good solution however as there is
> >>>> too much LO leakage.
> >>>>
> >>>>
> >>> Could you try UHD 3.14.0.0?
> >>>
> >>> I think that you're using the -rc3 version at the moment.
> >>>
> >>>
> >>>> Mike
> >>>>
> >>>>
> >>>> On 03/27/2019 04:58 PM, Marcus D. Leech wrote:
> >>>>> On 03/27/2019 04:48 PM, Michael R. Freedman wrote:
> >>>>>> This is on a single UBX card within a single USRP.
> >>>>>>
> >>>>>>
> >>>>>> ./uhd_usrp_probe --args=3Daddr=3D192.168.40.100
> >>>>>> [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106501;
> >>>>>> UHD_3.14.0.0-0-unknown
> >>>>>> [INFO] [X300] X300 initialization sequence...
> >>>>>> [INFO] [X300] Maximum frame size: 8000 bytes.
> >>>>>> [INFO] [X300] Radio 1x clock: 200 MHz
> >>>>>> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> >>>>>> 0xF1F0D00000000000)
> >>>>>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1320 MB/s)
> >>>>>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1294 MB/s)
> >>>>>> [INFO] [0/Radio_0] Initializing block control (NOC ID:
> >>>>>> 0x12AD100000000001)
> >>>>>> [INFO] [0/Radio_1] Initializing block control (NOC ID:
> >>>>>> 0x12AD100000000001)
> >>>>>> [INFO] [0/DDC_0] Initializing block control (NOC ID:
> >>>>>> 0xDDC0000000000000)
> >>>>>> [INFO] [0/DDC_1] Initializing block control (NOC ID:
> >>>>>> 0xDDC0000000000000)
> >>>>>> [INFO] [0/DUC_0] Initializing block control (NOC ID:
> >>>>>> 0xD0C0000000000000)
> >>>>>> [INFO] [0/DUC_1] Initializing block control (NOC ID:
> >>>>>> 0xD0C0000000000000)
> >>>>>>    _____________________________________________________
> >>>>>>   /
> >>>>>> |       Device: X-Series Device
> >>>>>> |     _____________________________________________________
> >>>>>> |    /
> >>>>>> |   |       Mboard: X310
> >>>>>> |   |   revision: 6
> >>>>>> |   |   product: 30410
> >>>>>> |   |   mac-addr0: 00:80:2f:0a:ff:98
> >>>>>> |   |   mac-addr1: 00:80:2f:0a:ff:99
> >>>>>> |   |   gateway: 192.168.10.1
> >>>>>> |   |   ip-addr0: 192.168.10.100
> >>>>>> |   |   subnet0: 255.255.255.0
> >>>>>> |   |   ip-addr1: 192.168.20.100
> >>>>>> |   |   subnet1: 255.255.255.0
> >>>>>> |   |   ip-addr2: 192.168.30.100
> >>>>>> |   |   subnet2: 255.255.255.0
> >>>>>> |   |   ip-addr3: 192.168.40.100
> >>>>>> |   |   subnet3: 255.255.255.0
> >>>>>> |   |   serial: F5BE45
> >>>>>> |   |   FW Version: 6.0
> >>>>>> |   |   FPGA Version: 35.1
> >>>>>> |   |   FPGA git hash: 4c165a5
> >>>>>> |   |   RFNoC capable: Yes
> >>>>>> |   |
> >>>>>> |   |   Time sources:  internal, external, gpsdo
> >>>>>> |   |   Clock sources: internal, external, gpsdo
> >>>>>> |   |   Sensors: ref_locked
> >>>>>> |   |     _____________________________________________________
> >>>>>> |   |    /
> >>>>>> |   |   |       RX Dboard: A
> >>>>>> |   |   |   ID: UBX-40 v2 (0x007c)
> >>>>>> |   |   |   Serial: 313C181
> >>>>>> |   |   |     ____________________________________________________=
_
> >>>>>> |   |   |    /
> >>>>>> |   |   |   |       RX Frontend: 0
> >>>>>> |   |   |   |   Name: UBX RX
> >>>>>> |   |   |   |   Antennas: TX/RX, RX2, CAL
> >>>>>> |   |   |   |   Sensors: lo_locked
> >>>>>> |   |   |   |   Freq range: 10.000 to 6000.000 MHz
> >>>>>> |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> >>>>>> |   |   |   |   Bandwidth range: 40000000.0 to 40000000.0 step
> >>>>>> 0.0 Hz
> >>>>>> |   |   |   |   Connection Type: IQ
> >>>>>> |   |   |   |   Uses LO offset: No
> >>>>>> |   |   |     ____________________________________________________=
_
> >>>>>> |   |   |    /
> >>>>>> |   |   |   |       RX Codec: A
> >>>>>> |   |   |   |   Name: ads62p48
> >>>>>> |   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
> >>>>>> |   |     _____________________________________________________
> >>>>>> |   |    /
> >>>>>> |   |   |       RX Dboard: B
> >>>>>> |   |   |   ID: UBX-40 v2 (0x007c)
> >>>>>> |   |   |   Serial: 313C191
> >>>>>> |   |   |     ____________________________________________________=
_
> >>>>>> |   |   |    /
> >>>>>> |   |   |   |       RX Frontend: 0
> >>>>>> |   |   |   |   Name: UBX RX
> >>>>>> |   |   |   |   Antennas: TX/RX, RX2, CAL
> >>>>>> |   |   |   |   Sensors: lo_locked
> >>>>>> |   |   |   |   Freq range: 10.000 to 6000.000 MHz
> >>>>>> |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> >>>>>> |   |   |   |   Bandwidth range: 40000000.0 to 40000000.0 step
> >>>>>> 0.0 Hz
> >>>>>> |   |   |   |   Connection Type: IQ
> >>>>>> |   |   |   |   Uses LO offset: No
> >>>>>> |   |   |     ____________________________________________________=
_
> >>>>>> |   |   |    /
> >>>>>> |   |   |   |       RX Codec: B
> >>>>>> |   |   |   |   Name: ads62p48
> >>>>>> |   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
> >>>>>> |   |     _____________________________________________________
> >>>>>> |   |    /
> >>>>>> |   |   |       TX Dboard: A
> >>>>>> |   |   |   ID: UBX-40 v2 (0x007b)
> >>>>>> |   |   |   Serial: 313C181
> >>>>>> |   |   |     ____________________________________________________=
_
> >>>>>> |   |   |    /
> >>>>>> |   |   |   |       TX Frontend: 0
> >>>>>> |   |   |   |   Name: UBX TX
> >>>>>> |   |   |   |   Antennas: TX/RX, CAL
> >>>>>> |   |   |   |   Sensors: lo_locked
> >>>>>> |   |   |   |   Freq range: 10.000 to 6000.000 MHz
> >>>>>> |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> >>>>>> |   |   |   |   Bandwidth range: 40000000.0 to 40000000.0 step
> >>>>>> 0.0 Hz
> >>>>>> |   |   |   |   Connection Type: QI
> >>>>>> |   |   |   |   Uses LO offset: No
> >>>>>> |   |   |     ____________________________________________________=
_
> >>>>>> |   |   |    /
> >>>>>> |   |   |   |       TX Codec: A
> >>>>>> |   |   |   |   Name: ad9146
> >>>>>> |   |   |   |   Gain Elements: None
> >>>>>> |   |     _____________________________________________________
> >>>>>> |   |    /
> >>>>>> |   |   |       TX Dboard: B
> >>>>>> |   |   |   ID: UBX-40 v2 (0x007b)
> >>>>>> |   |   |   Serial: 313C191
> >>>>>> |   |   |     ____________________________________________________=
_
> >>>>>> |   |   |    /
> >>>>>> |   |   |   |       TX Frontend: 0
> >>>>>> |   |   |   |   Name: UBX TX
> >>>>>> |   |   |   |   Antennas: TX/RX, CAL
> >>>>>> |   |   |   |   Sensors: lo_locked
> >>>>>> |   |   |   |   Freq range: 10.000 to 6000.000 MHz
> >>>>>> |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> >>>>>> |   |   |   |   Bandwidth range: 40000000.0 to 40000000.0 step
> >>>>>> 0.0 Hz
> >>>>>> |   |   |   |   Connection Type: QI
> >>>>>> |   |   |   |   Uses LO offset: No
> >>>>>> |   |   |     ____________________________________________________=
_
> >>>>>> |   |   |    /
> >>>>>> |   |   |   |       TX Codec: B
> >>>>>> |   |   |   |   Name: ad9146
> >>>>>> |   |   |   |   Gain Elements: None
> >>>>>> |   |     _____________________________________________________
> >>>>>> |   |    /
> >>>>>> |   |   |       RFNoC blocks on this device:
> >>>>>> |   |   |
> >>>>>> |   |   |   * DmaFIFO_0
> >>>>>> |   |   |   * Radio_0
> >>>>>> |   |   |   * Radio_1
> >>>>>> |   |   |   * DDC_0
> >>>>>> |   |   |   * DDC_1
> >>>>>> |   |   |   * DUC_0
> >>>>>> |   |   |   * DUC_1
> >>>>>>
> >>>>>>
> >>>>>>
> >>>>>> Mike
> >>>>>>
> >>>>> OK, so could you use the tx_waveforms example in multi-channel mode
> >>>>> and confirm correct output on a spectrum analyser,
> >>>>>    or another X310 doing receive?
> >>>>>
> >>>>>
> >>>>>>
> >>>>>> On 03/27/2019 03:42 PM, Marcus D. Leech via USRP-users wrote:
> >>>>>>> On 03/27/2019 03:39 PM, Michael R. Freedman via USRP-users wrote:
> >>>>>>>> Marcus,
> >>>>>>>>
> >>>>>>>>
> >>>>>>>> I tried a 10MHz LOOffset with no change.  I also tried it at
> >>>>>>>> 1155.0MHz and 1160.0MHz.  At 1155 the phase rolls... at 1160 it
> >>>>>>>> does not.
> >>>>>>>>
> >>>>>>>>
> >>>>>>>> Mike
> >>>>>>>>
> >>>>>>> Could you give us a dump of uhd_usrp_probe for an X310 that
> >>>>>>> displays this issue?  What version of UHD?   Also, to be clear,
> >>>>>>> this is within
> >>>>>>>    a *single* X310, correct?
> >>>>>>>
> >>>>>>>
> >>>>>>>> On 03/27/2019 11:10 AM, Marcus D. Leech via USRP-users wrote:
> >>>>>>>>> On 03/27/2019 10:41 AM, Michael R. Freedman via USRP-users wrot=
e:
> >>>>>>>>>> Any thoughts on this?
> >>>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>> Mike
> >>>>>>>>>>
> >>>>>>>>> Given that in this case, the incoming carrier will be fighting
> >>>>>>>>> DC-offset removal rather hard, I wonder if this is a weird
> >>>>>>>>> artifact of DC-offset
> >>>>>>>>>    removal?
> >>>>>>>>>
> >>>>>>>>> If you use offset tuning on the RX, do you still see a
> >>>>>>>>> significant phase roll?
> >>>>>>>>>
> >>>>>>>>>
> >>>>>>>>>> On 03/25/2019 01:04 PM, Michael R. Freedman via USRP-users
> >>>>>>>>>> wrote:
> >>>>>>>>>>> Marcus,
> >>>>>>>>>>>
> >>>>>>>>>>>     190Hz is what we calculated.  I have attached a text file
> >>>>>>>>>>> with the data we used.  This is a single UBX40 tuned to 155MH=
z
> >>>>>>>>>>> sampling at 2MHz.
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>> Mike
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>> On 03/25/2019 12:34 PM, Nick Foster wrote:
> >>>>>>>>>>>> Well, according to your description, you could transmit a
> >>>>>>>>>>>> carrier from TX to RX (through an attenuator) with both side=
s
> >>>>>>>>>>>> set to the same frequency. Your received signal should look
> >>>>>>>>>>>> like a sine wave at the frequency of the offset.
> >>>>>>>>>>>>
> >>>>>>>>>>>> On Mon, Mar 25, 2019 at 9:16 AM Michael R. Freedman via
> >>>>>>>>>>>> USRP-users <usrp-users@lists.ettus.com
> >>>>>>>>>>>> <mailto:usrp-users@lists.ettus.com>> wrote:
> >>>>>>>>>>>>
> >>>>>>>>>>>>      Hello,
> >>>>>>>>>>>>
> >>>>>>>>>>>>      Do you have any suggestions as to how to measure the
> >>>>>>>>>>>>      frequency delta between the transmit channel and the
> >>>>>>>>>>>>      receive channel?
> >>>>>>>>>>>>
> >>>>>>>>>>>>      As I sat down to do this, I realized I have no real way
> >>>>>>>>>>>>      to do that.
> >>>>>>>>>>>>
> >>>>>>>>>>>>
> >>>>>>>>>>>>      Mike
> >>>>>>>>>>>>
> >>>>>>>>>>>>
> >>>>>>>>>>>>
> >>>>>>>>>>>>
> >>>>>>>>>>>>
> >>>>>>>>>>>>      On 03/24/2019 03:23 PM, Marcus D. Leech via USRP-users
> >>>>>>>>>>>> wrote:
> >>>>>>>>>>>>>      On 03/24/2019 02:39 PM, Freedman, Michael - 1008 - MIT=
LL
> >>>>>>>>>>>>>      via USRP-users wrote:
> >>>>>>>>>>>>>>      It is not just a phase offset. It is a frequency
> >>>>>>>>>>>>>> offset. The phase drifts between the two. I can tolerate
> >>>>>>>>>>>>>> a phase offset at startup. A freq offset however is
> >>>>>>>>>>>>>> causing problems.
> >>>>>>>>>>>>>>
> >>>>>>>>>>>>>>      Mike
> >>>>>>>>>>>>>>
> >>>>>>>>>>>>>>      Sent from my iPhone
> >>>>>>>>>>>>>>
> >>>>>>>>>>>>>>      On Mar 24, 2019, at 4:28 AM, Marcus M=C3=BCller
> >>>>>>>>>>>>>> <marcus.mueller@ettus.com>
> >>>>>>>>>>>>>> <mailto:marcus.mueller@ettus.com> wrote:
> >>>>>>>>>>>>>>
> >>>>>>>>>>>>>>      Can you elaborate on what "not coherent" means to
> >>>>>>>>>>>>>> you =E2=80=93 the relative
> >>>>>>>>>>>>>>      phase should be constant after each tune, but if you
> >>>>>>>>>>>>>> don't tune
> >>>>>>>>>>>>>>      simultaneously, i.e. with timed commands, random at
> >>>>>>>>>>>>>> each tune.
> >>>>>>>>>>>>>>
> >>>>>>>>>>>>>>      Best regards,
> >>>>>>>>>>>>>>      Marcus
> >>>>>>>>>>>>>      Also, what version of UHD?  What hardware rev of UBX
> >>>>>>>>>>>>> cards?
> >>>>>>>>>>>>>
> >>>>>>>>>>>>>
> >>>>>>>>>>>>>>      On Sat, 2019-03-23 at 17:06 -0400, Michael R.
> >>>>>>>>>>>>>> Freedman via USRP-users
> >>>>>>>>>>>>>>      wrote:
> >>>>>>>>>>>>>>>      Hello,
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>      I have an issue where I tune both the TX and RX
> >>>>>>>>>>>>>>> side of a UBX40 card
> >>>>>>>>>>>>>>>      in
> >>>>>>>>>>>>>>>      an X310 to the same frequency and find that the
> >>>>>>>>>>>>>>> transmitted signal
> >>>>>>>>>>>>>>>      and
> >>>>>>>>>>>>>>>      what is received are not coherent.  I am using an
> >>>>>>>>>>>>>>> external 10MHz
> >>>>>>>>>>>>>>>      reference and have tried the documented suggestions.
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>      at 150MHz it is coherent.
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>      at 155MHz it is NOT coherent.
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>      I have tried setting the dboard_clock_rate to
> >>>>>>>>>>>>>>> 20MHz.  This made the
> >>>>>>>>>>>>>>>      problem appear at 150MHz as well.  I've tried
> >>>>>>>>>>>>>>> integer_n tuning.
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>      I have verified that the ref_lock and lo_lock are
> >>>>>>>>>>>>>>> both true.
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>      Any suggestions?
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>      Mike
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>      _______________________________________________
> >>>>>>>>>>>>>>>      USRP-users mailing list
> >>>>>>>>>>>>>>>      USRP-users@lists.ettus.com
> >>>>>>>>>>>>>>> <mailto:USRP-users@lists.ettus.com>
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>
> >>>>>>>>>>>>>>      _______________________________________________
> >>>>>>>>>>>>>>      USRP-users mailing list
> >>>>>>>>>>>>>>      USRP-users@lists.ettus.com
> >>>>>>>>>>>>>> <mailto:USRP-users@lists.ettus.com>
> >>>>>>>>>>>>>>
> >>>>>>>>>>>>>>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>>>>>>>>>>>>
> >>>>>>>>>>>>>
> >>>>>>>>>>>>>
> >>>>>>>>>>>>>      _______________________________________________
> >>>>>>>>>>>>>      USRP-users mailing list
> >>>>>>>>>>>>>      USRP-users@lists.ettus.com
> >>>>>>>>>>>>> <mailto:USRP-users@lists.ettus.com>
> >>>>>>>>>>>>>
> >>>>>>>>>>>>>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>>>>>>>>>>>
> >>>>>>>>>>>>      _______________________________________________
> >>>>>>>>>>>>      USRP-users mailing list
> >>>>>>>>>>>>      USRP-users@lists.ettus.com
> >>>>>>>>>>>>      <mailto:USRP-users@lists.ettus.com>
> >>>>>>>>>>>>
> >>>>>>>>>>>>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>>>>>>>>>>
> >>>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>> _______________________________________________
> >>>>>>>>>>> USRP-users mailing list
> >>>>>>>>>>> USRP-users@lists.ettus.com
> >>>>>>>>>>>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000bcf9dd058a0e998d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks to Michael&#39;s persistence, we did find an i=
ssue in the DUC and DDC where the phase accumulator was the wrong resolutio=
n (24-bit instead of 32-bit) and was not being reset at the end of each bur=
st.=C2=A0 The fix is now available on the head of the UHD-3.14 branch and w=
ill be included in the upcoming 3.14.1.0 release.</div><div><br></div><div>=
Phase may change each time streamers are created, but the phase between TX =
and RX should remain consistent during streaming.=C2=A0 Tuning must be done=
 with timed commands and a consistent time delta between the tune time of T=
X and RX must be maintained that is greater than 500us to maintain the cohe=
rence across re-tunes.<br></div><div><br></div><div>Regards,</div><div>Mich=
ael<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Tue, Apr 9, 2019 at 12:21 AM Piotr Krysik via USRP-users &l=
t;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">H=
i Mike,<br>
<br>
Let&#39;s keep the discussion on the mailing list. I attach the scripts as<=
br>
they are quite small. There is however a data folder with two 4MB files<br>
containing noise in complex short format. The version of the archive<br>
with those files is here:<br>
<a href=3D"https://app.box.com/s/xfpwro8wybog4f1yo1l6yh665tg4sx0r" rel=3D"n=
oreferrer" target=3D"_blank">https://app.box.com/s/xfpwro8wybog4f1yo1l6yh66=
5tg4sx0r</a><br>
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
W dniu 08.04.2019 o=C2=A018:30, Michael R. Freedman pisze:<br>
&gt; That would be wonderful if I could get your scripts to run.<br>
&gt;<br>
&gt;<br>
&gt; Thanks a bunch for the info!<br>
&gt;<br>
&gt;<br>
&gt; Mike<br>
&gt;<br>
&gt;<br>
&gt; On 04/08/2019 09:56 AM, Piotr Krysik via USRP-users wrote:<br>
&gt;&gt; Hi all,<br>
&gt;&gt;<br>
&gt;&gt; I looked at this thread and it reminded me of something.<br>
&gt;&gt;<br>
&gt;&gt; Once we purchased few X310 with UBX160 daughter-boards.<br>
&gt;&gt;<br>
&gt;&gt; One of them had some frequency offset on Tx channel, that decrease=
d over<br>
&gt;&gt; time it was running, but very slowly.<br>
&gt;&gt;<br>
&gt;&gt; The daughter-board was then replaced by National Intruments (after=
 some<br>
&gt;&gt; adventures ;) ). The replacement one had exactly the same issue so=
 it<br>
&gt;&gt; was also replaced. The next one was ok. So it seemed it was some<b=
r>
&gt;&gt; manufacturing issue with UBX.<br>
&gt;&gt;<br>
&gt;&gt; I don&#39;t know if it&#39;s the same issue (i.e. due to lack of d=
ata), but I<br>
&gt;&gt; attach part of the report that was sent to National Instruments:<b=
r>
&gt;&gt; -phase offset of the received signal in relation to digital wavefo=
rm for<br>
&gt;&gt; a single X310 with UBX160 for all TX and RX combinations:<br>
&gt;&gt; <a href=3D"https://imgur.com/a/ODBtT4o" rel=3D"noreferrer" target=
=3D"_blank">https://imgur.com/a/ODBtT4o</a><br>
&gt;&gt; -schematic:<br>
&gt;&gt; <a href=3D"https://imgur.com/a/si9fJZp" rel=3D"noreferrer" target=
=3D"_blank">https://imgur.com/a/si9fJZp</a><br>
&gt;&gt;<br>
&gt;&gt; I got also scripts that were used for recording and plotting that<=
br>
&gt;&gt; figure. If you are interested I can post it somewhere.<br>
&gt;&gt;<br>
&gt;&gt; What seems different from situation here is that for us it seemed =
the<br>
&gt;&gt; effect wasn&#39;t depending on frequency (but I didn&#39;t do any =
extensive<br>
&gt;&gt; tests and might not remember).<br>
&gt;&gt;<br>
&gt;&gt; -- <br>
&gt;&gt; Best Regards,<br>
&gt;&gt; Piotr Krysik<br>
&gt;&gt;<br>
&gt;&gt; W dniu 07.04.2019 o=C2=A003:00, Freedman, Michael - 1008 - MITLL v=
ia<br>
&gt;&gt; USRP-users pisze:<br>
&gt;&gt;&gt; I have switched and am currently running the release 3.14.0.0<=
br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Sent from my iPhone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Apr 6, 2019, at 8:58 AM, Marcus D. Leech &lt;<a href=3D"mai=
lto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a><=
br>
&gt;&gt;&gt; &lt;mailto:<a href=3D"mailto:patchvonbraun@gmail.com" target=
=3D"_blank">patchvonbraun@gmail.com</a>&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On 04/05/2019 11:43 AM, Michael R. Freedman wrote:<br>
&gt;&gt;&gt;&gt; Hello,<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; If I remove the DSP from the equation by setting the DSP t=
uning<br>
&gt;&gt;&gt;&gt; policy to manual and assigning it to zero, I am coherent f=
rom tx to<br>
&gt;&gt;&gt;&gt; rx on all frequencies.=C2=A0 I&#39;m now beginning to thin=
k that the DSP is<br>
&gt;&gt;&gt;&gt; doing it&#39;s tuning differently for tx and rx.=C2=A0 Or =
there is an<br>
&gt;&gt;&gt;&gt; accumulated error in opposite directions for both.=C2=A0 T=
houghts?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Leaving the DSP to zero is not a good solution however as =
there is<br>
&gt;&gt;&gt;&gt; too much LO leakage.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt; Could you try UHD 3.14.0.0?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I think that you&#39;re using the -rc3 version at the moment.<=
br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Mike<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On 03/27/2019 04:58 PM, Marcus D. Leech wrote:<br>
&gt;&gt;&gt;&gt;&gt; On 03/27/2019 04:48 PM, Michael R. Freedman wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt; This is on a single UBX card within a single USRP.=
<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; ./uhd_usrp_probe --args=3Daddr=3D192.168.40.100<br=
>
&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_1=
06501;<br>
&gt;&gt;&gt;&gt;&gt;&gt; UHD_3.14.0.0-0-unknown<br>
&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [X300] X300 initialization sequence...<br>
&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [X300] Maximum frame size: 8000 bytes.<br>
&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [X300] Radio 1x clock: 200 MHz<br>
&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/DmaFIFO_0] Initializing block control (N=
OC ID:<br>
&gt;&gt;&gt;&gt;&gt;&gt; 0xF1F0D00000000000)<br>
&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1320=
 MB/s)<br>
&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1294=
 MB/s)<br>
&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio_0] Initializing block control (NOC=
 ID:<br>
&gt;&gt;&gt;&gt;&gt;&gt; 0x12AD100000000001)<br>
&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/Radio_1] Initializing block control (NOC=
 ID:<br>
&gt;&gt;&gt;&gt;&gt;&gt; 0x12AD100000000001)<br>
&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/DDC_0] Initializing block control (NOC I=
D:<br>
&gt;&gt;&gt;&gt;&gt;&gt; 0xDDC0000000000000)<br>
&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/DDC_1] Initializing block control (NOC I=
D:<br>
&gt;&gt;&gt;&gt;&gt;&gt; 0xDDC0000000000000)<br>
&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/DUC_0] Initializing block control (NOC I=
D:<br>
&gt;&gt;&gt;&gt;&gt;&gt; 0xD0C0000000000000)<br>
&gt;&gt;&gt;&gt;&gt;&gt; [INFO] [0/DUC_1] Initializing block control (NOC I=
D:<br>
&gt;&gt;&gt;&gt;&gt;&gt; 0xD0C0000000000000)<br>
&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0 _____________________________________=
________________<br>
&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0/<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Device: X-Se=
ries Device<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0=C2=A0=C2=A0 ________________________=
_____________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0=C2=A0 /<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Mboard: X310<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 revision: 6<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 product: 30410<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 mac-addr0: 00:80:2f:0a=
:ff:98<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 mac-addr1: 00:80:2f:0a=
:ff:99<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 gateway: 192.168.10.1<=
br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 ip-addr0: 192.168.10.1=
00<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 subnet0: 255.255.255.0=
<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 ip-addr1: 192.168.20.1=
00<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 subnet1: 255.255.255.0=
<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 ip-addr2: 192.168.30.1=
00<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 subnet2: 255.255.255.0=
<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 ip-addr3: 192.168.40.1=
00<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 subnet3: 255.255.255.0=
<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 serial: F5BE45<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 FW Version: 6.0<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 FPGA Version: 35.1<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 FPGA git hash: 4c165a5=
<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 RFNoC capable: Yes<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 Time sources:=C2=A0 in=
ternal, external, gpsdo<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 Clock sources: interna=
l, external, gpsdo<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: ref_locked<br=
>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 __________=
___________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 RX Dboard: A<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 ID: UBX-=
40 v2 (0x007c)<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Serial: =
313C181<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0 _____________________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<=
br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Frontend: 0<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Name: UBX RX<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Antennas: TX/RX, RX2, CAL<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Sensors: lo_locked<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Freq range: 10.000 to 6000.000 MHz<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Gain range PGA0: 0.0 to 31.5 step 0.5 dB<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Bandwidth range: 40000000.0 to 40000000.0 step<br>
&gt;&gt;&gt;&gt;&gt;&gt; 0.0 Hz<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Connection Type: IQ<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Uses LO offset: No<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0 _____________________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<=
br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Codec: A<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Name: ads62p48<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Gain range digital: 0.0 to 6.0 step 0.5 dB<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 __________=
___________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 RX Dboard: B<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 ID: UBX-=
40 v2 (0x007c)<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Serial: =
313C191<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0 _____________________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<=
br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Frontend: 0<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Name: UBX RX<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Antennas: TX/RX, RX2, CAL<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Sensors: lo_locked<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Freq range: 10.000 to 6000.000 MHz<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Gain range PGA0: 0.0 to 31.5 step 0.5 dB<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Bandwidth range: 40000000.0 to 40000000.0 step<br>
&gt;&gt;&gt;&gt;&gt;&gt; 0.0 Hz<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Connection Type: IQ<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Uses LO offset: No<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0 _____________________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<=
br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Codec: B<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Name: ads62p48<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Gain range digital: 0.0 to 6.0 step 0.5 dB<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 __________=
___________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 TX Dboard: A<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 ID: UBX-=
40 v2 (0x007b)<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Serial: =
313C181<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0 _____________________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<=
br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Frontend: 0<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Name: UBX TX<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Antennas: TX/RX, CAL<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Sensors: lo_locked<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Freq range: 10.000 to 6000.000 MHz<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Gain range PGA0: 0.0 to 31.5 step 0.5 dB<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Bandwidth range: 40000000.0 to 40000000.0 step<br>
&gt;&gt;&gt;&gt;&gt;&gt; 0.0 Hz<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Connection Type: QI<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Uses LO offset: No<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0 _____________________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<=
br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Codec: A<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Name: ad9146<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Gain Elements: None<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 __________=
___________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 TX Dboard: B<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 ID: UBX-=
40 v2 (0x007b)<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Serial: =
313C191<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0 _____________________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<=
br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Frontend: 0<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Name: UBX TX<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Antennas: TX/RX, CAL<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Sensors: lo_locked<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Freq range: 10.000 to 6000.000 MHz<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Gain range PGA0: 0.0 to 31.5 step 0.5 dB<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Bandwidth range: 40000000.0 to 40000000.0 step<br>
&gt;&gt;&gt;&gt;&gt;&gt; 0.0 Hz<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Connection Type: QI<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Uses LO offset: No<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0 _____________________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<=
br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Codec: B<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Name: ad9146<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=
=C2=A0 Gain Elements: None<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 __________=
___________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 RFNoC blocks on this device:<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DmaFIF=
O_0<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * Radio_=
0<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * Radio_=
1<br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DDC_0<=
br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DDC_1<=
br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DUC_0<=
br>
&gt;&gt;&gt;&gt;&gt;&gt; |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DUC_1<=
br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Mike<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; OK, so could you use the tx_waveforms example in multi=
-channel mode<br>
&gt;&gt;&gt;&gt;&gt; and confirm correct output on a spectrum analyser,<br>
&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0 or another X310 doing receive?<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; On 03/27/2019 03:42 PM, Marcus D. Leech via USRP-u=
sers wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 03/27/2019 03:39 PM, Michael R. Freedman vi=
a USRP-users wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Marcus,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I tried a 10MHz LOOffset with no change.=
=C2=A0 I also tried it at<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1155.0MHz and 1160.0MHz.=C2=A0 At 1155 the=
 phase rolls... at 1160 it<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; does not.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Mike<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Could you give us a dump of uhd_usrp_probe for=
 an X310 that<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; displays this issue?=C2=A0 What version of UHD=
?=C2=A0=C2=A0 Also, to be clear,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; this is within<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0 a *single* X310, correct?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 03/27/2019 11:10 AM, Marcus D. Leech vi=
a USRP-users wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 03/27/2019 10:41 AM, Michael R. Fre=
edman via USRP-users wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Any thoughts on this?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Mike<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Given that in this case, the incoming =
carrier will be fighting<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; DC-offset removal rather hard, I wonde=
r if this is a weird<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; artifact of DC-offset<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0 removal?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; If you use offset tuning on the RX, do=
 you still see a<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; significant phase roll?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 03/25/2019 01:04 PM, Michael R.=
 Freedman via USRP-users<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Marcus,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0 190Hz is wh=
at we calculated.=C2=A0 I have attached a text file<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; with the data we used.=C2=A0 T=
his is a single UBX40 tuned to 155MHz<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; sampling at 2MHz.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Mike<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 03/25/2019 12:34 PM, Nick F=
oster wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Well, according to your de=
scription, you could transmit a<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; carrier from TX to RX (thr=
ough an attenuator) with both sides<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; set to the same frequency.=
 Your received signal should look<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; like a sine wave at the fr=
equency of the offset.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On Mon, Mar 25, 2019 at 9:=
16 AM Michael R. Freedman via<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; USRP-users &lt;<a href=3D"=
mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; &lt;mailto:<a href=3D"mail=
to:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com=
</a>&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 H=
ello,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 D=
o you have any suggestions as to how to measure the<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 f=
requency delta between the transmit channel and the<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 r=
eceive channel?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 A=
s I sat down to do this, I realized I have no real way<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 t=
o do that.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 M=
ike<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 O=
n 03/24/2019 03:23 PM, Marcus D. Leech via USRP-users<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=
=A0 On 03/24/2019 02:39 PM, Freedman, Michael - 1008 - MITLL<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=
=A0 via USRP-users wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=
=C2=A0 It is not just a phase offset. It is a frequency<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; offset. The phase =
drifts between the two. I can tolerate<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; a phase offset at =
startup. A freq offset however is<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; causing problems.<=
br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=
=C2=A0 Mike<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=
=C2=A0 Sent from my iPhone<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=
=C2=A0 On Mar 24, 2019, at 4:28 AM, Marcus M=C3=BCller<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; &lt;<a href=3D"mai=
lto:marcus.mueller@ettus.com" target=3D"_blank">marcus.mueller@ettus.com</a=
>&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; &lt;mailto:<a href=
=3D"mailto:marcus.mueller@ettus.com" target=3D"_blank">marcus.mueller@ettus=
.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=
=C2=A0 Can you elaborate on what &quot;not coherent&quot; means to<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; you =E2=80=93 the =
relative<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=
=C2=A0 phase should be constant after each tune, but if you<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; don&#39;t tune<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=
=C2=A0 simultaneously, i.e. with timed commands, random at<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; each tune.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=
=C2=A0 Best regards,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=
=C2=A0 Marcus<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=
=A0 Also, what version of UHD?=C2=A0 What hardware rev of UBX<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; cards?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=
=C2=A0 On Sat, 2019-03-23 at 17:06 -0400, Michael R.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Freedman via USRP-=
users<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=
=C2=A0 wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=
=C2=A0=C2=A0 Hello,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=
=C2=A0=C2=A0 I have an issue where I tune both the TX and RX<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; side of a UBX4=
0 card<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=
=C2=A0=C2=A0 in<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=
=C2=A0=C2=A0 an X310 to the same frequency and find that the<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; transmitted si=
gnal<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=
=C2=A0=C2=A0 and<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=
=C2=A0=C2=A0 what is received are not coherent.=C2=A0 I am using an<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; external 10MHz=
<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=
=C2=A0=C2=A0 reference and have tried the documented suggestions.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=
=C2=A0=C2=A0 at 150MHz it is coherent.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=
=C2=A0=C2=A0 at 155MHz it is NOT coherent.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=
=C2=A0=C2=A0 I have tried setting the dboard_clock_rate to<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 20MHz.=C2=A0 T=
his made the<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=
=C2=A0=C2=A0 problem appear at 150MHz as well.=C2=A0 I&#39;ve tried<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; integer_n tuni=
ng.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=
=C2=A0=C2=A0 I have verified that the ref_lock and lo_lock are<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; both true.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=
=C2=A0=C2=A0 Any suggestions?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=
=C2=A0=C2=A0 Mike<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=
=C2=A0=C2=A0 _______________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=
=C2=A0=C2=A0 USRP-users mailing list<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=
=C2=A0=C2=A0 <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank=
">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; &lt;mailto:<a =
href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lis=
ts.ettus.com</a>&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=
=C2=A0=C2=A0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"htt=
p://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" rel=3D"nor=
eferrer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-use=
rs_lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=
=C2=A0 _______________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=
=C2=A0 USRP-users mailing list<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=
=C2=A0 <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP=
-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; &lt;mailto:<a href=
=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.e=
ttus.com</a>&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=
=C2=A0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"http://=
lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" rel=3D"norefer=
rer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_l=
ists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=
=A0 _______________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=
=A0 USRP-users mailing list<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=
=A0 <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-us=
ers@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; &lt;mailto:<a href=3D"=
mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus=
.com</a>&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=
=A0<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"http://list=
s.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists=
.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 _=
______________________________________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 U=
SRP-users mailing list<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 <=
a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &=
lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">U=
SRP-users@lists.ettus.com</a>&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"http://lists.et=
tus.com/mailman/listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" tar=
get=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ett=
us.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; ______________________________=
_________________<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"mailto:USRP-users@l=
ists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"http://lists.ettus.=
com/mailman/listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=
=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000bcf9dd058a0e998d--


--===============0708355925872728797==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0708355925872728797==--

