Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 034776BF86
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2019 18:17:29 +0200 (CEST)
Received: from [::1] (port=58126 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnmcR-0006k2-F9; Wed, 17 Jul 2019 12:17:27 -0400
Received: from mail-oi1-f171.google.com ([209.85.167.171]:36194)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <cogwsn@gmail.com>) id 1hnmcM-0006bN-Gw
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 12:17:22 -0400
Received: by mail-oi1-f171.google.com with SMTP id w7so18947657oic.3
 for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2019 09:17:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FhrBIT2HnwZ676bJ7u+JkQiYVkvdQslDPEJnxFh4kVk=;
 b=sGjp6npZobVcardHnNFzPgzofIWWSmQ+trXFxQpNFHkxV6DS+qut+tphKLU3lQPXIP
 LdfuGmTSNpyQ8Gaf2J796G7mk/NIck8lL5UJLI4y4i6XUbOhiDXOPBr71e933OpbSH3h
 vCPEcBzHNXm8RuTP5h3sZgQeqP1pn7uVLXX18SChPsmTjoIzp8aG6UreiGTsQgAsqJcw
 wHCu6KCE/iWSH/VL3I9znhAf4ERCwSryAjv2V4Yj0YJ4uCkIOOiu7W3sj2Ak/BQvz9n6
 CNPaohKSmulX/v1d1I6mA6pNh6rjHrm36vSe+nNtmwIxetz2C/0R0aBie949K27py/Ur
 p9dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FhrBIT2HnwZ676bJ7u+JkQiYVkvdQslDPEJnxFh4kVk=;
 b=uAoGkiJSu1F1Ioj8ogMPOcpcU+ervIhfjad7WiooLgnDi8xgfGPNKymRtKntzdxODV
 /LvosVZT4ET90mZX79bMNg3BoH5XFwCDotLqQiOZCy1GSUXpOY58FaSAzjRoOaiQ0XGO
 +UCX4LJDUBfCwAbEoQjSnO59sANPB6RTHIQuCFt9cJ8th1bPzcFGKb2OemZB9MyXch3E
 v842KzochQvcg2zprt0H8uD8E7s6rlbknP8fyC/aqNh3b5R0NFKnmTzdgt2xRVMe7YR2
 GewcjLBRQFFYfPatYNJuWieqg6a/bbtDeyoMPm6mAiwa9BVWDECTjQG08c3+XH+Co/a+
 Rxxg==
X-Gm-Message-State: APjAAAVKksmI9WxURUgRG8Z1s4h+TmIWupP6to34XwBxQdmR2+lOY/3z
 5RD8IUKT7Zm/7asSApQyRkN7mtBttORoATXkBps=
X-Google-Smtp-Source: APXvYqxxlZ6ubRfd3PFSw7p2WiCJOSKSxta50eqBUU67dyX7c7XiwS46rLPPjbGrwDMTTFgHri8UWKhyOOcprnX3UAY=
X-Received: by 2002:a54:4f95:: with SMTP id g21mr20102769oiy.23.1563380201650; 
 Wed, 17 Jul 2019 09:16:41 -0700 (PDT)
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
In-Reply-To: <CAL263iwRxNo3WAJN9zysjsMhTvB5EJxwjNDiB8csg-YoJpwDzA@mail.gmail.com>
Date: Wed, 17 Jul 2019 18:16:30 +0200
Message-ID: <CAOExtcSGqG5EP_YF6TFWdZb4wwsKbjb7vmuMh=gFABxQE4M40w@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============6020016013235226423=="
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

--===============6020016013235226423==
Content-Type: multipart/alternative; boundary="000000000000917ef8058de2d1a1"

--000000000000917ef8058de2d1a1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nate,

john@john-Precision-M4600:~/pybombs/src/uhd/host/build/examples$ sudo
./benchmark_rate --rx_rate 10e6 --tx_rate 10e6 --duration 600

[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
UHD_3.15.0.git-1-gf83faf28
[00:00:00.000024] Creating the usrp device with: ...
[INFO] [USRP2] Opening a USRP2/N-Series device...
[INFO] [USRP2] Current recv frame size: 1472 bytes
[INFO] [USRP2] Current send frame size: 1472 bytes
Using Device: Single USRP:
  Device: USRP2 / N-Series Device
  Mboard 0: N200r4
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: SBXv3 RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: SBXv3 TX

[00:00:01.788223] Setting device timestamp to 0...
[00:00:01.788784] Testing receive rate 10.000000 Msps on 1 channels
[00:00:01.799861] Testing transmit rate 10.000000 Msps on 1 channels
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSUSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSS[00:00:01.905237]
Tx timeouts: 1
[00:10:01.932746] Benchmark complete.


Benchmark rate summary:
  Num received samples:     6000102237
  Num dropped samples:      0
  Num overruns detected:    0
  Num transmitted samples:  258456
  Num sequence errors (Tx): 624
  Num sequence errors (Rx): 0
  Num underruns detected:   1
  Num late commands:        0
  Num timeouts (Tx):        5993

On Wed, Jul 17, 2019 at 5:36 PM Nate Temple <nate.temple@ettus.com> wrote:

> Hi Sumit,
>
> Actually, I had a typo in the command, that previous benchmark_rate
> command only tested RX, can you try passing the --tx_rate param and see i=
f
> it will produce sequence errors using benchmark_rate
>
> ./benchmark_rate --tx_rate 10e6 --duration 600
>
> Regards,
> Nate Temple
>
> On Wed, Jul 17, 2019 at 8:27 AM Sumit Kumar <cogwsn@gmail.com> wrote:
>
>> Ok I will do this.. but why the transmission with other USRP is working
>> fine ?
>>
>> On Wed, Jul 17, 2019 at 5:22 PM Nate Temple <nate.temple@ettus.com>
>> wrote:
>>
>>> Hi Sumit,
>>>
>>> So it looks like you have multiple version of UHD installed:
>>>
>>> john@john-Precision-M4600:~/pybombs/src/gnuradio/gr-digital/examples/na=
rrowband$
>>> sudo ./benchmark_tx.py -f 2.45G -S 10
>>> linux; GNU C++ version 5.3.1 20151219; Boost_105800;
>>> UHD_003.009.002-0-unknown
>>>
>>>
>>> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/examples$ sudo
>>> ./benchmark_rate --rx_rate 10e6 --duration 600
>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>>> UHD_3.15.0.git-1-gf83faf28
>>>
>>>
>>> I would recommend to stick to a single UHD version and use the latest
>>> stable tagged released (currently 3.14.1.0) you will need to modify the
>>> pybombs recipe to use the correct git tag (v3.14.1.0). The 'master' bra=
nch
>>> can be unstable at times.
>>>
>>> Also, if you have a FPGA image of say 3.15.x.x flashed on the N210 and
>>> then revert back to using 3.9.2, and UHD does not catch the mismatch, i=
t
>>> will likely cause flow control errors and unstable performance.
>>>
>>> The gr-digital/examples/narrowband/benchmark_tx.py example is also
>>> buggy, and is being removed from GR 3.8. Using the UHD benchmark_rate
>>> utility will test the hardware with a limited scope.
>>>
>>> Regards,
>>> Nate Temple
>>>
>>>
>>> On Wed, Jul 17, 2019 at 8:10 AM Sumit Kumar <cogwsn@gmail.com> wrote:
>>>
>>>> Sorry, here it is.
>>>>
>>>> Benchmark rate summary:
>>>>   Num received samples:     5999986436
>>>>   Num dropped samples:      0
>>>>   Num overruns detected:    0
>>>>   Num transmitted samples:  0
>>>>   Num sequence errors (Tx): 0
>>>>   Num sequence errors (Rx): 0
>>>>   Num underruns detected:   0
>>>>   Num late commands:        0
>>>>   Num timeouts (Tx):        0
>>>>   Num timeouts (Rx):        0
>>>>
>>>>
>>>> On Wed, Jul 17, 2019 at 5:08 PM Nate Temple <nate.temple@ettus.com>
>>>> wrote:
>>>>
>>>>> Hi Sumit,
>>>>>
>>>>> It will take 10 minutes for that run to complete. Does it produce a
>>>>> report at the end of the run?
>>>>>
>>>>> Regards,
>>>>> Nate Temple
>>>>>
>>>>> On Wed, Jul 17, 2019 at 8:06 AM Sumit Kumar <cogwsn@gmail.com> wrote:
>>>>>
>>>>>> Hi Nate,
>>>>>> No there are not. At the end of the last line, cursor keeps blinking=
,
>>>>>> no sequence errors.
>>>>>>
>>>>>> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/examples$
>>>>>> sudo ./benchmark_rate --rx_rate 10e6 --duration 600
>>>>>>
>>>>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>>>>>> UHD_3.15.0.git-1-gf83faf28
>>>>>> [00:00:00.000024] Creating the usrp device with: ...
>>>>>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>>>>>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>>>>>> [INFO] [USRP2] Current send frame size: 1472 bytes
>>>>>> Using Device: Single USRP:
>>>>>>   Device: USRP2 / N-Series Device
>>>>>>   Mboard 0: N200r4
>>>>>>   RX Channel: 0
>>>>>>     RX DSP: 0
>>>>>>     RX Dboard: A
>>>>>>     RX Subdev: SBXv3 RX
>>>>>>   TX Channel: 0
>>>>>>     TX DSP: 0
>>>>>>     TX Dboard: A
>>>>>>     TX Subdev: SBXv3 TX
>>>>>>
>>>>>> [00:00:01.796895] Setting device timestamp to 0...
>>>>>> [00:00:01.797430] Testing receive rate 10.000000 Msps on 1 channels
>>>>>>
>>>>>> On Wed, Jul 17, 2019 at 4:39 PM Nate Temple <nate.temple@ettus.com>
>>>>>> wrote:
>>>>>>
>>>>>>> Hi Sumit,
>>>>>>>
>>>>>>> If you run benchmark_rate for an extend period of time, do you see
>>>>>>> any sequence errors?
>>>>>>>
>>>>>>> /usr/local/lib/uhd/examples/benchmark_rate --rx_rate 10e6 --duratio=
n
>>>>>>> 600
>>>>>>>
>>>>>>>
>>>>>>> Regards,
>>>>>>> Nate Temple
>>>>>>>
>>>>>>> On Wed, Jul 17, 2019 at 7:34 AM Sumit Kumar <cogwsn@gmail.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> Hi Nate,
>>>>>>>> Yes I addressed the first 2 points you mentioned.
>>>>>>>>
>>>>>>>> john@john-Precision-M4600:~/pybombs/src/gnuradio/gr-digital/exampl=
es/narrowband$
>>>>>>>> sudo ./benchmark_tx.py -f 2.45G -S 10
>>>>>>>> linux; GNU C++ version 5.3.1 20151219; Boost_105800;
>>>>>>>> UHD_003.009.002-0-unknown
>>>>>>>>
>>>>>>>> Using Volk machine: avx_64_mmx_orc
>>>>>>>> -- Opening a USRP2/N-Series device...
>>>>>>>> -- Current recv frame size: 1472 bytes
>>>>>>>> -- Current send frame size: 1472 bytes
>>>>>>>>
>>>>>>>> No gain specified.
>>>>>>>> Setting gain to 15.750000 (from [0.000000, 31.500000])
>>>>>>>>
>>>>>>>> ..................................................................=
............................SS.SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.SSSS..S......S=
S.S......SS.....S....S...S.S.......S....S........^C
>>>>>>>>
>>>>>>>> I am using ./benchmark_tx.py located
>>>>>>>> in gnuradio/gr-digital/examples/narrowband
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> On Wed, Jul 17, 2019 at 4:25 PM Nate Temple <nate.temple@ettus.com=
>
>>>>>>>> wrote:
>>>>>>>>
>>>>>>>>> Hi Sumit,
>>>>>>>>>
>>>>>>>>> A couple things to address:
>>>>>>>>>
>>>>>>>>> 1) Enable Thread priority scheduling on your host
>>>>>>>>>
>>>>>>>>> Note it is throwing a warning in the output: "[WARNING] [UHD]
>>>>>>>>> Unable to set the thread priority. Performance may be negatively =
affected."
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source=
_Toolchain_(UHD_and_GNU_Radio)_on_Linux#Thread_priority_scheduling
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> 2) Adjust your network buffers
>>>>>>>>>
>>>>>>>>> "
>>>>>>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently=
.
>>>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>>>> See the transport application notes on buffer resizing.
>>>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently=
.
>>>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>>>> See the transport application notes on buffer resizing.
>>>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>>>> "
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=
#N2xx
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> What is the command you're using to transmit(which utility and
>>>>>>>>> args?)
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> Regards,
>>>>>>>>> Nate Temple
>>>>>>>>>
>>>>>>>>> On Wed, Jul 17, 2019 at 7:06 AM Sumit Kumar via USRP-users <
>>>>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>>>>
>>>>>>>>>> Following is what I am getting after the command you asked to
>>>>>>>>>> run. The 192.168.10.5 gives SSSSSSS.
>>>>>>>>>>
>>>>>>>>>> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$
>>>>>>>>>> ./usrp_burn_mb_eeprom --read-all --args "addr=3D192.168.10.5"
>>>>>>>>>> Creating USRP device from address: addr=3D192.168.10.5
>>>>>>>>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800=
;
>>>>>>>>>> UHD_3.15.0.git-1-gf83faf28
>>>>>>>>>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>>>>>>>>>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>>>>>>>>>> [INFO] [USRP2] Current send frame size: 1472 bytes
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
>>>>>>>>>> [WARNING] [UDP] The send buffer could not be resized sufficientl=
y.
>>>>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>>>>> See the transport application notes on buffer resizing.
>>>>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>>>>> [WARNING] [UHD] Unable to set the thread priority. Performance
>>>>>>>>>> may be negatively affected.
>>>>>>>>>> Please see the general application notes in the manual for
>>>>>>>>>> instructions.
>>>>>>>>>> EnvironmentError: OSError: error in pthread_setschedparam
>>>>>>>>>>
>>>>>>>>>> Fetching current settings from EEPROM...
>>>>>>>>>>     EEPROM ["hardware"] is "2576"
>>>>>>>>>>     EEPROM ["revision"] is ""
>>>>>>>>>>     EEPROM ["product"] is ""
>>>>>>>>>>     EEPROM ["mac-addr"] is "a0:36:fa:26:34:44"
>>>>>>>>>>     EEPROM ["ip-addr"] is "192.168.10.5"
>>>>>>>>>>     EEPROM ["subnet"] is "255.255.255.255"
>>>>>>>>>>     EEPROM ["gateway"] is "255.255.255.255"
>>>>>>>>>>     EEPROM ["gpsdo"] is "none"
>>>>>>>>>>     EEPROM ["serial"] is "E4R14V4UN"
>>>>>>>>>>     EEPROM ["name"] is ""
>>>>>>>>>>
>>>>>>>>>> Power-cycle the USRP device for the changes to take effect.
>>>>>>>>>>
>>>>>>>>>> Done
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$
>>>>>>>>>> ./usrp_burn_mb_eeprom --read-all --args "addr=3D192.168.10.3"
>>>>>>>>>> Creating USRP device from address: addr=3D192.168.10.3
>>>>>>>>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800=
;
>>>>>>>>>> UHD_3.15.0.git-1-gf83faf28
>>>>>>>>>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>>>>>>>>>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>>>>>>>>>> [INFO] [USRP2] Current send frame size: 1472 bytes
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
>>>>>>>>>> [WARNING] [UDP] The send buffer could not be resized sufficientl=
y.
>>>>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>>>>> See the transport application notes on buffer resizing.
>>>>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>>>>> [WARNING] [UHD] Unable to set the thread priority. Performance
>>>>>>>>>> may be negatively affected.
>>>>>>>>>> Please see the general application notes in the manual for
>>>>>>>>>> instructions.
>>>>>>>>>> EnvironmentError: OSError: error in pthread_setschedparam
>>>>>>>>>>
>>>>>>>>>> Fetching current settings from EEPROM...
>>>>>>>>>>     EEPROM ["hardware"] is "2576"
>>>>>>>>>>     EEPROM ["revision"] is ""
>>>>>>>>>>     EEPROM ["product"] is ""
>>>>>>>>>>     EEPROM ["mac-addr"] is "a0:36:fa:26:34:42"
>>>>>>>>>>     EEPROM ["ip-addr"] is "192.168.10.3"
>>>>>>>>>>     EEPROM ["subnet"] is "255.255.255.255"
>>>>>>>>>>     EEPROM ["gateway"] is "255.255.255.255"
>>>>>>>>>>     EEPROM ["gpsdo"] is "none"
>>>>>>>>>>     EEPROM ["serial"] is "E4R14V2UN"
>>>>>>>>>>     EEPROM ["name"] is ""
>>>>>>>>>>
>>>>>>>>>> Power-cycle the USRP device for the changes to take effect.
>>>>>>>>>>
>>>>>>>>>> Done
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> On Wed, Jul 17, 2019 at 3:19 PM Jason Matusiak <
>>>>>>>>>> jason@gardettoengineering.com> wrote:
>>>>>>>>>>
>>>>>>>>>>> You are right, the table of revisions was for the X-series
>>>>>>>>>>>
>>>>>>>>>>> try running the command from your prefix:
>>>>>>>>>>> src/uhd/host/build/utils/usrp_burn_mb_eeprom --args=3D"type=3Dn=
200" --read-all
>>>>>>>>>>>
>>>>>>>>>>> don't quote me on the type portion, I don't have a board in
>>>>>>>>>>> front of me to see if it is n200 or something else.  I //think/=
/ that will
>>>>>>>>>>> report the major and minor revision values (I am grasping at st=
raws here,
>>>>>>>>>>> just trying to figure out what the differences might be).
>>>>>>>>>>>
>>>>>>>>>>> You are connecting the ethernet connections to the two devices
>>>>>>>>>>> through the exact same port on your PC?
>>>>>>>>>>>
>>>>>>>>>>> ------------------------------
>>>>>>>>>>> *From:* Sumit Kumar <cogwsn@gmail.com>
>>>>>>>>>>> *Sent:* Wednesday, July 17, 2019 8:24 AM
>>>>>>>>>>> *To:* Jason Matusiak <jason@gardettoengineering.com>
>>>>>>>>>>> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>>>>>>>>>> *Subject:* Re: [USRP-users] Sequence Errors N200
>>>>>>>>>>>
>>>>>>>>>>> The sticker  for sbx shows F33612 and F33814.
>>>>>>>>>>> How will this help ?
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> On Wed, Jul 17, 2019 at 1:50 PM Jason Matusiak <
>>>>>>>>>>> jason@gardettoengineering.com> wrote:
>>>>>>>>>>>
>>>>>>>>>>> Sumit,
>>>>>>>>>>>
>>>>>>>>>>> OK, the last idea I have:
>>>>>>>>>>>
>>>>>>>>>>> There is a sticker on the back of the N-series devices it
>>>>>>>>>>> *usually* says the version there, but not always.  This has a
>>>>>>>>>>> little info:
>>>>>>>>>>> https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEP=
ROM_on_USRP_Devices#N200.2F210_EEPROM
>>>>>>>>>>>
>>>>>>>>>>> Do they match?
>>>>>>>>>>>
>>>>>>>>>>> ------------------------------
>>>>>>>>>>> *From:* Sumit Kumar <cogwsn@gmail.com>
>>>>>>>>>>> *Sent:* Wednesday, July 17, 2019 7:45 AM
>>>>>>>>>>> *To:* Jason Matusiak <jason@gardettoengineering.com>
>>>>>>>>>>> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>>>>>>>>>> *Subject:* Re: [USRP-users] Sequence Errors N200
>>>>>>>>>>>
>>>>>>>>>>> Hi Jason,
>>>>>>>>>>>
>>>>>>>>>>> Yes they are consistent, I mean the output of uhd_usrp_probe fo=
r
>>>>>>>>>>> both N200 is exactly the same (except the ip, serial and mac ad=
dr).
>>>>>>>>>>> I do not know where the problem is! Hardware or software
>>>>>>>>>>>
>>>>>>>>>>> Regards
>>>>>>>>>>> Sumit
>>>>>>>>>>>
>>>>>>>>>>> On Wed, Jul 17, 2019 at 1:19 PM Jason Matusiak <
>>>>>>>>>>> jason@gardettoengineering.com> wrote:
>>>>>>>>>>>
>>>>>>>>>>> I am not really an N-series guy, so this probably won't be
>>>>>>>>>>> helpful.  Have you tried doing a uhd_usrp_probe on both devices=
 and seen
>>>>>>>>>>> that the responses are consistent?
>>>>>>>>>>>
>>>>>>>>>>> ------------------------------
>>>>>>>>>>> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on
>>>>>>>>>>> behalf of Sumit Kumar via USRP-users <usrp-users@lists.ettus.co=
m
>>>>>>>>>>> >
>>>>>>>>>>> *Sent:* Wednesday, July 17, 2019 7:15 AM
>>>>>>>>>>> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>>>>>>>>>> *Subject:* [USRP-users] Sequence Errors N200
>>>>>>>>>>>
>>>>>>>>>>> Hi,
>>>>>>>>>>> I am trying transmit using Ettus N200 (call it A) but getting
>>>>>>>>>>> this error message on the console
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSU=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS......................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
............................................
>>>>>>>>>>>
>>>>>>>>>>> I looked for it on google and found these links
>>>>>>>>>>>
>>>>>>>>>>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/201=
4-May/037495.html
>>>>>>>>>>>
>>>>>>>>>>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/201=
2-July/032838.html
>>>>>>>>>>>
>>>>>>>>>>> Both the links  suggested problem related to the gigabit port.
>>>>>>>>>>> Then I connected another USRP N200 (call it B) to the same lapt=
op and tried
>>>>>>>>>>> transmitting using that as there were no such sequence error me=
ssages.
>>>>>>>>>>>
>>>>>>>>>>> This makes me believe there is some problem with the first USRP=
,
>>>>>>>>>>> i.e., A.
>>>>>>>>>>>
>>>>>>>>>>> Further I tried with different versions of UHD 3.11, UHD 3.15..
>>>>>>>>>>> but its the same.
>>>>>>>>>>>
>>>>>>>>>>> Receive is good only transmit is throwing error.
>>>>>>>>>>>
>>>>>>>>>>> Not only with UHD, even in labview, when I transmit, I see
>>>>>>>>>>> nothing coming out from the N200 (A).
>>>>>>>>>>>
>>>>>>>>>>> I am using SBXv2 daughter board.
>>>>>>>>>>>
>>>>>>>>>>> Any clue!
>>>>>>>>>>>
>>>>>>>>>>> Regards
>>>>>>>>>>> --
>>>>>>>>>>> --
>>>>>>>>>>> Sumit kumar
>>>>>>>>>>> Postdoc
>>>>>>>>>>> SnT, Luxembourg
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> --
>>>>>>>>>>> --
>>>>>>>>>>> Sumit kumar
>>>>>>>>>>> Postdoc
>>>>>>>>>>> SnT, Luxembourg
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> --
>>>>>>>>>>> --
>>>>>>>>>>> Sumit kumar
>>>>>>>>>>> Postdoc
>>>>>>>>>>> SnT, Luxembourg
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> --
>>>>>>>>>> --
>>>>>>>>>> Sumit kumar
>>>>>>>>>> Postdoc
>>>>>>>>>> SnT, Luxembourg
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> _______________________________________________
>>>>>>>>>> USRP-users mailing list
>>>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om
>>>>>>>>>>
>>>>>>>>>
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

--000000000000917ef8058de2d1a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Nate,<div><br></div><div>john@john-Precision-M4600=
:~/pybombs/src/uhd/host/build/examples$ sudo ./benchmark_rate --rx_rate 10e=
6 --tx_rate 10e6 --duration 600<span class=3D"gmail-im" style=3D"color:rgb(=
80,0,80)"><br><br>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost=
_105800; UHD_3.15.0.git-1-gf83faf28<br>[00:00:00.000024] Creating the usrp =
device with: ...<br>[INFO] [USRP2] Opening a USRP2/N-Series device...<br>[I=
NFO] [USRP2] Current recv frame size: 1472 bytes<br>[INFO] [USRP2] Current =
send frame size: 1472 bytes<br>Using Device: Single USRP:<br>=C2=A0 Device:=
 USRP2 / N-Series Device<br>=C2=A0 Mboard 0: N200r4<br>=C2=A0 RX Channel: 0=
<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 =
RX Subdev: SBXv3 RX<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=
=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: SBXv3 TX<br><br></sp=
an>[00:00:01.788223] Setting device timestamp to 0...<br>[00:00:01.788784] =
Testing receive rate 10.000000 Msps on 1 channels<br>[00:00:01.799861] Test=
ing transmit rate 10.000000 Msps on 1 channels<br>SSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
[00:00:01.905237] Tx timeouts: 1<br>[00:10:01.932746] Benchmark complete.<b=
r><br><br>Benchmark rate summary:<br>=C2=A0 Num received samples: =C2=A0 =
=C2=A0 6000102237<span class=3D"gmail-im" style=3D"color:rgb(80,0,80)"><br>=
=C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num overruns de=
tected: =C2=A0 =C2=A00<br></span>=C2=A0 Num transmitted samples: =C2=A02584=
56<br>=C2=A0 Num sequence errors (Tx): 624<span class=3D"gmail-im" style=3D=
"color:rgb(80,0,80)"><br>=C2=A0 Num sequence errors (Rx): 0<br></span>=C2=
=A0 Num underruns detected: =C2=A0 1<br>=C2=A0 Num late commands: =C2=A0 =
=C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=
=A05993<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Wed, Jul 17, 2019 at 5:36 PM Nate Temple &lt;<a href=3D=
"mailto:nate.temple@ettus.com">nate.temple@ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div c=
lass=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">Hi =
Sumit,</div><div class=3D"gmail_default" style=3D"font-family:arial,helveti=
ca,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:=
arial,helvetica,sans-serif">Actually, I had a typo in the command, that pre=
vious benchmark_rate command only tested RX, can you try passing the --tx_r=
ate param and see if it will produce sequence errors using benchmark_rate</=
div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-=
serif"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">./benchmark_rate --tx_rate 10e6 --duration 600<span cla=
ss=3D"gmail-m_-8787730956157389152m_-8846324310455197473gmail-im"><span cla=
ss=3D"gmail-m_-8787730956157389152m_-8846324310455197473gmail-m_80772910016=
88814057gmail-im" style=3D"color:rgb(80,0,80)"><br></span></span></div><div=
 class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><=
span class=3D"gmail-m_-8787730956157389152m_-8846324310455197473gmail-im"><=
span class=3D"gmail-m_-8787730956157389152m_-8846324310455197473gmail-m_807=
7291001688814057gmail-im" style=3D"color:rgb(80,0,80)"><br></span></span></=
div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-=
serif"><span class=3D"gmail-m_-8787730956157389152m_-8846324310455197473gma=
il-im"><span class=3D"gmail-m_-8787730956157389152m_-8846324310455197473gma=
il-m_8077291001688814057gmail-im" style=3D"color:rgb(80,0,80)">Regards,</sp=
an></span></div><div class=3D"gmail_default" style=3D"font-family:arial,hel=
vetica,sans-serif"><span class=3D"gmail-m_-8787730956157389152m_-8846324310=
455197473gmail-im"><span class=3D"gmail-m_-8787730956157389152m_-8846324310=
455197473gmail-m_8077291001688814057gmail-im" style=3D"color:rgb(80,0,80)">=
Nate Temple<br></span></span></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 8:27 AM Sumit Ku=
mar &lt;<a href=3D"mailto:cogwsn@gmail.com" target=3D"_blank">cogwsn@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr">Ok I will do this.. but why the transmission with other=
 USRP is working fine ?=C2=A0</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 5:22 PM Nate Temple &=
lt;<a href=3D"mailto:nate.temple@ettus.com" target=3D"_blank">nate.temple@e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:=
arial,helvetica,sans-serif">Hi Sumit,<br><br>So it looks like you have mult=
iple version of UHD installed:<br><br>john@john-Precision-M4600:~/pybombs/s=
rc/gnuradio/gr-digital/examples/narrowband$ sudo ./benchmark_tx.py -f 2.45G=
 -S 10<br>linux; GNU C++ version 5.3.1 20151219; Boost_105800; UHD_003.009.=
002-0-unknown<br><br><br>john@john-Precision-M4600:~/pybombs/src/uhd/host/b=
uild/examples$ sudo ./benchmark_rate --rx_rate 10e6 --duration 600<br>[INFO=
] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.15.0.git=
-1-gf83faf28<br><br><br>I would recommend to stick to a single UHD version =
and use the latest stable tagged released (currently 3.14.1.0) you will nee=
d to modify the pybombs recipe to use the correct git tag (v3.14.1.0). The =
&#39;master&#39; branch can be unstable at times.<br><br>Also, if you have =
a FPGA image of say 3.15.x.x flashed on the N210 and then revert back to us=
ing 3.9.2, and UHD does not catch the mismatch, it will likely cause flow c=
ontrol errors and unstable performance.<br><br>The gr-digital/examples/narr=
owband/benchmark_tx.py example is also buggy, and is being removed from GR =
3.8. Using the UHD benchmark_rate utility will test the hardware with a lim=
ited scope.<br><br>Regards,<br>Nate Temple<br><br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 201=
9 at 8:10 AM Sumit Kumar &lt;<a href=3D"mailto:cogwsn@gmail.com" target=3D"=
_blank">cogwsn@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr">Sorry, here it is.<div><br></div><=
div>Benchmark rate summary:<br>=C2=A0 Num received samples: =C2=A0 =C2=A0 5=
999986436<br>=C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Nu=
m overruns detected: =C2=A0 =C2=A00<br>=C2=A0 Num transmitted samples: =C2=
=A00<br>=C2=A0 Num sequence errors (Tx): 0<br>=C2=A0 Num sequence errors (R=
x): 0<br>=C2=A0 Num underruns detected: =C2=A0 0<br>=C2=A0 Num late command=
s: =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =
=C2=A0 =C2=A00<br>=C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br=
></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Wed, Jul 17, 2019 at 5:08 PM Nate Temple &lt;<a hr=
ef=3D"mailto:nate.temple@ettus.com" target=3D"_blank">nate.temple@ettus.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Sumit,<br><br>It will take 10 minutes for that run t=
o complete. Does it produce a report at the end of the run?<br><br>Regards,=
<br>Nate Temple<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 8:06 AM Sumit Kumar &lt;<a=
 href=3D"mailto:cogwsn@gmail.com" target=3D"_blank">cogwsn@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr">Hi=C2=A0Nate,<div>No there are not. At the end of the last line, =
cursor keeps blinking, no sequence errors.=C2=A0<br><div><br></div><div>joh=
n@john-Precision-M4600:~/pybombs/src/uhd/host/build/examples$ sudo ./benchm=
ark_rate --rx_rate 10e6 --duration 600<span class=3D"gmail-m_-8787730956157=
389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543gmail-m_18334=
16351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-=
m_8077291001688814057gmail-im" style=3D"color:rgb(80,0,80)"><br><br>[INFO] =
[UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.15.0.git-1=
-gf83faf28<br></span>[00:00:00.000024] Creating the usrp device with: ...<s=
pan class=3D"gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-=
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
 the changes to take effect.<br><br>Done<div class=3D"gmail-m_-878773095615=
7389152gmail-m_-8846324310455197473gmail-m_-2263946608738406543gmail-m_1833=
416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail=
-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474=
750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455=
826936873702gmail-yj6qo"></div><div class=3D"gmail-m_-8787730956157389152gm=
ail-m_-8846324310455197473gmail-m_-2263946608738406543gmail-m_1833416351567=
459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_807729=
1001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-=
m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873=
702gmail-adL"><br></div></div></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 3:19 PM Jason M=
atusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com" target=3D"_bla=
nk">jason@gardettoengineering.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">




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
<div id=3D"gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_=
-2263946608738406543gmail-m_1833416351567459632gmail-m_8429522937710005813g=
mail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-272327552322=
5085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-863=
0331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478Sign=
ature">
<div>
<div id=3D"gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_=
-2263946608738406543gmail-m_1833416351567459632gmail-m_8429522937710005813g=
mail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-272327552322=
5085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-863=
0331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478appe=
ndonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_=
-2263946608738406543gmail-m_1833416351567459632gmail-m_8429522937710005813g=
mail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-272327552322=
5085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-863=
0331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478divR=
plyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans=
-serif" color=3D"#000000"><b>From:</b> Sumit Kumar &lt;<a href=3D"mailto:co=
gwsn@gmail.com" target=3D"_blank">cogwsn@gmail.com</a>&gt;<br>
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
<div class=3D"gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail=
-m_-2263946608738406543gmail-m_1833416351567459632gmail-m_84295229377100058=
13gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-272327552=
3225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-=
8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x=
_gmail_quote">
<div dir=3D"ltr" class=3D"gmail-m_-8787730956157389152gmail-m_-884632431045=
5197473gmail-m_-2263946608738406543gmail-m_1833416351567459632gmail-m_84295=
22937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-=
m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058=
457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_34035533=
55508831478x_gmail_attr">On Wed, Jul 17, 2019 at 1:50 PM Jason Matusiak &lt=
;<a href=3D"mailto:jason@gardettoengineering.com" target=3D"_blank">jason@g=
ardettoengineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail-m_-8787730956157389152gmail-m_-88463243104551974=
73gmail-m_-2263946608738406543gmail-m_1833416351567459632gmail-m_8429522937=
710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-27=
23275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gm=
ail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508=
831478x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">
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
<div id=3D"gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_=
-2263946608738406543gmail-m_1833416351567459632gmail-m_8429522937710005813g=
mail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-272327552322=
5085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-863=
0331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gm=
ail-m_6506407344245079092Signature">
<div>
<div id=3D"gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_=
-2263946608738406543gmail-m_1833416351567459632gmail-m_8429522937710005813g=
mail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-272327552322=
5085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-863=
0331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gm=
ail-m_6506407344245079092appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_=
-2263946608738406543gmail-m_1833416351567459632gmail-m_8429522937710005813g=
mail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-272327552322=
5085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-863=
0331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gm=
ail-m_6506407344245079092divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-siz=
e:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Sumit K=
umar &lt;<a href=3D"mailto:cogwsn@gmail.com" target=3D"_blank">cogwsn@gmail=
.com</a>&gt;<br>
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
<div class=3D"gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail=
-m_-2263946608738406543gmail-m_1833416351567459632gmail-m_84295229377100058=
13gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-272327552=
3225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-=
8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x=
_gmail-m_6506407344245079092x_gmail_quote">
<div dir=3D"ltr" class=3D"gmail-m_-8787730956157389152gmail-m_-884632431045=
5197473gmail-m_-2263946608738406543gmail-m_1833416351567459632gmail-m_84295=
22937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-=
m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058=
457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_34035533=
55508831478x_gmail-m_6506407344245079092x_gmail_attr">On Wed, Jul 17, 2019 =
at 1:19 PM Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.c=
om" target=3D"_blank">jason@gardettoengineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail-m_-8787730956157389152gmail-m_-88463243104551974=
73gmail-m_-2263946608738406543gmail-m_1833416351567459632gmail-m_8429522937=
710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-27=
23275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gm=
ail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508=
831478x_gmail-m_6506407344245079092x_gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I am not really an N-series guy, so this probably won&#39;t be helpful.=C2=
=A0 Have you tried doing a uhd_usrp_probe on both devices and seen that the=
 responses are consistent?</div>
<div id=3D"gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_=
-2263946608738406543gmail-m_1833416351567459632gmail-m_8429522937710005813g=
mail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-272327552322=
5085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-863=
0331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gm=
ail-m_6506407344245079092x_gmail-m_9014729813065413461Signature">
<div>
<div id=3D"gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_=
-2263946608738406543gmail-m_1833416351567459632gmail-m_8429522937710005813g=
mail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-272327552322=
5085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-863=
0331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gm=
ail-m_6506407344245079092x_gmail-m_9014729813065413461appendonsend">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_=
-2263946608738406543gmail-m_1833416351567459632gmail-m_8429522937710005813g=
mail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-272327552322=
5085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-863=
0331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gm=
ail-m_6506407344245079092x_gmail-m_9014729813065413461divRplyFwdMsg" dir=3D=
"ltr">
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
<div dir=3D"ltr" class=3D"gmail-m_-8787730956157389152gmail-m_-884632431045=
5197473gmail-m_-2263946608738406543gmail-m_1833416351567459632gmail-m_84295=
22937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-=
m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058=
457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_34035533=
55508831478x_gmail-m_6506407344245079092x_gmail-m_9014729813065413461x_gmai=
l_signature">
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
<div dir=3D"ltr" class=3D"gmail-m_-8787730956157389152gmail-m_-884632431045=
5197473gmail-m_-2263946608738406543gmail-m_1833416351567459632gmail-m_84295=
22937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-=
m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058=
457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_34035533=
55508831478x_gmail-m_6506407344245079092x_gmail_signature">
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
<div dir=3D"ltr" class=3D"gmail-m_-8787730956157389152gmail-m_-884632431045=
5197473gmail-m_-2263946608738406543gmail-m_1833416351567459632gmail-m_84295=
22937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-=
m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058=
457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_34035533=
55508831478x_gmail_signature">
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
 class=3D"gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_-=
2263946608738406543gmail-m_1833416351567459632gmail-m_8429522937710005813gm=
ail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225=
085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-8630=
331225465229725gmail-m_-5090455826936873702gmail_signature"><div dir=3D"ltr=
"><div><div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-size:12.=
8px">--=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8px"><=
div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar<br>Postdo=
c</div><div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT, Luxembou=
rg</div><div style=3D"color:rgb(136,136,136);font-size:12.8px"><br></div><b=
r></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_-=
2263946608738406543gmail-m_1833416351567459632gmail-m_8429522937710005813gm=
ail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225=
085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail_signatu=
re"><div dir=3D"ltr"><div><div dir=3D"ltr"><span style=3D"color:rgb(136,136=
,136);font-size:12.8px">--=C2=A0</span><br style=3D"color:rgb(136,136,136);=
font-size:12.8px"><div style=3D"color:rgb(136,136,136);font-size:12.8px">Su=
mit kumar<br>Postdoc</div><div style=3D"color:rgb(136,136,136);font-size:12=
.8px">SnT, Luxembourg</div><div style=3D"color:rgb(136,136,136);font-size:1=
2.8px"><br></div><br></div></div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_-=
2263946608738406543gmail-m_1833416351567459632gmail-m_8429522937710005813gm=
ail-m_-7763822819519994741gmail-m_8077291001688814057gmail_signature"><div =
dir=3D"ltr"><div><div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);fon=
t-size:12.8px">--=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size=
:12.8px"><div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar=
<br>Postdoc</div><div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT=
, Luxembourg</div><div style=3D"color:rgb(136,136,136);font-size:12.8px"><b=
r></div><br></div></div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_-=
2263946608738406543gmail-m_1833416351567459632gmail-m_8429522937710005813gm=
ail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span style=3D"color:=
rgb(136,136,136);font-size:12.8px">--=C2=A0</span><br style=3D"color:rgb(13=
6,136,136);font-size:12.8px"><div style=3D"color:rgb(136,136,136);font-size=
:12.8px">Sumit kumar<br>Postdoc</div><div style=3D"color:rgb(136,136,136);f=
ont-size:12.8px">SnT, Luxembourg</div><div style=3D"color:rgb(136,136,136);=
font-size:12.8px"><br></div><br></div></div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_-8787730956157389152gmail-m_-8846324310455197473gmail-m_-=
2263946608738406543gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">=
<span style=3D"color:rgb(136,136,136);font-size:12.8px">--=C2=A0</span><br =
style=3D"color:rgb(136,136,136);font-size:12.8px"><div style=3D"color:rgb(1=
36,136,136);font-size:12.8px">Sumit kumar<br>Postdoc</div><div style=3D"col=
or:rgb(136,136,136);font-size:12.8px">SnT, Luxembourg</div><div style=3D"co=
lor:rgb(136,136,136);font-size:12.8px"><br></div><br></div></div></div></di=
v>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span sty=
le=3D"color:rgb(136,136,136);font-size:12.8px">--=C2=A0</span><br style=3D"=
color:rgb(136,136,136);font-size:12.8px"><div style=3D"color:rgb(136,136,13=
6);font-size:12.8px">Sumit kumar<br>Postdoc</div><div style=3D"color:rgb(13=
6,136,136);font-size:12.8px">SnT, Luxembourg</div><div style=3D"color:rgb(1=
36,136,136);font-size:12.8px"><br></div><br></div></div></div></div>

--000000000000917ef8058de2d1a1--


--===============6020016013235226423==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6020016013235226423==--

