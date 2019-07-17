Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E32326C0E5
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2019 20:20:12 +0200 (CEST)
Received: from [::1] (port=55730 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnoXB-00057j-Bs; Wed, 17 Jul 2019 14:20:09 -0400
Received: from mail-oi1-f182.google.com ([209.85.167.182]:41471)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <cogwsn@gmail.com>) id 1hnoX6-000508-G4
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 14:20:04 -0400
Received: by mail-oi1-f182.google.com with SMTP id g7so19285243oia.8
 for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2019 11:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XneLd2cSjIIs1pTdjOzaOcHkZgK2ownfe0x7FKmO7os=;
 b=QGX5m4obMPSPtReQH3babk5FcxFZ8UE55OicixZyMNinsPxK8kX856U3nTHNAh96dy
 VsFOy3VHe1Qus+yv+2HyIIijwFFZd+J/ZEoa1Wz99JlGJ6PCfl509pz8Oa27b8bo3jlL
 EyvQYIbM4KVqROVotuWriFC2GHIPEh3WLXxUU7chfo3Xeyee0o9Qk8pBdUNbyuJp0gse
 xqneoG9C0177t/uH7XuKUfbh4J/3dVwaZiCK4180J8cUa1hNctmjXvfTSo4n1qRfbZ+P
 a2hQ6+348/FqkGcU4skHOUxUVbhoRVddJexdecDJg0zUn53/NRD85CbyxTh3X/caBg6T
 9wbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XneLd2cSjIIs1pTdjOzaOcHkZgK2ownfe0x7FKmO7os=;
 b=uCDA78BV/3g4SPKpemJpse6NZqPCCnUOxzVkJE59FPoBKvNwAo6FUFg8s1WKLzuuDH
 +DNzd99Xpf3WBhusrW2F+6hhNWU5633gkgLN9Sgm1OiVThGuuuR6gE8JugqBStGWjuxd
 ldU+v3hNpeEeOBvRX9cHeG897FAZUOju56CzOk5YhV05wC/U6uo2Bd1DPOekzZDd0o44
 99nGQRowe3enyICCJJIsIlyYJ6ilJ/rUT4QMcZbTKwOz60vQhrXbgkeJiy18R676sY5S
 lDS35L47isazMG3gAGT8Go/vKEy2YDH5N3uxwvv1XOECnoQjr/AsbRfiBQuGPWjQDBQB
 Z30Q==
X-Gm-Message-State: APjAAAXMQM/5mn8cv1GfXDm2+bWCpfozKmkYj3yDvlqqCd2llI6voeNZ
 avF7/V0QKcRsaCEJR6lYezzJQX5bKHEE7gPNonc=
X-Google-Smtp-Source: APXvYqzgNHVUnR8A4ln9J4AiF7iKwwvrbHTn5aM4fCW8GT8kZScKRqyy5ny/sapBlCRKcekWRZTR/0Zzq6HP+qq3aK8=
X-Received: by 2002:a54:4f95:: with SMTP id g21mr20448535oiy.23.1563387563685; 
 Wed, 17 Jul 2019 11:19:23 -0700 (PDT)
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
 <CAL263iwjokuwk28_3q2msT1Eex6J+nHOPwHOObyQu1-RKJnJRw@mail.gmail.com>
In-Reply-To: <CAL263iwjokuwk28_3q2msT1Eex6J+nHOPwHOObyQu1-RKJnJRw@mail.gmail.com>
Date: Wed, 17 Jul 2019 20:19:12 +0200
Message-ID: <CAOExtcRrcovxHMXqVB4Bx0oH534buCpV6xyO_QVJFdsr7tH7uw@mail.gmail.com>
To: Nate Temple <nate.temple@ettus.com>
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
From: Sumit Kumar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sumit Kumar <cogwsn@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8670611959217688799=="
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

--===============8670611959217688799==
Content-Type: multipart/alternative; boundary="0000000000006139e3058de488f1"

--0000000000006139e3058de488f1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nate, I left office, so will be able to tell you tomorrow. It happened
in two laptops. One I remember is a brand new Dell latitude 5490. I will
let you know the details tomorrow.
Regards
Sumit

On Wed, Jul 17, 2019 at 6:27 PM Nate Temple <nate.temple@ettus.com> wrote:

> Hi Sumit,
>
> What ethernet controller do you have in your laptop?
>
> lspci | grep Ethernet
>
> Regards,
> Nate Temple
>
> On Wed, Jul 17, 2019 at 9:16 AM Sumit Kumar <cogwsn@gmail.com> wrote:
>
>> Hi Nate,
>>
>> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/examples$ sudo
>> ./benchmark_rate --rx_rate 10e6 --tx_rate 10e6 --duration 600
>>
>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>> UHD_3.15.0.git-1-gf83faf28
>> [00:00:00.000024] Creating the usrp device with: ...
>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>> [INFO] [USRP2] Current send frame size: 1472 bytes
>> Using Device: Single USRP:
>>   Device: USRP2 / N-Series Device
>>   Mboard 0: N200r4
>>   RX Channel: 0
>>     RX DSP: 0
>>     RX Dboard: A
>>     RX Subdev: SBXv3 RX
>>   TX Channel: 0
>>     TX DSP: 0
>>     TX Dboard: A
>>     TX Subdev: SBXv3 TX
>>
>> [00:00:01.788223] Setting device timestamp to 0...
>> [00:00:01.788784] Testing receive rate 10.000000 Msps on 1 channels
>> [00:00:01.799861] Testing transmit rate 10.000000 Msps on 1 channels
>> SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSUSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSS[00:00:01.905237]
>> Tx timeouts: 1
>> [00:10:01.932746] Benchmark complete.
>>
>>
>> Benchmark rate summary:
>>   Num received samples:     6000102237
>>   Num dropped samples:      0
>>   Num overruns detected:    0
>>   Num transmitted samples:  258456
>>   Num sequence errors (Tx): 624
>>   Num sequence errors (Rx): 0
>>   Num underruns detected:   1
>>   Num late commands:        0
>>   Num timeouts (Tx):        5993
>>
>> On Wed, Jul 17, 2019 at 5:36 PM Nate Temple <nate.temple@ettus.com>
>> wrote:
>>
>>> Hi Sumit,
>>>
>>> Actually, I had a typo in the command, that previous benchmark_rate
>>> command only tested RX, can you try passing the --tx_rate param and see=
 if
>>> it will produce sequence errors using benchmark_rate
>>>
>>> ./benchmark_rate --tx_rate 10e6 --duration 600
>>>
>>> Regards,
>>> Nate Temple
>>>
>>> On Wed, Jul 17, 2019 at 8:27 AM Sumit Kumar <cogwsn@gmail.com> wrote:
>>>
>>>> Ok I will do this.. but why the transmission with other USRP is workin=
g
>>>> fine ?
>>>>
>>>> On Wed, Jul 17, 2019 at 5:22 PM Nate Temple <nate.temple@ettus.com>
>>>> wrote:
>>>>
>>>>> Hi Sumit,
>>>>>
>>>>> So it looks like you have multiple version of UHD installed:
>>>>>
>>>>> john@john-Precision-M4600:~/pybombs/src/gnuradio/gr-digital/examples/=
narrowband$
>>>>> sudo ./benchmark_tx.py -f 2.45G -S 10
>>>>> linux; GNU C++ version 5.3.1 20151219; Boost_105800;
>>>>> UHD_003.009.002-0-unknown
>>>>>
>>>>>
>>>>> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/examples$ sudo
>>>>> ./benchmark_rate --rx_rate 10e6 --duration 600
>>>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>>>>> UHD_3.15.0.git-1-gf83faf28
>>>>>
>>>>>
>>>>> I would recommend to stick to a single UHD version and use the latest
>>>>> stable tagged released (currently 3.14.1.0) you will need to modify t=
he
>>>>> pybombs recipe to use the correct git tag (v3.14.1.0). The 'master' b=
ranch
>>>>> can be unstable at times.
>>>>>
>>>>> Also, if you have a FPGA image of say 3.15.x.x flashed on the N210 an=
d
>>>>> then revert back to using 3.9.2, and UHD does not catch the mismatch,=
 it
>>>>> will likely cause flow control errors and unstable performance.
>>>>>
>>>>> The gr-digital/examples/narrowband/benchmark_tx.py example is also
>>>>> buggy, and is being removed from GR 3.8. Using the UHD benchmark_rate
>>>>> utility will test the hardware with a limited scope.
>>>>>
>>>>> Regards,
>>>>> Nate Temple
>>>>>
>>>>>
>>>>> On Wed, Jul 17, 2019 at 8:10 AM Sumit Kumar <cogwsn@gmail.com> wrote:
>>>>>
>>>>>> Sorry, here it is.
>>>>>>
>>>>>> Benchmark rate summary:
>>>>>>   Num received samples:     5999986436
>>>>>>   Num dropped samples:      0
>>>>>>   Num overruns detected:    0
>>>>>>   Num transmitted samples:  0
>>>>>>   Num sequence errors (Tx): 0
>>>>>>   Num sequence errors (Rx): 0
>>>>>>   Num underruns detected:   0
>>>>>>   Num late commands:        0
>>>>>>   Num timeouts (Tx):        0
>>>>>>   Num timeouts (Rx):        0
>>>>>>
>>>>>>
>>>>>> On Wed, Jul 17, 2019 at 5:08 PM Nate Temple <nate.temple@ettus.com>
>>>>>> wrote:
>>>>>>
>>>>>>> Hi Sumit,
>>>>>>>
>>>>>>> It will take 10 minutes for that run to complete. Does it produce a
>>>>>>> report at the end of the run?
>>>>>>>
>>>>>>> Regards,
>>>>>>> Nate Temple
>>>>>>>
>>>>>>> On Wed, Jul 17, 2019 at 8:06 AM Sumit Kumar <cogwsn@gmail.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> Hi Nate,
>>>>>>>> No there are not. At the end of the last line, cursor keeps
>>>>>>>> blinking, no sequence errors.
>>>>>>>>
>>>>>>>> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/examples$
>>>>>>>> sudo ./benchmark_rate --rx_rate 10e6 --duration 600
>>>>>>>>
>>>>>>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>>>>>>>> UHD_3.15.0.git-1-gf83faf28
>>>>>>>> [00:00:00.000024] Creating the usrp device with: ...
>>>>>>>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>>>>>>>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>>>>>>>> [INFO] [USRP2] Current send frame size: 1472 bytes
>>>>>>>> Using Device: Single USRP:
>>>>>>>>   Device: USRP2 / N-Series Device
>>>>>>>>   Mboard 0: N200r4
>>>>>>>>   RX Channel: 0
>>>>>>>>     RX DSP: 0
>>>>>>>>     RX Dboard: A
>>>>>>>>     RX Subdev: SBXv3 RX
>>>>>>>>   TX Channel: 0
>>>>>>>>     TX DSP: 0
>>>>>>>>     TX Dboard: A
>>>>>>>>     TX Subdev: SBXv3 TX
>>>>>>>>
>>>>>>>> [00:00:01.796895] Setting device timestamp to 0...
>>>>>>>> [00:00:01.797430] Testing receive rate 10.000000 Msps on 1 channel=
s
>>>>>>>>
>>>>>>>> On Wed, Jul 17, 2019 at 4:39 PM Nate Temple <nate.temple@ettus.com=
>
>>>>>>>> wrote:
>>>>>>>>
>>>>>>>>> Hi Sumit,
>>>>>>>>>
>>>>>>>>> If you run benchmark_rate for an extend period of time, do you se=
e
>>>>>>>>> any sequence errors?
>>>>>>>>>
>>>>>>>>> /usr/local/lib/uhd/examples/benchmark_rate --rx_rate 10e6
>>>>>>>>> --duration 600
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> Regards,
>>>>>>>>> Nate Temple
>>>>>>>>>
>>>>>>>>> On Wed, Jul 17, 2019 at 7:34 AM Sumit Kumar <cogwsn@gmail.com>
>>>>>>>>> wrote:
>>>>>>>>>
>>>>>>>>>> Hi Nate,
>>>>>>>>>> Yes I addressed the first 2 points you mentioned.
>>>>>>>>>>
>>>>>>>>>> john@john-Precision-M4600:~/pybombs/src/gnuradio/gr-digital/exam=
ples/narrowband$
>>>>>>>>>> sudo ./benchmark_tx.py -f 2.45G -S 10
>>>>>>>>>> linux; GNU C++ version 5.3.1 20151219; Boost_105800;
>>>>>>>>>> UHD_003.009.002-0-unknown
>>>>>>>>>>
>>>>>>>>>> Using Volk machine: avx_64_mmx_orc
>>>>>>>>>> -- Opening a USRP2/N-Series device...
>>>>>>>>>> -- Current recv frame size: 1472 bytes
>>>>>>>>>> -- Current send frame size: 1472 bytes
>>>>>>>>>>
>>>>>>>>>> No gain specified.
>>>>>>>>>> Setting gain to 15.750000 (from [0.000000, 31.500000])
>>>>>>>>>>
>>>>>>>>>> ................................................................=
..............................SS.SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.SSSS..S.....=
.SS.S......SS.....S....S...S.S.......S....S........^C
>>>>>>>>>>
>>>>>>>>>> I am using ./benchmark_tx.py located
>>>>>>>>>> in gnuradio/gr-digital/examples/narrowband
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> On Wed, Jul 17, 2019 at 4:25 PM Nate Temple <
>>>>>>>>>> nate.temple@ettus.com> wrote:
>>>>>>>>>>
>>>>>>>>>>> Hi Sumit,
>>>>>>>>>>>
>>>>>>>>>>> A couple things to address:
>>>>>>>>>>>
>>>>>>>>>>> 1) Enable Thread priority scheduling on your host
>>>>>>>>>>>
>>>>>>>>>>> Note it is throwing a warning in the output: "[WARNING] [UHD]
>>>>>>>>>>> Unable to set the thread priority. Performance may be negativel=
y affected."
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Sour=
ce_Toolchain_(UHD_and_GNU_Radio)_on_Linux#Thread_priority_scheduling
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> 2) Adjust your network buffers
>>>>>>>>>>>
>>>>>>>>>>> "
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
>>>>>>>>>>> "
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tric=
ks#N2xx
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> What is the command you're using to transmit(which utility and
>>>>>>>>>>> args?)
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> Regards,
>>>>>>>>>>> Nate Temple
>>>>>>>>>>>
>>>>>>>>>>> On Wed, Jul 17, 2019 at 7:06 AM Sumit Kumar via USRP-users <
>>>>>>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>>>>>>
>>>>>>>>>>>> Following is what I am getting after the command you asked to
>>>>>>>>>>>> run. The 192.168.10.5 gives SSSSSSS.
>>>>>>>>>>>>
>>>>>>>>>>>> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$
>>>>>>>>>>>> ./usrp_burn_mb_eeprom --read-all --args "addr=3D192.168.10.5"
>>>>>>>>>>>> Creating USRP device from address: addr=3D192.168.10.5
>>>>>>>>>>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
>>>>>>>>>>>> Boost_105800; UHD_3.15.0.git-1-gf83faf28
>>>>>>>>>>>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>>>>>>>>>>>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>>>>>>>>>>>> [INFO] [USRP2] Current send frame size: 1472 bytes
>>>>>>>>>>>> [WARNING] [UDP] The send buffer could not be resized
>>>>>>>>>>>> sufficiently.
>>>>>>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>>>>>>> See the transport application notes on buffer resizing.
>>>>>>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>>>>>>> [WARNING] [UDP] The send buffer could not be resized
>>>>>>>>>>>> sufficiently.
>>>>>>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>>>>>>> See the transport application notes on buffer resizing.
>>>>>>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>>>>>>> [WARNING] [UDP] The send buffer could not be resized
>>>>>>>>>>>> sufficiently.
>>>>>>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>>>>>>> See the transport application notes on buffer resizing.
>>>>>>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>>>>>>> [WARNING] [UHD] Unable to set the thread priority. Performance
>>>>>>>>>>>> may be negatively affected.
>>>>>>>>>>>> Please see the general application notes in the manual for
>>>>>>>>>>>> instructions.
>>>>>>>>>>>> EnvironmentError: OSError: error in pthread_setschedparam
>>>>>>>>>>>>
>>>>>>>>>>>> Fetching current settings from EEPROM...
>>>>>>>>>>>>     EEPROM ["hardware"] is "2576"
>>>>>>>>>>>>     EEPROM ["revision"] is ""
>>>>>>>>>>>>     EEPROM ["product"] is ""
>>>>>>>>>>>>     EEPROM ["mac-addr"] is "a0:36:fa:26:34:44"
>>>>>>>>>>>>     EEPROM ["ip-addr"] is "192.168.10.5"
>>>>>>>>>>>>     EEPROM ["subnet"] is "255.255.255.255"
>>>>>>>>>>>>     EEPROM ["gateway"] is "255.255.255.255"
>>>>>>>>>>>>     EEPROM ["gpsdo"] is "none"
>>>>>>>>>>>>     EEPROM ["serial"] is "E4R14V4UN"
>>>>>>>>>>>>     EEPROM ["name"] is ""
>>>>>>>>>>>>
>>>>>>>>>>>> Power-cycle the USRP device for the changes to take effect.
>>>>>>>>>>>>
>>>>>>>>>>>> Done
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$
>>>>>>>>>>>> ./usrp_burn_mb_eeprom --read-all --args "addr=3D192.168.10.3"
>>>>>>>>>>>> Creating USRP device from address: addr=3D192.168.10.3
>>>>>>>>>>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
>>>>>>>>>>>> Boost_105800; UHD_3.15.0.git-1-gf83faf28
>>>>>>>>>>>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>>>>>>>>>>>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>>>>>>>>>>>> [INFO] [USRP2] Current send frame size: 1472 bytes
>>>>>>>>>>>> [WARNING] [UDP] The send buffer could not be resized
>>>>>>>>>>>> sufficiently.
>>>>>>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>>>>>>> See the transport application notes on buffer resizing.
>>>>>>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>>>>>>> [WARNING] [UDP] The send buffer could not be resized
>>>>>>>>>>>> sufficiently.
>>>>>>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>>>>>>> See the transport application notes on buffer resizing.
>>>>>>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>>>>>>> [WARNING] [UDP] The send buffer could not be resized
>>>>>>>>>>>> sufficiently.
>>>>>>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>>>>>>> See the transport application notes on buffer resizing.
>>>>>>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>>>>>>> [WARNING] [UHD] Unable to set the thread priority. Performance
>>>>>>>>>>>> may be negatively affected.
>>>>>>>>>>>> Please see the general application notes in the manual for
>>>>>>>>>>>> instructions.
>>>>>>>>>>>> EnvironmentError: OSError: error in pthread_setschedparam
>>>>>>>>>>>>
>>>>>>>>>>>> Fetching current settings from EEPROM...
>>>>>>>>>>>>     EEPROM ["hardware"] is "2576"
>>>>>>>>>>>>     EEPROM ["revision"] is ""
>>>>>>>>>>>>     EEPROM ["product"] is ""
>>>>>>>>>>>>     EEPROM ["mac-addr"] is "a0:36:fa:26:34:42"
>>>>>>>>>>>>     EEPROM ["ip-addr"] is "192.168.10.3"
>>>>>>>>>>>>     EEPROM ["subnet"] is "255.255.255.255"
>>>>>>>>>>>>     EEPROM ["gateway"] is "255.255.255.255"
>>>>>>>>>>>>     EEPROM ["gpsdo"] is "none"
>>>>>>>>>>>>     EEPROM ["serial"] is "E4R14V2UN"
>>>>>>>>>>>>     EEPROM ["name"] is ""
>>>>>>>>>>>>
>>>>>>>>>>>> Power-cycle the USRP device for the changes to take effect.
>>>>>>>>>>>>
>>>>>>>>>>>> Done
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> On Wed, Jul 17, 2019 at 3:19 PM Jason Matusiak <
>>>>>>>>>>>> jason@gardettoengineering.com> wrote:
>>>>>>>>>>>>
>>>>>>>>>>>>> You are right, the table of revisions was for the X-series
>>>>>>>>>>>>>
>>>>>>>>>>>>> try running the command from your prefix:
>>>>>>>>>>>>> src/uhd/host/build/utils/usrp_burn_mb_eeprom --args=3D"type=
=3Dn200" --read-all
>>>>>>>>>>>>>
>>>>>>>>>>>>> don't quote me on the type portion, I don't have a board in
>>>>>>>>>>>>> front of me to see if it is n200 or something else.  I //thin=
k// that will
>>>>>>>>>>>>> report the major and minor revision values (I am grasping at =
straws here,
>>>>>>>>>>>>> just trying to figure out what the differences might be).
>>>>>>>>>>>>>
>>>>>>>>>>>>> You are connecting the ethernet connections to the two device=
s
>>>>>>>>>>>>> through the exact same port on your PC?
>>>>>>>>>>>>>
>>>>>>>>>>>>> ------------------------------
>>>>>>>>>>>>> *From:* Sumit Kumar <cogwsn@gmail.com>
>>>>>>>>>>>>> *Sent:* Wednesday, July 17, 2019 8:24 AM
>>>>>>>>>>>>> *To:* Jason Matusiak <jason@gardettoengineering.com>
>>>>>>>>>>>>> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>>>>>>>>>>>> *Subject:* Re: [USRP-users] Sequence Errors N200
>>>>>>>>>>>>>
>>>>>>>>>>>>> The sticker  for sbx shows F33612 and F33814.
>>>>>>>>>>>>> How will this help ?
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>> On Wed, Jul 17, 2019 at 1:50 PM Jason Matusiak <
>>>>>>>>>>>>> jason@gardettoengineering.com> wrote:
>>>>>>>>>>>>>
>>>>>>>>>>>>> Sumit,
>>>>>>>>>>>>>
>>>>>>>>>>>>> OK, the last idea I have:
>>>>>>>>>>>>>
>>>>>>>>>>>>> There is a sticker on the back of the N-series devices it
>>>>>>>>>>>>> *usually* says the version there, but not always.  This has a
>>>>>>>>>>>>> little info:
>>>>>>>>>>>>> https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_E=
EPROM_on_USRP_Devices#N200.2F210_EEPROM
>>>>>>>>>>>>>
>>>>>>>>>>>>> Do they match?
>>>>>>>>>>>>>
>>>>>>>>>>>>> ------------------------------
>>>>>>>>>>>>> *From:* Sumit Kumar <cogwsn@gmail.com>
>>>>>>>>>>>>> *Sent:* Wednesday, July 17, 2019 7:45 AM
>>>>>>>>>>>>> *To:* Jason Matusiak <jason@gardettoengineering.com>
>>>>>>>>>>>>> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>>>>>>>>>>>> *Subject:* Re: [USRP-users] Sequence Errors N200
>>>>>>>>>>>>>
>>>>>>>>>>>>> Hi Jason,
>>>>>>>>>>>>>
>>>>>>>>>>>>> Yes they are consistent, I mean the output of uhd_usrp_probe
>>>>>>>>>>>>> for both N200 is exactly the same (except the ip, serial and =
mac addr).
>>>>>>>>>>>>> I do not know where the problem is! Hardware or software
>>>>>>>>>>>>>
>>>>>>>>>>>>> Regards
>>>>>>>>>>>>> Sumit
>>>>>>>>>>>>>
>>>>>>>>>>>>> On Wed, Jul 17, 2019 at 1:19 PM Jason Matusiak <
>>>>>>>>>>>>> jason@gardettoengineering.com> wrote:
>>>>>>>>>>>>>
>>>>>>>>>>>>> I am not really an N-series guy, so this probably won't be
>>>>>>>>>>>>> helpful.  Have you tried doing a uhd_usrp_probe on both devic=
es and seen
>>>>>>>>>>>>> that the responses are consistent?
>>>>>>>>>>>>>
>>>>>>>>>>>>> ------------------------------
>>>>>>>>>>>>> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on
>>>>>>>>>>>>> behalf of Sumit Kumar via USRP-users <
>>>>>>>>>>>>> usrp-users@lists.ettus.com>
>>>>>>>>>>>>> *Sent:* Wednesday, July 17, 2019 7:15 AM
>>>>>>>>>>>>> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>>>>>>>>>>>> *Subject:* [USRP-users] Sequence Errors N200
>>>>>>>>>>>>>
>>>>>>>>>>>>> Hi,
>>>>>>>>>>>>> I am trying transmit using Ettus N200 (call it A) but getting
>>>>>>>>>>>>> this error message on the console
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>> SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SUSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS....................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
..............................................
>>>>>>>>>>>>>
>>>>>>>>>>>>> I looked for it on google and found these links
>>>>>>>>>>>>>
>>>>>>>>>>>>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2=
014-May/037495.html
>>>>>>>>>>>>>
>>>>>>>>>>>>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2=
012-July/032838.html
>>>>>>>>>>>>>
>>>>>>>>>>>>> Both the links  suggested problem related to the gigabit port=
.
>>>>>>>>>>>>> Then I connected another USRP N200 (call it B) to the same la=
ptop and tried
>>>>>>>>>>>>> transmitting using that as there were no such sequence error =
messages.
>>>>>>>>>>>>>
>>>>>>>>>>>>> This makes me believe there is some problem with the first
>>>>>>>>>>>>> USRP, i.e., A.
>>>>>>>>>>>>>
>>>>>>>>>>>>> Further I tried with different versions of UHD 3.11, UHD
>>>>>>>>>>>>> 3.15.. but its the same.
>>>>>>>>>>>>>
>>>>>>>>>>>>> Receive is good only transmit is throwing error.
>>>>>>>>>>>>>
>>>>>>>>>>>>> Not only with UHD, even in labview, when I transmit, I see
>>>>>>>>>>>>> nothing coming out from the N200 (A).
>>>>>>>>>>>>>
>>>>>>>>>>>>> I am using SBXv2 daughter board.
>>>>>>>>>>>>>
>>>>>>>>>>>>> Any clue!
>>>>>>>>>>>>>
>>>>>>>>>>>>> Regards
>>>>>>>>>>>>> --
>>>>>>>>>>>>> --
>>>>>>>>>>>>> Sumit kumar
>>>>>>>>>>>>> Postdoc
>>>>>>>>>>>>> SnT, Luxembourg
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>> --
>>>>>>>>>>>>> --
>>>>>>>>>>>>> Sumit kumar
>>>>>>>>>>>>> Postdoc
>>>>>>>>>>>>> SnT, Luxembourg
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>> --
>>>>>>>>>>>>> --
>>>>>>>>>>>>> Sumit kumar
>>>>>>>>>>>>> Postdoc
>>>>>>>>>>>>> SnT, Luxembourg
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> --
>>>>>>>>>>>> --
>>>>>>>>>>>> Sumit kumar
>>>>>>>>>>>> Postdoc
>>>>>>>>>>>> SnT, Luxembourg
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> _______________________________________________
>>>>>>>>>>>> USRP-users mailing list
>>>>>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>>>>>>
>>>>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
.com
>>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> --
>>>>>>>>>> --
>>>>>>>>>> Sumit kumar
>>>>>>>>>> Postdoc
>>>>>>>>>> SnT, Luxembourg
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>
>>>>>>>> --
>>>>>>>> --
>>>>>>>> Sumit kumar
>>>>>>>> Postdoc
>>>>>>>> SnT, Luxembourg
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>
>>>>>> --
>>>>>> --
>>>>>> Sumit kumar
>>>>>> Postdoc
>>>>>> SnT, Luxembourg
>>>>>>
>>>>>>
>>>>>>
>>>>
>>>> --
>>>> --
>>>> Sumit kumar
>>>> Postdoc
>>>> SnT, Luxembourg
>>>>
>>>>
>>>>
>>
>> --
>> --
>> Sumit kumar
>> Postdoc
>> SnT, Luxembourg
>>
>>
>>

--=20
--=20
Sumit kumar
Postdoc
SnT, Luxembourg

--0000000000006139e3058de488f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Nate, I left office, so will be able to tell you t=
omorrow. It happened in two laptops. One I remember is a brand new Dell lat=
itude 5490. I will let you know the details tomorrow.=C2=A0<div>Regards</di=
v><div>Sumit=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 6:27 PM Nate Temple &lt;<a =
href=3D"mailto:nate.temple@ettus.com">nate.temple@ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-ser=
if">Hi Sumit,</div><div class=3D"gmail_default" style=3D"font-family:arial,=
helvetica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-=
family:arial,helvetica,sans-serif">What ethernet controller do you have in =
your laptop?</div><div class=3D"gmail_default" style=3D"font-family:arial,h=
elvetica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-f=
amily:arial,helvetica,sans-serif">lspci | grep Ethernet</div><div class=3D"=
gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><br></div><=
div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif=
">Regards,</div><div class=3D"gmail_default" style=3D"font-family:arial,hel=
vetica,sans-serif">Nate Temple<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 9:16 AM Sum=
it Kumar &lt;<a href=3D"mailto:cogwsn@gmail.com" target=3D"_blank">cogwsn@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr">Hi=C2=A0Nate,<div><br></div><div>john@john-Precisi=
on-M4600:~/pybombs/src/uhd/host/build/examples$ sudo ./benchmark_rate --rx_=
rate 10e6 --tx_rate 10e6 --duration 600<span class=3D"gmail-m_1429041156151=
116054gmail-m_-783974566588487241gmail-im" style=3D"color:rgb(80,0,80)"><br=
><br>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_=
3.15.0.git-1-gf83faf28<br>[00:00:00.000024] Creating the usrp device with: =
...<br>[INFO] [USRP2] Opening a USRP2/N-Series device...<br>[INFO] [USRP2] =
Current recv frame size: 1472 bytes<br>[INFO] [USRP2] Current send frame si=
ze: 1472 bytes<br>Using Device: Single USRP:<br>=C2=A0 Device: USRP2 / N-Se=
ries Device<br>=C2=A0 Mboard 0: N200r4<br>=C2=A0 RX Channel: 0<br>=C2=A0 =
=C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: =
SBXv3 RX<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=
=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: SBXv3 TX<br><br></span>[00:00:=
01.788223] Setting device timestamp to 0...<br>[00:00:01.788784] Testing re=
ceive rate 10.000000 Msps on 1 channels<br>[00:00:01.799861] Testing transm=
it rate 10.000000 Msps on 1 channels<br>SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS[00:00:01.=
905237] Tx timeouts: 1<br>[00:10:01.932746] Benchmark complete.<br><br><br>=
Benchmark rate summary:<br>=C2=A0 Num received samples: =C2=A0 =C2=A0 60001=
02237<span class=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241g=
mail-im" style=3D"color:rgb(80,0,80)"><br>=C2=A0 Num dropped samples: =C2=
=A0 =C2=A0 =C2=A00<br>=C2=A0 Num overruns detected: =C2=A0 =C2=A00<br></spa=
n>=C2=A0 Num transmitted samples: =C2=A0258456<br>=C2=A0 Num sequence error=
s (Tx): 624<span class=3D"gmail-m_1429041156151116054gmail-m_-7839745665884=
87241gmail-im" style=3D"color:rgb(80,0,80)"><br>=C2=A0 Num sequence errors =
(Rx): 0<br></span>=C2=A0 Num underruns detected: =C2=A0 1<br>=C2=A0 Num lat=
e commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num timeouts (Tx): =C2=
=A0 =C2=A0 =C2=A0 =C2=A05993<br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 5:36 PM Nate =
Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" target=3D"_blank">nate.=
temple@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font=
-family:arial,helvetica,sans-serif">Hi Sumit,</div><div class=3D"gmail_defa=
ult" style=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">Actuall=
y, I had a typo in the command, that previous benchmark_rate command only t=
ested RX, can you try passing the --tx_rate param and see if it will produc=
e sequence errors using benchmark_rate</div><div class=3D"gmail_default" st=
yle=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmai=
l_default" style=3D"font-family:arial,helvetica,sans-serif">./benchmark_rat=
e --tx_rate 10e6 --duration 600<span class=3D"gmail-m_1429041156151116054gm=
ail-m_-783974566588487241gmail-m_-8787730956157389152m_-8846324310455197473=
gmail-im"><span class=3D"gmail-m_1429041156151116054gmail-m_-78397456658848=
7241gmail-m_-8787730956157389152m_-8846324310455197473gmail-m_8077291001688=
814057gmail-im" style=3D"color:rgb(80,0,80)"><br></span></span></div><div c=
lass=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><sp=
an class=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail-m_-=
8787730956157389152m_-8846324310455197473gmail-im"><span class=3D"gmail-m_1=
429041156151116054gmail-m_-783974566588487241gmail-m_-8787730956157389152m_=
-8846324310455197473gmail-m_8077291001688814057gmail-im" style=3D"color:rgb=
(80,0,80)"><br></span></span></div><div class=3D"gmail_default" style=3D"fo=
nt-family:arial,helvetica,sans-serif"><span class=3D"gmail-m_14290411561511=
16054gmail-m_-783974566588487241gmail-m_-8787730956157389152m_-884632431045=
5197473gmail-im"><span class=3D"gmail-m_1429041156151116054gmail-m_-7839745=
66588487241gmail-m_-8787730956157389152m_-8846324310455197473gmail-m_807729=
1001688814057gmail-im" style=3D"color:rgb(80,0,80)">Regards,</span></span><=
/div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans=
-serif"><span class=3D"gmail-m_1429041156151116054gmail-m_-7839745665884872=
41gmail-m_-8787730956157389152m_-8846324310455197473gmail-im"><span class=
=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail-m_-87877309=
56157389152m_-8846324310455197473gmail-m_8077291001688814057gmail-im" style=
=3D"color:rgb(80,0,80)">Nate Temple<br></span></span></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, =
2019 at 8:27 AM Sumit Kumar &lt;<a href=3D"mailto:cogwsn@gmail.com" target=
=3D"_blank">cogwsn@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr">Ok I will do this.. but why th=
e transmission with other USRP is working fine ?=C2=A0</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019=
 at 5:22 PM Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" target=
=3D"_blank">nate.temple@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_defau=
lt" style=3D"font-family:arial,helvetica,sans-serif">Hi Sumit,<br><br>So it=
 looks like you have multiple version of UHD installed:<br><br>john@john-Pr=
ecision-M4600:~/pybombs/src/gnuradio/gr-digital/examples/narrowband$ sudo .=
/benchmark_tx.py -f 2.45G -S 10<br>linux; GNU C++ version 5.3.1 20151219; B=
oost_105800; UHD_003.009.002-0-unknown<br><br><br>john@john-Precision-M4600=
:~/pybombs/src/uhd/host/build/examples$ sudo ./benchmark_rate --rx_rate 10e=
6 --duration 600<br>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boo=
st_105800; UHD_3.15.0.git-1-gf83faf28<br><br><br>I would recommend to stick=
 to a single UHD version and use the latest stable tagged released (current=
ly 3.14.1.0) you will need to modify the pybombs recipe to use the correct =
git tag (v3.14.1.0). The &#39;master&#39; branch can be unstable at times.<=
br><br>Also, if you have a FPGA image of say 3.15.x.x flashed on the N210 a=
nd then revert back to using 3.9.2, and UHD does not catch the mismatch, it=
 will likely cause flow control errors and unstable performance.<br><br>The=
 gr-digital/examples/narrowband/benchmark_tx.py example is also buggy, and =
is being removed from GR 3.8. Using the UHD benchmark_rate utility will tes=
t the hardware with a limited scope.<br><br>Regards,<br>Nate Temple<br><br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Wed, Jul 17, 2019 at 8:10 AM Sumit Kumar &lt;<a href=3D"mailto:cog=
wsn@gmail.com" target=3D"_blank">cogwsn@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Sorry, he=
re it is.<div><br></div><div>Benchmark rate summary:<br>=C2=A0 Num received=
 samples: =C2=A0 =C2=A0 5999986436<br>=C2=A0 Num dropped samples: =C2=A0 =
=C2=A0 =C2=A00<br>=C2=A0 Num overruns detected: =C2=A0 =C2=A00<br>=C2=A0 Nu=
m transmitted samples: =C2=A00<br>=C2=A0 Num sequence errors (Tx): 0<br>=C2=
=A0 Num sequence errors (Rx): 0<br>=C2=A0 Num underruns detected: =C2=A0 0<=
br>=C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num tim=
eouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num timeouts (Rx): =C2=
=A0 =C2=A0 =C2=A0 =C2=A00<br></div><div><br></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 5=
:08 PM Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" target=3D"_=
blank">nate.temple@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" s=
tyle=3D"font-family:arial,helvetica,sans-serif">Hi Sumit,<br><br>It will ta=
ke 10 minutes for that run to complete. Does it produce a report at the end=
 of the run?<br><br>Regards,<br>Nate Temple<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019=
 at 8:06 AM Sumit Kumar &lt;<a href=3D"mailto:cogwsn@gmail.com" target=3D"_=
blank">cogwsn@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">Hi=C2=A0Nate,<div>No there are not.=
 At the end of the last line, cursor keeps blinking, no sequence errors.=C2=
=A0<br><div><br></div><div>john@john-Precision-M4600:~/pybombs/src/uhd/host=
/build/examples$ sudo ./benchmark_rate --rx_rate 10e6 --duration 600<span c=
lass=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail-m_-8787=
730956157389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543gmai=
l-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994=
741gmail-m_8077291001688814057gmail-im" style=3D"color:rgb(80,0,80)"><br><b=
r>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.1=
5.0.git-1-gf83faf28<br></span>[00:00:00.000024] Creating the usrp device wi=
th: ...<span class=3D"gmail-m_1429041156151116054gmail-m_-78397456658848724=
1gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_-226394660=
8738406543gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-77=
63822819519994741gmail-m_8077291001688814057gmail-im" style=3D"color:rgb(80=
,0,80)"><br>[INFO] [USRP2] Opening a USRP2/N-Series device...<br>[INFO] [US=
RP2] Current recv frame size: 1472 bytes<br>[INFO] [USRP2] Current send fra=
me size: 1472 bytes<br></span>Using Device: Single USRP:<br>=C2=A0 Device: =
USRP2 / N-Series Device<br>=C2=A0 Mboard 0: N200r4<br>=C2=A0 RX Channel: 0<=
br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 R=
X Subdev: SBXv3 RX<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=
=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: SBXv3 TX<br><br>[00:=
00:01.796895] Setting device timestamp to 0...<br>[00:00:01.797430] Testing=
 receive rate 10.000000 Msps on 1 channels<br></div></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2=
019 at 4:39 PM Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" tar=
get=3D"_blank">nate.temple@ettus.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_de=
fault" style=3D"font-family:arial,helvetica,sans-serif">Hi Sumit,<br><br>If=
 you run benchmark_rate for an extend period of time, do you see any sequen=
ce errors?<br><br>/usr/local/lib/uhd/examples/benchmark_rate --rx_rate 10e6=
 --duration 600<br><br><br>Regards,<br>Nate Temple</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 201=
9 at 7:34 AM Sumit Kumar &lt;<a href=3D"mailto:cogwsn@gmail.com" target=3D"=
_blank">cogwsn@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr">Hi=C2=A0Nate,=C2=A0<div>Yes I addr=
essed the first 2 points you mentioned.=C2=A0</div><div><br></div><div>john=
@john-Precision-M4600:~/pybombs/src/gnuradio/gr-digital/examples/narrowband=
$ sudo ./benchmark_tx.py -f 2.45G -S 10<br>linux; GNU C++ version 5.3.1 201=
51219; Boost_105800; UHD_003.009.002-0-unknown<br><br>Using Volk machine: a=
vx_64_mmx_orc<br>-- Opening a USRP2/N-Series device...<br>-- Current recv f=
rame size: 1472 bytes<br>-- Current send frame size: 1472 bytes<br><br>No g=
ain specified.<br>Setting gain to 15.750000 (from [0.000000, 31.500000])<br=
>..........................................................................=
....................SS.SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.SSSS..S......SS.S.....=
.SS.....S....S...S.S.......S....S........^C<br></div><div><br></div><div>I =
am using ./benchmark_tx.py located in=C2=A0gnuradio/gr-digital/examples/nar=
rowband</div><div><br></div><div><br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 4:25 PM =
Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" target=3D"_blank">=
nate.temple@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D=
"font-family:arial,helvetica,sans-serif">Hi Sumit,<br><br>A couple things t=
o address:<br><br>1) Enable Thread priority scheduling on your host<br><br>=
Note it is throwing a warning in the output: &quot;[WARNING] [UHD] Unable t=
o set the thread priority. Performance may be negatively affected.&quot;<br=
><br><a href=3D"https://kb.ettus.com/Building_and_Installing_the_USRP_Open-=
Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux#Thread_priority_scheduling" t=
arget=3D"_blank">https://kb.ettus.com/Building_and_Installing_the_USRP_Open=
-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux#Thread_priority_scheduling</=
a><br><br><br>2) Adjust your network buffers<br><br>&quot;<br>[WARNING] [UD=
P] The send buffer could not be resized sufficiently.<br>Target sock buff s=
ize: 2500000 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the tra=
nsport application notes on buffer resizing.<br>Please run: sudo sysctl -w =
net.core.wmem_max=3D2500000<br>[WARNING] [UDP] The send buffer could not be=
 resized sufficiently.<br>Target sock buff size: 2500000 bytes.<br>Actual s=
ock buff size: 1048576 bytes.<br>See the transport application notes on buf=
fer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2500000<br>=
&quot;<br><br><a href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_=
Tips_and_Tricks#N2xx" target=3D"_blank">https://kb.ettus.com/USRP_Host_Perf=
ormance_Tuning_Tips_and_Tricks#N2xx</a><br><br><br>What is the command you&=
#39;re using to transmit(which utility and args?)<br><br><br>Regards,<br>Na=
te Temple<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Wed, Jul 17, 2019 at 7:06 AM Sumit Kumar via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp=
-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">Following is what I am getting after=
 the command you asked to run. The 192.168.10.5 gives SSSSSSS.=C2=A0<div><b=
r></div><div>john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$ =
./usrp_burn_mb_eeprom --read-all --args &quot;addr=3D192.168.10.5&quot;<br>=
Creating USRP device from address: addr=3D192.168.10.5<br>[INFO] [UHD] linu=
x; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.15.0.git-1-gf83faf28=
<br>[INFO] [USRP2] Opening a USRP2/N-Series device...<br>[INFO] [USRP2] Cur=
rent recv frame size: 1472 bytes<br>[INFO] [USRP2] Current send frame size:=
 1472 bytes<br>[WARNING] [UDP] The send buffer could not be resized suffici=
ently.<br>Target sock buff size: 2500000 bytes.<br>Actual sock buff size: 1=
048576 bytes.<br>See the transport application notes on buffer resizing.<br=
>Please run: sudo sysctl -w net.core.wmem_max=3D2500000<br>[WARNING] [UDP] =
The send buffer could not be resized sufficiently.<br>Target sock buff size=
: 2500000 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the transp=
ort application notes on buffer resizing.<br>Please run: sudo sysctl -w net=
.core.wmem_max=3D2500000<br>[WARNING] [UDP] The send buffer could not be re=
sized sufficiently.<br>Target sock buff size: 2500000 bytes.<br>Actual sock=
 buff size: 1048576 bytes.<br>See the transport application notes on buffer=
 resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2500000<br>[WA=
RNING] [UHD] Unable to set the thread priority. Performance may be negative=
ly affected.<br>Please see the general application notes in the manual for =
instructions.<br>EnvironmentError: OSError: error in pthread_setschedparam<=
br><br>Fetching current settings from EEPROM...<br>=C2=A0 =C2=A0 EEPROM [&q=
uot;hardware&quot;] is &quot;2576&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;revi=
sion&quot;] is &quot;&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;product&quot;] i=
s &quot;&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;mac-addr&quot;] is &quot;a0:3=
6:fa:26:34:44&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;ip-addr&quot;] is &quot;=
192.168.10.5&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;subnet&quot;] is &quot;25=
5.255.255.255&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;gateway&quot;] is &quot;=
255.255.255.255&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;gpsdo&quot;] is &quot;=
none&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;serial&quot;] is &quot;E4R14V4UN&=
quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;name&quot;] is &quot;&quot;<br><br>Pow=
er-cycle the USRP device for the changes to take effect.<br><br><div>Done</=
div><div><br></div><div><br></div><div>john@john-Precision-M4600:~/pybombs/=
src/uhd/host/build/utils$ ./usrp_burn_mb_eeprom --read-all --args &quot;add=
r=3D192.168.10.3&quot;<br>Creating USRP device from address: addr=3D192.168=
.10.3<br>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; =
UHD_3.15.0.git-1-gf83faf28<br>[INFO] [USRP2] Opening a USRP2/N-Series devic=
e...<br>[INFO] [USRP2] Current recv frame size: 1472 bytes<br>[INFO] [USRP2=
] Current send frame size: 1472 bytes<br>[WARNING] [UDP] The send buffer co=
uld not be resized sufficiently.<br>Target sock buff size: 2500000 bytes.<b=
r>Actual sock buff size: 1048576 bytes.<br>See the transport application no=
tes on buffer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2=
500000<br>[WARNING] [UDP] The send buffer could not be resized sufficiently=
.<br>Target sock buff size: 2500000 bytes.<br>Actual sock buff size: 104857=
6 bytes.<br>See the transport application notes on buffer resizing.<br>Plea=
se run: sudo sysctl -w net.core.wmem_max=3D2500000<br>[WARNING] [UDP] The s=
end buffer could not be resized sufficiently.<br>Target sock buff size: 250=
0000 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the transport a=
pplication notes on buffer resizing.<br>Please run: sudo sysctl -w net.core=
.wmem_max=3D2500000<br>[WARNING] [UHD] Unable to set the thread priority. P=
erformance may be negatively affected.<br>Please see the general applicatio=
n notes in the manual for instructions.<br>EnvironmentError: OSError: error=
 in pthread_setschedparam<br><br>Fetching current settings from EEPROM...<b=
r>=C2=A0 =C2=A0 EEPROM [&quot;hardware&quot;] is &quot;2576&quot;<br>=C2=A0=
 =C2=A0 EEPROM [&quot;revision&quot;] is &quot;&quot;<br>=C2=A0 =C2=A0 EEPR=
OM [&quot;product&quot;] is &quot;&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;mac=
-addr&quot;] is &quot;a0:36:fa:26:34:42&quot;<br>=C2=A0 =C2=A0 EEPROM [&quo=
t;ip-addr&quot;] is &quot;192.168.10.3&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot=
;subnet&quot;] is &quot;255.255.255.255&quot;<br>=C2=A0 =C2=A0 EEPROM [&quo=
t;gateway&quot;] is &quot;255.255.255.255&quot;<br>=C2=A0 =C2=A0 EEPROM [&q=
uot;gpsdo&quot;] is &quot;none&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;serial&=
quot;] is &quot;E4R14V2UN&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;name&quot;] =
is &quot;&quot;<br><br>Power-cycle the USRP device for the changes to take =
effect.<br><br>Done<div class=3D"gmail-m_1429041156151116054gmail-m_-783974=
566588487241gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m=
_-2263946608738406543gmail-m_1833416351567459632gmail-m_8429522937710005813=
gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-27232755232=
25085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-86=
30331225465229725gmail-m_-5090455826936873702gmail-yj6qo"></div><div class=
=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail-m_-87877309=
56157389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543gmail-m_=
1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741g=
mail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-644981345635=
4474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-509=
0455826936873702gmail-adL"><br></div></div></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 3:=
19 PM Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com" t=
arget=3D"_blank">jason@gardettoengineering.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">




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
<div id=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail-m_-8=
787730956157389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543g=
mail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519=
994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-64498=
13456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail=
-m_-5090455826936873702gmail-m_3403553355508831478Signature">
<div>
<div id=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail-m_-8=
787730956157389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543g=
mail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519=
994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-64498=
13456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail=
-m_-5090455826936873702gmail-m_3403553355508831478appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail-m_-8=
787730956157389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543g=
mail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519=
994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-64498=
13456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail=
-m_-5090455826936873702gmail-m_3403553355508831478divRplyFwdMsg" dir=3D"ltr=
"><font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000=
000"><b>From:</b> Sumit Kumar &lt;<a href=3D"mailto:cogwsn@gmail.com" targe=
t=3D"_blank">cogwsn@gmail.com</a>&gt;<br>
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
<div class=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail-m=
_-8787730956157389152gmail-m_-8846324310455197473gmail-m_-22639466087384065=
43gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819=
519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-64=
49813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gm=
ail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail_quote">
<div dir=3D"ltr" class=3D"gmail-m_1429041156151116054gmail-m_-7839745665884=
87241gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_-22639=
46608738406543gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m=
_-7763822819519994741gmail-m_8077291001688814057gmail-m_-272327552322508597=
7gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-863033122=
5465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail_at=
tr">On Wed, Jul 17, 2019 at 1:50 PM Jason Matusiak &lt;<a href=3D"mailto:ja=
son@gardettoengineering.com" target=3D"_blank">jason@gardettoengineering.co=
m</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241=
gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_-2263946608=
738406543gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-776=
3822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmai=
l-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-86303312254652=
29725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">
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
<div id=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail-m_-8=
787730956157389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543g=
mail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519=
994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-64498=
13456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail=
-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_650640734424507=
9092Signature">
<div>
<div id=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail-m_-8=
787730956157389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543g=
mail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519=
994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-64498=
13456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail=
-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_650640734424507=
9092appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail-m_-8=
787730956157389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543g=
mail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519=
994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-64498=
13456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail=
-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_650640734424507=
9092divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calib=
ri, sans-serif" color=3D"#000000"><b>From:</b> Sumit Kumar &lt;<a href=3D"m=
ailto:cogwsn@gmail.com" target=3D"_blank">cogwsn@gmail.com</a>&gt;<br>
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
<div class=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail-m=
_-8787730956157389152gmail-m_-8846324310455197473gmail-m_-22639466087384065=
43gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819=
519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-64=
49813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gm=
ail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_650640734424=
5079092x_gmail_quote">
<div dir=3D"ltr" class=3D"gmail-m_1429041156151116054gmail-m_-7839745665884=
87241gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_-22639=
46608738406543gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m=
_-7763822819519994741gmail-m_8077291001688814057gmail-m_-272327552322508597=
7gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-863033122=
5465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_=
6506407344245079092x_gmail_attr">On Wed, Jul 17, 2019 at 1:19 PM Jason Matu=
siak &lt;<a href=3D"mailto:jason@gardettoengineering.com" target=3D"_blank"=
>jason@gardettoengineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241=
gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_-2263946608=
738406543gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-776=
3822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmai=
l-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-86303312254652=
29725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_65064=
07344245079092x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I am not really an N-series guy, so this probably won&#39;t be helpful.=C2=
=A0 Have you tried doing a uhd_usrp_probe on both devices and seen that the=
 responses are consistent?</div>
<div id=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail-m_-8=
787730956157389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543g=
mail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519=
994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-64498=
13456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail=
-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_650640734424507=
9092x_gmail-m_9014729813065413461Signature">
<div>
<div id=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail-m_-8=
787730956157389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543g=
mail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519=
994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-64498=
13456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail=
-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_650640734424507=
9092x_gmail-m_9014729813065413461appendonsend">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail-m_-8=
787730956157389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543g=
mail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519=
994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-64498=
13456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail=
-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_650640734424507=
9092x_gmail-m_9014729813065413461divRplyFwdMsg" dir=3D"ltr">
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
<div dir=3D"ltr" class=3D"gmail-m_1429041156151116054gmail-m_-7839745665884=
87241gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_-22639=
46608738406543gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m=
_-7763822819519994741gmail-m_8077291001688814057gmail-m_-272327552322508597=
7gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-863033122=
5465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_=
6506407344245079092x_gmail-m_9014729813065413461x_gmail_signature">
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
<div dir=3D"ltr" class=3D"gmail-m_1429041156151116054gmail-m_-7839745665884=
87241gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_-22639=
46608738406543gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m=
_-7763822819519994741gmail-m_8077291001688814057gmail-m_-272327552322508597=
7gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-863033122=
5465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_=
6506407344245079092x_gmail_signature">
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
<div dir=3D"ltr" class=3D"gmail-m_1429041156151116054gmail-m_-7839745665884=
87241gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_-22639=
46608738406543gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m=
_-7763822819519994741gmail-m_8077291001688814057gmail-m_-272327552322508597=
7gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-863033122=
5465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail_si=
gnature">
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
 class=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail-m_-87=
87730956157389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543gm=
ail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-77638228195199=
94741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-644981=
3456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-=
m_-5090455826936873702gmail_signature"><div dir=3D"ltr"><div><div dir=3D"lt=
r"><span style=3D"color:rgb(136,136,136);font-size:12.8px">--=C2=A0</span><=
br style=3D"color:rgb(136,136,136);font-size:12.8px"><div style=3D"color:rg=
b(136,136,136);font-size:12.8px">Sumit kumar<br>Postdoc</div><div style=3D"=
color:rgb(136,136,136);font-size:12.8px">SnT, Luxembourg</div><div style=3D=
"color:rgb(136,136,136);font-size:12.8px"><br></div><br></div></div></div><=
/div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail-m_-87=
87730956157389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543gm=
ail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-77638228195199=
94741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-644981=
3456354474750gmail-m_-5406334666104058457gmail_signature"><div dir=3D"ltr">=
<div><div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-size:12.8p=
x">--=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8px"><di=
v style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar<br>Postdoc<=
/div><div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT, Luxembourg=
</div><div style=3D"color:rgb(136,136,136);font-size:12.8px"><br></div><br>=
</div></div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail-m_-87=
87730956157389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543gm=
ail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-77638228195199=
94741gmail-m_8077291001688814057gmail_signature"><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-size:12.8px">--=C2=
=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8px"><div style=
=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar<br>Postdoc</div><d=
iv style=3D"color:rgb(136,136,136);font-size:12.8px">SnT, Luxembourg</div><=
div style=3D"color:rgb(136,136,136);font-size:12.8px"><br></div><br></div><=
/div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail-m_-87=
87730956157389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543gm=
ail-m_1833416351567459632gmail-m_8429522937710005813gmail_signature"><div d=
ir=3D"ltr"><div><div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font=
-size:12.8px">--=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:=
12.8px"><div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar<=
br>Postdoc</div><div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT,=
 Luxembourg</div><div style=3D"color:rgb(136,136,136);font-size:12.8px"><br=
></div><br></div></div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail-m_-87=
87730956157389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543gm=
ail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span style=3D"color:=
rgb(136,136,136);font-size:12.8px">--=C2=A0</span><br style=3D"color:rgb(13=
6,136,136);font-size:12.8px"><div style=3D"color:rgb(136,136,136);font-size=
:12.8px">Sumit kumar<br>Postdoc</div><div style=3D"color:rgb(136,136,136);f=
ont-size:12.8px">SnT, Luxembourg</div><div style=3D"color:rgb(136,136,136);=
font-size:12.8px"><br></div><br></div></div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_1429041156151116054gmail-m_-783974566588487241gmail_signa=
ture"><div dir=3D"ltr"><div><div dir=3D"ltr"><span style=3D"color:rgb(136,1=
36,136);font-size:12.8px">--=C2=A0</span><br style=3D"color:rgb(136,136,136=
);font-size:12.8px"><div style=3D"color:rgb(136,136,136);font-size:12.8px">=
Sumit kumar<br>Postdoc</div><div style=3D"color:rgb(136,136,136);font-size:=
12.8px">SnT, Luxembourg</div><div style=3D"color:rgb(136,136,136);font-size=
:12.8px"><br></div><br></div></div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span sty=
le=3D"color:rgb(136,136,136);font-size:12.8px">--=C2=A0</span><br style=3D"=
color:rgb(136,136,136);font-size:12.8px"><div style=3D"color:rgb(136,136,13=
6);font-size:12.8px">Sumit kumar<br>Postdoc</div><div style=3D"color:rgb(13=
6,136,136);font-size:12.8px">SnT, Luxembourg</div><div style=3D"color:rgb(1=
36,136,136);font-size:12.8px"><br></div><br></div></div></div></div>

--0000000000006139e3058de488f1--


--===============8670611959217688799==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8670611959217688799==--

