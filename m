Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F2C6BEC9
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2019 17:07:01 +0200 (CEST)
Received: from [::1] (port=39578 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnlWF-0006Ca-H0; Wed, 17 Jul 2019 11:06:59 -0400
Received: from mail-oi1-f172.google.com ([209.85.167.172]:42043)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <cogwsn@gmail.com>) id 1hnlWB-000679-FR
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 11:06:55 -0400
Received: by mail-oi1-f172.google.com with SMTP id s184so18753476oie.9
 for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2019 08:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sTCj8gDRqVZeWPhNvsJYAUnJn/80MRahEYBk6ZqtQak=;
 b=BYRZM52sF08dxwb8lD+Fl2y6S295YRB9t1grlEwmpF5eRj0fcpzJCuQONbhvYgt1/S
 jzZdq3xpvhoZNzhNWvLm+ESyM4dKg0NvEuIgeIHAKAXFeYDCaFvB0KuRvyJmjtaS8yvX
 3zJQck9YLwoicYEnFwAn64+n8unLZHAdHfPrYRwQZBLbPvD0kBKqf/tqHODSI76r/Hl8
 /ZvR+usZkSz2s2WLaAqA//TSyN+V3+Afwe7DuUXbjQtJkVmpPX6Iac9FvauBEHUKndV3
 pyF491R5ggX7UXcR2/yoFpHrNNQe61yiHdlysN09UHq7WLiA/GZwp1dG7za4M6+OCBIv
 3c6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sTCj8gDRqVZeWPhNvsJYAUnJn/80MRahEYBk6ZqtQak=;
 b=nffkvdcrNXz3CvklDOcvtQKDlp5F64CMpkn7dZ88QaiChjVfSaGk0tNYGaDEQ0DNf9
 GiHB+7LOP+dEnVQ7u1GmWIQRY6cqh85s6/bShftfw1o0PLgl/IZ543FvB/l7+NKExAvY
 Z+VMXX2L62WKaG7qm0zCRrD/z08Xpb+vdcTFpXN5E2kEWq0ZPtbSkGWdH/ZlH2tYbtr6
 as+VWWk7sy3INVVVsDElmNU5+BN98pifDNTF3m2FjwLRA9kAnv6weeuxLHeHPm+ZJM5n
 Z/pyFtk9ytEEKeTKjt5vnKONBix78JPnsei5WeuqvORWGVuF8XUCLLycVH2E4hLITiIr
 KeIA==
X-Gm-Message-State: APjAAAUW+0VXBKY2+1FPPJgbx2fd9P9qucxbXJUVlUwLyiM1xzHDkltj
 BJJCuhRk9K5vCWi1kqjh8qwE/HVXhM+9kGqljlk=
X-Google-Smtp-Source: APXvYqyPdH1ZD+eYkqoi6UpG3WAeGtC1vTNnLH2q/75pqnLHzQbS42IYTtjbyReUzBbAbtIr2x2XwidCyjszlGVVxRY=
X-Received: by 2002:a54:4f95:: with SMTP id g21mr19899040oiy.23.1563375974563; 
 Wed, 17 Jul 2019 08:06:14 -0700 (PDT)
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
In-Reply-To: <CAL263ix6PEgcE2nyzwnKqSGBTMUvcn5itV0PXNw=erWrO4FYvA@mail.gmail.com>
Date: Wed, 17 Jul 2019 17:06:03 +0200
Message-ID: <CAOExtcRqLs6MecJmVt0JtV_uL=iEOWV0hLm-t772PEQfcdqUGw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4626168729600602518=="
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

--===============4626168729600602518==
Content-Type: multipart/alternative; boundary="0000000000009d42fe058de1d5bb"

--0000000000009d42fe058de1d5bb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nate,
No there are not. At the end of the last line, cursor keeps blinking, no
sequence errors.

john@john-Precision-M4600:~/pybombs/src/uhd/host/build/examples$ sudo
./benchmark_rate --rx_rate 10e6 --duration 600

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

[00:00:01.796895] Setting device timestamp to 0...
[00:00:01.797430] Testing receive rate 10.000000 Msps on 1 channels

On Wed, Jul 17, 2019 at 4:39 PM Nate Temple <nate.temple@ettus.com> wrote:

> Hi Sumit,
>
> If you run benchmark_rate for an extend period of time, do you see any
> sequence errors?
>
> /usr/local/lib/uhd/examples/benchmark_rate --rx_rate 10e6 --duration 600
>
>
> Regards,
> Nate Temple
>
> On Wed, Jul 17, 2019 at 7:34 AM Sumit Kumar <cogwsn@gmail.com> wrote:
>
>> Hi Nate,
>> Yes I addressed the first 2 points you mentioned.
>>
>> john@john-Precision-M4600:~/pybombs/src/gnuradio/gr-digital/examples/nar=
rowband$
>> sudo ./benchmark_tx.py -f 2.45G -S 10
>> linux; GNU C++ version 5.3.1 20151219; Boost_105800;
>> UHD_003.009.002-0-unknown
>>
>> Using Volk machine: avx_64_mmx_orc
>> -- Opening a USRP2/N-Series device...
>> -- Current recv frame size: 1472 bytes
>> -- Current send frame size: 1472 bytes
>>
>> No gain specified.
>> Setting gain to 15.750000 (from [0.000000, 31.500000])
>>
>> ........................................................................=
......................SS.SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.SSSS..S......SS.S...=
...SS.....S....S...S.S.......S....S........^C
>>
>> I am using ./benchmark_tx.py located
>> in gnuradio/gr-digital/examples/narrowband
>>
>>
>>
>> On Wed, Jul 17, 2019 at 4:25 PM Nate Temple <nate.temple@ettus.com>
>> wrote:
>>
>>> Hi Sumit,
>>>
>>> A couple things to address:
>>>
>>> 1) Enable Thread priority scheduling on your host
>>>
>>> Note it is throwing a warning in the output: "[WARNING] [UHD] Unable to
>>> set the thread priority. Performance may be negatively affected."
>>>
>>>
>>> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolc=
hain_(UHD_and_GNU_Radio)_on_Linux#Thread_priority_scheduling
>>>
>>>
>>> 2) Adjust your network buffers
>>>
>>> "
>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>> Target sock buff size: 2500000 bytes.
>>> Actual sock buff size: 1048576 bytes.
>>> See the transport application notes on buffer resizing.
>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>> Target sock buff size: 2500000 bytes.
>>> Actual sock buff size: 1048576 bytes.
>>> See the transport application notes on buffer resizing.
>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>> "
>>>
>>> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#N2xx
>>>
>>>
>>> What is the command you're using to transmit(which utility and args?)
>>>
>>>
>>> Regards,
>>> Nate Temple
>>>
>>> On Wed, Jul 17, 2019 at 7:06 AM Sumit Kumar via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Following is what I am getting after the command you asked to run. The
>>>> 192.168.10.5 gives SSSSSSS.
>>>>
>>>> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$
>>>> ./usrp_burn_mb_eeprom --read-all --args "addr=3D192.168.10.5"
>>>> Creating USRP device from address: addr=3D192.168.10.5
>>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>>>> UHD_3.15.0.git-1-gf83faf28
>>>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>>>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>>>> [INFO] [USRP2] Current send frame size: 1472 bytes
>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>>> Target sock buff size: 2500000 bytes.
>>>> Actual sock buff size: 1048576 bytes.
>>>> See the transport application notes on buffer resizing.
>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>>> Target sock buff size: 2500000 bytes.
>>>> Actual sock buff size: 1048576 bytes.
>>>> See the transport application notes on buffer resizing.
>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>>> Target sock buff size: 2500000 bytes.
>>>> Actual sock buff size: 1048576 bytes.
>>>> See the transport application notes on buffer resizing.
>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>> [WARNING] [UHD] Unable to set the thread priority. Performance may be
>>>> negatively affected.
>>>> Please see the general application notes in the manual for instruction=
s.
>>>> EnvironmentError: OSError: error in pthread_setschedparam
>>>>
>>>> Fetching current settings from EEPROM...
>>>>     EEPROM ["hardware"] is "2576"
>>>>     EEPROM ["revision"] is ""
>>>>     EEPROM ["product"] is ""
>>>>     EEPROM ["mac-addr"] is "a0:36:fa:26:34:44"
>>>>     EEPROM ["ip-addr"] is "192.168.10.5"
>>>>     EEPROM ["subnet"] is "255.255.255.255"
>>>>     EEPROM ["gateway"] is "255.255.255.255"
>>>>     EEPROM ["gpsdo"] is "none"
>>>>     EEPROM ["serial"] is "E4R14V4UN"
>>>>     EEPROM ["name"] is ""
>>>>
>>>> Power-cycle the USRP device for the changes to take effect.
>>>>
>>>> Done
>>>>
>>>>
>>>> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$
>>>> ./usrp_burn_mb_eeprom --read-all --args "addr=3D192.168.10.3"
>>>> Creating USRP device from address: addr=3D192.168.10.3
>>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>>>> UHD_3.15.0.git-1-gf83faf28
>>>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>>>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>>>> [INFO] [USRP2] Current send frame size: 1472 bytes
>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>>> Target sock buff size: 2500000 bytes.
>>>> Actual sock buff size: 1048576 bytes.
>>>> See the transport application notes on buffer resizing.
>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>>> Target sock buff size: 2500000 bytes.
>>>> Actual sock buff size: 1048576 bytes.
>>>> See the transport application notes on buffer resizing.
>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>>> Target sock buff size: 2500000 bytes.
>>>> Actual sock buff size: 1048576 bytes.
>>>> See the transport application notes on buffer resizing.
>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>>> [WARNING] [UHD] Unable to set the thread priority. Performance may be
>>>> negatively affected.
>>>> Please see the general application notes in the manual for instruction=
s.
>>>> EnvironmentError: OSError: error in pthread_setschedparam
>>>>
>>>> Fetching current settings from EEPROM...
>>>>     EEPROM ["hardware"] is "2576"
>>>>     EEPROM ["revision"] is ""
>>>>     EEPROM ["product"] is ""
>>>>     EEPROM ["mac-addr"] is "a0:36:fa:26:34:42"
>>>>     EEPROM ["ip-addr"] is "192.168.10.3"
>>>>     EEPROM ["subnet"] is "255.255.255.255"
>>>>     EEPROM ["gateway"] is "255.255.255.255"
>>>>     EEPROM ["gpsdo"] is "none"
>>>>     EEPROM ["serial"] is "E4R14V2UN"
>>>>     EEPROM ["name"] is ""
>>>>
>>>> Power-cycle the USRP device for the changes to take effect.
>>>>
>>>> Done
>>>>
>>>>
>>>> On Wed, Jul 17, 2019 at 3:19 PM Jason Matusiak <
>>>> jason@gardettoengineering.com> wrote:
>>>>
>>>>> You are right, the table of revisions was for the X-series
>>>>>
>>>>> try running the command from your prefix:
>>>>> src/uhd/host/build/utils/usrp_burn_mb_eeprom --args=3D"type=3Dn200" -=
-read-all
>>>>>
>>>>> don't quote me on the type portion, I don't have a board in front of
>>>>> me to see if it is n200 or something else.  I //think// that will rep=
ort
>>>>> the major and minor revision values (I am grasping at straws here, ju=
st
>>>>> trying to figure out what the differences might be).
>>>>>
>>>>> You are connecting the ethernet connections to the two devices throug=
h
>>>>> the exact same port on your PC?
>>>>>
>>>>> ------------------------------
>>>>> *From:* Sumit Kumar <cogwsn@gmail.com>
>>>>> *Sent:* Wednesday, July 17, 2019 8:24 AM
>>>>> *To:* Jason Matusiak <jason@gardettoengineering.com>
>>>>> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>>>> *Subject:* Re: [USRP-users] Sequence Errors N200
>>>>>
>>>>> The sticker  for sbx shows F33612 and F33814.
>>>>> How will this help ?
>>>>>
>>>>>
>>>>> On Wed, Jul 17, 2019 at 1:50 PM Jason Matusiak <
>>>>> jason@gardettoengineering.com> wrote:
>>>>>
>>>>> Sumit,
>>>>>
>>>>> OK, the last idea I have:
>>>>>
>>>>> There is a sticker on the back of the N-series devices it *usually* s=
ays
>>>>> the version there, but not always.  This has a little info:
>>>>> https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on=
_USRP_Devices#N200.2F210_EEPROM
>>>>>
>>>>> Do they match?
>>>>>
>>>>> ------------------------------
>>>>> *From:* Sumit Kumar <cogwsn@gmail.com>
>>>>> *Sent:* Wednesday, July 17, 2019 7:45 AM
>>>>> *To:* Jason Matusiak <jason@gardettoengineering.com>
>>>>> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>>>> *Subject:* Re: [USRP-users] Sequence Errors N200
>>>>>
>>>>> Hi Jason,
>>>>>
>>>>> Yes they are consistent, I mean the output of uhd_usrp_probe for both
>>>>> N200 is exactly the same (except the ip, serial and mac addr).
>>>>> I do not know where the problem is! Hardware or software
>>>>>
>>>>> Regards
>>>>> Sumit
>>>>>
>>>>> On Wed, Jul 17, 2019 at 1:19 PM Jason Matusiak <
>>>>> jason@gardettoengineering.com> wrote:
>>>>>
>>>>> I am not really an N-series guy, so this probably won't be helpful.
>>>>> Have you tried doing a uhd_usrp_probe on both devices and seen that t=
he
>>>>> responses are consistent?
>>>>>
>>>>> ------------------------------
>>>>> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
>>>>> Sumit Kumar via USRP-users <usrp-users@lists.ettus.com>
>>>>> *Sent:* Wednesday, July 17, 2019 7:15 AM
>>>>> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>>>> *Subject:* [USRP-users] Sequence Errors N200
>>>>>
>>>>> Hi,
>>>>> I am trying transmit using Ettus N200 (call it A) but getting this
>>>>> error message on the console
>>>>>
>>>>>
>>>>> SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS............................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
......................................
>>>>>
>>>>> I looked for it on google and found these links
>>>>>
>>>>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/=
037495.html
>>>>>
>>>>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2012-July=
/032838.html
>>>>>
>>>>> Both the links  suggested problem related to the gigabit port. Then I
>>>>> connected another USRP N200 (call it B) to the same laptop and tried
>>>>> transmitting using that as there were no such sequence error messages=
.
>>>>>
>>>>> This makes me believe there is some problem with the first USRP, i.e.=
,
>>>>> A.
>>>>>
>>>>> Further I tried with different versions of UHD 3.11, UHD 3.15.. but
>>>>> its the same.
>>>>>
>>>>> Receive is good only transmit is throwing error.
>>>>>
>>>>> Not only with UHD, even in labview, when I transmit, I see nothing
>>>>> coming out from the N200 (A).
>>>>>
>>>>> I am using SBXv2 daughter board.
>>>>>
>>>>> Any clue!
>>>>>
>>>>> Regards
>>>>> --
>>>>> --
>>>>> Sumit kumar
>>>>> Postdoc
>>>>> SnT, Luxembourg
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> --
>>>>> --
>>>>> Sumit kumar
>>>>> Postdoc
>>>>> SnT, Luxembourg
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> --
>>>>> --
>>>>> Sumit kumar
>>>>> Postdoc
>>>>> SnT, Luxembourg
>>>>>
>>>>>
>>>>>
>>>>
>>>> --
>>>> --
>>>> Sumit kumar
>>>> Postdoc
>>>> SnT, Luxembourg
>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>
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

--0000000000009d42fe058de1d5bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Nate,<div>No there are not. At the end of the last=
 line, cursor keeps blinking, no sequence errors.=C2=A0<br><div><br></div><=
div>john@john-Precision-M4600:~/pybombs/src/uhd/host/build/examples$ sudo .=
/benchmark_rate --rx_rate 10e6 --duration 600<span class=3D"gmail-im" style=
=3D"color:rgb(80,0,80)"><br><br>[INFO] [UHD] linux; GNU C++ version 5.4.0 2=
0160609; Boost_105800; UHD_3.15.0.git-1-gf83faf28<br></span>[00:00:00.00002=
4] Creating the usrp device with: ...<span class=3D"gmail-im" style=3D"colo=
r:rgb(80,0,80)"><br>[INFO] [USRP2] Opening a USRP2/N-Series device...<br>[I=
NFO] [USRP2] Current recv frame size: 1472 bytes<br>[INFO] [USRP2] Current =
send frame size: 1472 bytes<br></span>Using Device: Single USRP:<br>=C2=A0 =
Device: USRP2 / N-Series Device<br>=C2=A0 Mboard 0: N200r4<br>=C2=A0 RX Cha=
nnel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =
=C2=A0 RX Subdev: SBXv3 RX<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP:=
 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: SBXv3 TX<br><b=
r>[00:00:01.796895] Setting device timestamp to 0...<br>[00:00:01.797430] T=
esting receive rate 10.000000 Msps on 1 channels<br></div></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul=
 17, 2019 at 4:39 PM Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.co=
m">nate.temple@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=
=3D"font-family:arial,helvetica,sans-serif">Hi Sumit,<br><br>If you run ben=
chmark_rate for an extend period of time, do you see any sequence errors?<b=
r><br>/usr/local/lib/uhd/examples/benchmark_rate --rx_rate 10e6 --duration =
600<br><br><br>Regards,<br>Nate Temple</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 7:34 AM=
 Sumit Kumar &lt;<a href=3D"mailto:cogwsn@gmail.com" target=3D"_blank">cogw=
sn@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr">Hi=C2=A0Nate,=C2=A0<div>Yes I addressed the fi=
rst 2 points you mentioned.=C2=A0</div><div><br></div><div>john@john-Precis=
ion-M4600:~/pybombs/src/gnuradio/gr-digital/examples/narrowband$ sudo ./ben=
chmark_tx.py -f 2.45G -S 10<br>linux; GNU C++ version 5.3.1 20151219; Boost=
_105800; UHD_003.009.002-0-unknown<br><br>Using Volk machine: avx_64_mmx_or=
c<br>-- Opening a USRP2/N-Series device...<br>-- Current recv frame size: 1=
472 bytes<br>-- Current send frame size: 1472 bytes<br><br>No gain specifie=
d.<br>Setting gain to 15.750000 (from [0.000000, 31.500000])<br>...........=
...........................................................................=
........SS.SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.SSSS..S......SS.S......SS.....S...=
.S...S.S.......S....S........^C<br></div><div><br></div><div>I am using ./b=
enchmark_tx.py located in=C2=A0gnuradio/gr-digital/examples/narrowband</div=
><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 4:25 PM Nate Temple =
&lt;<a href=3D"mailto:nate.temple@ettus.com" target=3D"_blank">nate.temple@=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-fami=
ly:arial,helvetica,sans-serif">Hi Sumit,<br><br>A couple things to address:=
<br><br>1) Enable Thread priority scheduling on your host<br><br>Note it is=
 throwing a warning in the output: &quot;[WARNING] [UHD] Unable to set the =
thread priority. Performance may be negatively affected.&quot;<br><br><a hr=
ef=3D"https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Too=
lchain_(UHD_and_GNU_Radio)_on_Linux#Thread_priority_scheduling" target=3D"_=
blank">https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_To=
olchain_(UHD_and_GNU_Radio)_on_Linux#Thread_priority_scheduling</a><br><br>=
<br>2) Adjust your network buffers<br><br>&quot;<br>[WARNING] [UDP] The sen=
d buffer could not be resized sufficiently.<br>Target sock buff size: 25000=
00 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the transport app=
lication notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.w=
mem_max=3D2500000<br>[WARNING] [UDP] The send buffer could not be resized s=
ufficiently.<br>Target sock buff size: 2500000 bytes.<br>Actual sock buff s=
ize: 1048576 bytes.<br>See the transport application notes on buffer resizi=
ng.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2500000<br>&quot;<br>=
<br><a href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_T=
ricks#N2xx" target=3D"_blank">https://kb.ettus.com/USRP_Host_Performance_Tu=
ning_Tips_and_Tricks#N2xx</a><br><br><br>What is the command you&#39;re usi=
ng to transmit(which utility and args?)<br><br><br>Regards,<br>Nate Temple<=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Wed, Jul 17, 2019 at 7:06 AM Sumit Kumar via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lis=
ts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr">Following is what I am getting after the comma=
nd you asked to run. The 192.168.10.5 gives SSSSSSS.=C2=A0<div><br></div><d=
iv>john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$ ./usrp_bur=
n_mb_eeprom --read-all --args &quot;addr=3D192.168.10.5&quot;<br>Creating U=
SRP device from address: addr=3D192.168.10.5<br>[INFO] [UHD] linux; GNU C++=
 version 5.4.0 20160609; Boost_105800; UHD_3.15.0.git-1-gf83faf28<br>[INFO]=
 [USRP2] Opening a USRP2/N-Series device...<br>[INFO] [USRP2] Current recv =
frame size: 1472 bytes<br>[INFO] [USRP2] Current send frame size: 1472 byte=
s<br>[WARNING] [UDP] The send buffer could not be resized sufficiently.<br>=
Target sock buff size: 2500000 bytes.<br>Actual sock buff size: 1048576 byt=
es.<br>See the transport application notes on buffer resizing.<br>Please ru=
n: sudo sysctl -w net.core.wmem_max=3D2500000<br>[WARNING] [UDP] The send b=
uffer could not be resized sufficiently.<br>Target sock buff size: 2500000 =
bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the transport applic=
ation notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.wmem=
_max=3D2500000<br>[WARNING] [UDP] The send buffer could not be resized suff=
iciently.<br>Target sock buff size: 2500000 bytes.<br>Actual sock buff size=
: 1048576 bytes.<br>See the transport application notes on buffer resizing.=
<br>Please run: sudo sysctl -w net.core.wmem_max=3D2500000<br>[WARNING] [UH=
D] Unable to set the thread priority. Performance may be negatively affecte=
d.<br>Please see the general application notes in the manual for instructio=
ns.<br>EnvironmentError: OSError: error in pthread_setschedparam<br><br>Fet=
ching current settings from EEPROM...<br>=C2=A0 =C2=A0 EEPROM [&quot;hardwa=
re&quot;] is &quot;2576&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;revision&quot;=
] is &quot;&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;product&quot;] is &quot;&q=
uot;<br>=C2=A0 =C2=A0 EEPROM [&quot;mac-addr&quot;] is &quot;a0:36:fa:26:34=
:44&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;ip-addr&quot;] is &quot;192.168.10=
.5&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;subnet&quot;] is &quot;255.255.255.=
255&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;gateway&quot;] is &quot;255.255.25=
5.255&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;gpsdo&quot;] is &quot;none&quot;=
<br>=C2=A0 =C2=A0 EEPROM [&quot;serial&quot;] is &quot;E4R14V4UN&quot;<br>=
=C2=A0 =C2=A0 EEPROM [&quot;name&quot;] is &quot;&quot;<br><br>Power-cycle =
the USRP device for the changes to take effect.<br><br><div>Done</div><div>=
<br></div><div><br></div><div>john@john-Precision-M4600:~/pybombs/src/uhd/h=
ost/build/utils$ ./usrp_burn_mb_eeprom --read-all --args &quot;addr=3D192.1=
68.10.3&quot;<br>Creating USRP device from address: addr=3D192.168.10.3<br>=
[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.15.=
0.git-1-gf83faf28<br>[INFO] [USRP2] Opening a USRP2/N-Series device...<br>[=
INFO] [USRP2] Current recv frame size: 1472 bytes<br>[INFO] [USRP2] Current=
 send frame size: 1472 bytes<br>[WARNING] [UDP] The send buffer could not b=
e resized sufficiently.<br>Target sock buff size: 2500000 bytes.<br>Actual =
sock buff size: 1048576 bytes.<br>See the transport application notes on bu=
ffer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2500000<br=
>[WARNING] [UDP] The send buffer could not be resized sufficiently.<br>Targ=
et sock buff size: 2500000 bytes.<br>Actual sock buff size: 1048576 bytes.<=
br>See the transport application notes on buffer resizing.<br>Please run: s=
udo sysctl -w net.core.wmem_max=3D2500000<br>[WARNING] [UDP] The send buffe=
r could not be resized sufficiently.<br>Target sock buff size: 2500000 byte=
s.<br>Actual sock buff size: 1048576 bytes.<br>See the transport applicatio=
n notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=
=3D2500000<br>[WARNING] [UHD] Unable to set the thread priority. Performanc=
e may be negatively affected.<br>Please see the general application notes i=
n the manual for instructions.<br>EnvironmentError: OSError: error in pthre=
ad_setschedparam<br><br>Fetching current settings from EEPROM...<br>=C2=A0 =
=C2=A0 EEPROM [&quot;hardware&quot;] is &quot;2576&quot;<br>=C2=A0 =C2=A0 E=
EPROM [&quot;revision&quot;] is &quot;&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot=
;product&quot;] is &quot;&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;mac-addr&quo=
t;] is &quot;a0:36:fa:26:34:42&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;ip-addr=
&quot;] is &quot;192.168.10.3&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;subnet&q=
uot;] is &quot;255.255.255.255&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;gateway=
&quot;] is &quot;255.255.255.255&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;gpsdo=
&quot;] is &quot;none&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;serial&quot;] is=
 &quot;E4R14V2UN&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;name&quot;] is &quot;=
&quot;<br><br>Power-cycle the USRP device for the changes to take effect.<b=
r><br>Done<div class=3D"gmail-m_-2723275523225085977gmail-m_-64498134563544=
74750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-50904=
55826936873702gmail-yj6qo"></div><div class=3D"gmail-m_-2723275523225085977=
gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225=
465229725gmail-m_-5090455826936873702gmail-adL"><br></div></div></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On We=
d, Jul 17, 2019 at 3:19 PM Jason Matusiak &lt;<a href=3D"mailto:jason@garde=
ttoengineering.com" target=3D"_blank">jason@gardettoengineering.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">




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
<div id=3D"gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_=
-5406334666104058457gmail-m_-8630331225465229725gmail-m_-509045582693687370=
2gmail-m_3403553355508831478Signature">
<div>
<div id=3D"gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_=
-5406334666104058457gmail-m_-8630331225465229725gmail-m_-509045582693687370=
2gmail-m_3403553355508831478appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_=
-5406334666104058457gmail-m_-8630331225465229725gmail-m_-509045582693687370=
2gmail-m_3403553355508831478divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-=
size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Sumi=
t Kumar &lt;<a href=3D"mailto:cogwsn@gmail.com" target=3D"_blank">cogwsn@gm=
ail.com</a>&gt;<br>
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
<div class=3D"gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail=
-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-509045582693687=
3702gmail-m_3403553355508831478x_gmail_quote">
<div dir=3D"ltr" class=3D"gmail-m_-2723275523225085977gmail-m_-644981345635=
4474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-509=
0455826936873702gmail-m_3403553355508831478x_gmail_attr">On Wed, Jul 17, 20=
19 at 1:50 PM Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineerin=
g.com" target=3D"_blank">jason@gardettoengineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail-m_-2723275523225085977gmail-m_-64498134563544747=
50gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-50904558=
26936873702gmail-m_3403553355508831478x_gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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
<div id=3D"gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_=
-5406334666104058457gmail-m_-8630331225465229725gmail-m_-509045582693687370=
2gmail-m_3403553355508831478x_gmail-m_6506407344245079092Signature">
<div>
<div id=3D"gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_=
-5406334666104058457gmail-m_-8630331225465229725gmail-m_-509045582693687370=
2gmail-m_3403553355508831478x_gmail-m_6506407344245079092appendonsend"></di=
v>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_=
-5406334666104058457gmail-m_-8630331225465229725gmail-m_-509045582693687370=
2gmail-m_3403553355508831478x_gmail-m_6506407344245079092divRplyFwdMsg" dir=
=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=
=3D"#000000"><b>From:</b> Sumit Kumar &lt;<a href=3D"mailto:cogwsn@gmail.co=
m" target=3D"_blank">cogwsn@gmail.com</a>&gt;<br>
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
<div class=3D"gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail=
-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-509045582693687=
3702gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail_quote">
<div dir=3D"ltr" class=3D"gmail-m_-2723275523225085977gmail-m_-644981345635=
4474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-509=
0455826936873702gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_g=
mail_attr">On Wed, Jul 17, 2019 at 1:19 PM Jason Matusiak &lt;<a href=3D"ma=
ilto:jason@gardettoengineering.com" target=3D"_blank">jason@gardettoenginee=
ring.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail-m_-2723275523225085977gmail-m_-64498134563544747=
50gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-50904558=
26936873702gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I am not really an N-series guy, so this probably won&#39;t be helpful.=C2=
=A0 Have you tried doing a uhd_usrp_probe on both devices and seen that the=
 responses are consistent?</div>
<div id=3D"gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_=
-5406334666104058457gmail-m_-8630331225465229725gmail-m_-509045582693687370=
2gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail-m_90147298=
13065413461Signature">
<div>
<div id=3D"gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_=
-5406334666104058457gmail-m_-8630331225465229725gmail-m_-509045582693687370=
2gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail-m_90147298=
13065413461appendonsend">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_=
-5406334666104058457gmail-m_-8630331225465229725gmail-m_-509045582693687370=
2gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail-m_90147298=
13065413461divRplyFwdMsg" dir=3D"ltr">
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
<div dir=3D"ltr" class=3D"gmail-m_-2723275523225085977gmail-m_-644981345635=
4474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-509=
0455826936873702gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_g=
mail-m_9014729813065413461x_gmail_signature">
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
<div dir=3D"ltr" class=3D"gmail-m_-2723275523225085977gmail-m_-644981345635=
4474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-509=
0455826936873702gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_g=
mail_signature">
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
<div dir=3D"ltr" class=3D"gmail-m_-2723275523225085977gmail-m_-644981345635=
4474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-509=
0455826936873702gmail-m_3403553355508831478x_gmail_signature">
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
 class=3D"gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-=
5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702=
gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span style=3D"colo=
r:rgb(136,136,136);font-size:12.8px">--=C2=A0</span><br style=3D"color:rgb(=
136,136,136);font-size:12.8px"><div style=3D"color:rgb(136,136,136);font-si=
ze:12.8px">Sumit kumar<br>Postdoc</div><div style=3D"color:rgb(136,136,136)=
;font-size:12.8px">SnT, Luxembourg</div><div style=3D"color:rgb(136,136,136=
);font-size:12.8px"><br></div><br></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-=
5406334666104058457gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">=
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

--0000000000009d42fe058de1d5bb--


--===============4626168729600602518==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4626168729600602518==--

