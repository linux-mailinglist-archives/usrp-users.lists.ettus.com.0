Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B396BE72
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2019 16:40:42 +0200 (CEST)
Received: from [::1] (port=32812 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnl6n-00049W-3Q; Wed, 17 Jul 2019 10:40:41 -0400
Received: from mail-ot1-f41.google.com ([209.85.210.41]:38443)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1hnl6j-00040H-LN
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 10:40:37 -0400
Received: by mail-ot1-f41.google.com with SMTP id d17so25296498oth.5
 for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2019 07:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RwPCXvXXT+kfVdhEP6pWYsL4w5MbYERSlYEm+tiOnQA=;
 b=dCjU403iqil0zVu+pZY9ESKZ5iR4tlNSJEXKMqQtM3kMRQsrJCS/k1vidFa74Ohadv
 BCQkMm+/WuqcHmduPYp7efCbupEfgXlnGSELbJNp1CCm8F4B8qF36S+udU5KR8H3BK3c
 hhmOamYOxQ4oZ5bkNTOQWlSUkk7R/3IPzElou0DyRs33I5ZplYkBUD1CVB2+YF+EcaWw
 xof5IQKRUDnuVN+L2/3cV+o6yaCUTH6v0ay2DlouaJA7ycsj4z+ArAKw66+EIl1/bRBI
 bnPjV5ceNuZt8Z8mPQkQi7gGcB/kogac1yyXKY4R+ribAgSpG4awe8rpzKOE3bCEBXQj
 Ek9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RwPCXvXXT+kfVdhEP6pWYsL4w5MbYERSlYEm+tiOnQA=;
 b=CL5g2ZrCDz3l0uo+IiPzYL4a3PX5eocU5EuzEJGSg6xi01iGNGfh4SMssqSnKZxDYo
 SiKE3Ai5BdLJyccBSTwJwXGrs4gOKLCNz86zm7umxYQ1azpIsqYKVhBYHYkzZxSyE2Lc
 em5cKcCkXFQ1koW7BJ/kcUKVS5MGa+4YD1qhv4ZG9/DRERbt8d+WW3TpxaC7NUFj3Pnz
 nbnSWcAgFHI1iGN0krydAsTiC8tCYRah3XTQngblMo/Kv+cyei4AbKbxFmi9ojjR9Vr5
 Xl3YEZKhab9RErRQfPwSNMB0iicHdm2tzIsOyDNtvR0rsfDCi0h/7dS4+HKU2A3/9TBo
 WAAQ==
X-Gm-Message-State: APjAAAVLnLIIq38mYwmeiFTd6h1fuFGIOJzQM0IO3FgpWSYDGg02Frn2
 REsFlVMEwWx5rJ/9ZB2Prsjc6ufK4YQWl9HXVwBXthCS
X-Google-Smtp-Source: APXvYqxMe+77hXTLQMEDdEjh6lqm0ta1632TFT/zZqrksqa/nqxuYKO0gcGNlWp5w7zUW47Uz4Z1VLtRG/JFwkiqgLg=
X-Received: by 2002:a05:6830:160c:: with SMTP id
 g12mr31532884otr.231.1563374396812; 
 Wed, 17 Jul 2019 07:39:56 -0700 (PDT)
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
In-Reply-To: <CAOExtcQGYB8J1w3-65wNGeUDh0baFwsiir95OM8QNLeF99YA=g@mail.gmail.com>
Date: Wed, 17 Jul 2019 07:40:15 -0700
Message-ID: <CAL263ix6PEgcE2nyzwnKqSGBTMUvcn5itV0PXNw=erWrO4FYvA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5116827122819896641=="
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

--===============5116827122819896641==
Content-Type: multipart/alternative; boundary="00000000000092d93f058de177c4"

--00000000000092d93f058de177c4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sumit,

If you run benchmark_rate for an extend period of time, do you see any
sequence errors?

/usr/local/lib/uhd/examples/benchmark_rate --rx_rate 10e6 --duration 600


Regards,
Nate Temple

On Wed, Jul 17, 2019 at 7:34 AM Sumit Kumar <cogwsn@gmail.com> wrote:

> Hi Nate,
> Yes I addressed the first 2 points you mentioned.
>
> john@john-Precision-M4600:~/pybombs/src/gnuradio/gr-digital/examples/narr=
owband$
> sudo ./benchmark_tx.py -f 2.45G -S 10
> linux; GNU C++ version 5.3.1 20151219; Boost_105800;
> UHD_003.009.002-0-unknown
>
> Using Volk machine: avx_64_mmx_orc
> -- Opening a USRP2/N-Series device...
> -- Current recv frame size: 1472 bytes
> -- Current send frame size: 1472 bytes
>
> No gain specified.
> Setting gain to 15.750000 (from [0.000000, 31.500000])
>
> .........................................................................=
.....................SS.SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.SSSS..S......SS.S....=
..SS.....S....S...S.S.......S....S........^C
>
> I am using ./benchmark_tx.py located
> in gnuradio/gr-digital/examples/narrowband
>
>
>
> On Wed, Jul 17, 2019 at 4:25 PM Nate Temple <nate.temple@ettus.com> wrote=
:
>
>> Hi Sumit,
>>
>> A couple things to address:
>>
>> 1) Enable Thread priority scheduling on your host
>>
>> Note it is throwing a warning in the output: "[WARNING] [UHD] Unable to
>> set the thread priority. Performance may be negatively affected."
>>
>>
>> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolch=
ain_(UHD_and_GNU_Radio)_on_Linux#Thread_priority_scheduling
>>
>>
>> 2) Adjust your network buffers
>>
>> "
>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>> Target sock buff size: 2500000 bytes.
>> Actual sock buff size: 1048576 bytes.
>> See the transport application notes on buffer resizing.
>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>> Target sock buff size: 2500000 bytes.
>> Actual sock buff size: 1048576 bytes.
>> See the transport application notes on buffer resizing.
>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>> "
>>
>> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#N2xx
>>
>>
>> What is the command you're using to transmit(which utility and args?)
>>
>>
>> Regards,
>> Nate Temple
>>
>> On Wed, Jul 17, 2019 at 7:06 AM Sumit Kumar via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Following is what I am getting after the command you asked to run. The
>>> 192.168.10.5 gives SSSSSSS.
>>>
>>> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$
>>> ./usrp_burn_mb_eeprom --read-all --args "addr=3D192.168.10.5"
>>> Creating USRP device from address: addr=3D192.168.10.5
>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>>> UHD_3.15.0.git-1-gf83faf28
>>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>>> [INFO] [USRP2] Current send frame size: 1472 bytes
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
>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>> Target sock buff size: 2500000 bytes.
>>> Actual sock buff size: 1048576 bytes.
>>> See the transport application notes on buffer resizing.
>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>> [WARNING] [UHD] Unable to set the thread priority. Performance may be
>>> negatively affected.
>>> Please see the general application notes in the manual for instructions=
.
>>> EnvironmentError: OSError: error in pthread_setschedparam
>>>
>>> Fetching current settings from EEPROM...
>>>     EEPROM ["hardware"] is "2576"
>>>     EEPROM ["revision"] is ""
>>>     EEPROM ["product"] is ""
>>>     EEPROM ["mac-addr"] is "a0:36:fa:26:34:44"
>>>     EEPROM ["ip-addr"] is "192.168.10.5"
>>>     EEPROM ["subnet"] is "255.255.255.255"
>>>     EEPROM ["gateway"] is "255.255.255.255"
>>>     EEPROM ["gpsdo"] is "none"
>>>     EEPROM ["serial"] is "E4R14V4UN"
>>>     EEPROM ["name"] is ""
>>>
>>> Power-cycle the USRP device for the changes to take effect.
>>>
>>> Done
>>>
>>>
>>> john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$
>>> ./usrp_burn_mb_eeprom --read-all --args "addr=3D192.168.10.3"
>>> Creating USRP device from address: addr=3D192.168.10.3
>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>>> UHD_3.15.0.git-1-gf83faf28
>>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>>> [INFO] [USRP2] Current send frame size: 1472 bytes
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
>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>> Target sock buff size: 2500000 bytes.
>>> Actual sock buff size: 1048576 bytes.
>>> See the transport application notes on buffer resizing.
>>> Please run: sudo sysctl -w net.core.wmem_max=3D2500000
>>> [WARNING] [UHD] Unable to set the thread priority. Performance may be
>>> negatively affected.
>>> Please see the general application notes in the manual for instructions=
.
>>> EnvironmentError: OSError: error in pthread_setschedparam
>>>
>>> Fetching current settings from EEPROM...
>>>     EEPROM ["hardware"] is "2576"
>>>     EEPROM ["revision"] is ""
>>>     EEPROM ["product"] is ""
>>>     EEPROM ["mac-addr"] is "a0:36:fa:26:34:42"
>>>     EEPROM ["ip-addr"] is "192.168.10.3"
>>>     EEPROM ["subnet"] is "255.255.255.255"
>>>     EEPROM ["gateway"] is "255.255.255.255"
>>>     EEPROM ["gpsdo"] is "none"
>>>     EEPROM ["serial"] is "E4R14V2UN"
>>>     EEPROM ["name"] is ""
>>>
>>> Power-cycle the USRP device for the changes to take effect.
>>>
>>> Done
>>>
>>>
>>> On Wed, Jul 17, 2019 at 3:19 PM Jason Matusiak <
>>> jason@gardettoengineering.com> wrote:
>>>
>>>> You are right, the table of revisions was for the X-series
>>>>
>>>> try running the command from your prefix:
>>>> src/uhd/host/build/utils/usrp_burn_mb_eeprom --args=3D"type=3Dn200" --=
read-all
>>>>
>>>> don't quote me on the type portion, I don't have a board in front of m=
e
>>>> to see if it is n200 or something else.  I //think// that will report =
the
>>>> major and minor revision values (I am grasping at straws here, just tr=
ying
>>>> to figure out what the differences might be).
>>>>
>>>> You are connecting the ethernet connections to the two devices through
>>>> the exact same port on your PC?
>>>>
>>>> ------------------------------
>>>> *From:* Sumit Kumar <cogwsn@gmail.com>
>>>> *Sent:* Wednesday, July 17, 2019 8:24 AM
>>>> *To:* Jason Matusiak <jason@gardettoengineering.com>
>>>> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>>> *Subject:* Re: [USRP-users] Sequence Errors N200
>>>>
>>>> The sticker  for sbx shows F33612 and F33814.
>>>> How will this help ?
>>>>
>>>>
>>>> On Wed, Jul 17, 2019 at 1:50 PM Jason Matusiak <
>>>> jason@gardettoengineering.com> wrote:
>>>>
>>>> Sumit,
>>>>
>>>> OK, the last idea I have:
>>>>
>>>> There is a sticker on the back of the N-series devices it *usually* sa=
ys
>>>> the version there, but not always.  This has a little info:
>>>> https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on_=
USRP_Devices#N200.2F210_EEPROM
>>>>
>>>> Do they match?
>>>>
>>>> ------------------------------
>>>> *From:* Sumit Kumar <cogwsn@gmail.com>
>>>> *Sent:* Wednesday, July 17, 2019 7:45 AM
>>>> *To:* Jason Matusiak <jason@gardettoengineering.com>
>>>> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>>> *Subject:* Re: [USRP-users] Sequence Errors N200
>>>>
>>>> Hi Jason,
>>>>
>>>> Yes they are consistent, I mean the output of uhd_usrp_probe for both
>>>> N200 is exactly the same (except the ip, serial and mac addr).
>>>> I do not know where the problem is! Hardware or software
>>>>
>>>> Regards
>>>> Sumit
>>>>
>>>> On Wed, Jul 17, 2019 at 1:19 PM Jason Matusiak <
>>>> jason@gardettoengineering.com> wrote:
>>>>
>>>> I am not really an N-series guy, so this probably won't be helpful.
>>>> Have you tried doing a uhd_usrp_probe on both devices and seen that th=
e
>>>> responses are consistent?
>>>>
>>>> ------------------------------
>>>> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
>>>> Sumit Kumar via USRP-users <usrp-users@lists.ettus.com>
>>>> *Sent:* Wednesday, July 17, 2019 7:15 AM
>>>> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>>> *Subject:* [USRP-users] Sequence Errors N200
>>>>
>>>> Hi,
>>>> I am trying transmit using Ettus N200 (call it A) but getting this
>>>> error message on the console
>>>>
>>>>
>>>> SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.............................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
.....................................
>>>>
>>>> I looked for it on google and found these links
>>>>
>>>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/0=
37495.html
>>>>
>>>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2012-July/=
032838.html
>>>>
>>>> Both the links  suggested problem related to the gigabit port. Then I
>>>> connected another USRP N200 (call it B) to the same laptop and tried
>>>> transmitting using that as there were no such sequence error messages.
>>>>
>>>> This makes me believe there is some problem with the first USRP, i.e.,
>>>> A.
>>>>
>>>> Further I tried with different versions of UHD 3.11, UHD 3.15.. but it=
s
>>>> the same.
>>>>
>>>> Receive is good only transmit is throwing error.
>>>>
>>>> Not only with UHD, even in labview, when I transmit, I see nothing
>>>> coming out from the N200 (A).
>>>>
>>>> I am using SBXv2 daughter board.
>>>>
>>>> Any clue!
>>>>
>>>> Regards
>>>> --
>>>> --
>>>> Sumit kumar
>>>> Postdoc
>>>> SnT, Luxembourg
>>>>
>>>>
>>>>
>>>>
>>>> --
>>>> --
>>>> Sumit kumar
>>>> Postdoc
>>>> SnT, Luxembourg
>>>>
>>>>
>>>>
>>>>
>>>> --
>>>> --
>>>> Sumit kumar
>>>> Postdoc
>>>> SnT, Luxembourg
>>>>
>>>>
>>>>
>>>
>>> --
>>> --
>>> Sumit kumar
>>> Postdoc
>>> SnT, Luxembourg
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>
> --
> --
> Sumit kumar
> Postdoc
> SnT, Luxembourg
>
>
>

--00000000000092d93f058de177c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Sumit,<br><br>If you run benchmark_rate for an exten=
d period of time, do you see any sequence errors?<br><br>/usr/local/lib/uhd=
/examples/benchmark_rate --rx_rate 10e6 --duration 600<br><br><br>Regards,<=
br>Nate Temple</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Wed, Jul 17, 2019 at 7:34 AM Sumit Kumar &lt;<a href=
=3D"mailto:cogwsn@gmail.com" target=3D"_blank">cogwsn@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr">Hi=C2=A0Nate,=C2=A0<div>Yes I addressed the first 2 points you mention=
ed.=C2=A0</div><div><br></div><div>john@john-Precision-M4600:~/pybombs/src/=
gnuradio/gr-digital/examples/narrowband$ sudo ./benchmark_tx.py -f 2.45G -S=
 10<br>linux; GNU C++ version 5.3.1 20151219; Boost_105800; UHD_003.009.002=
-0-unknown<br><br>Using Volk machine: avx_64_mmx_orc<br>-- Opening a USRP2/=
N-Series device...<br>-- Current recv frame size: 1472 bytes<br>-- Current =
send frame size: 1472 bytes<br><br>No gain specified.<br>Setting gain to 15=
.750000 (from [0.000000, 31.500000])<br>...................................=
...........................................................SS.SSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSS.SSSS..S......SS.S......SS.....S....S...S.S.......S....S...=
.....^C<br></div><div><br></div><div>I am using ./benchmark_tx.py located i=
n=C2=A0gnuradio/gr-digital/examples/narrowband</div><div><br></div><div><br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Jul 17, 2019 at 4:25 PM Nate Temple &lt;<a href=3D"mailto:na=
te.temple@ettus.com" target=3D"_blank">nate.temple@ettus.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-se=
rif">Hi Sumit,<br><br>A couple things to address:<br><br>1) Enable Thread p=
riority scheduling on your host<br><br>Note it is throwing a warning in the=
 output: &quot;[WARNING] [UHD] Unable to set the thread priority. Performan=
ce may be negatively affected.&quot;<br><br><a href=3D"https://kb.ettus.com=
/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)=
_on_Linux#Thread_priority_scheduling" target=3D"_blank">https://kb.ettus.co=
m/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio=
)_on_Linux#Thread_priority_scheduling</a><br><br><br>2) Adjust your network=
 buffers<br><br>&quot;<br>[WARNING] [UDP] The send buffer could not be resi=
zed sufficiently.<br>Target sock buff size: 2500000 bytes.<br>Actual sock b=
uff size: 1048576 bytes.<br>See the transport application notes on buffer r=
esizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2500000<br>[WARN=
ING] [UDP] The send buffer could not be resized sufficiently.<br>Target soc=
k buff size: 2500000 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See=
 the transport application notes on buffer resizing.<br>Please run: sudo sy=
sctl -w net.core.wmem_max=3D2500000<br>&quot;<br><br><a href=3D"https://kb.=
ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#N2xx" target=3D"_bla=
nk">https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#N2xx<=
/a><br><br><br>What is the command you&#39;re using to transmit(which utili=
ty and args?)<br><br><br>Regards,<br>Nate Temple<br></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2=
019 at 7:06 AM Sumit Kumar via USRP-users &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r">Following is what I am getting after the command you asked to run. The 1=
92.168.10.5 gives SSSSSSS.=C2=A0<div><br></div><div>john@john-Precision-M46=
00:~/pybombs/src/uhd/host/build/utils$ ./usrp_burn_mb_eeprom --read-all --a=
rgs &quot;addr=3D192.168.10.5&quot;<br>Creating USRP device from address: a=
ddr=3D192.168.10.5<br>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; B=
oost_105800; UHD_3.15.0.git-1-gf83faf28<br>[INFO] [USRP2] Opening a USRP2/N=
-Series device...<br>[INFO] [USRP2] Current recv frame size: 1472 bytes<br>=
[INFO] [USRP2] Current send frame size: 1472 bytes<br>[WARNING] [UDP] The s=
end buffer could not be resized sufficiently.<br>Target sock buff size: 250=
0000 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the transport a=
pplication notes on buffer resizing.<br>Please run: sudo sysctl -w net.core=
.wmem_max=3D2500000<br>[WARNING] [UDP] The send buffer could not be resized=
 sufficiently.<br>Target sock buff size: 2500000 bytes.<br>Actual sock buff=
 size: 1048576 bytes.<br>See the transport application notes on buffer resi=
zing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2500000<br>[WARNING=
] [UDP] The send buffer could not be resized sufficiently.<br>Target sock b=
uff size: 2500000 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See th=
e transport application notes on buffer resizing.<br>Please run: sudo sysct=
l -w net.core.wmem_max=3D2500000<br>[WARNING] [UHD] Unable to set the threa=
d priority. Performance may be negatively affected.<br>Please see the gener=
al application notes in the manual for instructions.<br>EnvironmentError: O=
SError: error in pthread_setschedparam<br><br>Fetching current settings fro=
m EEPROM...<br>=C2=A0 =C2=A0 EEPROM [&quot;hardware&quot;] is &quot;2576&qu=
ot;<br>=C2=A0 =C2=A0 EEPROM [&quot;revision&quot;] is &quot;&quot;<br>=C2=
=A0 =C2=A0 EEPROM [&quot;product&quot;] is &quot;&quot;<br>=C2=A0 =C2=A0 EE=
PROM [&quot;mac-addr&quot;] is &quot;a0:36:fa:26:34:44&quot;<br>=C2=A0 =C2=
=A0 EEPROM [&quot;ip-addr&quot;] is &quot;192.168.10.5&quot;<br>=C2=A0 =C2=
=A0 EEPROM [&quot;subnet&quot;] is &quot;255.255.255.255&quot;<br>=C2=A0 =
=C2=A0 EEPROM [&quot;gateway&quot;] is &quot;255.255.255.255&quot;<br>=C2=
=A0 =C2=A0 EEPROM [&quot;gpsdo&quot;] is &quot;none&quot;<br>=C2=A0 =C2=A0 =
EEPROM [&quot;serial&quot;] is &quot;E4R14V4UN&quot;<br>=C2=A0 =C2=A0 EEPRO=
M [&quot;name&quot;] is &quot;&quot;<br><br>Power-cycle the USRP device for=
 the changes to take effect.<br><br><div>Done</div><div><br></div><div><br>=
</div><div>john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$ ./=
usrp_burn_mb_eeprom --read-all --args &quot;addr=3D192.168.10.3&quot;<br>Cr=
eating USRP device from address: addr=3D192.168.10.3<br>[INFO] [UHD] linux;=
 GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.15.0.git-1-gf83faf28<b=
r>[INFO] [USRP2] Opening a USRP2/N-Series device...<br>[INFO] [USRP2] Curre=
nt recv frame size: 1472 bytes<br>[INFO] [USRP2] Current send frame size: 1=
472 bytes<br>[WARNING] [UDP] The send buffer could not be resized sufficien=
tly.<br>Target sock buff size: 2500000 bytes.<br>Actual sock buff size: 104=
8576 bytes.<br>See the transport application notes on buffer resizing.<br>P=
lease run: sudo sysctl -w net.core.wmem_max=3D2500000<br>[WARNING] [UDP] Th=
e send buffer could not be resized sufficiently.<br>Target sock buff size: =
2500000 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the transpor=
t application notes on buffer resizing.<br>Please run: sudo sysctl -w net.c=
ore.wmem_max=3D2500000<br>[WARNING] [UDP] The send buffer could not be resi=
zed sufficiently.<br>Target sock buff size: 2500000 bytes.<br>Actual sock b=
uff size: 1048576 bytes.<br>See the transport application notes on buffer r=
esizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2500000<br>[WARN=
ING] [UHD] Unable to set the thread priority. Performance may be negatively=
 affected.<br>Please see the general application notes in the manual for in=
structions.<br>EnvironmentError: OSError: error in pthread_setschedparam<br=
><br>Fetching current settings from EEPROM...<br>=C2=A0 =C2=A0 EEPROM [&quo=
t;hardware&quot;] is &quot;2576&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;revisi=
on&quot;] is &quot;&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;product&quot;] is =
&quot;&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;mac-addr&quot;] is &quot;a0:36:=
fa:26:34:42&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;ip-addr&quot;] is &quot;19=
2.168.10.3&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;subnet&quot;] is &quot;255.=
255.255.255&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;gateway&quot;] is &quot;25=
5.255.255.255&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;gpsdo&quot;] is &quot;no=
ne&quot;<br>=C2=A0 =C2=A0 EEPROM [&quot;serial&quot;] is &quot;E4R14V2UN&qu=
ot;<br>=C2=A0 =C2=A0 EEPROM [&quot;name&quot;] is &quot;&quot;<br><br>Power=
-cycle the USRP device for the changes to take effect.<br><br>Done<div clas=
s=3D"gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-86303=
31225465229725gmail-m_-5090455826936873702gmail-yj6qo"></div><div class=3D"=
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
<div id=3D"gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_=
-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478=
Signature">
<div>
<div id=3D"gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_=
-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478=
appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_=
-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478=
divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, =
sans-serif" color=3D"#000000"><b>From:</b> Sumit Kumar &lt;<a href=3D"mailt=
o:cogwsn@gmail.com" target=3D"_blank">cogwsn@gmail.com</a>&gt;<br>
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
<div class=3D"gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail=
-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831=
478x_gmail_quote">
<div dir=3D"ltr" class=3D"gmail-m_-6449813456354474750gmail-m_-540633466610=
4058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403=
553355508831478x_gmail_attr">On Wed, Jul 17, 2019 at 1:50 PM Jason Matusiak=
 &lt;<a href=3D"mailto:jason@gardettoengineering.com" target=3D"_blank">jas=
on@gardettoengineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail-m_-6449813456354474750gmail-m_-54063346661040584=
57gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_340355335=
5508831478x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">
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
<div id=3D"gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_=
-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478=
x_gmail-m_6506407344245079092Signature">
<div>
<div id=3D"gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_=
-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478=
x_gmail-m_6506407344245079092appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_=
-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478=
x_gmail-m_6506407344245079092divRplyFwdMsg" dir=3D"ltr"><font style=3D"font=
-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Sum=
it Kumar &lt;<a href=3D"mailto:cogwsn@gmail.com" target=3D"_blank">cogwsn@g=
mail.com</a>&gt;<br>
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
<div class=3D"gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail=
-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831=
478x_gmail-m_6506407344245079092x_gmail_quote">
<div dir=3D"ltr" class=3D"gmail-m_-6449813456354474750gmail-m_-540633466610=
4058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403=
553355508831478x_gmail-m_6506407344245079092x_gmail_attr">On Wed, Jul 17, 2=
019 at 1:19 PM Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineeri=
ng.com" target=3D"_blank">jason@gardettoengineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail-m_-6449813456354474750gmail-m_-54063346661040584=
57gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_340355335=
5508831478x_gmail-m_6506407344245079092x_gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I am not really an N-series guy, so this probably won&#39;t be helpful.=C2=
=A0 Have you tried doing a uhd_usrp_probe on both devices and seen that the=
 responses are consistent?</div>
<div id=3D"gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_=
-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478=
x_gmail-m_6506407344245079092x_gmail-m_9014729813065413461Signature">
<div>
<div id=3D"gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_=
-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478=
x_gmail-m_6506407344245079092x_gmail-m_9014729813065413461appendonsend">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_=
-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478=
x_gmail-m_6506407344245079092x_gmail-m_9014729813065413461divRplyFwdMsg" di=
r=3D"ltr">
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
<div dir=3D"ltr" class=3D"gmail-m_-6449813456354474750gmail-m_-540633466610=
4058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403=
553355508831478x_gmail-m_6506407344245079092x_gmail-m_9014729813065413461x_=
gmail_signature">
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
<div dir=3D"ltr" class=3D"gmail-m_-6449813456354474750gmail-m_-540633466610=
4058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403=
553355508831478x_gmail-m_6506407344245079092x_gmail_signature">
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
<div dir=3D"ltr" class=3D"gmail-m_-6449813456354474750gmail-m_-540633466610=
4058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403=
553355508831478x_gmail_signature">
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
 class=3D"gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-=
8630331225465229725gmail-m_-5090455826936873702gmail_signature"><div dir=3D=
"ltr"><div><div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-size=
:12.8px">--=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8p=
x"><div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar<br>Po=
stdoc</div><div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT, Luxe=
mbourg</div><div style=3D"color:rgb(136,136,136);font-size:12.8px"><br></di=
v><br></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail_sig=
nature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span style=3D"color:rgb(136=
,136,136);font-size:12.8px">--=C2=A0</span><br style=3D"color:rgb(136,136,1=
36);font-size:12.8px"><div style=3D"color:rgb(136,136,136);font-size:12.8px=
">Sumit kumar<br>Postdoc</div><div style=3D"color:rgb(136,136,136);font-siz=
e:12.8px">SnT, Luxembourg</div><div style=3D"color:rgb(136,136,136);font-si=
ze:12.8px"><br></div><br></div></div></div></div>
</blockquote></div>

--00000000000092d93f058de177c4--


--===============5116827122819896641==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5116827122819896641==--

