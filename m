Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A54E49DA46D
	for <lists+usrp-users@lfdr.de>; Wed, 27 Nov 2024 10:04:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A0E2385904
	for <lists+usrp-users@lfdr.de>; Wed, 27 Nov 2024 04:04:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732698265; bh=T/fWUYUMFH6tTOWMsgJTeA6IlD5IQM5MRL387Ra+5IY=;
	h=Date:References:In-Reply-To:From:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=q5s26Hd9qT9P3iJdv14ZGgQ1hApl07rENGwCguiDAJ/cDnUmjM2dvSb5nh1qT2Rcy
	 YJUOBZ1JbHw0yWIiec9ITzGyezxPMjsaR1AA3HUR7us6PRbiC83cZzyKMNFYVtixzd
	 NHmpk2BEuSvPMvLisnr2xCrfUtkhExI5Q72yFkescNl9eDkykQzQ66e+7foqsQv2GN
	 VVIMiTr8g9clNpevZGoH5RlIgXOBz8j07t4tpmKEh+bYu26YrgLDJzKgczynUMFy1H
	 wQaaWoINYehKYf2L+pCp02uTNJfINedBF0KQeD+nbldCR11Mb3L+ZgGY7D6WMh863b
	 mH0L4NwqGM3Fg==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mm2.emwd.com (Postfix) with ESMTPS id 76CC3385309
	for <usrp-users@lists.ettus.com>; Wed, 27 Nov 2024 04:01:57 -0500 (EST)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-71d4ed0d599so2492946a34.0
        for <usrp-users@lists.ettus.com>; Wed, 27 Nov 2024 01:01:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732698116; x=1733302916;
        h=cc:to:from:subject:message-id:in-reply-to:references:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kjhfox2hpGAJAmMV1M3IJoD5Es7pR6hcBSbLYRCOmNc=;
        b=mXanGatpGgIR4b2K45E3zhd6NC+Cwhgtme2MW5XDAcDveIkOR4HFaqTYvZcapCZpTm
         A0iq1HZa6mHj0Dy8Hg7fchYIU18fGBAW8r+7PpGylwkuGJMFveICeoIDvPLUrEcT645d
         n+p4VS/3nn/YMdYpgCSUS9uR6sGgTEmrFAyFhJbH1fuNyhzxQRmaLIdg2xQ0Xbs3r+Sh
         XYp81U8/yzu4T9ornBYqWnpjh0k1EI9y9b1pdzQth4vM3QnVH6fLUJ8oXC0X8woymXmo
         TeTGSL4n/mdE82t8eyEeifTqdZObyAyBj1qYfU+M/Q1fw4mx1zmqENCtQ80JZZTROiAa
         cudw==
X-Gm-Message-State: AOJu0YxG07zcPJ7Ie0eQZfj+atGTBVbGyy60/7JWPq3avbJv3KZG8dJf
	jRayQWFdUpFIHGCldZlKY370BrD46I6yVu8P6KL89MxqJCbSCUBS+aMH7tA5/d8nt23OViOVDeH
	8w8b0MR+65ZXjOeD0jAKkRntfA8NOojOovjM/NQ4FB1VCHgB3oIqWKaAVQWKtvPmaiOlODw==
X-Gm-Gg: ASbGnctoieFsHkz5wRtqHr7sH842AC/SQaSpm2j8tAy070DozH8QwtOz91lUkAU4IgU
	c6KVCrufuEhFHww==
X-Google-Smtp-Source: AGHT+IGd6BqqEAUXvtj3PNaqFsSV98v5pfNu2PJ86Zbadrv9EQf/sDWA55fjtnrDuTggTAkgOasuX9oFtcl8tl2Wxd3Sh7+Ukj9LPA==
X-Received: by 2002:a05:6808:2508:b0:3e6:5663:3324 with SMTP id 5614622812f47-3ea6dd85128mr2492997b6e.36.1732698116557;
        Wed, 27 Nov 2024 01:01:56 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 26 Nov 2024 17:46:23 +0100
References: <CAO=xj9WM9jE2+niznSkpqcrqL5hmyYiStSM2DAaOZzL1LAJm=Q@mail.gmail.com>
	<35f6b1f4-8291-47ca-852f-b47e58aabf77@gmail.com>
	<CAO=xj9WGNbN5_YjrD6KfqTB2HA0bxmyr6D1iwRsqoH7VpcVnpg@mail.gmail.com>
	<ba50962f-2d73-425a-afc6-364cf359384e@gmail.com>
	<CAO=xj9Vm1eDeKvyGrUaUmrzLCCA9uv_jyFcdJthgBOVt0cE=Rw@mail.gmail.com>
	<2f9f7405-d4f0-4ebc-a820-591879c49d86@gmail.com>
In-Reply-To: <2f9f7405-d4f0-4ebc-a820-591879c49d86@gmail.com>
Message-ID: <CAO=xj9WENjU=xgsXk59fid3K4Qgu0z7GjJgVmPVzwvNY_=5AXw@mail.gmail.com>
From: Houshang <houshang.azizi@accelleran.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 7PL75U3LHV3EREDJLNH2KYSYL5BYSAFI
X-Message-ID-Hash: 7PL75U3LHV3EREDJLNH2KYSYL5BYSAFI
X-MailFrom: houshang.azizi@accelleran.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: n310 | Error: failed receiving packet. RfnocError
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7PL75U3LHV3EREDJLNH2KYSYL5BYSAFI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4039981959198001503=="

--===============4039981959198001503==
Content-Type: multipart/alternative; boundary="000000000000ecd23d0627d39653"

--000000000000ecd23d0627d39653
Content-Type: text/plain; charset="UTF-8"

10.10.0.100: I use it as the management ip of n310 and it is ETHERNET 1G.
10.10.2.100: I use it as the other ip of n310 for data and it is Fiber 10G.

With srsRAN I want to do 20MHz, TDD, N78 band, 2X2 MIMO. So DL will be
something around 120 Mbps and UL will be something around 11.5 Mbps.
But this issue happens before even Attaching a UE. Meaning I don't even run
data and I see this error:


































*--== srsRAN gNB (commit 9d5dd742a) ==--The PRACH detector will not meet
the performance requirements with the configuration {Format 0, ZCZ 0, SCS
1.25kHz, Rx ports 1}.Lower PHY in quad executor mode.Available radio types:
uhd.[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
UHD_4.7.0.0-0ubuntu1~jammy1[INFO] [LOGGING] Fastpath logging disabled at
runtime.Making USRP object with args
'use_dpdk=0,type=n3xx,mgmt_addr=10.10.0.100,addr=10.10.2.100,master_clock_rate=122.88e6,send_frame_size=8500,recv_frame_size=8500'[INFO]
[MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=10.10.0.100,type=n3xx,product=n310,serial=32000F1,name=ni-n3xx-32000F1,fpga=HG,claimed=False,use_dpdk=0,addr=10.10.2.100,master_clock_rate=122.88e6,send_frame_size=8500,recv_frame_size=8500[INFO]
[MPM.PeriphManager] init() called with device args
`fpga=HG,master_clock_rate=122.88e6,mgmt_addr=10.10.0.100,name=ni-n3xx-32000F1,product=n310,recv_frame_size=8500,send_frame_size=8500,use_dpdk=0,clock_source=internal,time_source=internal'.[WARNING]
[MPMD] DPDK was requested but is not available, falling back to regular
UDP[WARNING] [MPMD] Cannot create DPDK transport, falling back to UDP[INFO]
[MULTI_USRP]     1) catch time transition at pps edge[INFO] [MULTI_USRP]
  2) set times next pps (synchronously)[WARNING] [MPMD] Cannot create DPDK
transport, falling back to UDP[WARNING] [MPMD] Cannot create DPDK
transport, falling back to UDP[WARNING] [0/Radio#0] Attempting to set tick
rate to 0. Skipping.[WARNING] [MPMD] Cannot create DPDK transport, falling
back to UDP[WARNING] [MPMD] Cannot create DPDK transport, falling back to
UDP[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.Cell
pci=1, bw=20 MHz, 2T2R, dl_arfcn=626668 (n78), dl_freq=3400.02 MHz,
dl_ssb_arfcn=626304, ul_freq=3400.02 MHzN2: Connection to AMF on
10.55.7.40:38412 <http://10.55.7.40:38412> completedWarning: Configured
PRACH occasion collides with PUCCH RBs ([0..1) intersects [0..3)). Some
interference between PUCCH and PRACH is expected.Warning: Configured PRACH
occasion collides with PUCCH RBs ([0..1) intersects [0..3)). Some
interference between PUCCH and PRACH is expected.==== gNB started ===Type
<h> to view helpLate: 5347; Underflow: 3213; Overflow: 1;Error: failed
receiving packet. RfnocError: OpTimeout: Control operation timed out
waiting for ACK.Error: failed receiving packet. RfnocError: OpTimeout:
Control operation timed out waiting for ACK.Late: 4; Underflow: 0;
Overflow: 0;Error: failed receiving packet. RfnocError: OpTimeout: Control
operation timed out waiting for ACK.Error: failed receiving packet.
RfnocError: OpTimeout: Control operation timed out waiting for ACK.*

On Tue, 26 Nov 2024 at 17:37, Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 26/11/2024 11:32, Houshang wrote:
>
> Hi Marcus
> I ran the benchmark command on both ip of the n310 and attached you can
> find the printout.
>
> I"m going to guess that one of your interfaces is operating at 1Gbit,
> while the other is operating at 10Gbit?
>
> I don't know what rates the srsRAN software runs the interface at, but
> clearly in your 2nd example, on the
>   other IP, it's able to support 25Msps without any issue.
>
>
>
> On Tue, 26 Nov 2024 at 17:22, Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 26/11/2024 11:10, Houshang wrote:
>>
>> Many thanks for prompt reply Marcus! Please find attached the printout
>> for that probe command you asked for.
>>
>> OK, so the next thing to do is to test your network capacity between your
>> host computer and the N310:
>>
>> benchmark_rate --args
>> "type=n3xx,product=n310,addr=10.10.0.100,master_clock_rate=125e6" --rx_rate
>> 25e6 --tx_rate 25e6
>>
>>
>>
>> On Tue, 26 Nov 2024 at 16:59, Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 26/11/2024 10:18, Houshang wrote:
>>>
>>> Hello
>>>
>>> I have following UHD version on my server:
>>>
>>>
>>>
>>> *ad@bm-super11-intel:~/houshang$ uhd_config_info --version UHD
>>> 4.7.0.0-0ubuntu1~jammy1 ad@bm-super11-intel:~/houshang$ ssh
>>> root@10.10.0.100 <root@10.10.0.100>*
>>>
>>> And the following UHD version on my n310:
>>>
>>>
>>>
>>> *root@ni-n3xx-32000F1:~# uhd_config_info --version UHD
>>> 4.7.0.0-0-ga5ed1872 root@ni-n3xx-32000F1:~# *
>>>
>>> They are the same and my n310 is updated with the following file:
>>>
>>>
>>>
>>> *ad@bm-super11-intel:~/houshang$ md5sum
>>> /usr/share/uhd/images/usrp_n310_fpga_HG.bit
>>> 532b338d6861268c05a4fd9837ca80e5
>>>  /usr/share/uhd/images/usrp_n310_fpga_HG.bit
>>> ad@bm-super11-intel:~/houshang$ *
>>>
>>> I am running srsRAN gNB on my server (*Commit 9d5dd742a*). A version of
>>> srs of srsRAN that is compiled with *UHD 4.7.0.0.*
>>>
>>>
>>> Here are the error messages I get:
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> *==== gNB started === Type <h> to view help Error: failed receiving
>>> packet. RfnocError: OpTimeout: Control operation timed out waiting for ACK.
>>> Late: 2805; Underflow: 2238; Overflow: 0; Error: failed receiving packet.
>>> RfnocError: OpTimeout: Control operation timed out waiting for ACK. Error:
>>> failed receiving packet. RfnocError: OpTimeout: Control operation timed out
>>> waiting for ACK. Late: 0; Underflow: 5; Overflow: 0; Error: failed
>>> receiving packet. RfnocError: OpTimeout: Control operation timed out
>>> waiting for ACK. Error: failed receiving packet. RfnocError: OpTimeout:
>>> Control operation timed out waiting for ACK. Late: 0; Underflow: 4;
>>> Overflow: 0; Error: failed receiving packet. RfnocError: OpTimeout: Control
>>> operation timed out waiting for ACK. Error: failed receiving packet.
>>> RfnocError: OpTimeout: Control operation timed out waiting for ACK. Late:
>>> 0; Underflow: 4; Overflow: 0; Error: failed receiving packet. RfnocError:
>>> OpTimeout: Control operation timed out waiting for ACK. Error: failed
>>> receiving packet. RfnocError: OpTimeout: Control operation timed out
>>> waiting for ACK. Late: 0; Underflow: 4; Overflow: 0; Error: failed
>>> receiving packet. RfnocError: OpTimeout: Control operation timed out
>>> waiting for ACK.*
>>>
>>>
>>> And obviously it is not working with this amount of errors.
>>>
>>> Can anyone help me with this please? Is it a bug in the UHD version? Or
>>> is there something I am missing here?
>>>
>>> Thanks
>>> Houshang
>>>
>>> Try "the basics" first.
>>>
>>> What does:
>>>
>>> uhd_usrp_probe --args "type=n3xx,product=n310,addr=192.168.10.2"
>>>
>>>
>>> Produce (you might have to change the addr to whatever the address is of
>>> your N310).
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
>>
>> --
>>
>> *Houshang Azizi*
>>
>> *Test Engineer*
>> [image: logo] <https://www.accelleran.com/>
>>
>> *(32) 492195241*
>>
>> *houshang.azizi@accelleran.com <Email@accelleran.com>*
>>
>>
>>
>> *www.accelleran.com* <http://www.accelleran.com/>
>>
>> [image: linkedin icon] <https://www.linkedin.com/company/accelleran>    [image:
>> twitter icon] <https://twitter.com/accelleran>    [image: youtube icon]
>> <https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRefresh=1>
>>
>>
>>
>>
>
> --
>
> *Houshang Azizi*
>
> *Test Engineer*
> [image: logo] <https://www.accelleran.com/>
>
> *(32) 492195241*
>
> *houshang.azizi@accelleran.com <Email@accelleran.com>*
>
>
>
> *www.accelleran.com* <http://www.accelleran.com/>
>
> [image: linkedin icon] <https://www.linkedin.com/company/accelleran>    [image:
> twitter icon] <https://twitter.com/accelleran>    [image: youtube icon]
> <https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRefresh=1>
>
>
>
>

-- 

*Houshang Azizi*

*Test Engineer*

[image: logo] <https://www.accelleran.com/>

*(32) 492195241*

*houshang.azizi@accelleran.com <Email@accelleran.com>*



*www.accelleran.com* <http://www.accelleran.com/>

[image: linkedin icon] <https://www.linkedin.com/company/accelleran>    [image:
twitter icon] <https://twitter.com/accelleran>    [image: youtube icon]
<https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRefresh=1>

--000000000000ecd23d0627d39653
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><a href=3D"http://10.10.0.100">10.10.0.100</a>: I use=
 it as the management ip of n310 and it is ETHERNET 1G.</div><div><a href=
=3D"http://10.10.2.100">10.10.2.100</a>: I use it as the other ip of n310 f=
or data and it is Fiber 10G.</div><div><br></div><div>With srsRAN I want to=
 do 20MHz, TDD, N78 band, 2X2 MIMO. So DL will be something around 120 Mbps=
 and UL will be something around 11.5 Mbps.</div><div>But this issue happen=
s before even Attaching a UE. Meaning I don&#39;t even run data and I see t=
his error:</div><div><span style=3D"background-color:rgb(238,238,238)"><i><=
br></i></span></div><div><span style=3D"background-color:rgb(238,238,238)">=
<i>--=3D=3D srsRAN gNB (commit 9d5dd742a) =3D=3D--<br><br><br>The PRACH det=
ector will not meet the performance requirements with the configuration {Fo=
rmat 0, ZCZ 0, SCS 1.25kHz, Rx ports 1}.<br>Lower PHY in quad executor mode=
.<br>Available radio types: uhd.<br>[INFO] [UHD] linux; GNU C++ version 11.=
4.0; Boost_107400; UHD_4.7.0.0-0ubuntu1~jammy1<br>[INFO] [LOGGING] Fastpath=
 logging disabled at runtime.<br>Making USRP object with args &#39;use_dpdk=
=3D0,type=3Dn3xx,mgmt_addr=3D10.10.0.100,addr=3D10.10.2.100,master_clock_ra=
te=3D122.88e6,send_frame_size=3D8500,recv_frame_size=3D8500&#39;<br>[INFO] =
[MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D10.10.0.=
100,type=3Dn3xx,product=3Dn310,serial=3D32000F1,name=3Dni-n3xx-32000F1,fpga=
=3DHG,claimed=3DFalse,use_dpdk=3D0,addr=3D10.10.2.100,master_clock_rate=3D1=
22.88e6,send_frame_size=3D8500,recv_frame_size=3D8500<br>[INFO] [MPM.Periph=
Manager] init() called with device args `fpga=3DHG,master_clock_rate=3D122.=
88e6,mgmt_addr=3D10.10.0.100,name=3Dni-n3xx-32000F1,product=3Dn310,recv_fra=
me_size=3D8500,send_frame_size=3D8500,use_dpdk=3D0,clock_source=3Dinternal,=
time_source=3Dinternal&#39;.<br>[WARNING] [MPMD] DPDK was requested but is =
not available, falling back to regular UDP<br>[WARNING] [MPMD] Cannot creat=
e DPDK transport, falling back to UDP<br>[INFO] [MULTI_USRP] =C2=A0 =C2=A0 =
1) catch time transition at pps edge<br>[INFO] [MULTI_USRP] =C2=A0 =C2=A0 2=
) set times next pps (synchronously)<br>[WARNING] [MPMD] Cannot create DPDK=
 transport, falling back to UDP<br>[WARNING] [MPMD] Cannot create DPDK tran=
sport, falling back to UDP<br>[WARNING] [0/Radio#0] Attempting to set tick =
rate to 0. Skipping.<br>[WARNING] [MPMD] Cannot create DPDK transport, fall=
ing back to UDP<br>[WARNING] [MPMD] Cannot create DPDK transport, falling b=
ack to UDP<br>[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipp=
ing.<br>Cell pci=3D1, bw=3D20 MHz, 2T2R, dl_arfcn=3D626668 (n78), dl_freq=
=3D3400.02 MHz, dl_ssb_arfcn=3D626304, ul_freq=3D3400.02 MHz<br><br>N2: Con=
nection to AMF on <a href=3D"http://10.55.7.40:38412">10.55.7.40:38412</a> =
completed<br>Warning: Configured PRACH occasion collides with PUCCH RBs ([0=
..1) intersects [0..3)). Some interference between PUCCH and PRACH is expec=
ted.<br>Warning: Configured PRACH occasion collides with PUCCH RBs ([0..1) =
intersects [0..3)). Some interference between PUCCH and PRACH is expected.<=
br>=3D=3D=3D=3D gNB started =3D=3D=3D<br>Type &lt;h&gt; to view help<br>Lat=
e: 5347; Underflow: 3213; Overflow: 1;<br>Error: failed receiving packet. R=
fnocError: OpTimeout: Control operation timed out waiting for ACK.<br>Error=
: failed receiving packet. RfnocError: OpTimeout: Control operation timed o=
ut waiting for ACK.<br>Late: 4; Underflow: 0; Overflow: 0;<br>Error: failed=
 receiving packet. RfnocError: OpTimeout: Control operation timed out waiti=
ng for ACK.<br>Error: failed receiving packet. RfnocError: OpTimeout: Contr=
ol operation timed out waiting for ACK.</i></span><br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 26 Nov =
2024 at 17:37, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.co=
m">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 26/11/2024 11:32, Houshang wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Hi Marcus</div>
        <div>I ran the benchmark command on both ip of the n310 and
          attached you can find the printout.<br>
        </div>
      </div>
    </blockquote>
    I&quot;m going to guess that one of your interfaces is operating at
    1Gbit, while the other is operating at 10Gbit?<br>
    <br>
    I don&#39;t know what rates the srsRAN software runs the interface at,
    but clearly in your 2nd example, on the<br>
    =C2=A0 other IP, it&#39;s able to support 25Msps without any issue.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 26 Nov 2024 at 17:22,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 26/11/2024 11:10, Houshang wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Many thanks for prompt reply Marcus! Please
                find attached the printout for that probe command you
                asked for.<br>
              </div>
            </blockquote>
            OK, so the next thing to do is to test your network capacity
            between your host computer and the N310:<br>
            <br>
            benchmark_rate --args
            &quot;type=3Dn3xx,product=3Dn310,addr=3D10.10.0.100,master_cloc=
k_rate=3D125e6&quot;
            --rx_rate 25e6 --tx_rate 25e6<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 26 Nov 2024 a=
t
                  16:59, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbrau=
n@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 26/11/2024 10:18, Houshang wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div>Hello</div>
                        <div><br>
                        </div>
                        <div>I have following UHD version on my server:</di=
v>
                        <br>
                        <i><span style=3D"background-color:rgb(238,238,238)=
">ad@bm-super11-intel:~/houshang$
                            uhd_config_info --version<br>
                            UHD 4.7.0.0-0ubuntu1~jammy1<br>
                            ad@bm-super11-intel:~/houshang$ ssh <a href=3D"=
mailto:root@10.10.0.100" target=3D"_blank">root@10.10.0.100</a></span></i><=
br>
                        <br>
                        And the following UHD version on my n310:<br>
                        <br>
                        <i><span style=3D"background-color:rgb(238,238,238)=
">root@ni-n3xx-32000F1:~#
                            uhd_config_info --version<br>
                            UHD 4.7.0.0-0-ga5ed1872<br>
                            root@ni-n3xx-32000F1:~# </span></i><br>
                        <br>
                        <div>They are the same and my n310 is updated
                          with the following file:</div>
                        <div><br>
                        </div>
                        <i><span style=3D"background-color:rgb(238,238,238)=
">ad@bm-super11-intel:~/houshang$
                            md5sum
                            /usr/share/uhd/images/usrp_n310_fpga_HG.bit<br>
                            532b338d6861268c05a4fd9837ca80e5
                            =C2=A0/usr/share/uhd/images/usrp_n310_fpga_HG.b=
it<br>
                            ad@bm-super11-intel:~/houshang$ </span></i><br>
                        <br>
                        I am running srsRAN gNB on my server (<i><span styl=
e=3D"background-color:rgb(238,238,238)">Commit
                            9d5dd742a</span></i>). A version of srs of
                        srsRAN that is compiled with <i><span style=3D"back=
ground-color:rgb(238,238,238)">UHD
                            4.7.0.0.</span></i><br>
                        <br>
                        <br>
                        Here are the error messages I get:<br>
                        <br>
                        <i><span style=3D"background-color:rgb(238,238,238)=
">=3D=3D=3D=3D
                            gNB started =3D=3D=3D<br>
                            Type &lt;h&gt; to view help<br>
                            Error: failed receiving packet. RfnocError:
                            OpTimeout: Control operation timed out
                            waiting for ACK.<br>
                            Late: 2805; Underflow: 2238; Overflow: 0;<br>
                            Error: failed receiving packet. RfnocError:
                            OpTimeout: Control operation timed out
                            waiting for ACK.<br>
                            Error: failed receiving packet. RfnocError:
                            OpTimeout: Control operation timed out
                            waiting for ACK.<br>
                            Late: 0; Underflow: 5; Overflow: 0;<br>
                            Error: failed receiving packet. RfnocError:
                            OpTimeout: Control operation timed out
                            waiting for ACK.<br>
                            Error: failed receiving packet. RfnocError:
                            OpTimeout: Control operation timed out
                            waiting for ACK.<br>
                            Late: 0; Underflow: 4; Overflow: 0;<br>
                            Error: failed receiving packet. RfnocError:
                            OpTimeout: Control operation timed out
                            waiting for ACK.<br>
                            Error: failed receiving packet. RfnocError:
                            OpTimeout: Control operation timed out
                            waiting for ACK.<br>
                            Late: 0; Underflow: 4; Overflow: 0;<br>
                            Error: failed receiving packet. RfnocError:
                            OpTimeout: Control operation timed out
                            waiting for ACK.<br>
                            Error: failed receiving packet. RfnocError:
                            OpTimeout: Control operation timed out
                            waiting for ACK.<br>
                            Late: 0; Underflow: 4; Overflow: 0;<br>
                            Error: failed receiving packet. RfnocError:
                            OpTimeout: Control operation timed out
                            waiting for ACK.</span></i><br>
                        <br>
                        <br>
                        And obviously it is not working with this amount
                        of errors.<br>
                        <br>
                        Can anyone help me with this please? Is it a bug
                        in the UHD version? Or is there something I am
                        missing here?<br>
                        <br>
                        Thanks<br>
                        Houshang<br>
                      </div>
                      <br>
                    </blockquote>
                    Try &quot;the basics&quot; first.<br>
                    <br>
                    What does:<br>
                    <br>
                    uhd_usrp_probe --args
                    &quot;type=3Dn3xx,product=3Dn310,addr=3D192.168.10.2&qu=
ot;<br>
                    <br>
                    <br>
                    Produce (you might have to change the addr to
                    whatever the address is of your N310).<br>
                    <br>
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                  To unsubscribe send an email to <a href=3D"mailto:usrp-us=
ers-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.c=
om</a><br>
                </blockquote>
              </div>
              <div><br clear=3D"all">
              </div>
              <br>
              <span class=3D"gmail_signature_prefix">-- </span><br>
              <div dir=3D"ltr" class=3D"gmail_signature">
                <div dir=3D"ltr">
                  <div style=3D"text-align:left">
                    <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:=
normal;font-size:12pt;font-family:Aptos,sans-serif"><b><span style=3D"font-=
size:11pt;font-family:Arial,sans-serif;color:rgb(0,173,238)">Houshang
                          Azizi</span></b><span style=3D"font-size:11pt;fon=
t-family:Arial,sans-serif"></span></p>
                    <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:=
normal;font-size:12pt;font-family:Aptos,sans-serif"><b><span style=3D"font-=
size:11pt;font-family:Arial,sans-serif;color:rgb(246,146,30)">Test
                          Engineer</span></b></p>
                  </div>
                  <a href=3D"https://www.accelleran.com/" rel=3D"noopener" =
style=3D"color:rgb(51,122,183);background-color:transparent" target=3D"_bla=
nk"><font size=3D"2"><img alt=3D"logo" src=3D"https://accelleran.com/wp-con=
tent/uploads/2024/04/Accelleran_NewLogo_NoBaseline.png" style=3D"border: 0p=
x; vertical-align: middle; width: 143px; height: auto;" width=3D"143" borde=
r=3D"0"></font></a>
                  <div style=3D"text-align:left">
                    <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:=
normal;font-size:12pt;font-family:Aptos,sans-serif"><b><span style=3D"font-=
size:10pt;font-family:Arial,sans-serif;color:black">(32)
                          492195241</span></b><span style=3D"font-size:10pt=
;font-family:Arial,sans-serif"></span></p>
                    <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:=
normal;font-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-siz=
e:10pt;font-family:Arial,sans-serif"><b><span style=3D"color:black"><a href=
=3D"mailto:Email@accelleran.com" target=3D"_blank">houshang.azizi@accellera=
n.com</a></span></b></span></p>
                    <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:=
normal;font-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-siz=
e:10pt;font-family:Arial,sans-serif">=C2=A0</span></p>
                    <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:=
normal;font-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-siz=
e:10pt;font-family:Arial,sans-serif"><a href=3D"http://www.accelleran.com/"=
 style=3D"color:rgb(17,85,204)" target=3D"_blank"><b><span style=3D"color:r=
gb(246,146,30)">www.accelleran.com</span></b></a></span></p>
                  </div>
                  <p style=3D"text-align:left;margin:20px 0px"><a href=3D"h=
ttps://www.linkedin.com/company/accelleran" rel=3D"noopener" style=3D"color=
:rgb(51,122,183);background-color:transparent" target=3D"_blank"><img alt=
=3D"linkedin icon" src=3D"https://www.mail-signatures.com/signature-generat=
or/img/templates/simple-and-light/ln.png" style=3D"border: 0px; vertical-al=
ign: middle; height: 15px; width: 15px;" width=3D"15" border=3D"0"></a>=C2=
=A0=C2=A0=C2=A0=C2=A0<a href=3D"https://twitter.com/accelleran" rel=3D"noop=
ener" style=3D"color:rgb(51,122,183);background-color:transparent" target=
=3D"_blank"><img alt=3D"twitter icon" src=3D"https://www.mail-signatures.co=
m/signature-generator/img/templates/simple-and-light/tt.png" style=3D"borde=
r: 0px; vertical-align: middle; height: 15px; width: 15px;" width=3D"15" bo=
rder=3D"0"></a>=C2=A0=C2=A0=C2=A0=C2=A0<a href=3D"https://www.youtube.com/c=
hannel/UCrAEtqWp21cibZgSFVIEx2g?themeRefresh=3D1" rel=3D"noopener" style=3D=
"color:rgb(51,122,183);background-color:transparent" target=3D"_blank"><img=
 alt=3D"youtube icon" src=3D"https://www.mail-signatures.com/signature-gene=
rator/img/templates/simple-and-light/yt.png" style=3D"border: 0px; vertical=
-align: middle; height: 15px; width: 15px;" width=3D"15" border=3D"0"></a>=
=C2=A0=C2=A0=C2=A0
                    <br>
                  </p>
                </div>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
      <div><br clear=3D"all">
      </div>
      <br>
      <span class=3D"gmail_signature_prefix">-- </span><br>
      <div dir=3D"ltr" class=3D"gmail_signature">
        <div dir=3D"ltr">
          <div style=3D"text-align:left">
            <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;f=
ont-size:12pt;font-family:Aptos,sans-serif"><b><span style=3D"font-size:11p=
t;font-family:Arial,sans-serif;color:rgb(0,173,238)">Houshang
                  Azizi</span></b><span style=3D"font-size:11pt;font-family=
:Arial,sans-serif"></span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;f=
ont-size:12pt;font-family:Aptos,sans-serif"><b><span style=3D"font-size:11p=
t;font-family:Arial,sans-serif;color:rgb(246,146,30)">Test
                  Engineer</span></b></p>
          </div>
          <a href=3D"https://www.accelleran.com/" rel=3D"noopener" style=3D=
"color:rgb(51,122,183);background-color:transparent" target=3D"_blank"><fon=
t size=3D"2"><img alt=3D"logo" src=3D"https://accelleran.com/wp-content/upl=
oads/2024/04/Accelleran_NewLogo_NoBaseline.png" style=3D"border: 0px; verti=
cal-align: middle; width: 143px; height: auto;" width=3D"143" border=3D"0">=
</font></a>
          <div style=3D"text-align:left">
            <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;f=
ont-size:12pt;font-family:Aptos,sans-serif"><b><span style=3D"font-size:10p=
t;font-family:Arial,sans-serif;color:black">(32)
                  492195241</span></b><span style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif"></span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;f=
ont-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-size:10pt;f=
ont-family:Arial,sans-serif"><b><span style=3D"color:black"><a href=3D"mail=
to:Email@accelleran.com" target=3D"_blank">houshang.azizi@accelleran.com</a=
></span></b></span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;f=
ont-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-size:10pt;f=
ont-family:Arial,sans-serif">=C2=A0</span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;f=
ont-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-size:10pt;f=
ont-family:Arial,sans-serif"><a href=3D"http://www.accelleran.com/" style=
=3D"color:rgb(17,85,204)" target=3D"_blank"><b><span style=3D"color:rgb(246=
,146,30)">www.accelleran.com</span></b></a></span></p>
          </div>
          <p style=3D"text-align:left;margin:20px 0px"><a href=3D"https://w=
ww.linkedin.com/company/accelleran" rel=3D"noopener" style=3D"color:rgb(51,=
122,183);background-color:transparent" target=3D"_blank"><img alt=3D"linked=
in icon" src=3D"https://www.mail-signatures.com/signature-generator/img/tem=
plates/simple-and-light/ln.png" style=3D"border: 0px; vertical-align: middl=
e; height: 15px; width: 15px;" width=3D"15" border=3D"0"></a>=C2=A0=C2=A0=
=C2=A0=C2=A0<a href=3D"https://twitter.com/accelleran" rel=3D"noopener" sty=
le=3D"color:rgb(51,122,183);background-color:transparent" target=3D"_blank"=
><img alt=3D"twitter icon" src=3D"https://www.mail-signatures.com/signature=
-generator/img/templates/simple-and-light/tt.png" style=3D"border: 0px; ver=
tical-align: middle; height: 15px; width: 15px;" width=3D"15" border=3D"0">=
</a>=C2=A0=C2=A0=C2=A0=C2=A0<a href=3D"https://www.youtube.com/channel/UCrA=
EtqWp21cibZgSFVIEx2g?themeRefresh=3D1" rel=3D"noopener" style=3D"color:rgb(=
51,122,183);background-color:transparent" target=3D"_blank"><img alt=3D"you=
tube icon" src=3D"https://www.mail-signatures.com/signature-generator/img/t=
emplates/simple-and-light/yt.png" style=3D"border: 0px; vertical-align: mid=
dle; height: 15px; width: 15px;" width=3D"15" border=3D"0"></a>=C2=A0=C2=A0=
=C2=A0 <br>
          </p>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div style=3D"text-align:left"><p class=3D"MsoNormal" style=
=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,sans-ser=
if"><b><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb=
(0,173,238)">Houshang Azizi</span></b><span style=3D"font-size:11pt;font-fa=
mily:Arial,sans-serif"></span></p><p class=3D"MsoNormal" style=3D"margin:0c=
m;line-height:normal;font-size:12pt;font-family:Aptos,sans-serif"><b><span =
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(246,146,30)"=
>Test Engineer</span></b></p></div><p></p><a href=3D"https://www.accelleran=
.com/" rel=3D"noopener" style=3D"color:rgb(51,122,183);background-color:tra=
nsparent" target=3D"_blank"><font size=3D"2"><img border=3D"0" alt=3D"logo"=
 width=3D"143" src=3D"https://accelleran.com/wp-content/uploads/2024/04/Acc=
elleran_NewLogo_NoBaseline.png" style=3D"border: 0px; vertical-align: middl=
e; width: 143px; height: auto;"></font></a><div style=3D"text-align:left"><=
p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;font-size:12pt=
;font-family:Aptos,sans-serif"><b><span style=3D"font-size:10pt;font-family=
:Arial,sans-serif;color:black">(32) 492195241</span></b><span style=3D"font=
-size:10pt;font-family:Arial,sans-serif"></span></p><p class=3D"MsoNormal" =
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,san=
s-serif"><span style=3D"font-size:10pt;font-family:Arial,sans-serif"><b><sp=
an style=3D"color:black"><a href=3D"mailto:Email@accelleran.com" target=3D"=
_blank">houshang.azizi@accelleran.com</a></span></b></span></p><p class=3D"=
MsoNormal" style=3D"margin:0cm;line-height:normal;font-size:12pt;font-famil=
y:Aptos,sans-serif"><span style=3D"font-size:10pt;font-family:Arial,sans-se=
rif">=C2=A0</span></p><p class=3D"MsoNormal" style=3D"margin:0cm;line-heigh=
t:normal;font-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-s=
ize:10pt;font-family:Arial,sans-serif"><a href=3D"http://www.accelleran.com=
/" style=3D"color:rgb(17,85,204)" target=3D"_blank"><b><span style=3D"color=
:rgb(246,146,30)">www.accelleran.com</span></b></a></span></p></div><p styl=
e=3D"text-align:left;margin:20px 0px"><a href=3D"https://www.linkedin.com/c=
ompany/accelleran" rel=3D"noopener" style=3D"color:rgb(51,122,183);backgrou=
nd-color:transparent" target=3D"_blank"><img border=3D"0" width=3D"15" alt=
=3D"linkedin icon" src=3D"https://www.mail-signatures.com/signature-generat=
or/img/templates/simple-and-light/ln.png" style=3D"border: 0px; vertical-al=
ign: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0=C2=A0<a hre=
f=3D"https://twitter.com/accelleran" rel=3D"noopener" style=3D"color:rgb(51=
,122,183);background-color:transparent" target=3D"_blank"><img border=3D"0"=
 width=3D"15" alt=3D"twitter icon" src=3D"https://www.mail-signatures.com/s=
ignature-generator/img/templates/simple-and-light/tt.png" style=3D"border: =
0px; vertical-align: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=
=C2=A0=C2=A0<a href=3D"https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVI=
Ex2g?themeRefresh=3D1" rel=3D"noopener" style=3D"color:rgb(51,122,183);back=
ground-color:transparent" target=3D"_blank"><img border=3D"0" width=3D"15" =
alt=3D"youtube icon" src=3D"https://www.mail-signatures.com/signature-gener=
ator/img/templates/simple-and-light/yt.png" style=3D"border: 0px; vertical-=
align: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0 <br></p><=
/div></div>

--000000000000ecd23d0627d39653--

--===============4039981959198001503==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4039981959198001503==--
