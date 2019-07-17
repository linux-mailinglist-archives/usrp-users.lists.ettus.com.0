Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B786BF18
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2019 17:27:26 +0200 (CEST)
Received: from [::1] (port=49402 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnlq1-0008Lk-Dj; Wed, 17 Jul 2019 11:27:25 -0400
Received: from mail-oi1-f181.google.com ([209.85.167.181]:38586)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <cogwsn@gmail.com>) id 1hnlpx-0008Dd-DT
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 11:27:21 -0400
Received: by mail-oi1-f181.google.com with SMTP id v186so18817967oie.5
 for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2019 08:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KYRFWsgpo2NO1WD3WXsnVhWWesdf15uzfkzNvbaQXf8=;
 b=K4Jk6gMVU+zz/fusidg2i1cr8mGmx938EWKsPlJfnbX42qU+j/kwB7xJ2IPuOv82Os
 T+YMF9LdvQP3aIAzLIMJ+krcL/0ItUFMpEs4+8/apqDC5uTg1EnfUj379pwfmMeSqzkA
 W8ov0jo5x9KchfsFDr2wRU1r9ZzOCFmWs3WIkDZFXwEiDrkEDHB24Qa4Se7UXX2PidwT
 C85MqG4ULNarS2uq/gWntrsz+3xM5WsRyJ2qKd4D0f1StU9SmNDTTdSd+iyQAjAZH2dx
 xkL3QiuWU5zql6YytRUCAJZWSqanXgU7/XUGt99bQz1JqUrByCTcGmE+ZtzdXKJ8tmrO
 LwgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KYRFWsgpo2NO1WD3WXsnVhWWesdf15uzfkzNvbaQXf8=;
 b=ti9MoUPuGXwJz2Vzl3V3qJ5897k42f63m/oJ0YUNf8dHQXWtYUvZDr5aFG8Rpggg+U
 PotFl+uWx74UhCbDO7r7FdvFiYYAW+zBDO6hgEzOKZujBUam5gRDLBhLiMP+pUx9npSJ
 nSEIFJuDlO3v3eKUv98oAioppesad/kq+VYapd3L18L7J2UC6Zz0C6hVhu/T3Z6tg7RO
 7or9glSjXKr4zz77awhzgILvrVwPV7UiLQV/C7J/DtdueLL5rpSaWgH8OiwvvQJzLvIE
 Ajsl20rx1Gfj++MJ564Y1TNXInyORlOiJm0vm1zV2GbzoH1Bu045VhJ0VyWcNUMzNTx9
 eIYg==
X-Gm-Message-State: APjAAAWSINKAeWqNERSahsM58v5X+tHDF0g/h9QP6Cu3R0sJir8VdN8P
 c8bGvSuhZAKmijQP+1j6XP7M2pf+hH90OqM5rl0=
X-Google-Smtp-Source: APXvYqz9zcK0+zXPzKkIAMs8/DDhVjAr6O80kuhKj2lDyuvrQqNBmRww0IbdvzHuJM9J+AnBSanlcHqW8jAiPBMXfew=
X-Received: by 2002:aca:4255:: with SMTP id p82mr20471004oia.6.1563377200583; 
 Wed, 17 Jul 2019 08:26:40 -0700 (PDT)
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
 <5D2F3C72.2020701@gmail.com>
In-Reply-To: <5D2F3C72.2020701@gmail.com>
Date: Wed, 17 Jul 2019 17:26:28 +0200
Message-ID: <CAOExtcREZA2Es7ad1_3oaX4QNSdWD7scJQQK45hu=QDFJnXr+g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
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
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============2471173631151498959=="
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

--===============2471173631151498959==
Content-Type: multipart/alternative; boundary="000000000000b0d69a058de21e68"

--000000000000b0d69a058de21e68
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Tried 3 different power supplies, still the same. SSSSSS :-/

On Wed, Jul 17, 2019 at 5:20 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 07/17/2019 11:10 AM, Sumit Kumar via USRP-users wrote:
>
> Sorry, here it is.
>
> Benchmark rate summary:
>   Num received samples:     5999986436
>   Num dropped samples:      0
>   Num overruns detected:    0
>   Num transmitted samples:  0
>   Num sequence errors (Tx): 0
>   Num sequence errors (Rx): 0
>   Num underruns detected:   0
>   Num late commands:        0
>   Num timeouts (Tx):        0
>   Num timeouts (Rx):        0
>
>
> Purely on a hunch, try swapping power supplies.
>
>
> On Wed, Jul 17, 2019 at 5:08 PM Nate Temple <nate.temple@ettus.com> wrote=
:
>
>> Hi Sumit,
>>
>> It will take 10 minutes for that run to complete. Does it produce a
>> report at the end of the run?
>>
>> Regards,
>> Nate Temple
>>
>> On Wed, Jul 17, 2019 at 8:06 AM Sumit Kumar <cogwsn@gmail.com> wrote:
>>
>>> Hi Nate,
>>> No there are not. At the end of the last line, cursor keeps blinking, n=
o
>>> sequence errors.
>>>
>>> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/examples$ sudo
>>> ./benchmark_rate --rx_rate 10e6 --duration 600
>>>
>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>>> UHD_3.15.0.git-1-gf83faf28
>>> [00:00:00.000024] Creating the usrp device with: ...
>>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>>> [INFO] [USRP2] Current send frame size: 1472 bytes
>>> Using Device: Single USRP:
>>>   Device: USRP2 / N-Series Device
>>>   Mboard 0: N200r4
>>>   RX Channel: 0
>>>     RX DSP: 0
>>>     RX Dboard: A
>>>     RX Subdev: SBXv3 RX
>>>   TX Channel: 0
>>>     TX DSP: 0
>>>     TX Dboard: A
>>>     TX Subdev: SBXv3 TX
>>>
>>> [00:00:01.796895] Setting device timestamp to 0...
>>> [00:00:01.797430] Testing receive rate 10.000000 Msps on 1 channels
>>>
>>> On Wed, Jul 17, 2019 at 4:39 PM Nate Temple <nate.temple@ettus.com>
>>> wrote:
>>>
>>>> Hi Sumit,
>>>>
>>>> If you run benchmark_rate for an extend period of time, do you see any
>>>> sequence errors?
>>>>
>>>> /usr/local/lib/uhd/examples/benchmark_rate --rx_rate 10e6 --duration 6=
00
>>>>
>>>>
>>>> Regards,
>>>> Nate Temple
>>>>
>>>> On Wed, Jul 17, 2019 at 7:34 AM Sumit Kumar <cogwsn@gmail.com> wrote:
>>>>
>>>>> Hi Nate,
>>>>> Yes I addressed the first 2 points you mentioned.
>>>>>
>>>>> john@john-Precision-M4600:~/pybombs/src/gnuradio/gr-digital/examples/=
narrowband$
>>>>> sudo ./benchmark_tx.py -f 2.45G -S 10
>>>>> linux; GNU C++ version 5.3.1 20151219; Boost_105800;
>>>>> UHD_003.009.002-0-unknown
>>>>>
>>>>> Using Volk machine: avx_64_mmx_orc
>>>>> -- Opening a USRP2/N-Series device...
>>>>> -- Current recv frame size: 1472 bytes
>>>>> -- Current send frame size: 1472 bytes
>>>>>
>>>>> No gain specified.
>>>>> Setting gain to 15.750000 (from [0.000000, 31.500000])
>>>>>
>>>>> .....................................................................=
.........................SS.SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.SSSS..S......SS.S=
......SS.....S....S...S.S.......S....S........^C
>>>>>
>>>>> I am using ./benchmark_tx.py located
>>>>> in gnuradio/gr-digital/examples/narrowband
>>>>>
>>>>>
>>>>>
>>>>> On Wed, Jul 17, 2019 at 4:25 PM Nate Temple <nate.temple@ettus.com>
>>>>> wrote:
>>>>>
>>>>>> Hi Sumit,
>>>>>>
>>>>>> A couple things to address:
>>>>>>
>>>>>> 1) Enable Thread priority scheduling on your host
>>>>>>
>>>>>> Note it is throwing a warning in the output: "[WARNING] [UHD] Unable
>>>>>> to set the thread priority. Performance may be negatively affected."
>>>>>>
>>>>>>
>>>>>> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_To=
olchain_(UHD_and_GNU_Radio)_on_Linux#Thread_priority_scheduling
>>>>>>
>>>>>>
>>>>>> 2) Adjust your network buffers
>>>>>>
>>>>>> "
>>>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>>>>> Target sock buff size: 2500000 bytes.
>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>> See the transport application notes on buffer resizing.
>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>>>>> Target sock buff size: 2500000 bytes.
>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>> See the transport application notes on buffer resizing.
>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>> "
>>>>>>
>>>>>> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#N2=
xx
>>>>>>
>>>>>>
>>>>>> What is the command you're using to transmit(which utility and args?=
)
>>>>>>
>>>>>>
>>>>>> Regards,
>>>>>> Nate Temple
>>>>>>
>>>>>> On Wed, Jul 17, 2019 at 7:06 AM Sumit Kumar via USRP-users <
>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>
>>>>>>> Following is what I am getting after the command you asked to run.
>>>>>>> The 192.168.10.5 gives SSSSSSS.
>>>>>>>
>>>>>>> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$
>>>>>>> ./usrp_burn_mb_eeprom --read-all --args "addr=3D192.168.10.5"
>>>>>>> Creating USRP device from address: addr=3D192.168.10.5
>>>>>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>>>>>>> UHD_3.15.0.git-1-gf83faf28
>>>>>>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>>>>>>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>>>>>>> [INFO] [USRP2] Current send frame size: 1472 bytes
>>>>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>> See the transport application notes on buffer resizing.
>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>> See the transport application notes on buffer resizing.
>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>> See the transport application notes on buffer resizing.
>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>> [WARNING] [UHD] Unable to set the thread priority. Performance may
>>>>>>> be negatively affected.
>>>>>>> Please see the general application notes in the manual for
>>>>>>> instructions.
>>>>>>> EnvironmentError: OSError: error in pthread_setschedparam
>>>>>>>
>>>>>>> Fetching current settings from EEPROM...
>>>>>>>     EEPROM ["hardware"] is "2576"
>>>>>>>     EEPROM ["revision"] is ""
>>>>>>>     EEPROM ["product"] is ""
>>>>>>>     EEPROM ["mac-addr"] is "a0:36:fa:26:34:44"
>>>>>>>     EEPROM ["ip-addr"] is "192.168.10.5"
>>>>>>>     EEPROM ["subnet"] is "255.255.255.255"
>>>>>>>     EEPROM ["gateway"] is "255.255.255.255"
>>>>>>>     EEPROM ["gpsdo"] is "none"
>>>>>>>     EEPROM ["serial"] is "E4R14V4UN"
>>>>>>>     EEPROM ["name"] is ""
>>>>>>>
>>>>>>> Power-cycle the USRP device for the changes to take effect.
>>>>>>>
>>>>>>> Done
>>>>>>>
>>>>>>>
>>>>>>> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$
>>>>>>> ./usrp_burn_mb_eeprom --read-all --args "addr=3D192.168.10.3"
>>>>>>> Creating USRP device from address: addr=3D192.168.10.3
>>>>>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>>>>>>> UHD_3.15.0.git-1-gf83faf28
>>>>>>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>>>>>>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>>>>>>> [INFO] [USRP2] Current send frame size: 1472 bytes
>>>>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>> See the transport application notes on buffer resizing.
>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>> See the transport application notes on buffer resizing.
>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>>>>>> Target sock buff size: 2500000 bytes.
>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>> See the transport application notes on buffer resizing.
>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>>>>> [WARNING] [UHD] Unable to set the thread priority. Performance may
>>>>>>> be negatively affected.
>>>>>>> Please see the general application notes in the manual for
>>>>>>> instructions.
>>>>>>> EnvironmentError: OSError: error in pthread_setschedparam
>>>>>>>
>>>>>>> Fetching current settings from EEPROM...
>>>>>>>     EEPROM ["hardware"] is "2576"
>>>>>>>     EEPROM ["revision"] is ""
>>>>>>>     EEPROM ["product"] is ""
>>>>>>>     EEPROM ["mac-addr"] is "a0:36:fa:26:34:42"
>>>>>>>     EEPROM ["ip-addr"] is "192.168.10.3"
>>>>>>>     EEPROM ["subnet"] is "255.255.255.255"
>>>>>>>     EEPROM ["gateway"] is "255.255.255.255"
>>>>>>>     EEPROM ["gpsdo"] is "none"
>>>>>>>     EEPROM ["serial"] is "E4R14V2UN"
>>>>>>>     EEPROM ["name"] is ""
>>>>>>>
>>>>>>> Power-cycle the USRP device for the changes to take effect.
>>>>>>>
>>>>>>> Done
>>>>>>>
>>>>>>>
>>>>>>> On Wed, Jul 17, 2019 at 3:19 PM Jason Matusiak <
>>>>>>> jason@gardettoengineering.com> wrote:
>>>>>>>
>>>>>>>> You are right, the table of revisions was for the X-series
>>>>>>>>
>>>>>>>> try running the command from your prefix:
>>>>>>>> src/uhd/host/build/utils/usrp_burn_mb_eeprom --args=3D"type=3Dn200=
" --read-all
>>>>>>>>
>>>>>>>> don't quote me on the type portion, I don't have a board in front
>>>>>>>> of me to see if it is n200 or something else.  I //think// that wi=
ll report
>>>>>>>> the major and minor revision values (I am grasping at straws here,=
 just
>>>>>>>> trying to figure out what the differences might be).
>>>>>>>>
>>>>>>>> You are connecting the ethernet connections to the two devices
>>>>>>>> through the exact same port on your PC?
>>>>>>>>
>>>>>>>> ------------------------------
>>>>>>>> *From:* Sumit Kumar <cogwsn@gmail.com>
>>>>>>>> *Sent:* Wednesday, July 17, 2019 8:24 AM
>>>>>>>> *To:* Jason Matusiak <jason@gardettoengineering.com>
>>>>>>>> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>>>>>>> *Subject:* Re: [USRP-users] Sequence Errors N200
>>>>>>>>
>>>>>>>> The sticker  for sbx shows F33612 and F33814.
>>>>>>>> How will this help ?
>>>>>>>>
>>>>>>>>
>>>>>>>> On Wed, Jul 17, 2019 at 1:50 PM Jason Matusiak <
>>>>>>>> jason@gardettoengineering.com> wrote:
>>>>>>>>
>>>>>>>> Sumit,
>>>>>>>>
>>>>>>>> OK, the last idea I have:
>>>>>>>>
>>>>>>>> There is a sticker on the back of the N-series devices it *usually=
* says
>>>>>>>> the version there, but not always.  This has a little info:
>>>>>>>> https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM=
_on_USRP_Devices#N200.2F210_EEPROM
>>>>>>>>
>>>>>>>> Do they match?
>>>>>>>>
>>>>>>>> ------------------------------
>>>>>>>> *From:* Sumit Kumar <cogwsn@gmail.com>
>>>>>>>> *Sent:* Wednesday, July 17, 2019 7:45 AM
>>>>>>>> *To:* Jason Matusiak <jason@gardettoengineering.com>
>>>>>>>> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>>>>>>> *Subject:* Re: [USRP-users] Sequence Errors N200
>>>>>>>>
>>>>>>>> Hi Jason,
>>>>>>>>
>>>>>>>> Yes they are consistent, I mean the output of uhd_usrp_probe for
>>>>>>>> both N200 is exactly the same (except the ip, serial and mac addr)=
.
>>>>>>>> I do not know where the problem is! Hardware or software
>>>>>>>>
>>>>>>>> Regards
>>>>>>>> Sumit
>>>>>>>>
>>>>>>>> On Wed, Jul 17, 2019 at 1:19 PM Jason Matusiak <
>>>>>>>> jason@gardettoengineering.com> wrote:
>>>>>>>>
>>>>>>>> I am not really an N-series guy, so this probably won't be
>>>>>>>> helpful.  Have you tried doing a uhd_usrp_probe on both devices an=
d seen
>>>>>>>> that the responses are consistent?
>>>>>>>>
>>>>>>>> ------------------------------
>>>>>>>> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf
>>>>>>>> of Sumit Kumar via USRP-users <usrp-users@lists.ettus.com>
>>>>>>>> *Sent:* Wednesday, July 17, 2019 7:15 AM
>>>>>>>> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>>>>>>> *Subject:* [USRP-users] Sequence Errors N200
>>>>>>>>
>>>>>>>> Hi,
>>>>>>>> I am trying transmit using Ettus N200 (call it A) but getting this
>>>>>>>> error message on the console
>>>>>>>>
>>>>>>>>
>>>>>>>> SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.........................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
.........................................
>>>>>>>>
>>>>>>>> I looked for it on google and found these links
>>>>>>>>
>>>>>>>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-M=
ay/037495.html
>>>>>>>>
>>>>>>>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2012-J=
uly/032838.html
>>>>>>>>
>>>>>>>> Both the links  suggested problem related to the gigabit port. The=
n
>>>>>>>> I connected another USRP N200 (call it B) to the same laptop and t=
ried
>>>>>>>> transmitting using that as there were no such sequence error messa=
ges.
>>>>>>>>
>>>>>>>> This makes me believe there is some problem with the first USRP,
>>>>>>>> i.e., A.
>>>>>>>>
>>>>>>>> Further I tried with different versions of UHD 3.11, UHD 3.15.. bu=
t
>>>>>>>> its the same.
>>>>>>>>
>>>>>>>> Receive is good only transmit is throwing error.
>>>>>>>>
>>>>>>>> Not only with UHD, even in labview, when I transmit, I see nothing
>>>>>>>> coming out from the N200 (A).
>>>>>>>>
>>>>>>>> I am using SBXv2 daughter board.
>>>>>>>>
>>>>>>>> Any clue!
>>>>>>>>
>>>>>>>> Regards
>>>>>>>> --
>>>>>>>> --
>>>>>>>> Sumit kumar
>>>>>>>> Postdoc
>>>>>>>> SnT, Luxembourg
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> --
>>>>>>>> --
>>>>>>>> Sumit kumar
>>>>>>>> Postdoc
>>>>>>>> SnT, Luxembourg
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> --
>>>>>>>> --
>>>>>>>> Sumit kumar
>>>>>>>> Postdoc
>>>>>>>> SnT, Luxembourg
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>
>>>>>>> --
>>>>>>> --
>>>>>>> Sumit kumar
>>>>>>> Postdoc
>>>>>>> SnT, Luxembourg
>>>>>>>
>>>>>>>
>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list
>>>>>>> USRP-users@lists.ettus.com
>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>
>>>>>>
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
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--=20
--=20
Sumit kumar
Postdoc
SnT, Luxembourg

--000000000000b0d69a058de21e68
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Tried 3 different power supplies, still the same. SSSSSS :=
-/=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Wed, Jul 17, 2019 at 5:20 PM Marcus D. Leech via USRP-users &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_5989149150532795495moz-cite-prefix">On 07/17/2019=
 11:10 AM, Sumit Kumar via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Sorry, here it is.
        <div><br>
        </div>
        <div>Benchmark rate summary:<br>
          =C2=A0 Num received samples: =C2=A0 =C2=A0 5999986436<br>
          =C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A00<br>
          =C2=A0 Num overruns detected: =C2=A0 =C2=A00<br>
          =C2=A0 Num transmitted samples: =C2=A00<br>
          =C2=A0 Num sequence errors (Tx): 0<br>
          =C2=A0 Num sequence errors (Rx): 0<br>
          =C2=A0 Num underruns detected: =C2=A0 0<br>
          =C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
          =C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
          =C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
        </div>
        <div><br>
        </div>
      </div>
      <br>
    </blockquote>
    Purely on a hunch, try swapping power supplies.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 5:08
          PM Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" targe=
t=3D"_blank">nate.temple@ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div class=3D"gmail_default" style=3D"font-family:arial,helveti=
ca,sans-serif">Hi Sumit,<br>
              <br>
              It will take 10 minutes for that run to complete. Does it
              produce a report at the end of the run?<br>
              <br>
              Regards,<br>
              Nate Temple<br>
            </div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019 at
              8:06 AM Sumit Kumar &lt;<a href=3D"mailto:cogwsn@gmail.com" t=
arget=3D"_blank">cogwsn@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
              <div dir=3D"ltr">Hi=C2=A0Nate,
                <div>No there are not. At the end of the last line,
                  cursor keeps blinking, no sequence errors.=C2=A0<br>
                  <div><br>
                  </div>
                  <div>john@john-Precision-M4600:~/pybombs/src/uhd/host/bui=
ld/examples$
                    sudo ./benchmark_rate --rx_rate 10e6 --duration 600<spa=
n class=3D"gmail-m_5989149150532795495gmail-m_-7763822819519994741gmail-m_8=
077291001688814057gmail-im" style=3D"color:rgb(80,0,80)"><br>
                      <br>
                      [INFO] [UHD] linux; GNU C++ version 5.4.0
                      20160609; Boost_105800; UHD_3.15.0.git-1-gf83faf28<br=
>
                    </span>[00:00:00.000024] Creating the usrp device
                    with: ...<span class=3D"gmail-m_5989149150532795495gmai=
l-m_-7763822819519994741gmail-m_8077291001688814057gmail-im" style=3D"color=
:rgb(80,0,80)"><br>
                      [INFO] [USRP2] Opening a USRP2/N-Series device...<br>
                      [INFO] [USRP2] Current recv frame size: 1472 bytes<br=
>
                      [INFO] [USRP2] Current send frame size: 1472 bytes<br=
>
                    </span>Using Device: Single USRP:<br>
                    =C2=A0 Device: USRP2 / N-Series Device<br>
                    =C2=A0 Mboard 0: N200r4<br>
                    =C2=A0 RX Channel: 0<br>
                    =C2=A0 =C2=A0 RX DSP: 0<br>
                    =C2=A0 =C2=A0 RX Dboard: A<br>
                    =C2=A0 =C2=A0 RX Subdev: SBXv3 RX<br>
                    =C2=A0 TX Channel: 0<br>
                    =C2=A0 =C2=A0 TX DSP: 0<br>
                    =C2=A0 =C2=A0 TX Dboard: A<br>
                    =C2=A0 =C2=A0 TX Subdev: SBXv3 TX<br>
                    <br>
                    [00:00:01.796895] Setting device timestamp to 0...<br>
                    [00:00:01.797430] Testing receive rate 10.000000
                    Msps on 1 channels<br>
                  </div>
                </div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019
                  at 4:39 PM Nate Temple &lt;<a href=3D"mailto:nate.temple@=
ettus.com" target=3D"_blank">nate.temple@ettus.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div dir=3D"ltr">
                    <div class=3D"gmail_default" style=3D"font-family:arial=
,helvetica,sans-serif">Hi
                      Sumit,<br>
                      <br>
                      If you run benchmark_rate for an extend period of
                      time, do you see any sequence errors?<br>
                      <br>
                      /usr/local/lib/uhd/examples/benchmark_rate
                      --rx_rate 10e6 --duration 600<br>
                      <br>
                      <br>
                      Regards,<br>
                      Nate Temple</div>
                  </div>
                  <br>
                  <div class=3D"gmail_quote">
                    <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17,
                      2019 at 7:34 AM Sumit Kumar &lt;<a href=3D"mailto:cog=
wsn@gmail.com" target=3D"_blank">cogwsn@gmail.com</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                      <div dir=3D"ltr">Hi=C2=A0Nate,=C2=A0
                        <div>Yes I addressed the first 2 points you
                          mentioned.=C2=A0</div>
                        <div><br>
                        </div>
                        <div>john@john-Precision-M4600:~/pybombs/src/gnurad=
io/gr-digital/examples/narrowband$
                          sudo ./benchmark_tx.py -f 2.45G -S 10<br>
                          linux; GNU C++ version 5.3.1 20151219;
                          Boost_105800; UHD_003.009.002-0-unknown<br>
                          <br>
                          Using Volk machine: avx_64_mmx_orc<br>
                          -- Opening a USRP2/N-Series device...<br>
                          -- Current recv frame size: 1472 bytes<br>
                          -- Current send frame size: 1472 bytes<br>
                          <br>
                          No gain specified.<br>
                          Setting gain to 15.750000 (from [0.000000,
                          31.500000])<br>
...........................................................................=
...................SS.SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.SSSS..S......SS.S......=
SS.....S....S...S.S.......S....S........^C<br>
                        </div>
                        <div><br>
                        </div>
                        <div>I am using ./benchmark_tx.py located
                          in=C2=A0gnuradio/gr-digital/examples/narrowband</=
div>
                        <div><br>
                        </div>
                        <div><br>
                        </div>
                      </div>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul
                          17, 2019 at 4:25 PM Nate Temple &lt;<a href=3D"ma=
ilto:nate.temple@ettus.com" target=3D"_blank">nate.temple@ettus.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                          <div dir=3D"ltr">
                            <div class=3D"gmail_default" style=3D"font-fami=
ly:arial,helvetica,sans-serif">Hi
                              Sumit,<br>
                              <br>
                              A couple things to address:<br>
                              <br>
                              1) Enable Thread priority scheduling on
                              your host<br>
                              <br>
                              Note it is throwing a warning in the
                              output: &quot;[WARNING] [UHD] Unable to set t=
he
                              thread priority. Performance may be
                              negatively affected.&quot;<br>
                              <br>
                              <a href=3D"https://kb.ettus.com/Building_and_=
Installing_the_USRP_Open-Source_Toolchain_%28UHD_and_GNU_Radio%29_on_Linux#=
Thread_priority_scheduling" target=3D"_blank">https://kb.ettus.com/Building=
_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux=
#Thread_priority_scheduling</a><br>
                              <br>
                              <br>
                              2) Adjust your network buffers<br>
                              <br>
                              &quot;<br>
                              [WARNING] [UDP] The send buffer could not
                              be resized sufficiently.<br>
                              Target sock buff size: 2500000 bytes.<br>
                              Actual sock buff size: 1048576 bytes.<br>
                              See the transport application notes on
                              buffer resizing.<br>
                              Please run: sudo sysctl -w
                              net.core.wmem_max=3D2500000<br>
                              [WARNING] [UDP] The send buffer could not
                              be resized sufficiently.<br>
                              Target sock buff size: 2500000 bytes.<br>
                              Actual sock buff size: 1048576 bytes.<br>
                              See the transport application notes on
                              buffer resizing.<br>
                              Please run: sudo sysctl -w
                              net.core.wmem_max=3D2500000<br>
                              &quot;<br>
                              <br>
                              <a href=3D"https://kb.ettus.com/USRP_Host_Per=
formance_Tuning_Tips_and_Tricks#N2xx" target=3D"_blank">https://kb.ettus.co=
m/USRP_Host_Performance_Tuning_Tips_and_Tricks#N2xx</a><br>
                              <br>
                              <br>
                              What is the command you&#39;re using to
                              transmit(which utility and args?)<br>
                              <br>
                              <br>
                              Regards,<br>
                              Nate Temple<br>
                            </div>
                          </div>
                          <br>
                          <div class=3D"gmail_quote">
                            <div dir=3D"ltr" class=3D"gmail_attr">On Wed,
                              Jul 17, 2019 at 7:06 AM Sumit Kumar via
                              USRP-users &lt;<a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
                              wrote:<br>
                            </div>
                            <blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">
                              <div dir=3D"ltr">Following is what I am
                                getting after the command you asked to
                                run. The 192.168.10.5 gives SSSSSSS.=C2=A0
                                <div><br>
                                </div>
                                <div>john@john-Precision-M4600:~/pybombs/sr=
c/uhd/host/build/utils$
                                  ./usrp_burn_mb_eeprom --read-all
                                  --args &quot;addr=3D192.168.10.5&quot;<br=
>
                                  Creating USRP device from address:
                                  addr=3D192.168.10.5<br>
                                  [INFO] [UHD] linux; GNU C++ version
                                  5.4.0 20160609; Boost_105800;
                                  UHD_3.15.0.git-1-gf83faf28<br>
                                  [INFO] [USRP2] Opening a
                                  USRP2/N-Series device...<br>
                                  [INFO] [USRP2] Current recv frame
                                  size: 1472 bytes<br>
                                  [INFO] [USRP2] Current send frame
                                  size: 1472 bytes<br>
                                  [WARNING] [UDP] The send buffer could
                                  not be resized sufficiently.<br>
                                  Target sock buff size: 2500000 bytes.<br>
                                  Actual sock buff size: 1048576 bytes.<br>
                                  See the transport application notes on
                                  buffer resizing.<br>
                                  Please run: sudo sysctl -w
                                  net.core.wmem_max=3D2500000<br>
                                  [WARNING] [UDP] The send buffer could
                                  not be resized sufficiently.<br>
                                  Target sock buff size: 2500000 bytes.<br>
                                  Actual sock buff size: 1048576 bytes.<br>
                                  See the transport application notes on
                                  buffer resizing.<br>
                                  Please run: sudo sysctl -w
                                  net.core.wmem_max=3D2500000<br>
                                  [WARNING] [UDP] The send buffer could
                                  not be resized sufficiently.<br>
                                  Target sock buff size: 2500000 bytes.<br>
                                  Actual sock buff size: 1048576 bytes.<br>
                                  See the transport application notes on
                                  buffer resizing.<br>
                                  Please run: sudo sysctl -w
                                  net.core.wmem_max=3D2500000<br>
                                  [WARNING] [UHD] Unable to set the
                                  thread priority. Performance may be
                                  negatively affected.<br>
                                  Please see the general application
                                  notes in the manual for instructions.<br>
                                  EnvironmentError: OSError: error in
                                  pthread_setschedparam<br>
                                  <br>
                                  Fetching current settings from
                                  EEPROM...<br>
                                  =C2=A0 =C2=A0 EEPROM [&quot;hardware&quot=
;] is &quot;2576&quot;<br>
                                  =C2=A0 =C2=A0 EEPROM [&quot;revision&quot=
;] is &quot;&quot;<br>
                                  =C2=A0 =C2=A0 EEPROM [&quot;product&quot;=
] is &quot;&quot;<br>
                                  =C2=A0 =C2=A0 EEPROM [&quot;mac-addr&quot=
;] is
                                  &quot;a0:36:fa:26:34:44&quot;<br>
                                  =C2=A0 =C2=A0 EEPROM [&quot;ip-addr&quot;=
] is
                                  &quot;192.168.10.5&quot;<br>
                                  =C2=A0 =C2=A0 EEPROM [&quot;subnet&quot;]=
 is
                                  &quot;255.255.255.255&quot;<br>
                                  =C2=A0 =C2=A0 EEPROM [&quot;gateway&quot;=
] is
                                  &quot;255.255.255.255&quot;<br>
                                  =C2=A0 =C2=A0 EEPROM [&quot;gpsdo&quot;] =
is &quot;none&quot;<br>
                                  =C2=A0 =C2=A0 EEPROM [&quot;serial&quot;]=
 is &quot;E4R14V4UN&quot;<br>
                                  =C2=A0 =C2=A0 EEPROM [&quot;name&quot;] i=
s &quot;&quot;<br>
                                  <br>
                                  Power-cycle the USRP device for the
                                  changes to take effect.<br>
                                  <br>
                                  <div>Done</div>
                                  <div><br>
                                  </div>
                                  <div><br>
                                  </div>
                                  <div>john@john-Precision-M4600:~/pybombs/=
src/uhd/host/build/utils$
                                    ./usrp_burn_mb_eeprom --read-all
                                    --args &quot;addr=3D192.168.10.3&quot;<=
br>
                                    Creating USRP device from address:
                                    addr=3D192.168.10.3<br>
                                    [INFO] [UHD] linux; GNU C++ version
                                    5.4.0 20160609; Boost_105800;
                                    UHD_3.15.0.git-1-gf83faf28<br>
                                    [INFO] [USRP2] Opening a
                                    USRP2/N-Series device...<br>
                                    [INFO] [USRP2] Current recv frame
                                    size: 1472 bytes<br>
                                    [INFO] [USRP2] Current send frame
                                    size: 1472 bytes<br>
                                    [WARNING] [UDP] The send buffer
                                    could not be resized sufficiently.<br>
                                    Target sock buff size: 2500000
                                    bytes.<br>
                                    Actual sock buff size: 1048576
                                    bytes.<br>
                                    See the transport application notes
                                    on buffer resizing.<br>
                                    Please run: sudo sysctl -w
                                    net.core.wmem_max=3D2500000<br>
                                    [WARNING] [UDP] The send buffer
                                    could not be resized sufficiently.<br>
                                    Target sock buff size: 2500000
                                    bytes.<br>
                                    Actual sock buff size: 1048576
                                    bytes.<br>
                                    See the transport application notes
                                    on buffer resizing.<br>
                                    Please run: sudo sysctl -w
                                    net.core.wmem_max=3D2500000<br>
                                    [WARNING] [UDP] The send buffer
                                    could not be resized sufficiently.<br>
                                    Target sock buff size: 2500000
                                    bytes.<br>
                                    Actual sock buff size: 1048576
                                    bytes.<br>
                                    See the transport application notes
                                    on buffer resizing.<br>
                                    Please run: sudo sysctl -w
                                    net.core.wmem_max=3D2500000<br>
                                    [WARNING] [UHD] Unable to set the
                                    thread priority. Performance may be
                                    negatively affected.<br>
                                    Please see the general application
                                    notes in the manual for
                                    instructions.<br>
                                    EnvironmentError: OSError: error in
                                    pthread_setschedparam<br>
                                    <br>
                                    Fetching current settings from
                                    EEPROM...<br>
                                    =C2=A0 =C2=A0 EEPROM [&quot;hardware&qu=
ot;] is &quot;2576&quot;<br>
                                    =C2=A0 =C2=A0 EEPROM [&quot;revision&qu=
ot;] is &quot;&quot;<br>
                                    =C2=A0 =C2=A0 EEPROM [&quot;product&quo=
t;] is &quot;&quot;<br>
                                    =C2=A0 =C2=A0 EEPROM [&quot;mac-addr&qu=
ot;] is
                                    &quot;a0:36:fa:26:34:42&quot;<br>
                                    =C2=A0 =C2=A0 EEPROM [&quot;ip-addr&quo=
t;] is
                                    &quot;192.168.10.3&quot;<br>
                                    =C2=A0 =C2=A0 EEPROM [&quot;subnet&quot=
;] is
                                    &quot;255.255.255.255&quot;<br>
                                    =C2=A0 =C2=A0 EEPROM [&quot;gateway&quo=
t;] is
                                    &quot;255.255.255.255&quot;<br>
                                    =C2=A0 =C2=A0 EEPROM [&quot;gpsdo&quot;=
] is &quot;none&quot;<br>
                                    =C2=A0 =C2=A0 EEPROM [&quot;serial&quot=
;] is &quot;E4R14V2UN&quot;<br>
                                    =C2=A0 =C2=A0 EEPROM [&quot;name&quot;]=
 is &quot;&quot;<br>
                                    <br>
                                    Power-cycle the USRP device for the
                                    changes to take effect.<br>
                                    <br>
                                    Done
                                    <div class=3D"gmail-m_59891491505327954=
95gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-272327552=
3225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-=
8630331225465229725gmail-m_-5090455826936873702gmail-adL"><br>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <br>
                              <div class=3D"gmail_quote">
                                <div dir=3D"ltr" class=3D"gmail_attr">On
                                  Wed, Jul 17, 2019 at 3:19 PM Jason
                                  Matusiak &lt;<a href=3D"mailto:jason@gard=
ettoengineering.com" target=3D"_blank">jason@gardettoengineering.com</a>&gt=
;
                                  wrote:<br>
                                </div>
                                <blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
                                  <div dir=3D"ltr">
                                    <div style=3D"font-family:Calibri,Arial=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">You
                                      are right, the table of revisions
                                      was for the X-series</div>
                                    <div style=3D"font-family:Calibri,Arial=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                                    </div>
                                    <div style=3D"font-family:Calibri,Arial=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">try
                                      running the command from your
                                      prefix:
                                      src/uhd/host/build/utils/usrp_burn_mb=
_eeprom=C2=A0--args=3D&quot;type=3Dn200&quot;
                                      --read-all</div>
                                    <div style=3D"font-family:Calibri,Arial=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                                    </div>
                                    <div style=3D"font-family:Calibri,Arial=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">don&#39;t
                                      quote me on the type portion, I
                                      don&#39;t have a board in front of me
                                      to see if it is n200 or something
                                      else.=C2=A0 I //think// that will
                                      report the major and minor
                                      revision values (I am grasping at
                                      straws here, just trying to figure
                                      out what the differences might
                                      be).</div>
                                    <div style=3D"font-family:Calibri,Arial=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                                    </div>
                                    <div style=3D"font-family:Calibri,Arial=
,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">You
                                      are connecting the ethernet
                                      connections to the two devices
                                      through the exact same port on
                                      your PC?</div>
                                    <div id=3D"gmail-m_5989149150532795495g=
mail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-272327552322=
5085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-863=
0331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478Sign=
ature">
                                      <div>
                                        <div style=3D"font-family:Calibri,A=
rial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                                        </div>
                                        <hr style=3D"display:inline-block;w=
idth:98%">
                                        <div id=3D"gmail-m_5989149150532795=
495gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-27232755=
23225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_=
-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478=
divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" color=3D"#000000"=
 face=3D"Calibri, sans-serif"><b>From:</b>
                                            Sumit Kumar &lt;<a href=3D"mail=
to:cogwsn@gmail.com" target=3D"_blank">cogwsn@gmail.com</a>&gt;<br>
                                            <b>Sent:</b> Wednesday, July
                                            17, 2019 8:24 AM<br>
                                            <b>To:</b> Jason Matusiak
                                            &lt;<a href=3D"mailto:jason@gar=
dettoengineering.com" target=3D"_blank">jason@gardettoengineering.com</a>&g=
t;<br>
                                            <b>Cc:</b> <a href=3D"mailto:us=
rp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>
                                            &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                                            <b>Subject:</b> Re:
                                            [USRP-users] Sequence Errors
                                            N200</font>
                                          <div>=C2=A0</div>
                                        </div>
                                        <div>
                                          <div dir=3D"ltr">The sticker=C2=
=A0
                                            for sbx shows F33612 and
                                            F33814.=C2=A0
                                            <div>How will this help ?=C2=A0=
</div>
                                            <div><br>
                                            </div>
                                          </div>
                                          <br>
                                          <div class=3D"gmail-m_59891491505=
32795495gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-272=
3275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gma=
il-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_34035533555088=
31478x_gmail_quote">
                                            <div dir=3D"ltr" class=3D"gmail=
-m_5989149150532795495gmail-m_-7763822819519994741gmail-m_80772910016888140=
57gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-54063346=
66104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_=
3403553355508831478x_gmail_attr">On
                                              Wed, Jul 17, 2019 at 1:50
                                              PM Jason Matusiak &lt;<a href=
=3D"mailto:jason@gardettoengineering.com" target=3D"_blank">jason@gardettoe=
ngineering.com</a>&gt;
                                              wrote:<br>
                                            </div>
                                            <blockquote class=3D"gmail-m_59=
89149150532795495gmail-m_-7763822819519994741gmail-m_8077291001688814057gma=
il-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104=
058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_34035=
53355508831478x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">
                                              <div dir=3D"ltr">
                                                <div style=3D"font-family:C=
alibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Sumit,</=
div>
                                                <div style=3D"font-family:C=
alibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                                                </div>
                                                <div style=3D"font-family:C=
alibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">OK,
                                                  the last idea I have:</di=
v>
                                                <div style=3D"font-family:C=
alibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                                                </div>
                                                <div style=3D"font-family:C=
alibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">There
                                                  is a sticker on the
                                                  back of the N-series
                                                  devices it=C2=A0<em>usual=
ly</em>=C2=A0says
                                                  the version there, but
                                                  not always.=C2=A0 This ha=
s
                                                  a little info:=C2=A0<a hr=
ef=3D"https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on=
_USRP_Devices#N200.2F210_EEPROM" rel=3D"nofollow" style=3D"color:rgb(59,115=
,175)" target=3D"_blank">https://kb.ettus.com/About_the_Motherboard_and_Dau=
ghtercard_EEPROM_on_USRP_Devices#N200.2F210_EEPROM</a><br>
                                                </div>
                                                <div style=3D"font-family:C=
alibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                                                </div>
                                                <div style=3D"font-family:C=
alibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Do
                                                  they match?</div>
                                                <div id=3D"gmail-m_59891491=
50532795495gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-=
2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457=
gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_34035533555=
08831478x_gmail-m_6506407344245079092Signature">
                                                  <div>
                                                    <div style=3D"font-fami=
ly:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                                                    </div>
                                                    <hr style=3D"display:in=
line-block;width:98%">
                                                    <div id=3D"gmail-m_5989=
149150532795495gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail=
-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-540633466610405=
8457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553=
355508831478x_gmail-m_6506407344245079092divRplyFwdMsg" dir=3D"ltr"><font s=
tyle=3D"font-size:11pt" color=3D"#000000" face=3D"Calibri,
                                                        sans-serif"><b>From=
:</b>
                                                        Sumit Kumar &lt;<a =
href=3D"mailto:cogwsn@gmail.com" target=3D"_blank">cogwsn@gmail.com</a>&gt;=
<br>
                                                        <b>Sent:</b>
                                                        Wednesday, July
                                                        17, 2019 7:45 AM<br=
>
                                                        <b>To:</b> Jason
                                                        Matusiak &lt;<a hre=
f=3D"mailto:jason@gardettoengineering.com" target=3D"_blank">jason@gardetto=
engineering.com</a>&gt;<br>
                                                        <b>Cc:</b> <a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>
                                                        &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com=
</a>&gt;<br>
                                                        <b>Subject:</b>
                                                        Re: [USRP-users]
                                                        Sequence Errors
                                                        N200</font>
                                                      <div>=C2=A0</div>
                                                    </div>
                                                    <div>
                                                      <div dir=3D"ltr">Hi
                                                        Jason,
                                                        <div><br>
                                                          <div>Yes they
                                                          are
                                                          consistent, I
                                                          mean the
                                                          output of
                                                          uhd_usrp_probe
                                                          for both N200
                                                          is exactly=C2=A0t=
he
                                                          same (except
                                                          the ip, serial
                                                          and mac addr).</d=
iv>
                                                          <div>I do not
                                                          know where the
                                                          problem is!
                                                          Hardware or
                                                          software=C2=A0</d=
iv>
                                                          <div><br>
                                                          </div>
                                                          <div>Regards</div=
>
                                                          <div>Sumit=C2=A0=
=C2=A0</div>
                                                        </div>
                                                      </div>
                                                      <br>
                                                      <div class=3D"gmail-m=
_5989149150532795495gmail-m_-7763822819519994741gmail-m_8077291001688814057=
gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666=
104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_34=
03553355508831478x_gmail-m_6506407344245079092x_gmail_quote">
                                                        <div dir=3D"ltr" cl=
ass=3D"gmail-m_5989149150532795495gmail-m_-7763822819519994741gmail-m_80772=
91001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail=
-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-509045582693687=
3702gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail_attr">O=
n
                                                          Wed, Jul 17,
                                                          2019 at 1:19
                                                          PM Jason
                                                          Matusiak &lt;<a h=
ref=3D"mailto:jason@gardettoengineering.com" target=3D"_blank">jason@gardet=
toengineering.com</a>&gt;
                                                          wrote:<br>
                                                        </div>
                                                        <blockquote class=
=3D"gmail-m_5989149150532795495gmail-m_-7763822819519994741gmail-m_80772910=
01688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_=
-5406334666104058457gmail-m_-8630331225465229725gmail-m_-509045582693687370=
2gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">
                                                          <div dir=3D"ltr">
                                                          <div style=3D"fon=
t-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)=
">I
                                                          am not really
                                                          an N-series
                                                          guy, so this
                                                          probably won&#39;=
t
                                                          be helpful.=C2=A0
                                                          Have you tried
                                                          doing a
                                                          uhd_usrp_probe
                                                          on both
                                                          devices and
                                                          seen that the
                                                          responses are
                                                          consistent?</div>
                                                          <div id=3D"gmail-=
m_5989149150532795495gmail-m_-7763822819519994741gmail-m_807729100168881405=
7gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-540633466=
6104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3=
403553355508831478x_gmail-m_6506407344245079092x_gmail-m_901472981306541346=
1Signature">
                                                          <div>
                                                          <div id=3D"gmail-=
m_5989149150532795495gmail-m_-7763822819519994741gmail-m_807729100168881405=
7gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-540633466=
6104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3=
403553355508831478x_gmail-m_6506407344245079092x_gmail-m_901472981306541346=
1appendonsend"></div>
                                                          <div style=3D"fon=
t-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)=
"><br>
                                                          </div>
                                                          <hr style=3D"disp=
lay:inline-block;width:98%">
                                                          <div id=3D"gmail-=
m_5989149150532795495gmail-m_-7763822819519994741gmail-m_807729100168881405=
7gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-540633466=
6104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3=
403553355508831478x_gmail-m_6506407344245079092x_gmail-m_901472981306541346=
1divRplyFwdMsg" dir=3D"ltr">
                                                          <font style=3D"fo=
nt-size:11pt" color=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b> U=
SRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com" target=
=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of
                                                          Sumit Kumar
                                                          via USRP-users
                                                          &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.c=
om</a>&gt;<br>
                                                          <b>Sent:</b>
                                                          Wednesday,
                                                          July 17, 2019
                                                          7:15 AM<br>
                                                          <b>To:</b> <a hre=
f=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.=
ettus.com</a>
                                                          &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.c=
om</a>&gt;<br>
                                                          <b>Subject:</b>
                                                          [USRP-users]
                                                          Sequence
                                                          Errors N200</font=
>
                                                          <div>=C2=A0</div>
                                                          </div>
                                                          <div>
                                                          <div dir=3D"ltr">=
Hi,=C2=A0
                                                          <div>I am
                                                          trying
                                                          transmit using
                                                          Ettus N200
                                                          (call it A)
                                                          but getting
                                                          this error
                                                          message on the
                                                          console=C2=A0</di=
v>
                                                          <div><br>
                                                          </div>
                                                          <div>SSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSS..............................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
....................<br>
                                                          </div>
                                                          <div><br>
                                                          </div>
                                                          <div>I looked
                                                          for it on
                                                          google and
                                                          found these
                                                          links=C2=A0</div>
                                                          <div><a href=3D"h=
ttp://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/037495.=
html" target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.e=
ttus.com/2014-May/037495.html</a><br>
                                                          </div>
                                                          <div><a href=3D"h=
ttp://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2012-July/032838=
.html" target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.=
ettus.com/2012-July/032838.html</a><br>
                                                          </div>
                                                          <div><br>
                                                          </div>
                                                          <div>Both the
                                                          links=C2=A0
                                                          suggested
                                                          problem
                                                          related to the
                                                          gigabit port.
                                                          Then I
                                                          connected
                                                          another USRP
                                                          N200 (call it
                                                          B) to the same
                                                          laptop and
                                                          tried
                                                          transmitting
                                                          using that as
                                                          there were no
                                                          such sequence
                                                          error
                                                          messages.</div>
                                                          <div><br>
                                                          </div>
                                                          <div>This
                                                          makes me
                                                          believe there
                                                          is some
                                                          problem with
                                                          the first
                                                          USRP, i.e.,
                                                          A.=C2=A0<br>
                                                          </div>
                                                          <div><br>
                                                          </div>
                                                          <div>Further I
                                                          tried with
                                                          different
                                                          versions of
                                                          UHD 3.11, UHD
                                                          3.15.. but its
                                                          the same.=C2=A0</=
div>
                                                          <div><br>
                                                          </div>
                                                          <div>Receive
                                                          is good only
                                                          transmit is
                                                          throwing
                                                          error.=C2=A0</div=
>
                                                          <div><br>
                                                          </div>
                                                          <div>Not only
                                                          with UHD, even
                                                          in labview,
                                                          when I
                                                          transmit, I
                                                          see nothing
                                                          coming out
                                                          from the N200
                                                          (A).=C2=A0</div>
                                                          <div><br>
                                                          </div>
                                                          <div>I am
                                                          using SBXv2
                                                          daughter
                                                          board.=C2=A0</div=
>
                                                          <div><br>
                                                          </div>
                                                          <div>Any clue!</d=
iv>
                                                          <div><br>
                                                          </div>
                                                          <div>Regards</div=
>
                                                          <div>-- <br>
                                                          <div dir=3D"ltr" =
class=3D"gmail-m_5989149150532795495gmail-m_-7763822819519994741gmail-m_807=
7291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gma=
il-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936=
873702gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail-m_901=
4729813065413461x_gmail_signature">
                                                          <div dir=3D"ltr">
                                                          <div>
                                                          <div dir=3D"ltr">=
<span style=3D"color:rgb(136,136,136);font-size:12.8px">--=C2=A0</span><br =
style=3D"color:rgb(136,136,136);font-size:12.8px">
                                                          <div style=3D"col=
or:rgb(136,136,136);font-size:12.8px">Sumit
                                                          kumar<br>
                                                          Postdoc</div>
                                                          <div style=3D"col=
or:rgb(136,136,136);font-size:12.8px">SnT,
                                                          Luxembourg</div>
                                                          <div style=3D"col=
or:rgb(136,136,136);font-size:12.8px"><br>
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
                                                      <div dir=3D"ltr" clas=
s=3D"gmail-m_5989149150532795495gmail-m_-7763822819519994741gmail-m_8077291=
001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m=
_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-50904558269368737=
02gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail_signature=
">
                                                        <div dir=3D"ltr">
                                                          <div>
                                                          <div dir=3D"ltr">=
<span style=3D"color:rgb(136,136,136);font-size:12.8px">--=C2=A0</span><br =
style=3D"color:rgb(136,136,136);font-size:12.8px">
                                                          <div style=3D"col=
or:rgb(136,136,136);font-size:12.8px">Sumit
                                                          kumar<br>
                                                          Postdoc</div>
                                                          <div style=3D"col=
or:rgb(136,136,136);font-size:12.8px">SnT,
                                                          Luxembourg</div>
                                                          <div style=3D"col=
or:rgb(136,136,136);font-size:12.8px"><br>
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
                                          <div dir=3D"ltr" class=3D"gmail-m=
_5989149150532795495gmail-m_-7763822819519994741gmail-m_8077291001688814057=
gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666=
104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_34=
03553355508831478x_gmail_signature">
                                            <div dir=3D"ltr">
                                              <div>
                                                <div dir=3D"ltr"><span styl=
e=3D"color:rgb(136,136,136);font-size:12.8px">--=C2=A0</span><br style=3D"c=
olor:rgb(136,136,136);font-size:12.8px">
                                                  <div style=3D"color:rgb(1=
36,136,136);font-size:12.8px">Sumit
                                                    kumar<br>
                                                    Postdoc</div>
                                                  <div style=3D"color:rgb(1=
36,136,136);font-size:12.8px">SnT,
                                                    Luxembourg</div>
                                                  <div style=3D"color:rgb(1=
36,136,136);font-size:12.8px"><br>
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
                              <div dir=3D"ltr" class=3D"gmail-m_59891491505=
32795495gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-272=
3275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gma=
il-m_-8630331225465229725gmail-m_-5090455826936873702gmail_signature">
                                <div dir=3D"ltr">
                                  <div>
                                    <div dir=3D"ltr"><span style=3D"color:r=
gb(136,136,136);font-size:12.8px">--=C2=A0</span><br style=3D"color:rgb(136=
,136,136);font-size:12.8px">
                                      <div style=3D"color:rgb(136,136,136);=
font-size:12.8px">Sumit
                                        kumar<br>
                                        Postdoc</div>
                                      <div style=3D"color:rgb(136,136,136);=
font-size:12.8px">SnT,
                                        Luxembourg</div>
                                      <div style=3D"color:rgb(136,136,136);=
font-size:12.8px"><br>
                                      </div>
                                      <br>
                                    </div>
                                  </div>
                                </div>
                              </div>
_______________________________________________<br>
                              USRP-users mailing list<br>
                              <a href=3D"mailto:USRP-users@lists.ettus.com"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
                              <a href=3D"http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                            </blockquote>
                          </div>
                        </blockquote>
                      </div>
                      <br clear=3D"all">
                      <div><br>
                      </div>
                      -- <br>
                      <div dir=3D"ltr" class=3D"gmail-m_5989149150532795495=
gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-27232755232=
25085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail_signa=
ture">
                        <div dir=3D"ltr">
                          <div>
                            <div dir=3D"ltr"><span style=3D"color:rgb(136,1=
36,136);font-size:12.8px">--=C2=A0</span><br style=3D"color:rgb(136,136,136=
);font-size:12.8px">
                              <div style=3D"color:rgb(136,136,136);font-siz=
e:12.8px">Sumit
                                kumar<br>
                                Postdoc</div>
                              <div style=3D"color:rgb(136,136,136);font-siz=
e:12.8px">SnT,
                                Luxembourg</div>
                              <div style=3D"color:rgb(136,136,136);font-siz=
e:12.8px"><br>
                              </div>
                              <br>
                            </div>
                          </div>
                        </div>
                      </div>
                    </blockquote>
                  </div>
                </blockquote>
              </div>
              <br clear=3D"all">
              <div><br>
              </div>
              -- <br>
              <div dir=3D"ltr" class=3D"gmail-m_5989149150532795495gmail-m_=
-7763822819519994741gmail-m_8077291001688814057gmail_signature">
                <div dir=3D"ltr">
                  <div>
                    <div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);=
font-size:12.8px">--=C2=A0</span><br style=3D"color:rgb(136,136,136);font-s=
ize:12.8px">
                      <div style=3D"color:rgb(136,136,136);font-size:12.8px=
">Sumit
                        kumar<br>
                        Postdoc</div>
                      <div style=3D"color:rgb(136,136,136);font-size:12.8px=
">SnT,
                        Luxembourg</div>
                      <div style=3D"color:rgb(136,136,136);font-size:12.8px=
"><br>
                      </div>
                      <br>
                    </div>
                  </div>
                </div>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br clear=3D"all">
      <div><br>
      </div>
      -- <br>
      <div dir=3D"ltr" class=3D"gmail-m_5989149150532795495gmail_signature"=
>
        <div dir=3D"ltr">
          <div>
            <div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-siz=
e:12.8px">--=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8=
px">
              <div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit
                kumar<br>
                Postdoc</div>
              <div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT,
                Luxembourg</div>
              <div style=3D"color:rgb(136,136,136);font-size:12.8px"><br>
              </div>
              <br>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"gmail-m_5989149150532795495mimeAttachmentHeader"><=
/fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a class=3D"gmail-m_5989149150532795495moz-txt-link-abbreviated" href=3D"ma=
ilto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.c=
om</a>
<a class=3D"gmail-m_5989149150532795495moz-txt-link-freetext" href=3D"http:=
//lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_b=
lank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a=
>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span sty=
le=3D"color:rgb(136,136,136);font-size:12.8px">--=C2=A0</span><br style=3D"=
color:rgb(136,136,136);font-size:12.8px"><div style=3D"color:rgb(136,136,13=
6);font-size:12.8px">Sumit kumar<br>Postdoc</div><div style=3D"color:rgb(13=
6,136,136);font-size:12.8px">SnT, Luxembourg</div><div style=3D"color:rgb(1=
36,136,136);font-size:12.8px"><br></div><br></div></div></div></div>

--000000000000b0d69a058de21e68--


--===============2471173631151498959==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2471173631151498959==--

