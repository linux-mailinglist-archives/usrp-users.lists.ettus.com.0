Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0D16BF98
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2019 18:27:52 +0200 (CEST)
Received: from [::1] (port=60484 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnmmV-0007QD-51; Wed, 17 Jul 2019 12:27:51 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:38228)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1hnmmR-0007KI-6J
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 12:27:47 -0400
Received: by mail-ot1-f54.google.com with SMTP id d17so25707457oth.5
 for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2019 09:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AtnkRU9OeAFh60yR/nIjGOFr9fpkwp0ViRiLWnlDcuQ=;
 b=LA1CabG6gdqj+1vfYZWBVywAS0q8zlBNZKlnNriRJXFgPI12Xx0gkN3TZjvvJswtV+
 asP/4eFmYHk+amJf/uKeAO2eQUrO1KqDZJouMnsiKO2pvzxpbu/n/V3Hyrp1wXIqNFxr
 s51uKdrJMiMNjYKz/x6FWJ0j7F1gjN/S3yPxiWKpscjrSn5ompsb6ZqfyVUDEIO/PbKp
 nlG4MDOehd6N6RKnCSSDDPjokmaxNYSSOhIfZEnKXfdGcgowsbzn1PlCnj7SqCWObM32
 9t+L5AFJvSSE8FsMimk09q4+RBcwyTgnOsqyP79f5U9pKHRmzYvOag/AYA6r8ZqTYdpU
 AHkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AtnkRU9OeAFh60yR/nIjGOFr9fpkwp0ViRiLWnlDcuQ=;
 b=S3ZvMXGqVa44pKuJe3ysykxBgMr8Y3ZHowEpKdy2HQTQp7w4Z25FaxfbEfx2VzH2bI
 RG97v2D+tr7+KoHwz3Pvy6s9YJn/xpi5cWpKMoiitIwESsKfRphnRHeGQVDwFAPToTIm
 NlIxrwQ5CS+23l9xSQEO0cvzzDAGRFcO/bbLOmxYD928w9w5Ra7L3LpD/TkD/HpSSHFw
 7xlqKlgihr6C43upVrsCJLV1nWPUYUFJy9ZsThBN3r+wtQAXaoRWtFPUpoWKkQGSkbCz
 kK/PaQeZIqcuPgtyc/13psLuN7UCdnQ0jK6v64bMHA85dju7N0/4OHyXfBeqB4ZLl9j7
 HrQg==
X-Gm-Message-State: APjAAAVJVWiDRDQwYAmrPpfObzuZt9Xwrlysm8O0qs6X+h18MAHxjieJ
 YTYGP9gs0X4XzyNVjodQq+oYNRC749RDiPz5TUPM3uJv
X-Google-Smtp-Source: APXvYqzyu1MZr0Nu+QhRg/0CahHoviKLMHQmZmBMc2Q7X5RT6Ux3ZQF2F46srR6Cq6n8Ari6j1Ah/je/XESMbhmEyrA=
X-Received: by 2002:a9d:4703:: with SMTP id a3mr1832576otf.183.1563380826308; 
 Wed, 17 Jul 2019 09:27:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAOExtcQtL_gri3uWw9_NyXPEOwS6Gpc+NqSs07Vwmdc4gbHQTg@mail.gmail.com>
 <BL0PR12MB2340A337C6CBB311E990C16CAFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAOExtcRbYo-15C2eVcmJNz98=0vK5nJEJsdZt6MUd0ViUhcQZQ@mail.gmail.com>
 <BL0PR12MB2340682EFC45C0AA255B6AA2AFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAOExtcSLfxOUFfqoH0EVfJCWxRsrayZV9WnDLSk=Rf-7=pnCYA@mail.gmail.com>
 <BL0PR12MB234037B01F84C36682568490AFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAOExtcTPgp-yE_DBzDY--wZWdTEw_=NtoGQtVdGbYDoiAmxTtg@mail.gmail.com>
 <CAL263iy2k8oXv_LSU6xm4apAg33-nOMxsTLukt0zadjxTxuZTA@mail.gmail.com>
 <CAOExtcQGYB8J1w3-65wNGeUDh0baFwsiir95OM8QNLeF99YA=g@mail.gmail.com>
 <CAL263ix6PEgcE2nyzwnKqSGBTMUvcn5itV0PXNw=erWrO4FYvA@mail.gmail.com>
 <CAOExtcRqLs6MecJmVt0JtV_uL=iEOWV0hLm-t772PEQfcdqUGw@mail.gmail.com>
 <CAL263iy1G64N6FaTBJ-Nat--s68dQegbHtrW5bON22LCRf9zgw@mail.gmail.com>
 <CAOExtcRF130Gs=4kvZp-c2t5enpHBLW5g758PHv2j46JAR46Og@mail.gmail.com>
 <CAL263iwxwhM8PicewVr=MKCxMSVbcM-961cf-GxVqH16ktcc6w@mail.gmail.com>
 <CAOExtcQFMQ6S8AVR_8dX9oPmwNS+-sZeTohWG79N_7eJS0PKtQ@mail.gmail.com>
 <CAL263iwRxNo3WAJN9zysjsMhTvB5EJxwjNDiB8csg-YoJpwDzA@mail.gmail.com>
 <CAOExtcSGqG5EP_YF6TFWdZb4wwsKbjb7vmuMh=gFABxQE4M40w@mail.gmail.com>
In-Reply-To: <CAOExtcSGqG5EP_YF6TFWdZb4wwsKbjb7vmuMh=gFABxQE4M40w@mail.gmail.com>
Date: Wed, 17 Jul 2019 09:27:24 -0700
Message-ID: <CAL263iwjokuwk28_3q2msT1Eex6J+nHOPwHOObyQu1-RKJnJRw@mail.gmail.com>
To: Sumit Kumar <cogwsn@gmail.com>
Subject: Re: [USRP-users] Sequence Errors N200
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8378372688095629531=="
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

--===============8378372688095629531==
Content-Type: multipart/alternative; boundary="000000000000cd192b058de2f6d8"

--000000000000cd192b058de2f6d8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sumit,

What ethernet controller do you have in your laptop?

lspci | grep Ethernet

Regards,
Nate Temple

On Wed, Jul 17, 2019 at 9:16 AM Sumit Kumar <cogwsn@gmail.com> wrote:

> Hi Nate,
>
> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/examples$ sudo
> ./benchmark_rate --rx_rate 10e6 --tx_rate 10e6 --duration 600
>
> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
> UHD_3.15.0.git-1-gf83faf28
> [00:00:00.000024] Creating the usrp device with: ...
> [INFO] [USRP2] Opening a USRP2/N-Series device...
> [INFO] [USRP2] Current recv frame size: 1472 bytes
> [INFO] [USRP2] Current send frame size: 1472 bytes
> Using Device: Single USRP:
>   Device: USRP2 / N-Series Device
>   Mboard 0: N200r4
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: SBXv3 RX
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: SBXv3 TX
>
> [00:00:01.788223] Setting device timestamp to 0...
> [00:00:01.788784] Testing receive rate 10.000000 Msps on 1 channels
> [00:00:01.799861] Testing transmit rate 10.000000 Msps on 1 channels
> SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSUSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSS[00:00:01.905237]
> Tx timeouts: 1
> [00:10:01.932746] Benchmark complete.
>
>
> Benchmark rate summary:
>   Num received samples:     6000102237
>   Num dropped samples:      0
>   Num overruns detected:    0
>   Num transmitted samples:  258456
>   Num sequence errors (Tx): 624
>   Num sequence errors (Rx): 0
>   Num underruns detected:   1
>   Num late commands:        0
>   Num timeouts (Tx):        5993
>
> On Wed, Jul 17, 2019 at 5:36 PM Nate Temple <nate.temple@ettus.com> wrote=
:
>
>> Hi Sumit,
>>
>> Actually, I had a typo in the command, that previous benchmark_rate
>> command only tested RX, can you try passing the --tx_rate param and see =
if
>> it will produce sequence errors using benchmark_rate
>>
>> ./benchmark_rate --tx_rate 10e6 --duration 600
>>
>> Regards,
>> Nate Temple
>>
>> On Wed, Jul 17, 2019 at 8:27 AM Sumit Kumar <cogwsn@gmail.com> wrote:
>>
>>> Ok I will do this.. but why the transmission with other USRP is working
>>> fine ?
>>>
>>> On Wed, Jul 17, 2019 at 5:22 PM Nate Temple <nate.temple@ettus.com>
>>> wrote:
>>>
>>>> Hi Sumit,
>>>>
>>>> So it looks like you have multiple version of UHD installed:
>>>>
>>>> john@john-Precision-M4600:~/pybombs/src/gnuradio/gr-digital/examples/n=
arrowband$
>>>> sudo ./benchmark_tx.py -f 2.45G -S 10
>>>> linux; GNU C++ version 5.3.1 20151219; Boost_105800;
>>>> UHD_003.009.002-0-unknown
>>>>
>>>>
>>>> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/examples$ sudo
>>>> ./benchmark_rate --rx_rate 10e6 --duration 600
>>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>>>> UHD_3.15.0.git-1-gf83faf28
>>>>
>>>>
>>>> I would recommend to stick to a single UHD version and use the latest
>>>> stable tagged released (currently 3.14.1.0) you will need to modify th=
e
>>>> pybombs recipe to use the correct git tag (v3.14.1.0). The 'master' br=
anch
>>>> can be unstable at times.
>>>>
>>>> Also, if you have a FPGA image of say 3.15.x.x flashed on the N210 and
>>>> then revert back to using 3.9.2, and UHD does not catch the mismatch, =
it
>>>> will likely cause flow control errors and unstable performance.
>>>>
>>>> The gr-digital/examples/narrowband/benchmark_tx.py example is also
>>>> buggy, and is being removed from GR 3.8. Using the UHD benchmark_rate
>>>> utility will test the hardware with a limited scope.
>>>>
>>>> Regards,
>>>> Nate Temple
>>>>
>>>>
>>>> On Wed, Jul 17, 2019 at 8:10 AM Sumit Kumar <cogwsn@gmail.com> wrote:
>>>>
>>>>> Sorry, here it is.
>>>>>
>>>>> Benchmark rate summary:
>>>>>   Num received samples:     5999986436
>>>>>   Num dropped samples:      0
>>>>>   Num overruns detected:    0
>>>>>   Num transmitted samples:  0
>>>>>   Num sequence errors (Tx): 0
>>>>>   Num sequence errors (Rx): 0
>>>>>   Num underruns detected:   0
>>>>>   Num late commands:        0
>>>>>   Num timeouts (Tx):        0
>>>>>   Num timeouts (Rx):        0
>>>>>
>>>>>
>>>>> On Wed, Jul 17, 2019 at 5:08 PM Nate Temple <nate.temple@ettus.com>
>>>>> wrote:
>>>>>
>>>>>> Hi Sumit,
>>>>>>
>>>>>> It will take 10 minutes for that run to complete. Does it produce a
>>>>>> report at the end of the run?
>>>>>>
>>>>>> Regards,
>>>>>> Nate Temple
>>>>>>
>>>>>> On Wed, Jul 17, 2019 at 8:06 AM Sumit Kumar <cogwsn@gmail.com> wrote=
:
>>>>>>
>>>>>>> Hi Nate,
>>>>>>> No there are not. At the end of the last line, cursor keeps
>>>>>>> blinking, no sequence errors.
>>>>>>>
>>>>>>> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/examples$
>>>>>>> sudo ./benchmark_rate --rx_rate 10e6 --duration 600
>>>>>>>
>>>>>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>>>>>>> UHD_3.15.0.git-1-gf83faf28
>>>>>>> [00:00:00.000024] Creating the usrp device with: ...
>>>>>>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>>>>>>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>>>>>>> [INFO] [USRP2] Current send frame size: 1472 bytes
>>>>>>> Using Device: Single USRP:
>>>>>>>   Device: USRP2 / N-Series Device
>>>>>>>   Mboard 0: N200r4
>>>>>>>   RX Channel: 0
>>>>>>>     RX DSP: 0
>>>>>>>     RX Dboard: A
>>>>>>>     RX Subdev: SBXv3 RX
>>>>>>>   TX Channel: 0
>>>>>>>     TX DSP: 0
>>>>>>>     TX Dboard: A
>>>>>>>     TX Subdev: SBXv3 TX
>>>>>>>
>>>>>>> [00:00:01.796895] Setting device timestamp to 0...
>>>>>>> [00:00:01.797430] Testing receive rate 10.000000 Msps on 1 channels
>>>>>>>
>>>>>>> On Wed, Jul 17, 2019 at 4:39 PM Nate Temple <nate.temple@ettus.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> Hi Sumit,
>>>>>>>>
>>>>>>>> If you run benchmark_rate for an extend period of time, do you see
>>>>>>>> any sequence errors?
>>>>>>>>
>>>>>>>> /usr/local/lib/uhd/examples/benchmark_rate --rx_rate 10e6
>>>>>>>> --duration 600
>>>>>>>>
>>>>>>>>
>>>>>>>> Regards,
>>>>>>>> Nate Temple
>>>>>>>>
>>>>>>>> On Wed, Jul 17, 2019 at 7:34 AM Sumit Kumar <cogwsn@gmail.com>
>>>>>>>> wrote:
>>>>>>>>
>>>>>>>>> Hi Nate,
>>>>>>>>> Yes I addressed the first 2 points you mentioned.
>>>>>>>>>
>>>>>>>>> john@john-Precision-M4600:~/pybombs/src/gnuradio/gr-digital/examp=
les/narrowband$
>>>>>>>>> sudo ./benchmark_tx.py -f 2.45G -S 10
>>>>>>>>> linux; GNU C++ version 5.3.1 20151219; Boost_105800;
>>>>>>>>> UHD_003.009.002-0-unknown
>>>>>>>>>
>>>>>>>>> Using Volk machine: avx_64_mmx_orc
>>>>>>>>> -- Opening a USRP2/N-Series device...
>>>>>>>>> -- Current recv frame size: 1472 bytes
>>>>>>>>> -- Current send frame size: 1472 bytes
>>>>>>>>>
>>>>>>>>> No gain specified.
>>>>>>>>> Setting gain to 15.750000 (from [0.000000, 31.500000])
>>>>>>>>>
>>>>>>>>> .................................................................=
.............................SS.SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.SSSS..S......=
SS.S......SS.....S....S...S.S.......S....S........^C
>>>>>>>>>
>>>>>>>>> I am using ./benchmark_tx.py located
>>>>>>>>> in gnuradio/gr-digital/examples/narrowband
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> On Wed, Jul 17, 2019 at 4:25 PM Nate Temple <nate.temple@ettus.co=
m>
>>>>>>>>> wrote:
>>>>>>>>>
>>>>>>>>>> Hi Sumit,
>>>>>>>>>>
>>>>>>>>>> A couple things to address:
>>>>>>>>>>
>>>>>>>>>> 1) Enable Thread priority scheduling on your host
>>>>>>>>>>
>>>>>>>>>> Note it is throwing a warning in the output: "[WARNING] [UHD]
>>>>>>>>>> Unable to set the thread priority. Performance may be negatively=
 affected."
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Sourc=
e_Toolchain_(UHD_and_GNU_Radio)_on_Linux#Thread_priority_scheduling
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> 2) Adjust your network buffers
>>>>>>>>>>
>>>>>>>>>> "
>>>>>>>>>> [WARNING] [UDP] The send buffer could not be resized sufficientl=
y.
>>>>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>>>>> See the transport application notes on buffer resizing.
>>>>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>>>>> [WARNING] [UDP] The send buffer could not be resized sufficientl=
y.
>>>>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>>>>> See the transport application notes on buffer resizing.
>>>>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>>>>> "
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Trick=
s#N2xx
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> What is the command you're using to transmit(which utility and
>>>>>>>>>> args?)
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> Regards,
>>>>>>>>>> Nate Temple
>>>>>>>>>>
>>>>>>>>>> On Wed, Jul 17, 2019 at 7:06 AM Sumit Kumar via USRP-users <
>>>>>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>>>>>
>>>>>>>>>>> Following is what I am getting after the command you asked to
>>>>>>>>>>> run. The 192.168.10.5 gives SSSSSSS.
>>>>>>>>>>>
>>>>>>>>>>> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$
>>>>>>>>>>> ./usrp_burn_mb_eeprom --read-all --args "addr=3D192.168.10.5"
>>>>>>>>>>> Creating USRP device from address: addr=3D192.168.10.5
>>>>>>>>>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
>>>>>>>>>>> Boost_105800; UHD_3.15.0.git-1-gf83faf28
>>>>>>>>>>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>>>>>>>>>>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>>>>>>>>>>> [INFO] [USRP2] Current send frame size: 1472 bytes
>>>>>>>>>>> [WARNING] [UDP] The send buffer could not be resized
>>>>>>>>>>> sufficiently.
>>>>>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>>>>>> See the transport application notes on buffer resizing.
>>>>>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>>>>>> [WARNING] [UDP] The send buffer could not be resized
>>>>>>>>>>> sufficiently.
>>>>>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>>>>>> See the transport application notes on buffer resizing.
>>>>>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>>>>>> [WARNING] [UDP] The send buffer could not be resized
>>>>>>>>>>> sufficiently.
>>>>>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>>>>>> See the transport application notes on buffer resizing.
>>>>>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>>>>>> [WARNING] [UHD] Unable to set the thread priority. Performance
>>>>>>>>>>> may be negatively affected.
>>>>>>>>>>> Please see the general application notes in the manual for
>>>>>>>>>>> instructions.
>>>>>>>>>>> EnvironmentError: OSError: error in pthread_setschedparam
>>>>>>>>>>>
>>>>>>>>>>> Fetching current settings from EEPROM...
>>>>>>>>>>>     EEPROM ["hardware"] is "2576"
>>>>>>>>>>>     EEPROM ["revision"] is ""
>>>>>>>>>>>     EEPROM ["product"] is ""
>>>>>>>>>>>     EEPROM ["mac-addr"] is "a0:36:fa:26:34:44"
>>>>>>>>>>>     EEPROM ["ip-addr"] is "192.168.10.5"
>>>>>>>>>>>     EEPROM ["subnet"] is "255.255.255.255"
>>>>>>>>>>>     EEPROM ["gateway"] is "255.255.255.255"
>>>>>>>>>>>     EEPROM ["gpsdo"] is "none"
>>>>>>>>>>>     EEPROM ["serial"] is "E4R14V4UN"
>>>>>>>>>>>     EEPROM ["name"] is ""
>>>>>>>>>>>
>>>>>>>>>>> Power-cycle the USRP device for the changes to take effect.
>>>>>>>>>>>
>>>>>>>>>>> Done
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$
>>>>>>>>>>> ./usrp_burn_mb_eeprom --read-all --args "addr=3D192.168.10.3"
>>>>>>>>>>> Creating USRP device from address: addr=3D192.168.10.3
>>>>>>>>>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
>>>>>>>>>>> Boost_105800; UHD_3.15.0.git-1-gf83faf28
>>>>>>>>>>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>>>>>>>>>>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>>>>>>>>>>> [INFO] [USRP2] Current send frame size: 1472 bytes
>>>>>>>>>>> [WARNING] [UDP] The send buffer could not be resized
>>>>>>>>>>> sufficiently.
>>>>>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>>>>>> See the transport application notes on buffer resizing.
>>>>>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>>>>>> [WARNING] [UDP] The send buffer could not be resized
>>>>>>>>>>> sufficiently.
>>>>>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>>>>>> See the transport application notes on buffer resizing.
>>>>>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>>>>>> [WARNING] [UDP] The send buffer could not be resized
>>>>>>>>>>> sufficiently.
>>>>>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>>>>>> See the transport application notes on buffer resizing.
>>>>>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>>>>>> [WARNING] [UHD] Unable to set the thread priority. Performance
>>>>>>>>>>> may be negatively affected.
>>>>>>>>>>> Please see the general application notes in the manual for
>>>>>>>>>>> instructions.
>>>>>>>>>>> EnvironmentError: OSError: error in pthread_setschedparam
>>>>>>>>>>>
>>>>>>>>>>> Fetching current settings from EEPROM...
>>>>>>>>>>>     EEPROM ["hardware"] is "2576"
>>>>>>>>>>>     EEPROM ["revision"] is ""
>>>>>>>>>>>     EEPROM ["product"] is ""
>>>>>>>>>>>     EEPROM ["mac-addr"] is "a0:36:fa:26:34:42"
>>>>>>>>>>>     EEPROM ["ip-addr"] is "192.168.10.3"
>>>>>>>>>>>     EEPROM ["subnet"] is "255.255.255.255"
>>>>>>>>>>>     EEPROM ["gateway"] is "255.255.255.255"
>>>>>>>>>>>     EEPROM ["gpsdo"] is "none"
>>>>>>>>>>>     EEPROM ["serial"] is "E4R14V2UN"
>>>>>>>>>>>     EEPROM ["name"] is ""
>>>>>>>>>>>
>>>>>>>>>>> Power-cycle the USRP device for the changes to take effect.
>>>>>>>>>>>
>>>>>>>>>>> Done
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> On Wed, Jul 17, 2019 at 3:19 PM Jason Matusiak <
>>>>>>>>>>> jason@gardettoengineering.com> wrote:
>>>>>>>>>>>
>>>>>>>>>>>> You are right, the table of revisions was for the X-series
>>>>>>>>>>>>
>>>>>>>>>>>> try running the command from your prefix:
>>>>>>>>>>>> src/uhd/host/build/utils/usrp_burn_mb_eeprom --args=3D"type=3D=
n200" --read-all
>>>>>>>>>>>>
>>>>>>>>>>>> don't quote me on the type portion, I don't have a board in
>>>>>>>>>>>> front of me to see if it is n200 or something else.  I //think=
// that will
>>>>>>>>>>>> report the major and minor revision values (I am grasping at s=
traws here,
>>>>>>>>>>>> just trying to figure out what the differences might be).
>>>>>>>>>>>>
>>>>>>>>>>>> You are connecting the ethernet connections to the two devices
>>>>>>>>>>>> through the exact same port on your PC?
>>>>>>>>>>>>
>>>>>>>>>>>> ------------------------------
>>>>>>>>>>>> *From:* Sumit Kumar <cogwsn@gmail.com>
>>>>>>>>>>>> *Sent:* Wednesday, July 17, 2019 8:24 AM
>>>>>>>>>>>> *To:* Jason Matusiak <jason@gardettoengineering.com>
>>>>>>>>>>>> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>>>>>>>>>>> *Subject:* Re: [USRP-users] Sequence Errors N200
>>>>>>>>>>>>
>>>>>>>>>>>> The sticker  for sbx shows F33612 and F33814.
>>>>>>>>>>>> How will this help ?
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> On Wed, Jul 17, 2019 at 1:50 PM Jason Matusiak <
>>>>>>>>>>>> jason@gardettoengineering.com> wrote:
>>>>>>>>>>>>
>>>>>>>>>>>> Sumit,
>>>>>>>>>>>>
>>>>>>>>>>>> OK, the last idea I have:
>>>>>>>>>>>>
>>>>>>>>>>>> There is a sticker on the back of the N-series devices it
>>>>>>>>>>>> *usually* says the version there, but not always.  This has a
>>>>>>>>>>>> little info:
>>>>>>>>>>>> https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EE=
PROM_on_USRP_Devices#N200.2F210_EEPROM
>>>>>>>>>>>>
>>>>>>>>>>>> Do they match?
>>>>>>>>>>>>
>>>>>>>>>>>> ------------------------------
>>>>>>>>>>>> *From:* Sumit Kumar <cogwsn@gmail.com>
>>>>>>>>>>>> *Sent:* Wednesday, July 17, 2019 7:45 AM
>>>>>>>>>>>> *To:* Jason Matusiak <jason@gardettoengineering.com>
>>>>>>>>>>>> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>>>>>>>>>>> *Subject:* Re: [USRP-users] Sequence Errors N200
>>>>>>>>>>>>
>>>>>>>>>>>> Hi Jason,
>>>>>>>>>>>>
>>>>>>>>>>>> Yes they are consistent, I mean the output of uhd_usrp_probe
>>>>>>>>>>>> for both N200 is exactly the same (except the ip, serial and m=
ac addr).
>>>>>>>>>>>> I do not know where the problem is! Hardware or software
>>>>>>>>>>>>
>>>>>>>>>>>> Regards
>>>>>>>>>>>> Sumit
>>>>>>>>>>>>
>>>>>>>>>>>> On Wed, Jul 17, 2019 at 1:19 PM Jason Matusiak <
>>>>>>>>>>>> jason@gardettoengineering.com> wrote:
>>>>>>>>>>>>
>>>>>>>>>>>> I am not really an N-series guy, so this probably won't be
>>>>>>>>>>>> helpful.  Have you tried doing a uhd_usrp_probe on both device=
s and seen
>>>>>>>>>>>> that the responses are consistent?
>>>>>>>>>>>>
>>>>>>>>>>>> ------------------------------
>>>>>>>>>>>> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on
>>>>>>>>>>>> behalf of Sumit Kumar via USRP-users <
>>>>>>>>>>>> usrp-users@lists.ettus.com>
>>>>>>>>>>>> *Sent:* Wednesday, July 17, 2019 7:15 AM
>>>>>>>>>>>> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>>>>>>>>>>> *Subject:* [USRP-users] Sequence Errors N200
>>>>>>>>>>>>
>>>>>>>>>>>> Hi,
>>>>>>>>>>>> I am trying transmit using Ettus N200 (call it A) but getting
>>>>>>>>>>>> this error message on the console
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
USSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.....................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
.............................................
>>>>>>>>>>>>
>>>>>>>>>>>> I looked for it on google and found these links
>>>>>>>>>>>>
>>>>>>>>>>>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/20=
14-May/037495.html
>>>>>>>>>>>>
>>>>>>>>>>>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/20=
12-July/032838.html
>>>>>>>>>>>>
>>>>>>>>>>>> Both the links  suggested problem related to the gigabit port.
>>>>>>>>>>>> Then I connected another USRP N200 (call it B) to the same lap=
top and tried
>>>>>>>>>>>> transmitting using that as there were no such sequence error m=
essages.
>>>>>>>>>>>>
>>>>>>>>>>>> This makes me believe there is some problem with the first
>>>>>>>>>>>> USRP, i.e., A.
>>>>>>>>>>>>
>>>>>>>>>>>> Further I tried with different versions of UHD 3.11, UHD 3.15.=
.
>>>>>>>>>>>> but its the same.
>>>>>>>>>>>>
>>>>>>>>>>>> Receive is good only transmit is throwing error.
>>>>>>>>>>>>
>>>>>>>>>>>> Not only with UHD, even in labview, when I transmit, I see
>>>>>>>>>>>> nothing coming out from the N200 (A).
>>>>>>>>>>>>
>>>>>>>>>>>> I am using SBXv2 daughter board.
>>>>>>>>>>>>
>>>>>>>>>>>> Any clue!
>>>>>>>>>>>>
>>>>>>>>>>>> Regards
>>>>>>>>>>>> --
>>>>>>>>>>>> --
>>>>>>>>>>>> Sumit kumar
>>>>>>>>>>>> Postdoc
>>>>>>>>>>>> SnT, Luxembourg
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> --
>>>>>>>>>>>> --
>>>>>>>>>>>> Sumit kumar
>>>>>>>>>>>> Postdoc
>>>>>>>>>>>> SnT, Luxembourg
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> --
>>>>>>>>>>>> --
>>>>>>>>>>>> Sumit kumar
>>>>>>>>>>>> Postdoc
>>>>>>>>>>>> SnT, Luxembourg
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> --
>>>>>>>>>>> --
>>>>>>>>>>> Sumit kumar
>>>>>>>>>>> Postdoc
>>>>>>>>>>> SnT, Luxembourg
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> _______________________________________________
>>>>>>>>>>> USRP-users mailing list
>>>>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>>>>>
>>>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com
>>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>
>>>>>>>>> --
>>>>>>>>> --
>>>>>>>>> Sumit kumar
>>>>>>>>> Postdoc
>>>>>>>>> SnT, Luxembourg
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>
>>>>>>> --
>>>>>>> --
>>>>>>> Sumit kumar
>>>>>>> Postdoc
>>>>>>> SnT, Luxembourg
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>
>>>>> --
>>>>> --
>>>>> Sumit kumar
>>>>> Postdoc
>>>>> SnT, Luxembourg
>>>>>
>>>>>
>>>>>
>>>
>>> --
>>> --
>>> Sumit kumar
>>> Postdoc
>>> SnT, Luxembourg
>>>
>>>
>>>
>
> --
> --
> Sumit kumar
> Postdoc
> SnT, Luxembourg
>
>
>

--000000000000cd192b058de2f6d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Sumit,</div><div class=3D"gmail_default" style=3D"fo=
nt-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_default=
" style=3D"font-family:arial,helvetica,sans-serif">What ethernet controller=
 do you have in your laptop?</div><div class=3D"gmail_default" style=3D"fon=
t-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_default"=
 style=3D"font-family:arial,helvetica,sans-serif">lspci | grep Ethernet</di=
v><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-se=
rif"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,helv=
etica,sans-serif">Regards,</div><div class=3D"gmail_default" style=3D"font-=
family:arial,helvetica,sans-serif">Nate Temple<br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 201=
9 at 9:16 AM Sumit Kumar &lt;<a href=3D"mailto:cogwsn@gmail.com">cogwsn@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr">Hi=C2=A0Nate,<div><br></div><div>john@john-Precision=
-M4600:~/pybombs/src/uhd/host/build/examples$ sudo ./benchmark_rate --rx_ra=
te 10e6 --tx_rate 10e6 --duration 600<span class=3D"gmail-m_-78397456658848=
7241gmail-im" style=3D"color:rgb(80,0,80)"><br><br>[INFO] [UHD] linux; GNU =
C++ version 5.4.0 20160609; Boost_105800; UHD_3.15.0.git-1-gf83faf28<br>[00=
:00:00.000024] Creating the usrp device with: ...<br>[INFO] [USRP2] Opening=
 a USRP2/N-Series device...<br>[INFO] [USRP2] Current recv frame size: 1472=
 bytes<br>[INFO] [USRP2] Current send frame size: 1472 bytes<br>Using Devic=
e: Single USRP:<br>=C2=A0 Device: USRP2 / N-Series Device<br>=C2=A0 Mboard =
0: N200r4<br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=
=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: SBXv3 RX<br>=C2=A0 TX Channel:=
 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=
=A0 TX Subdev: SBXv3 TX<br><br></span>[00:00:01.788223] Setting device time=
stamp to 0...<br>[00:00:01.788784] Testing receive rate 10.000000 Msps on 1=
 channels<br>[00:00:01.799861] Testing transmit rate 10.000000 Msps on 1 ch=
annels<br>SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS[00:00:01.905237] Tx timeouts: 1<br>[00:=
10:01.932746] Benchmark complete.<br><br><br>Benchmark rate summary:<br>=C2=
=A0 Num received samples: =C2=A0 =C2=A0 6000102237<span class=3D"gmail-m_-7=
83974566588487241gmail-im" style=3D"color:rgb(80,0,80)"><br>=C2=A0 Num drop=
ped samples: =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num overruns detected: =C2=A0 =
=C2=A00<br></span>=C2=A0 Num transmitted samples: =C2=A0258456<br>=C2=A0 Nu=
m sequence errors (Tx): 624<span class=3D"gmail-m_-783974566588487241gmail-=
im" style=3D"color:rgb(80,0,80)"><br>=C2=A0 Num sequence errors (Rx): 0<br>=
</span>=C2=A0 Num underruns detected: =C2=A0 1<br>=C2=A0 Num late commands:=
 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =
=C2=A0 =C2=A05993<br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 5:36 PM Nate Temple &lt;=
<a href=3D"mailto:nate.temple@ettus.com" target=3D"_blank">nate.temple@ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:ari=
al,helvetica,sans-serif">Hi Sumit,</div><div class=3D"gmail_default" style=
=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_d=
efault" style=3D"font-family:arial,helvetica,sans-serif">Actually, I had a =
typo in the command, that previous benchmark_rate command only tested RX, c=
an you try passing the --tx_rate param and see if it will produce sequence =
errors using benchmark_rate</div><div class=3D"gmail_default" style=3D"font=
-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" =
style=3D"font-family:arial,helvetica,sans-serif">./benchmark_rate --tx_rate=
 10e6 --duration 600<span class=3D"gmail-m_-783974566588487241gmail-m_-8787=
730956157389152m_-8846324310455197473gmail-im"><span class=3D"gmail-m_-7839=
74566588487241gmail-m_-8787730956157389152m_-8846324310455197473gmail-m_807=
7291001688814057gmail-im" style=3D"color:rgb(80,0,80)"><br></span></span></=
div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-=
serif"><span class=3D"gmail-m_-783974566588487241gmail-m_-87877309561573891=
52m_-8846324310455197473gmail-im"><span class=3D"gmail-m_-78397456658848724=
1gmail-m_-8787730956157389152m_-8846324310455197473gmail-m_8077291001688814=
057gmail-im" style=3D"color:rgb(80,0,80)"><br></span></span></div><div clas=
s=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><span =
class=3D"gmail-m_-783974566588487241gmail-m_-8787730956157389152m_-88463243=
10455197473gmail-im"><span class=3D"gmail-m_-783974566588487241gmail-m_-878=
7730956157389152m_-8846324310455197473gmail-m_8077291001688814057gmail-im" =
style=3D"color:rgb(80,0,80)">Regards,</span></span></div><div class=3D"gmai=
l_default" style=3D"font-family:arial,helvetica,sans-serif"><span class=3D"=
gmail-m_-783974566588487241gmail-m_-8787730956157389152m_-88463243104551974=
73gmail-im"><span class=3D"gmail-m_-783974566588487241gmail-m_-878773095615=
7389152m_-8846324310455197473gmail-m_8077291001688814057gmail-im" style=3D"=
color:rgb(80,0,80)">Nate Temple<br></span></span></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019=
 at 8:27 AM Sumit Kumar &lt;<a href=3D"mailto:cogwsn@gmail.com" target=3D"_=
blank">cogwsn@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">Ok I will do this.. but why the tra=
nsmission with other USRP is working fine ?=C2=A0</div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 5:=
22 PM Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" target=3D"_b=
lank">nate.temple@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" st=
yle=3D"font-family:arial,helvetica,sans-serif">Hi Sumit,<br><br>So it looks=
 like you have multiple version of UHD installed:<br><br>john@john-Precisio=
n-M4600:~/pybombs/src/gnuradio/gr-digital/examples/narrowband$ sudo ./bench=
mark_tx.py -f 2.45G -S 10<br>linux; GNU C++ version 5.3.1 20151219; Boost_1=
05800; UHD_003.009.002-0-unknown<br><br><br>john@john-Precision-M4600:~/pyb=
ombs/src/uhd/host/build/examples$ sudo ./benchmark_rate --rx_rate 10e6 --du=
ration 600<br>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105=
800; UHD_3.15.0.git-1-gf83faf28<br><br><br>I would recommend to stick to a =
single UHD version and use the latest stable tagged released (currently 3.1=
4.1.0) you will need to modify the pybombs recipe to use the correct git ta=
g (v3.14.1.0). The &#39;master&#39; branch can be unstable at times.<br><br=
>Also, if you have a FPGA image of say 3.15.x.x flashed on the N210 and the=
n revert back to using 3.9.2, and UHD does not catch the mismatch, it will =
likely cause flow control errors and unstable performance.<br><br>The gr-di=
gital/examples/narrowband/benchmark_tx.py example is also buggy, and is bei=
ng removed from GR 3.8. Using the UHD benchmark_rate utility will test the =
hardware with a limited scope.<br><br>Regards,<br>Nate Temple<br><br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Wed, Jul 17, 2019 at 8:10 AM Sumit Kumar &lt;<a href=3D"mailto:cogwsn@gm=
ail.com" target=3D"_blank">cogwsn@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Sorry, here it =
is.<div><br></div><div>Benchmark rate summary:<br>=C2=A0 Num received sampl=
es: =C2=A0 =C2=A0 5999986436<br>=C2=A0 Num dropped samples: =C2=A0 =C2=A0 =
=C2=A00<br>=C2=A0 Num overruns detected: =C2=A0 =C2=A00<br>=C2=A0 Num trans=
mitted samples: =C2=A00<br>=C2=A0 Num sequence errors (Tx): 0<br>=C2=A0 Num=
 sequence errors (Rx): 0<br>=C2=A0 Num underruns detected: =C2=A0 0<br>=C2=
=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num timeouts =
(Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num timeouts (Rx): =C2=A0 =C2=
=A0 =C2=A0 =C2=A00<br></div><div><br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 5:08 PM =
Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" target=3D"_blank">=
nate.temple@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D=
"font-family:arial,helvetica,sans-serif">Hi Sumit,<br><br>It will take 10 m=
inutes for that run to complete. Does it produce a report at the end of the=
 run?<br><br>Regards,<br>Nate Temple<br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 8:06 =
AM Sumit Kumar &lt;<a href=3D"mailto:cogwsn@gmail.com" target=3D"_blank">co=
gwsn@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr">Hi=C2=A0Nate,<div>No there are not. At the e=
nd of the last line, cursor keeps blinking, no sequence errors.=C2=A0<br><d=
iv><br></div><div>john@john-Precision-M4600:~/pybombs/src/uhd/host/build/ex=
amples$ sudo ./benchmark_rate --rx_rate 10e6 --duration 600<span class=3D"g=
mail-m_-783974566588487241gmail-m_-8787730956157389152gmail-m_-884632431045=
5197473gmail-m_-2263946608738406543gmail-m_1833416351567459632gmail-m_84295=
22937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-=
im" style=3D"color:rgb(80,0,80)"><br><br>[INFO] [UHD] linux; GNU C++ versio=
n 5.4.0 20160609; Boost_105800; UHD_3.15.0.git-1-gf83faf28<br></span>[00:00=
:00.000024] Creating the usrp device with: ...<span class=3D"gmail-m_-78397=
4566588487241gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-=
m_-2263946608738406543gmail-m_1833416351567459632gmail-m_842952293771000581=
3gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-im" style=3D"=
color:rgb(80,0,80)"><br>[INFO] [USRP2] Opening a USRP2/N-Series device...<b=
r>[INFO] [USRP2] Current recv frame size: 1472 bytes<br>[INFO] [USRP2] Curr=
ent send frame size: 1472 bytes<br></span>Using Device: Single USRP:<br>=C2=
=A0 Device: USRP2 / N-Series Device<br>=C2=A0 Mboard 0: N200r4<br>=C2=A0 RX=
 Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=
=A0 =C2=A0 RX Subdev: SBXv3 RX<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX =
DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: SBXv3 TX<b=
r><br>[00:00:01.796895] Setting device timestamp to 0...<br>[00:00:01.79743=
0] Testing receive rate 10.000000 Msps on 1 channels<br></div></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed,=
 Jul 17, 2019 at 4:39 PM Nate Temple &lt;<a href=3D"mailto:nate.temple@ettu=
s.com" target=3D"_blank">nate.temple@ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">Hi Sumi=
t,<br><br>If you run benchmark_rate for an extend period of time, do you se=
e any sequence errors?<br><br>/usr/local/lib/uhd/examples/benchmark_rate --=
rx_rate 10e6 --duration 600<br><br><br>Regards,<br>Nate Temple</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed,=
 Jul 17, 2019 at 7:34 AM Sumit Kumar &lt;<a href=3D"mailto:cogwsn@gmail.com=
" target=3D"_blank">cogwsn@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi=C2=A0Nate,=C2=A0<di=
v>Yes I addressed the first 2 points you mentioned.=C2=A0</div><div><br></d=
iv><div>john@john-Precision-M4600:~/pybombs/src/gnuradio/gr-digital/example=
s/narrowband$ sudo ./benchmark_tx.py -f 2.45G -S 10<br>linux; GNU C++ versi=
on 5.3.1 20151219; Boost_105800; UHD_003.009.002-0-unknown<br><br>Using Vol=
k machine: avx_64_mmx_orc<br>-- Opening a USRP2/N-Series device...<br>-- Cu=
rrent recv frame size: 1472 bytes<br>-- Current send frame size: 1472 bytes=
<br><br>No gain specified.<br>Setting gain to 15.750000 (from [0.000000, 31=
.500000])<br>..............................................................=
................................SS.SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.SSSS..S...=
...SS.S......SS.....S....S...S.S.......S....S........^C<br></div><div><br><=
/div><div>I am using ./benchmark_tx.py located in=C2=A0gnuradio/gr-digital/=
examples/narrowband</div><div><br></div><div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019=
 at 4:25 PM Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" target=
=3D"_blank">nate.temple@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_defau=
lt" style=3D"font-family:arial,helvetica,sans-serif">Hi Sumit,<br><br>A cou=
ple things to address:<br><br>1) Enable Thread priority scheduling on your =
host<br><br>Note it is throwing a warning in the output: &quot;[WARNING] [U=
HD] Unable to set the thread priority. Performance may be negatively affect=
ed.&quot;<br><br><a href=3D"https://kb.ettus.com/Building_and_Installing_th=
e_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux#Thread_priority_s=
cheduling" target=3D"_blank">https://kb.ettus.com/Building_and_Installing_t=
he_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux#Thread_priority_=
scheduling</a><br><br><br>2) Adjust your network buffers<br><br>&quot;<br>[=
WARNING] [UDP] The send buffer could not be resized sufficiently.<br>Target=
 sock buff size: 2500000 bytes.<br>Actual sock buff size: 1048576 bytes.<br=
>See the transport application notes on buffer resizing.<br>Please run: sud=
o sysctl -w net.core.wmem_max=3D2500000<br>[WARNING] [UDP] The send buffer =
could not be resized sufficiently.<br>Target sock buff size: 2500000 bytes.=
<br>Actual sock buff size: 1048576 bytes.<br>See the transport application =
notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=
=3D2500000<br>&quot;<br><br><a href=3D"https://kb.ettus.com/USRP_Host_Perfo=
rmance_Tuning_Tips_and_Tricks#N2xx" target=3D"_blank">https://kb.ettus.com/=
USRP_Host_Performance_Tuning_Tips_and_Tricks#N2xx</a><br><br><br>What is th=
e command you&#39;re using to transmit(which utility and args?)<br><br><br>=
Regards,<br>Nate Temple<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 7:06 AM Sumit Kuma=
r via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Following is what I =
am getting after the command you asked to run. The 192.168.10.5 gives SSSSS=
SS.=C2=A0<div><br></div><div>john@john-Precision-M4600:~/pybombs/src/uhd/ho=
st/build/utils$ ./usrp_burn_mb_eeprom --read-all --args &quot;addr=3D192.16=
8.10.5&quot;<br>Creating USRP device from address: addr=3D192.168.10.5<br>[=
INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.15.0=
.git-1-gf83faf28<br>[INFO] [USRP2] Opening a USRP2/N-Series device...<br>[I=
NFO] [USRP2] Current recv frame size: 1472 bytes<br>[INFO] [USRP2] Current =
send frame size: 1472 bytes<br>[WARNING] [UDP] The send buffer could not be=
 resized sufficiently.<br>Target sock buff size: 2500000 bytes.<br>Actual s=
ock buff size: 1048576 bytes.<br>See the transport application notes on buf=
fer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2500000<br>=
[WARNING] [UDP] The send buffer could not be resized sufficiently.<br>Targe=
t sock buff size: 2500000 bytes.<br>Actual sock buff size: 1048576 bytes.<b=
r>See the transport application notes on buffer resizing.<br>Please run: su=
do sysctl -w net.core.wmem_max=3D2500000<br>[WARNING] [UDP] The send buffer=
 could not be resized sufficiently.<br>Target sock buff size: 2500000 bytes=
.<br>Actual sock buff size: 1048576 bytes.<br>See the transport application=
 notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=
=3D2500000<br>[WARNING] [UHD] Unable to set the thread priority. Performanc=
e may be negatively affected.<br>Please see the general application notes i=
n the manual for instructions.<br>EnvironmentError: OSError: error in pthre=
ad_setschedparam<br><br>Fetching current settings from EEPROM...<br>=C2=A0 =
=C2=A0 EEPROM [&quot;hardware&quot;] is &quot;2576&quot;<br>=C2=A0 =C2=A0 E=
EPROM [&quot;revision&quot;] is &quot;&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot=
;product&quot;] is &quot;&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;mac-addr&quo=
t;] is &quot;a0:36:fa:26:34:44&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;ip-addr=
&quot;] is &quot;192.168.10.5&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;subnet&q=
uot;] is &quot;255.255.255.255&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;gateway=
&quot;] is &quot;255.255.255.255&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;gpsdo=
&quot;] is &quot;none&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;serial&quot;] is=
 &quot;E4R14V4UN&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;name&quot;] is &quot;=
&quot;<br><br>Power-cycle the USRP device for the changes to take effect.<b=
r><br><div>Done</div><div><br></div><div><br></div><div>john@john-Precision=
-M4600:~/pybombs/src/uhd/host/build/utils$ ./usrp_burn_mb_eeprom --read-all=
 --args &quot;addr=3D192.168.10.3&quot;<br>Creating USRP device from addres=
s: addr=3D192.168.10.3<br>[INFO] [UHD] linux; GNU C++ version 5.4.0 2016060=
9; Boost_105800; UHD_3.15.0.git-1-gf83faf28<br>[INFO] [USRP2] Opening a USR=
P2/N-Series device...<br>[INFO] [USRP2] Current recv frame size: 1472 bytes=
<br>[INFO] [USRP2] Current send frame size: 1472 bytes<br>[WARNING] [UDP] T=
he send buffer could not be resized sufficiently.<br>Target sock buff size:=
 2500000 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the transpo=
rt application notes on buffer resizing.<br>Please run: sudo sysctl -w net.=
core.wmem_max=3D2500000<br>[WARNING] [UDP] The send buffer could not be res=
ized sufficiently.<br>Target sock buff size: 2500000 bytes.<br>Actual sock =
buff size: 1048576 bytes.<br>See the transport application notes on buffer =
resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2500000<br>[WAR=
NING] [UDP] The send buffer could not be resized sufficiently.<br>Target so=
ck buff size: 2500000 bytes.<br>Actual sock buff size: 1048576 bytes.<br>Se=
e the transport application notes on buffer resizing.<br>Please run: sudo s=
ysctl -w net.core.wmem_max=3D2500000<br>[WARNING] [UHD] Unable to set the t=
hread priority. Performance may be negatively affected.<br>Please see the g=
eneral application notes in the manual for instructions.<br>EnvironmentErro=
r: OSError: error in pthread_setschedparam<br><br>Fetching current settings=
 from EEPROM...<br>=C2=A0 =C2=A0 EEPROM [&quot;hardware&quot;] is &quot;257=
6&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;revision&quot;] is &quot;&quot;<br>=
=C2=A0 =C2=A0 EEPROM [&quot;product&quot;] is &quot;&quot;<br>=C2=A0 =C2=A0=
 EEPROM [&quot;mac-addr&quot;] is &quot;a0:36:fa:26:34:42&quot;<br>=C2=A0 =
=C2=A0 EEPROM [&quot;ip-addr&quot;] is &quot;192.168.10.3&quot;<br>=C2=A0 =
=C2=A0 EEPROM [&quot;subnet&quot;] is &quot;255.255.255.255&quot;<br>=C2=A0=
 =C2=A0 EEPROM [&quot;gateway&quot;] is &quot;255.255.255.255&quot;<br>=C2=
=A0 =C2=A0 EEPROM [&quot;gpsdo&quot;] is &quot;none&quot;<br>=C2=A0 =C2=A0 =
EEPROM [&quot;serial&quot;] is &quot;E4R14V2UN&quot;<br>=C2=A0 =C2=A0 EEPRO=
M [&quot;name&quot;] is &quot;&quot;<br><br>Power-cycle the USRP device for=
 the changes to take effect.<br><br>Done<div class=3D"gmail-m_-783974566588=
487241gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_-2263=
946608738406543gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-=
m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-27232755232250859=
77gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-86303312=
25465229725gmail-m_-5090455826936873702gmail-yj6qo"></div><div class=3D"gma=
il-m_-783974566588487241gmail-m_-8787730956157389152gmail-m_-88463243104551=
97473gmail-m_-2263946608738406543gmail-m_1833416351567459632gmail-m_8429522=
937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_=
-2723275523225085977gmail-m_-6449813456354474750gmail-m_-540633466610405845=
7gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-adL"><br></d=
iv></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Jul 17, 2019 at 3:19 PM Jason Matusiak &lt;<a href=
=3D"mailto:jason@gardettoengineering.com" target=3D"_blank">jason@gardettoe=
ngineering.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
You are right, the table of revisions was for the X-series</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
try running the command from your prefix: src/uhd/host/build/utils/usrp_bur=
n_mb_eeprom=C2=A0--args=3D&quot;type=3Dn200&quot; --read-all</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
don&#39;t quote me on the type portion, I don&#39;t have a board in front o=
f me to see if it is n200 or something else.=C2=A0 I //think// that will re=
port the major and minor revision values (I am grasping at straws here, jus=
t trying to figure out what the differences might
 be).</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
You are connecting the ethernet connections to the two devices through the =
exact same port on your PC?</div>
<div id=3D"gmail-m_-783974566588487241gmail-m_-8787730956157389152gmail-m_-=
8846324310455197473gmail-m_-2263946608738406543gmail-m_1833416351567459632g=
mail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688=
814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406=
334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmai=
l-m_3403553355508831478Signature">
<div>
<div id=3D"gmail-m_-783974566588487241gmail-m_-8787730956157389152gmail-m_-=
8846324310455197473gmail-m_-2263946608738406543gmail-m_1833416351567459632g=
mail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688=
814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406=
334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmai=
l-m_3403553355508831478appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-783974566588487241gmail-m_-8787730956157389152gmail-m_-=
8846324310455197473gmail-m_-2263946608738406543gmail-m_1833416351567459632g=
mail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688=
814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406=
334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmai=
l-m_3403553355508831478divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:=
11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Sumit Kum=
ar &lt;<a href=3D"mailto:cogwsn@gmail.com" target=3D"_blank">cogwsn@gmail.c=
om</a>&gt;<br>
<b>Sent:</b> Wednesday, July 17, 2019 8:24 AM<br>
<b>To:</b> Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.c=
om" target=3D"_blank">jason@gardettoengineering.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Sequence Errors N200</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">The sticker=C2=A0 for sbx shows F33612 and F33814.=C2=A0
<div>How will this help ?=C2=A0</div>
<div><br>
</div>
</div>
<br>
<div class=3D"gmail-m_-783974566588487241gmail-m_-8787730956157389152gmail-=
m_-8846324310455197473gmail-m_-2263946608738406543gmail-m_18334163515674596=
32gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001=
688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5=
406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702g=
mail-m_3403553355508831478x_gmail_quote">
<div dir=3D"ltr" class=3D"gmail-m_-783974566588487241gmail-m_-8787730956157=
389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543gmail-m_18334=
16351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-=
m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-64498134563544747=
50gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-50904558=
26936873702gmail-m_3403553355508831478x_gmail_attr">On Wed, Jul 17, 2019 at=
 1:50 PM Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com=
" target=3D"_blank">jason@gardettoengineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail-m_-783974566588487241gmail-m_-878773095615738915=
2gmail-m_-8846324310455197473gmail-m_-2263946608738406543gmail-m_1833416351=
567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_807=
7291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gma=
il-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936=
873702gmail-m_3403553355508831478x_gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Sumit,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
OK, the last idea I have:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
There is a sticker on the back of the N-series devices it=C2=A0<em>usually<=
/em>=C2=A0says the version there, but not always.=C2=A0 This has a little i=
nfo:=C2=A0<a href=3D"https://kb.ettus.com/About_the_Motherboard_and_Daughte=
rcard_EEPROM_on_USRP_Devices#N200.2F210_EEPROM" rel=3D"nofollow" style=3D"c=
olor:rgb(59,115,175)" target=3D"_blank">https://kb.ettus.com/About_the_Moth=
erboard_and_Daughtercard_EEPROM_on_USRP_Devices#N200.2F210_EEPROM</a><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Do they match?</div>
<div id=3D"gmail-m_-783974566588487241gmail-m_-8787730956157389152gmail-m_-=
8846324310455197473gmail-m_-2263946608738406543gmail-m_1833416351567459632g=
mail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688=
814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406=
334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmai=
l-m_3403553355508831478x_gmail-m_6506407344245079092Signature">
<div>
<div id=3D"gmail-m_-783974566588487241gmail-m_-8787730956157389152gmail-m_-=
8846324310455197473gmail-m_-2263946608738406543gmail-m_1833416351567459632g=
mail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688=
814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406=
334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmai=
l-m_3403553355508831478x_gmail-m_6506407344245079092appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-783974566588487241gmail-m_-8787730956157389152gmail-m_-=
8846324310455197473gmail-m_-2263946608738406543gmail-m_1833416351567459632g=
mail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688=
814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406=
334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmai=
l-m_3403553355508831478x_gmail-m_6506407344245079092divRplyFwdMsg" dir=3D"l=
tr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#0=
00000"><b>From:</b> Sumit Kumar &lt;<a href=3D"mailto:cogwsn@gmail.com" tar=
get=3D"_blank">cogwsn@gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, July 17, 2019 7:45 AM<br>
<b>To:</b> Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.c=
om" target=3D"_blank">jason@gardettoengineering.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Sequence Errors N200</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hi Jason,
<div><br>
<div>Yes they are consistent, I mean the output of uhd_usrp_probe for both =
N200 is exactly=C2=A0the same (except the ip, serial and mac addr).</div>
<div>I do not know where the problem is! Hardware or software=C2=A0</div>
<div><br>
</div>
<div>Regards</div>
<div>Sumit=C2=A0=C2=A0</div>
</div>
</div>
<br>
<div class=3D"gmail-m_-783974566588487241gmail-m_-8787730956157389152gmail-=
m_-8846324310455197473gmail-m_-2263946608738406543gmail-m_18334163515674596=
32gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001=
688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5=
406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702g=
mail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail_quote">
<div dir=3D"ltr" class=3D"gmail-m_-783974566588487241gmail-m_-8787730956157=
389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543gmail-m_18334=
16351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-=
m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-64498134563544747=
50gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-50904558=
26936873702gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail_=
attr">On Wed, Jul 17, 2019 at 1:19 PM Jason Matusiak &lt;<a href=3D"mailto:=
jason@gardettoengineering.com" target=3D"_blank">jason@gardettoengineering.=
com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail-m_-783974566588487241gmail-m_-878773095615738915=
2gmail-m_-8846324310455197473gmail-m_-2263946608738406543gmail-m_1833416351=
567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_807=
7291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gma=
il-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936=
873702gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I am not really an N-series guy, so this probably won&#39;t be helpful.=C2=
=A0 Have you tried doing a uhd_usrp_probe on both devices and seen that the=
 responses are consistent?</div>
<div id=3D"gmail-m_-783974566588487241gmail-m_-8787730956157389152gmail-m_-=
8846324310455197473gmail-m_-2263946608738406543gmail-m_1833416351567459632g=
mail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688=
814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406=
334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmai=
l-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail-m_9014729813065=
413461Signature">
<div>
<div id=3D"gmail-m_-783974566588487241gmail-m_-8787730956157389152gmail-m_-=
8846324310455197473gmail-m_-2263946608738406543gmail-m_1833416351567459632g=
mail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688=
814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406=
334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmai=
l-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail-m_9014729813065=
413461appendonsend">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-783974566588487241gmail-m_-8787730956157389152gmail-m_-=
8846324310455197473gmail-m_-2263946608738406543gmail-m_1833416351567459632g=
mail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688=
814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406=
334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmai=
l-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail-m_9014729813065=
413461divRplyFwdMsg" dir=3D"ltr">
<font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#00000=
0"><b>From:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.e=
ttus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on b=
ehalf of Sumit Kumar via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, July 17, 2019 7:15 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Sequence Errors N200</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hi,=C2=A0
<div>I am trying transmit using Ettus N200 (call it A) but getting this err=
or message on the console=C2=A0</div>
<div><br>
</div>
<div>SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.............................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
.....................................<br>
</div>
<div><br>
</div>
<div>I looked for it on google and found these links=C2=A0</div>
<div><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2014-May/037495.html" target=3D"_blank">http://lists.ettus.com/pipermail/u=
srp-users_lists.ettus.com/2014-May/037495.html</a><br>
</div>
<div><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2012-July/032838.html" target=3D"_blank">http://lists.ettus.com/pipermail/=
usrp-users_lists.ettus.com/2012-July/032838.html</a><br>
</div>
<div><br>
</div>
<div>Both the links=C2=A0 suggested problem related to the gigabit port. Th=
en I connected another USRP N200 (call it B) to the same laptop and tried t=
ransmitting using that as there were no such sequence error messages.</div>
<div><br>
</div>
<div>This makes me believe there is some problem with the first USRP, i.e.,=
 A.=C2=A0<br>
</div>
<div><br>
</div>
<div>Further I tried with different versions of UHD 3.11, UHD 3.15.. but it=
s the same.=C2=A0</div>
<div><br>
</div>
<div>Receive is good only transmit is throwing error.=C2=A0</div>
<div><br>
</div>
<div>Not only with UHD, even in labview, when I transmit, I see nothing com=
ing out from the N200 (A).=C2=A0</div>
<div><br>
</div>
<div>I am using SBXv2 daughter board.=C2=A0</div>
<div><br>
</div>
<div>Any clue!</div>
<div><br>
</div>
<div>Regards</div>
<div>-- <br>
<div dir=3D"ltr" class=3D"gmail-m_-783974566588487241gmail-m_-8787730956157=
389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543gmail-m_18334=
16351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-=
m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-64498134563544747=
50gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-50904558=
26936873702gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail-=
m_9014729813065413461x_gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-size:12.8px">--=
=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8px">
<div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar<br>
Postdoc</div>
<div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT, Luxembourg</div=
>
<div style=3D"color:rgb(136,136,136);font-size:12.8px"><br>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div dir=3D"ltr" class=3D"gmail-m_-783974566588487241gmail-m_-8787730956157=
389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543gmail-m_18334=
16351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-=
m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-64498134563544747=
50gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-50904558=
26936873702gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail_=
signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-size:12.8px">--=
=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8px">
<div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar<br>
Postdoc</div>
<div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT, Luxembourg</div=
>
<div style=3D"color:rgb(136,136,136);font-size:12.8px"><br>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div dir=3D"ltr" class=3D"gmail-m_-783974566588487241gmail-m_-8787730956157=
389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543gmail-m_18334=
16351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-=
m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-64498134563544747=
50gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-50904558=
26936873702gmail-m_3403553355508831478x_gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-size:12.8px">--=
=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8px">
<div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar<br>
Postdoc</div>
<div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT, Luxembourg</div=
>
<div style=3D"color:rgb(136,136,136);font-size:12.8px"><br>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_-783974566588487241gmail-m_-8787730956157389152gmail-m_-8=
846324310455197473gmail-m_-2263946608738406543gmail-m_1833416351567459632gm=
ail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_80772910016888=
14057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-54063=
34666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail=
_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span style=3D"color:rgb=
(136,136,136);font-size:12.8px">--=C2=A0</span><br style=3D"color:rgb(136,1=
36,136);font-size:12.8px"><div style=3D"color:rgb(136,136,136);font-size:12=
.8px">Sumit kumar<br>Postdoc</div><div style=3D"color:rgb(136,136,136);font=
-size:12.8px">SnT, Luxembourg</div><div style=3D"color:rgb(136,136,136);fon=
t-size:12.8px"><br></div><br></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_-783974566588487241gmail-m_-8787730956157389152gmail-m_-8=
846324310455197473gmail-m_-2263946608738406543gmail-m_1833416351567459632gm=
ail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_80772910016888=
14057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-54063=
34666104058457gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span=
 style=3D"color:rgb(136,136,136);font-size:12.8px">--=C2=A0</span><br style=
=3D"color:rgb(136,136,136);font-size:12.8px"><div style=3D"color:rgb(136,13=
6,136);font-size:12.8px">Sumit kumar<br>Postdoc</div><div style=3D"color:rg=
b(136,136,136);font-size:12.8px">SnT, Luxembourg</div><div style=3D"color:r=
gb(136,136,136);font-size:12.8px"><br></div><br></div></div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_-783974566588487241gmail-m_-8787730956157389152gmail-m_-8=
846324310455197473gmail-m_-2263946608738406543gmail-m_1833416351567459632gm=
ail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_80772910016888=
14057gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span style=3D=
"color:rgb(136,136,136);font-size:12.8px">--=C2=A0</span><br style=3D"color=
:rgb(136,136,136);font-size:12.8px"><div style=3D"color:rgb(136,136,136);fo=
nt-size:12.8px">Sumit kumar<br>Postdoc</div><div style=3D"color:rgb(136,136=
,136);font-size:12.8px">SnT, Luxembourg</div><div style=3D"color:rgb(136,13=
6,136);font-size:12.8px"><br></div><br></div></div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_-783974566588487241gmail-m_-8787730956157389152gmail-m_-8=
846324310455197473gmail-m_-2263946608738406543gmail-m_1833416351567459632gm=
ail-m_8429522937710005813gmail_signature"><div dir=3D"ltr"><div><div dir=3D=
"ltr"><span style=3D"color:rgb(136,136,136);font-size:12.8px">--=C2=A0</spa=
n><br style=3D"color:rgb(136,136,136);font-size:12.8px"><div style=3D"color=
:rgb(136,136,136);font-size:12.8px">Sumit kumar<br>Postdoc</div><div style=
=3D"color:rgb(136,136,136);font-size:12.8px">SnT, Luxembourg</div><div styl=
e=3D"color:rgb(136,136,136);font-size:12.8px"><br></div><br></div></div></d=
iv></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_-783974566588487241gmail-m_-8787730956157389152gmail-m_-8=
846324310455197473gmail-m_-2263946608738406543gmail_signature"><div dir=3D"=
ltr"><div><div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-size:=
12.8px">--=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8px=
"><div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar<br>Pos=
tdoc</div><div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT, Luxem=
bourg</div><div style=3D"color:rgb(136,136,136);font-size:12.8px"><br></div=
><br></div></div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_-783974566588487241gmail_signature"><div dir=3D"ltr"><div=
><div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-size:12.8px">-=
-=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8px"><div st=
yle=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar<br>Postdoc</div=
><div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT, Luxembourg</di=
v><div style=3D"color:rgb(136,136,136);font-size:12.8px"><br></div><br></di=
v></div></div></div>
</blockquote></div>

--000000000000cd192b058de2f6d8--


--===============8378372688095629531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8378372688095629531==--

