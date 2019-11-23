Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A27E41080F3
	for <lists+usrp-users@lfdr.de>; Sat, 23 Nov 2019 23:52:39 +0100 (CET)
Received: from [::1] (port=45628 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iYeGc-0002M4-GZ; Sat, 23 Nov 2019 17:52:38 -0500
Received: from mail-il1-f177.google.com ([209.85.166.177]:44762)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <austinadam42@gmail.com>)
 id 1iYeGY-0002EM-5p
 for usrp-users@lists.ettus.com; Sat, 23 Nov 2019 17:52:34 -0500
Received: by mail-il1-f177.google.com with SMTP id z12so1318969iln.11
 for <usrp-users@lists.ettus.com>; Sat, 23 Nov 2019 14:52:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tD3FV1oMDAGrb6gQ0oNrBpyPVAl7OPqKWdvCEU3SOA0=;
 b=dweOmfvjkPjlxVRjaGrQtpwEqltPzhk7JtsNiIWTsjR5lTEDVwubyNXYaWKpIGid+b
 gbiEBF7giJYOMLt1u1Obr24XlutCV8DigdkIhs1t6wjATNDMm8KdXZ84/RnSgnDJ4n3f
 EGC99uzXXL0/b69iPK4oaWA/Qgipv504beG4/JsPQjvH1DKQA3JwhP0XxLugMcdiSvb5
 g5j2UWDZIIG4OvE4/YPd2+A4qBrLErMN/HiH22xBLRqG2ulLEzEnXHHBtwVAOigK3X7J
 xXscr/52x/sme08ks4M8zOWJNT8Uga3A6H3OJOf8xo/Vr24HyS+Iy06nFngYPCYB71AV
 u4GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tD3FV1oMDAGrb6gQ0oNrBpyPVAl7OPqKWdvCEU3SOA0=;
 b=PW4BaCd34iY7bVU2hF5yptukFKCe5pFYNt/g7ngQW8t1Sud2iV0Y1Va6/9IR6SP6fw
 m+yeGkuxMxU+6cZ+hWyUs5vJnSbFqmopg4H9L5ihbs+BKcjWemmMXHNcJyqtsg1FMXbp
 8fGoYszTLd3OF2vItXaodUjGE+ozFpaGirdhlDyEY6+R5HnRrrt57IaixXXEBctxCHf9
 Pi2qpn9vjfwmHDkYgi9d2+boOTK056ul2FTIDy3SLI92rZugnBhsSEnkHI8QjjQBpcyo
 hnUN6YjZG2X6l1VJcRNWYV3YrghUVzBH4zsOmTfkNHglol3OX0W1//EICdX0LQGrKhx8
 +nBQ==
X-Gm-Message-State: APjAAAXcum03HREpnaHRsaqeGgWmFwaRpCFTTASvZ1xEaWu8sCHvHyKj
 RGWiGG6SjBkOWSEM8qtSOYBvXKJh3mgjXg1A6KE=
X-Google-Smtp-Source: APXvYqzX1/zuOYsGRSpPeaPJsj7LhD7Tk0OVBewvKBxnAJJtre4pd7ML6OlJWlU1tiily4DEcjfcAn4HuqxnxsATMaE=
X-Received: by 2002:a92:130b:: with SMTP id 11mr22512128ilt.222.1574549513339; 
 Sat, 23 Nov 2019 14:51:53 -0800 (PST)
MIME-Version: 1.0
References: <CAMKs6hfoUZdBUPQf5DjRdcRBjqgzAVRbT6xNVT2CncGPntAsTA@mail.gmail.com>
 <5DD9B351.5040406@gmail.com>
 <CAMKs6heE4bsDnBi5Yvb5gzPRb3nHyd15dmK1mO0Nbwson95J0A@mail.gmail.com>
In-Reply-To: <CAMKs6heE4bsDnBi5Yvb5gzPRb3nHyd15dmK1mO0Nbwson95J0A@mail.gmail.com>
Date: Sat, 23 Nov 2019 14:51:42 -0800
Message-ID: <CAMKs6hfjqx00L7ZjkV30VxK8_L+Q2YB0yh3FiH0YbfYuymrTog@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] USRP N310 Losing Connection Occassionally
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Austin Adam via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Austin Adam <austinadam42@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5766881858829750448=="
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

--===============5766881858829750448==
Content-Type: multipart/alternative; boundary="0000000000006c889d05980b6057"

--0000000000006c889d05980b6057
Content-Type: text/plain; charset="UTF-8"

I seem to also be getting this error occasionally, which also results in
the N310 disconnecting. Maybe it will provide more insight:























* [32;1m[INFO] [UHD] [39;0mlinux; GNU C++ version 8.3.0; Boost_106700;
UHD_3.14.0.HEAD-0-g6875d061 [32;1m[INFO] [MPMD] [39;0mInitializing 1
device(s) in parallel with args:
mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3177E63,claimed=False,addr=192.168.10.2,rx_lo_source=external,init_cals=BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY
[33;1m[WARNING] [MPM.RPCServer] [39;0mA timeout event occured! [32;1m[INFO]
[MPM.PeriphManager] [39;0minit() called with device args
`init_cals=BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY,mgmt_addr=192.168.10.2,rx_lo_source=external,clock_source=internal,product=n310,time_source=internal'.
[32;1m[INFO] [0/Replay_0] [39;0mInitializing block control (NOC ID:
0x4E91A00000000004) [32;1m[INFO] [0/Radio_0] [39;0mInitializing block
control (NOC ID: 0x12AD100000011312) [31;0m[ERROR] [UHD] [39;0mException
caught in safe-call.  in ctrl_iface_impl<_endianness>::~ctrl_iface_impl()
[with uhd::endianness_t _endianness = (uhd::endianness_t)0]  at
/home/ugikie/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.cpp:52this->send_cmd_pkt(0,
0, true); -> EnvironmentError: IOError: Block ctrl (CE_01_Port_41) no
response packet - AssertionError: bool(buff)  in uint64_t
ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [with
uhd::endianness_t _endianness = (uhd::endianness_t)0; uint64_t = long
unsigned int]  at
/home/ugikie/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.cpp:142
[31;0m[ERROR] [UHD] [39;0mException caught in safe-call.  in
ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with uhd::endianness_t
_endianness = (uhd::endianness_t)0]  at
/home/ugikie/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.cpp:52this->send_cmd_pkt(0,
0, true); -> EnvironmentError: IOError: Block ctrl (CE_01_Port_40) no
response packet - AssertionError: bool(buff)  in uint64_t
ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [with
uhd::endianness_t _endianness = (uhd::endianness_t)0; uint64_t = long
unsigned int]  at
/home/ugikie/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.cpp:142
[31;0m[ERROR] [MPMD] [39;0mFailure during block enumeration:
EnvironmentError: IOError: [0/Radio_0] sr_read64() failed:
EnvironmentError: IOError: Block ctrl (CE_01_Port_40) no response packet -
AssertionError: bool(buff)  in uint64_t
ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [with
uhd::endianness_t _endianness = (uhd::endianness_t)0; uint64_t = long
unsigned int]  at
/home/ugikie/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.cpp:142*

On Sat, Nov 23, 2019 at 2:48 PM Austin Adam <austinadam42@gmail.com> wrote:

> Hey Marcus,
> Thank you for the quick response! This sounds like a good solution, could
> you give some insight on how to go about doing it?
>
> Thank you so much!
>
> On Sat, Nov 23, 2019 at 2:32 PM Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On 11/23/2019 03:49 PM, Austin Adam via USRP-users wrote:
>>
>> I am trying to run a Gnu Radio python file via the terminal and only want
>> to run in for a few seconds and then kill it. Then, wait a little bit, and
>> rerun the script again. My problem is that sometimes, when I rerun it, I
>> get an issue with my USRP N310 in that it decides to just disconnect with
>> either a "No devices found for" or "Someone tried to claim this device
>> again" message. I have posted the error messages below from two different
>> instances.
>>
>> When this happens, running uhd_find_devices does not find the N310,
>> neither does uhd_find_devices --args=addr=192.168.10.2.
>>
>> Upon restarting the N310 by manually pressing the power button, it is
>> able to be found by uhd_find_devices, and I can continue running the script
>> until the error happens, and I have to go manually restart the USRP.
>>
>> I am trying to make an entire automated system and this is the one thing
>> that requires manual effort, which is to get up and restart the USRP.
>>
>> I am looking for a way to either, reboot the USRP via commands for when
>> the error occurs, or a solution/workaround to the problem if it exists.
>>
>> Is there any way to keep the USRP claimed and just tell the GNU part of
>> the script to run each time I want to rerun it? Because each time I have to
>> run the script, the USRP has to again be claimed and initiated. How can I
>> keep it on at all times, or just skip the claiming step each time?
>>
>> Thank you in advance for any help you can provide!
>>
>> Here are the error messages:
>> *[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
>> UHD_3.14.0.HEAD-0-g6875d061*
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> *Traceback (most recent call last):   File
>> "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 296, in <module>
>>     main()   File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
>> line 284, in main     tb = top_block_cls()   File
>> "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 79, in __init__
>>     channels=range(4),   File
>> "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py", line
>> 122, in constructor_interceptor     return old_constructor(*args)   File
>> "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py", line
>> 2782, in make     return _uhd_swig.usrp_source_make(*args) RuntimeError:
>> LookupError: KeyError: No devices found for -----> Device Address:
>> addr: 192.168.10.2     rx_lo_source: external     init_cals:
>> BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY*
>>
>> *Here is the second time it happened:*
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> *[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
>> UHD_3.14.0.HEAD-0-g6875d061 [INFO] [MPMD] Initializing 1 device(s) in
>> parallel with args:
>> mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3177E63,claimed=True,addr=192.168.10.2,rx_lo_source=external,init_cals=BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY
>> [ERROR] [RPC] Someone tried to claim this device again (From: 192.168.10.1)
>> Traceback (most recent call last):   File
>> "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 296, in <module>
>>     main()   File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
>> line 284, in main     tb = top_block_cls()   File
>> "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 79, in __init__
>>     channels=range(4),   File
>> "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py", line
>> 122, in constructor_interceptor     return old_constructor(*args)   File
>> "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py", line
>> 2782, in make     return _uhd_swig.usrp_source_make(*args) RuntimeError:
>> RuntimeError: Error during RPC call to `claim'. Error message: Someone
>> tried to claim this device again (From: 192.168.10.1)*
>>
>> i\
>>
>> Instead of interrupting the GR script, you could use the "Head" block to
>> have it run for a finite number of samples, then exit gracefully.
>>   When you interrupt it, some things are clearly not getting cleaned up
>> gracefully.
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000006c889d05980b6057
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I seem to also be getting this error occasionally, which a=
lso results in the N310 disconnecting. Maybe it will provide more insight:<=
div><br></div><div><i> [32;1m[INFO] [UHD]  [39;0mlinux; GNU C++ version 8.3=
.0; Boost_106700; UHD_3.14.0.HEAD-0-g6875d061<br> [32;1m[INFO] [MPMD]  [39;=
0mInitializing 1 device(s) in parallel with args: mgmt_addr=3D192.168.10.2,=
type=3Dn3xx,product=3Dn310,serial=3D3177E63,claimed=3DFalse,addr=3D192.168.=
10.2,rx_lo_source=3Dexternal,init_cals=3DBASIC|TX_ATTENUATION_DELAY|RX_GAIN=
_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY<br> [33;1m[WA=
RNING] [MPM.RPCServer]  [39;0mA timeout event occured!<br> [32;1m[INFO] [MP=
M.PeriphManager]  [39;0minit() called with device args `init_cals=3DBASIC|T=
X_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBAC=
K_RX_LO_DELAY,mgmt_addr=3D192.168.10.2,rx_lo_source=3Dexternal,clock_source=
=3Dinternal,product=3Dn310,time_source=3Dinternal&#39;.<br> [32;1m[INFO] [0=
/Replay_0]  [39;0mInitializing block control (NOC ID: 0x4E91A00000000004)<b=
r> [32;1m[INFO] [0/Radio_0]  [39;0mInitializing block control (NOC ID: 0x12=
AD100000011312)<br> [31;0m[ERROR] [UHD]  [39;0mException caught in safe-cal=
l.<br>=C2=A0 in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl() [wit=
h uhd::endianness_t _endianness =3D (uhd::endianness_t)0]<br>=C2=A0 at /hom=
e/ugikie/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.cpp:52<br>this-&gt;send=
_cmd_pkt(0, 0, true); -&gt; EnvironmentError: IOError: Block ctrl (CE_01_Po=
rt_41) no response packet - AssertionError: bool(buff)<br>=C2=A0 in uint64_=
t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double) [with uhd:=
:endianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =3D long unsig=
ned int]<br>=C2=A0 at /home/ugikie/workarea-uhd/uhd/host/lib/rfnoc/ctrl_ifa=
ce.cpp:142<br><br> [31;0m[ERROR] [UHD]  [39;0mException caught in safe-call=
.<br>=C2=A0 in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl() [with=
 uhd::endianness_t _endianness =3D (uhd::endianness_t)0]<br>=C2=A0 at /home=
/ugikie/workarea-uhd/uhd/host/lib/rfnoc/ctrl_iface.cpp:52<br>this-&gt;send_=
cmd_pkt(0, 0, true); -&gt; EnvironmentError: IOError: Block ctrl (CE_01_Por=
t_40) no response packet - AssertionError: bool(buff)<br>=C2=A0 in uint64_t=
 ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double) [with uhd::=
endianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =3D long unsign=
ed int]<br>=C2=A0 at /home/ugikie/workarea-uhd/uhd/host/lib/rfnoc/ctrl_ifac=
e.cpp:142<br><br> [31;0m[ERROR] [MPMD]  [39;0mFailure during block enumerat=
ion: EnvironmentError: IOError: [0/Radio_0] sr_read64() failed: Environment=
Error: IOError: Block ctrl (CE_01_Port_40) no response packet - AssertionEr=
ror: bool(buff)<br>=C2=A0 in uint64_t ctrl_iface_impl&lt;_endianness&gt;::w=
ait_for_ack(bool, double) [with uhd::endianness_t _endianness =3D (uhd::end=
ianness_t)0; uint64_t =3D long unsigned int]<br>=C2=A0 at /home/ugikie/work=
area-uhd/uhd/host/lib/rfnoc/ctrl_iface.cpp:142</i><br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Nov 23,=
 2019 at 2:48 PM Austin Adam &lt;<a href=3D"mailto:austinadam42@gmail.com">=
austinadam42@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">Hey Marcus,<div>Thank you for the qu=
ick response! This sounds like a good solution, could you give some insight=
 on how to go about doing it?</div><div><br></div><div>Thank you so much!=
=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Sat, Nov 23, 2019 at 2:32 PM Marcus D. Leech via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 11/23/2019 03:49 PM, Austin Adam via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">I am trying to run a Gnu Radio python file via the
        terminal and only want to run in for a few seconds and then kill
        it. Then, wait a little bit, and rerun the script again. My
        problem is that sometimes, when I rerun it, I get an issue with
        my USRP N310 in that it decides to just disconnect with either a
        &quot;No devices found for&quot; or &quot;Someone tried to claim th=
is device
        again&quot; message. I have posted the error messages below from tw=
o
        different instances.
        <div><br>
        </div>
        <div>
          <div>When this happens, running uhd_find_devices does not find
            the N310, neither does uhd_find_devices
            --args=3Daddr=3D192.168.10.2.</div>
          <div><br>
          </div>
          <div>Upon restarting the N310 by manually pressing the power
            button, it is able to be found by uhd_find_devices, and I
            can continue running the script until the error happens, and
            I have to go manually restart the USRP.</div>
        </div>
        <div><br>
        </div>
        <div>I am trying to make an entire automated system and this is
          the one thing that requires manual effort, which is to get up
          and restart the USRP.</div>
        <div><br>
        </div>
        <div>I am looking for a way to either, reboot the USRP via
          commands for when the error occurs, or a solution/workaround
          to the problem if it exists.=C2=A0</div>
        <div><br>
        </div>
        <div>Is there any way to keep the USRP claimed and just tell the
          GNU part of the script to run each time I want to rerun it?
          Because each time I have to run the script, the USRP has to
          again be claimed and initiated. How can I keep it on at all
          times, or just skip the claiming step each time?</div>
        <div><br>
        </div>
        <div>Thank you in advance for any help you can provide!</div>
        <div><br>
        </div>
        <div>Here are the error messages:</div>
        <div><i>[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
            UHD_3.14.0.HEAD-0-g6875d061</i></div>
        <i>Traceback (most recent call last):<br>
          =C2=A0 File &quot;/home/ugikie/Desktop/PositionControl/ArrayTest2=
.py&quot;,
          line 296, in &lt;module&gt;<br>
          =C2=A0 =C2=A0 main()<br>
          =C2=A0 File &quot;/home/ugikie/Desktop/PositionControl/ArrayTest2=
.py&quot;,
          line 284, in main<br>
          =C2=A0 =C2=A0 tb =3D top_block_cls()<br>
          =C2=A0 File &quot;/home/ugikie/Desktop/PositionControl/ArrayTest2=
.py&quot;,
          line 79, in __init__<br>
          =C2=A0 =C2=A0 channels=3Drange(4),<br>
          =C2=A0 File
          &quot;/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/__init_=
_.py&quot;,
          line 122, in constructor_interceptor<br>
          =C2=A0 =C2=A0 return old_constructor(*args)<br>
          =C2=A0 File
          &quot;/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swi=
g.py&quot;,
          line 2782, in make<br>
          =C2=A0 =C2=A0 return _uhd_swig.usrp_source_make(*args)<br>
          RuntimeError: LookupError: KeyError: No devices found for
          -----&gt;<br>
          Device Address:<br>
          =C2=A0 =C2=A0 addr: 192.168.10.2<br>
          =C2=A0 =C2=A0 rx_lo_source: external<br>
          =C2=A0 =C2=A0 init_cals:
BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|=
LOOPBACK_RX_LO_DELAY</i><br>
        <div><i><br>
          </i></div>
        <div><b>Here is the second time it happened:</b></div>
        <div><i>[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
            UHD_3.14.0.HEAD-0-g6875d061<br>
            [INFO] [MPMD] Initializing 1 device(s) in parallel with
            args:
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3177E63,claime=
d=3DTrue,addr=3D192.168.10.2,rx_lo_source=3Dexternal,init_cals=3DBASIC|TX_A=
TTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_R=
X_LO_DELAY<br>
            [ERROR] [RPC] Someone tried to claim this device again
            (From: 192.168.10.1)<br>
            Traceback (most recent call last):<br>
            =C2=A0 File &quot;/home/ugikie/Desktop/PositionControl/ArrayTes=
t2.py&quot;,
            line 296, in &lt;module&gt;<br>
            =C2=A0 =C2=A0 main()<br>
            =C2=A0 File &quot;/home/ugikie/Desktop/PositionControl/ArrayTes=
t2.py&quot;,
            line 284, in main<br>
            =C2=A0 =C2=A0 tb =3D top_block_cls()<br>
            =C2=A0 File &quot;/home/ugikie/Desktop/PositionControl/ArrayTes=
t2.py&quot;,
            line 79, in __init__<br>
            =C2=A0 =C2=A0 channels=3Drange(4),<br>
            =C2=A0 File
            &quot;/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/__ini=
t__.py&quot;,
            line 122, in constructor_interceptor<br>
            =C2=A0 =C2=A0 return old_constructor(*args)<br>
            =C2=A0 File
            &quot;/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_s=
wig.py&quot;,
            line 2782, in make<br>
            =C2=A0 =C2=A0 return _uhd_swig.usrp_source_make(*args)<br>
            RuntimeError: RuntimeError: Error during RPC call to
            `claim&#39;. Error message: Someone tried to claim this device
            again (From: 192.168.10.1)</i><b><br>
          </b></div>
      </div>
      <br>
      i\<br>
    </blockquote>
    Instead of interrupting the GR script, you could use the &quot;Head&quo=
t;
    block to have it run for a finite number of samples, then exit
    gracefully.<br>
    =C2=A0 When you interrupt it, some things are clearly not getting clean=
ed
    up gracefully.<br>
    <br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000006c889d05980b6057--


--===============5766881858829750448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5766881858829750448==--

