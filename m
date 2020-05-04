Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFA21C3C4B
	for <lists+usrp-users@lfdr.de>; Mon,  4 May 2020 16:05:10 +0200 (CEST)
Received: from [::1] (port=57766 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jVbiT-00039w-Ba; Mon, 04 May 2020 10:05:05 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:46151)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1jVbiP-000315-BI
 for usrp-users@lists.ettus.com; Mon, 04 May 2020 10:05:01 -0400
Received: by mail-ot1-f54.google.com with SMTP id z25so8885328otq.13
 for <usrp-users@lists.ettus.com>; Mon, 04 May 2020 07:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Phw6NkOtGhB+RnB+uwVPTE+nK0xXoDE1qNnRv20cQSg=;
 b=USsjBIoJy+v1K7nBNu5rFrJ7CQOCPAHNg/mPNJIUfT/xoTo5xSJUKdFkKrxAhOhXcH
 WKKq5Ka3JKAARUNiqyv334TGjq11V+KoPXv5331U7E0e+SRo5y/UMvqvy6OssdqftTsF
 2rMNVoDJOK5RgmfwAljN9Z0PSn3Z9kyW98li0LfwucD+k2UulmoytqbJRenRyBcmF13o
 PPQtzg568yzOpxWKDm3MO75BrceDXAF+jnHdGr9RU9rsHu/vEUwYt/Zp/HbSGh8wZEAH
 pfCpvxh3+PRaz4zqbKcViqf/XljzTotVYxagLe4srgLvhBwi3C4tq4NZ/ikLBCN2Ph8Z
 VfPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Phw6NkOtGhB+RnB+uwVPTE+nK0xXoDE1qNnRv20cQSg=;
 b=A8Ht+xBOKDFlYb6MsOifw62rvgNyhz1slGsOr8rAH8x51AmnsP8lebngTDLsAi4uyR
 kDI+msEwFxDnHrPKaIFLKqZdhknvVrWjn1nfT875ALDKIdo7F4sBcihMoZQFzRQW+F3S
 b0MZ3SREN7RHB+B22tKsAsTF4CzAPX6UUYPY+oPsp9O56rBuy15tEqm7HXTZvBUqwRHd
 MV1271jnq3KDQXNTdmfg3AA7v5Ze63C8k+peDGTT45hG0cf36WKpgyeoMfc3uJXD3D8F
 xdoY7bw34n0cYclKIoLJOLBwuYoWQajMiMc/RKfWMYCiN6D/x/fAy1ur7D6ceSw6m+uY
 eG5g==
X-Gm-Message-State: AGi0PubWpxNHiT4BjXV7sdXDjCIwKUSOjG0OjR+z6OCRiKc0RMei/JCW
 1754XGiPTBu88evG9GyMeuID47QxBUqBINSj1dVR5J4l
X-Google-Smtp-Source: APiQypLh+db6QQNBo0adBqQsvb6qZZGHUWJbP3CbIb/dLJR/6U/B9i2OLURDu7WHv3/MJrHTDcwVRes91FfZJheCie8=
X-Received: by 2002:a9d:784b:: with SMTP id c11mr15022114otm.28.1588601060530; 
 Mon, 04 May 2020 07:04:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTRkiAjJ4H7ehSMHfjsO3NDLpghzjJpnZMZw6-MTVYp8hw@mail.gmail.com>
 <CAFche=gmhz5khOrpufGLN2hW1+SvhW3KA7nfR0mna570BOZs3Q@mail.gmail.com>
 <CAB__hTQkmbb9CR4RCQ4Mhq_YP-VRFP9Tubd3EWJuQkXxN7Er3Q@mail.gmail.com>
 <CAFche=iUdUmipErA3UWyTO3Da990uSiCKcRVrc3r2sNACrOpow@mail.gmail.com>
 <CAB__hTThtrgSDNDdufEEUbeKkxWijHXaiNLDJC=y2QBx1pwBWw@mail.gmail.com>
 <CAFche=g75+rjH1=XSoLQKceVFxuz+VevJWyBEw36P_4dQ+Xgug@mail.gmail.com>
 <CAB__hTQThzg4J7yFqbsONsBSaeuQsV9nSmWFf6W-DGUsncAMjA@mail.gmail.com>
 <CAB__hTSyT=d44TgKYGpo50xrT6h-6Xo4BgLX4LOx6-k669AS0g@mail.gmail.com>
In-Reply-To: <CAB__hTSyT=d44TgKYGpo50xrT6h-6Xo4BgLX4LOx6-k669AS0g@mail.gmail.com>
Date: Mon, 4 May 2020 09:04:11 -0500
Message-ID: <CAFche=jrk-EuXGhhEfpZ6yuxPZr98M7K2v2ZVieURUaTwbdyOQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] using 'replay' block with 'duc'
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
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2816396147098493521=="
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

--===============2816396147098493521==
Content-Type: multipart/alternative; boundary="000000000000e72f0a05a4d30186"

--000000000000e72f0a05a4d30186
Content-Type: text/plain; charset="UTF-8"

Yes, this is intentional. There is a lot of active development going on for
UHD 4.0 and the Replay block will be in there soon.

Thanks for the details with respect to port > 1. I will let you know what I
find.

Wade

On Fri, May 1, 2020 at 1:22 PM Rob Kossler <rkossler@nd.edu> wrote:

> And, one more thing.... Are you aware that the current 'master' (UHD 4.0)
> provides images that do not have the replay block on them (e.g., N310) and
> that there is no noc_block_replay.v or replay block HPP file anywhere in
> the repo?
> Rob
>
> On Fri, May 1, 2020 at 1:28 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Wade,
>> The issue can be demonstrated using the stock "replay_samples_from_file"
>> program (N310 UHD3.15).  Run with "trace" logging if you want even more
>> detail.  So, it's not really an issue related to multiple ports.  It's an
>> issue of connecting Replay port 2 (or likely port 3 as well) to an
>> arbitrary downstream port.
>> Rob
>>
>> ******* Here is the command that fails
>>
>> $ replay_samples_from_file --file
>> Documents/waveforms/mtone_100_0p8_0_le.bin --replay_chan 2 --freq 2450e6
>> --rate 125e6
>> Creating the USRP device with: . . .
>>
>> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
>> UHD_3.15.0.0-7-g8d228dbe
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>> mgmt_addr=192.168.20.2,type=n3xx,product=n310,serial=319821D,claimed=False,addr=192.168.20.2
>> [INFO] [MPM.PeriphManager] init() called with device args
>> `mgmt_addr=192.168.20.2,time_source=internal,product=n310,clock_source=internal'.
>> [INFO] [0/Replay_0] Initializing block control (NOC ID:
>> 0x4E91A00000000004)
>> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312)
>> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312)
>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
>> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)
>> [INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)
>> [INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)
>> [INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)
>> [INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)
>> Using radio 0, channel 0
>> Using replay block 0, channel 2
>> Setting TX Freq: 2450.000000 MHz...
>> Actual TX Freq: 2450.000000 MHz...
>>
>> Setting TX Rate: 125.000000 Msps...
>> Actual TX Rate: 125.000000 Msps...
>>
>> Connecting 0/Replay_0 ==> 0/Radio_0
>> Error: LookupError: KeyError: [0/Radio_0] sr_write(): No such port: 2
>>
>> On Fri, May 1, 2020 at 1:19 PM Wade Fife <wade.fife@ettus.com> wrote:
>>
>>> See my responses below.
>>>
>>> On Fri, May 1, 2020 at 11:08 AM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>> Thanks Wade,
>>>> A few follow up questions:
>>>>
>>>>    - Regarding play_halt(), it sounds like this should never used if
>>>>    you are planning to start playout again (and the replay output feeds the
>>>>    DUC input).  Is this correct?  Or perhaps there is some way to clear the
>>>>    DUC?
>>>>
>>>> My recommendation would be to not call play_halt() if you are planning
>>> on restarting. It will take a little longer to stop because it has to wait
>>> to complete the current memory read and generate the final packet with EOB.
>>> I'd have to look into clearing the DUC, but I think the right thing to do
>>> is to let the replay block stop normally.
>>>
>>>>
>>>>    - In the meantime, what is the correct way of using the block in my
>>>>    situation where the replay is connected to the DUC and I want to repeatedly
>>>>    start/stop streaming?  Should I just remove the play_halt() call from the
>>>>    example and just wait for the buffer to flush following the stop streaming
>>>>    command?
>>>>
>>>> Yes, I would just remove the play_halt().
>>>
>>>>
>>>>    - Have you seen my other issue regarding use of the Replay Block on
>>>>    the N310 such that you can't connect the 4 Replay block ports to the 4 DUC
>>>>    ports to produce 4 Tx outputs using 3.15?  There is a graph connection /
>>>>    propagation issue that does not like Replay port 2 (3rd  port) connected to
>>>>    DUC_1 port 0.
>>>>
>>>> I'm not aware of any issues with respect to multiple ports. Can you
>>> provide more details on the issue you're seeing?
>>>
>>> Rob
>>>>
>>>> On Fri, May 1, 2020 at 11:37 AM Wade Fife <wade.fife@ettus.com> wrote:
>>>>
>>>>> Hi Rob,
>>>>>
>>>>> I wanted to give you a quick update. I was able to reproduce the issue
>>>>> you found. There were two problems.
>>>>>
>>>>> First, the example you shared calls play_halt() for the replay block
>>>>> each time replay is stopped. This basically stops it as soon as possible,
>>>>> even if that means it can't send a final packet with EOB. The DUC needs the
>>>>> EOB to start/stop cleanly or else the timestamps the DUC generates aren't
>>>>> correct when the next set of data comes through.
>>>>>
>>>>> The second problem I found is part of some known issues that are
>>>>> already fixed in UHD 4.0. I'm going to add these fixes to 3.15 since I know
>>>>> there was a lot of interest in the Replay block in 3.15. So once these
>>>>> fixes appear, you should be able to remove the call the play_halt() and the
>>>>> example will work as expected.
>>>>>
>>>>> Thanks,
>>>>>
>>>>> Wade
>>>>>
>>>>> On Thu, Apr 23, 2020 at 9:34 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>>
>>>>>>
>>>>>> Great. I forgot to mention that I was using an n310.
>>>>>>
>>>>>> On Thu, Apr 23, 2020 at 10:18 PM Wade Fife <wade.fife@ettus.com>
>>>>>> wrote:
>>>>>>
>>>>>>> Hi Rob,
>>>>>>>
>>>>>>> Thanks for the example! I'd take a look to see if I can reproduce
>>>>>>> the issue and figure out what's going on. I've been working recently on the
>>>>>>> Replay block, so I'm very interested to understand what's going on.
>>>>>>>
>>>>>>> Thanks,
>>>>>>>
>>>>>>> Wade
>>>>>>>
>>>>>>> On Thu, Apr 23, 2020 at 1:36 PM Rob Kossler via USRP-users <
>>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>>
>>>>>>>> Hi,
>>>>>>>> I am having an issue with UHD 3.15.LTS using the replay block.
>>>>>>>> When I play out my previously stored samples the first time, everything
>>>>>>>> works fine.  But after stopping the first time, if I try to start playing
>>>>>>>> out again, I get a whole bunch of 'Lates' and no RF output.
>>>>>>>>
>>>>>>>> In order to duplicate the problem with an Ettus example, I modified
>>>>>>>> 'replay_samples_from_file' to add a loop and command prompt so that the
>>>>>>>> user could hit <enter> to start playing out while still using <ctrl-c> to
>>>>>>>> stop.  Unfortunately for me, this worked fine and did not show the problem.
>>>>>>>>
>>>>>>>> Next, I further modified the example to place a DUC block in
>>>>>>>> between the Replay block and the Radio.  Now it duplicates the issue
>>>>>>>> perfectly (modified example attached).
>>>>>>>>
>>>>>>>> So, perhaps I need to clear the DUC in some way when stopping the
>>>>>>>> streaming??  But if so, I'm not really sure how to do so.
>>>>>>>>
>>>>>>>> Thanks.
>>>>>>>> Rob
>>>>>>>>
>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list
>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>>
>>>>>>>

--000000000000e72f0a05a4d30186
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes, this is intentional. There is a lot of active de=
velopment going on for UHD 4.0 and the Replay block will be in there soon.<=
/div><div><br></div><div>Thanks for the details with respect to port &gt; 1=
. I will let you know what I find. <br></div><div><br></div><div>Wade<br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Fri, May 1, 2020 at 1:22 PM Rob Kossler &lt;<a href=3D"mailto:rkossl=
er@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr">And, one more thing.... Are you =
aware that the current &#39;master&#39; (UHD 4.0) provides images that do n=
ot have the replay block on them (e.g., N310) and that there is no noc_bloc=
k_replay.v or replay block HPP file anywhere in the repo?<div>Rob</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On F=
ri, May 1, 2020 at 1:28 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.ed=
u" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><div><font face=
=3D"monospace">Hi Wade,</font></div><div><font face=3D"monospace">The issue=
 can be demonstrated=C2=A0using the stock &quot;replay_samples_from_file&qu=
ot; program (N310 UHD3.15).=C2=A0 Run with &quot;trace&quot; logging if you=
 want even more detail.=C2=A0 So, it&#39;s not really an issue related to m=
ultiple ports.=C2=A0 It&#39;s an issue of connecting Replay port 2 (or like=
ly port 3 as well) to an arbitrary downstream port.=C2=A0</font></div><div>=
<font face=3D"monospace">Rob</font></div><div><font face=3D"monospace"><br>=
</font></div><div><font face=3D"monospace"><span style=3D"background-color:=
rgb(255,255,0)">******* Here is the command that fails</span></font></div><=
div><font face=3D"monospace"><span style=3D"background-color:rgb(255,255,0)=
"><br></span></font></div><div></div></div><div>$ replay_samples_from_file =
--file Documents/waveforms/mtone_100_0p8_0_le.bin --replay_chan 2 --freq 24=
50e6 --rate 125e6<br>Creating the USRP device with: . . .<br><br><font face=
=3D"monospace">[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD=
_3.15.0.0-7-g8d228dbe<br>[INFO] [MPMD] Initializing 1 device(s) in parallel=
 with args: mgmt_addr=3D192.168.20.2,type=3Dn3xx,product=3Dn310,serial=3D31=
9821D,claimed=3DFalse,addr=3D192.168.20.2<br>[INFO] [MPM.PeriphManager] ini=
t() called with device args `mgmt_addr=3D192.168.20.2,time_source=3Dinterna=
l,product=3Dn310,clock_source=3Dinternal&#39;.<br>[INFO] [0/Replay_0] Initi=
alizing block control (NOC ID: 0x4E91A00000000004)<br>[INFO] [0/Radio_0] In=
itializing block control (NOC ID: 0x12AD100000011312)<br>[INFO] [0/Radio_1]=
 Initializing block control (NOC ID: 0x12AD100000011312)<br>[INFO] [0/DDC_0=
] Initializing block control (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DDC_=
1] Initializing block control (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DUC=
_0] Initializing block control (NOC ID: 0xD0C0000000000002)<br>[INFO] [0/DU=
C_1] Initializing block control (NOC ID: 0xD0C0000000000002)<br>[INFO] [0/F=
IFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)<br>[INFO] [0=
/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)<br>[INFO] =
[0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)<br>[INFO=
] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)<br>Usi=
ng radio 0, channel 0<br>Using=C2=A0<span>replay</span>=C2=A0block 0, chann=
el 2<br>Setting TX Freq: 2450.000000 MHz...<br>Actual TX Freq: 2450.000000 =
MHz...<br><br>Setting TX Rate: 125.000000 Msps...<br>Actual TX Rate: 125.00=
0000 Msps...<br><br>Connecting 0/Replay_0 =3D=3D&gt; 0/Radio_0<br><span sty=
le=3D"background-color:rgb(255,255,0)">Error: LookupError: KeyError: [0/Rad=
io_0] sr_write(): No such port: 2</span></font></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 1, 2020 =
at 1:19 PM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_=
blank">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div>See my responses below.<br>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Fri, May 1, 2020 at 11:08 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@=
nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Thanks Wade,<div>=
A few follow=C2=A0up questions:</div><div><ul><li>Regarding play_halt(), it=
 sounds like this should never used if you are planning to start playout ag=
ain (and the replay output feeds the DUC input).=C2=A0 Is this correct?=C2=
=A0 Or perhaps there is some way to clear the DUC?</li></ul></div></div></b=
lockquote><div>My recommendation would be to not call play_halt() if you ar=
e planning on restarting. It will take a little longer to stop because it h=
as to wait to complete the current memory read and generate the final packe=
t with EOB. I&#39;d have to look into clearing the DUC, but I think the rig=
ht thing to do is to let the replay block stop normally. =C2=A0 <br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><ul>=
<li>In the meantime, what is the correct way of using the block in my situa=
tion where the replay is connected to the DUC and I want to repeatedly star=
t/stop streaming?=C2=A0 Should I just remove the play_halt() call from the =
example and just wait for the buffer to flush following the stop streaming =
command?</li></ul></div></div></blockquote><div></div><div>Yes, I would jus=
t remove the play_halt(). <br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div><ul><li>Have you seen my other issue regar=
ding use of the Replay Block on the N310 such that you can&#39;t connect th=
e 4 Replay block ports to the 4 DUC ports to produce 4 Tx outputs using 3.1=
5?=C2=A0 There is a graph connection / propagation issue that does not like=
 Replay port 2 (3rd=C2=A0 port) connected to DUC_1 port 0.</li></ul></div><=
/div></blockquote><div>I&#39;m not aware of any issues with respect to mult=
iple ports. Can you provide more details on the issue you&#39;re seeing?<br=
></div><div> <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div><div>Rob</div></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 1, 2020 at 11:37 AM Wad=
e Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fi=
fe@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>I wanted=
 to give you a quick update. I was able to reproduce the issue you found. T=
here were two problems.</div><div><br></div><div>First, the example you sha=
red calls play_halt() for the replay block each time replay is stopped. Thi=
s basically stops it as soon as possible, even if that means it can&#39;t s=
end a final packet with EOB. The DUC needs the EOB to start/stop cleanly or=
 else the timestamps the DUC generates aren&#39;t correct when the next set=
 of data comes through.</div><div><br></div><div>The second problem I found=
 is part of some known issues that are already fixed in UHD 4.0. I&#39;m go=
ing to add these fixes to 3.15 since I know there was a lot of interest in =
the Replay block in 3.15. So once these fixes appear, you should be able to=
 remove the call the play_halt() and the example will work as expected.<br>=
</div><div><br></div><div>Thanks,</div><div><br></div><div>Wade<br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Thu, Apr 23, 2020 at 9:34 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd=
.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div><br></div><div><div dir=3D"auto=
">Great. I forgot to mention that I was using an n310.=C2=A0</div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 23,=
 2020 at 10:18 PM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" targ=
et=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Rob,</div><div><b=
r></div><div>Thanks for the example! I&#39;d take a look to see if I can re=
produce the issue and figure out what&#39;s going on. I&#39;ve been working=
 recently on the Replay block, so I&#39;m very interested to understand wha=
t&#39;s going on.<br></div><div><br></div><div>Thanks,</div><div><br></div>=
<div>Wade<br></div></div><br><div class=3D"gmail_quote"></div><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 23, 2020 at=
 1:36 PM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br><=
/div></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"></blockquote></div><div class=3D"gmail_quote"><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>I am having =
an issue with UHD 3.15.LTS using the replay block.=C2=A0 When I play out my=
 previously stored samples the first time, everything works fine.=C2=A0 But=
 after stopping the first time, if I try to start playing out again, I get =
a whole bunch of &#39;Lates&#39; and no RF output.</div><div><br></div><div=
>In order to duplicate the problem with an Ettus example, I modified &#39;r=
eplay_samples_from_file&#39; to add a loop and command prompt so that the u=
ser could hit &lt;enter&gt; to start playing out while still using &lt;ctrl=
-c&gt; to stop.=C2=A0 Unfortunately for me, this worked fine and did not sh=
ow the problem.</div><div><br></div><div>Next, I further modified=C2=A0the =
example to place a DUC block in between the Replay block and the Radio.=C2=
=A0 Now it duplicates the issue perfectly (modified example attached).</div=
><div><br></div><div>So, perhaps I need to clear the DUC in some way when s=
topping the streaming??=C2=A0 But if so, I&#39;m not really sure how to do =
so.</div><div><br></div><div>Thanks.</div><div>Rob</div></div></blockquote>=
</div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000e72f0a05a4d30186--


--===============2816396147098493521==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2816396147098493521==--

