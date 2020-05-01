Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 312301C1CEC
	for <lists+usrp-users@lfdr.de>; Fri,  1 May 2020 20:23:13 +0200 (CEST)
Received: from [::1] (port=33718 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jUaJb-00032b-Se; Fri, 01 May 2020 14:23:11 -0400
Received: from mail-oo1-f43.google.com ([209.85.161.43]:42665)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jUaJX-0002qd-6E
 for usrp-users@lists.ettus.com; Fri, 01 May 2020 14:23:07 -0400
Received: by mail-oo1-f43.google.com with SMTP id e18so901316oot.9
 for <usrp-users@lists.ettus.com>; Fri, 01 May 2020 11:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OZ7sdTwPDLrB0StIr2QLh5FVybygMxRxkzHMYKpajgE=;
 b=Ndc4EhEOEo/Aq4GZtTrWgXAHXaktZkKi06is+RiCuNCrrr/Mgidy4WTTVeEYbKTzYu
 ySKdzrSRctqvH95vYOMFsoe0LoYWVC9pvPIh+4/iEcQsD3XsJiXjgiWcrSamoaVmHiuM
 bGR55Jg9If3/nD9gq8+fPUvnIJrxj/RQsf696802UUbGz6aVrXI/HrDwPoGrXGOoGVKd
 rTjN0TIhMegB0oQdiSxPjVmk73cAn8zO3xOpo4Qa/Q8CJAVGn3ZPSyemGJ39CsplRl4U
 PckCBOSgm9pixgKI0/XPQ79B8iapK2U0s3ybbzhkXfpQQrT9Ys7GLu8oIV0w5B/XDzIS
 eq0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OZ7sdTwPDLrB0StIr2QLh5FVybygMxRxkzHMYKpajgE=;
 b=GC6YzoG3RMJ+8DAQeCxOlVRLn/Et5sZl3OtnP4GAZymsztcY0/9Yv3mrYcIAitLafH
 3briFX247cnk/2p2upr0Vfk23dVfqG8MOZuA/bW+ZeuTB+ga4UNZmE1kNxroqIsEHHuw
 a9e+0v/JgJxPFHRoYW1Mfy46FHMf1LbbNt3P3TycZiMbCxQZllxbsJTkf2EgkBrQsDuC
 y3CPM0lfE9c1WCslOvmYe5AI7rPMjJ2vxTx+rPYuGAcKUFqVF2omRx602rRNJ5cHSEHS
 AIMVqkknF1Dp7pG0XbIrqBxOhm3FiX+C6GJrB7R4ZgpbX8nImDh8grO2dvSrwMb48Lrm
 O+vg==
X-Gm-Message-State: AGi0Pua+b8/AFdCiBR4nhw/2bQgqZoUol8OXOJUibjIE8MQ72CU7yjMN
 qmdnprDpH9yj28KXmf6riWX9JR9i2GFHBsNQHf5R3w==
X-Google-Smtp-Source: APiQypIcVq2VQCi2UjmlpPe7q5duVqeG9NWn+n6LoVhy22INuKvmRlrGM+l8VBYzMRxr4ABkYFYoME+fg5nz14qM6W0=
X-Received: by 2002:a4a:a209:: with SMTP id m9mr4918016ool.62.1588357346328;
 Fri, 01 May 2020 11:22:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTRkiAjJ4H7ehSMHfjsO3NDLpghzjJpnZMZw6-MTVYp8hw@mail.gmail.com>
 <CAFche=gmhz5khOrpufGLN2hW1+SvhW3KA7nfR0mna570BOZs3Q@mail.gmail.com>
 <CAB__hTQkmbb9CR4RCQ4Mhq_YP-VRFP9Tubd3EWJuQkXxN7Er3Q@mail.gmail.com>
 <CAFche=iUdUmipErA3UWyTO3Da990uSiCKcRVrc3r2sNACrOpow@mail.gmail.com>
 <CAB__hTThtrgSDNDdufEEUbeKkxWijHXaiNLDJC=y2QBx1pwBWw@mail.gmail.com>
 <CAFche=g75+rjH1=XSoLQKceVFxuz+VevJWyBEw36P_4dQ+Xgug@mail.gmail.com>
 <CAB__hTQThzg4J7yFqbsONsBSaeuQsV9nSmWFf6W-DGUsncAMjA@mail.gmail.com>
In-Reply-To: <CAB__hTQThzg4J7yFqbsONsBSaeuQsV9nSmWFf6W-DGUsncAMjA@mail.gmail.com>
Date: Fri, 1 May 2020 14:22:15 -0400
Message-ID: <CAB__hTSyT=d44TgKYGpo50xrT6h-6Xo4BgLX4LOx6-k669AS0g@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8272996143121328702=="
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

--===============8272996143121328702==
Content-Type: multipart/alternative; boundary="00000000000067b9d805a49a4375"

--00000000000067b9d805a49a4375
Content-Type: text/plain; charset="UTF-8"

And, one more thing.... Are you aware that the current 'master' (UHD 4.0)
provides images that do not have the replay block on them (e.g., N310) and
that there is no noc_block_replay.v or replay block HPP file anywhere in
the repo?
Rob

On Fri, May 1, 2020 at 1:28 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Wade,
> The issue can be demonstrated using the stock "replay_samples_from_file"
> program (N310 UHD3.15).  Run with "trace" logging if you want even more
> detail.  So, it's not really an issue related to multiple ports.  It's an
> issue of connecting Replay port 2 (or likely port 3 as well) to an
> arbitrary downstream port.
> Rob
>
> ******* Here is the command that fails
>
> $ replay_samples_from_file --file
> Documents/waveforms/mtone_100_0p8_0_le.bin --replay_chan 2 --freq 2450e6
> --rate 125e6
> Creating the USRP device with: . . .
>
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.15.0.0-7-g8d228dbe
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=192.168.20.2,type=n3xx,product=n310,serial=319821D,claimed=False,addr=192.168.20.2
> [INFO] [MPM.PeriphManager] init() called with device args
> `mgmt_addr=192.168.20.2,time_source=internal,product=n310,clock_source=internal'.
> [INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)
> [INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)
> [INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)
> [INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)
> [INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)
> Using radio 0, channel 0
> Using replay block 0, channel 2
> Setting TX Freq: 2450.000000 MHz...
> Actual TX Freq: 2450.000000 MHz...
>
> Setting TX Rate: 125.000000 Msps...
> Actual TX Rate: 125.000000 Msps...
>
> Connecting 0/Replay_0 ==> 0/Radio_0
> Error: LookupError: KeyError: [0/Radio_0] sr_write(): No such port: 2
>
> On Fri, May 1, 2020 at 1:19 PM Wade Fife <wade.fife@ettus.com> wrote:
>
>> See my responses below.
>>
>> On Fri, May 1, 2020 at 11:08 AM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Thanks Wade,
>>> A few follow up questions:
>>>
>>>    - Regarding play_halt(), it sounds like this should never used if
>>>    you are planning to start playout again (and the replay output feeds the
>>>    DUC input).  Is this correct?  Or perhaps there is some way to clear the
>>>    DUC?
>>>
>>> My recommendation would be to not call play_halt() if you are planning
>> on restarting. It will take a little longer to stop because it has to wait
>> to complete the current memory read and generate the final packet with EOB.
>> I'd have to look into clearing the DUC, but I think the right thing to do
>> is to let the replay block stop normally.
>>
>>>
>>>    - In the meantime, what is the correct way of using the block in my
>>>    situation where the replay is connected to the DUC and I want to repeatedly
>>>    start/stop streaming?  Should I just remove the play_halt() call from the
>>>    example and just wait for the buffer to flush following the stop streaming
>>>    command?
>>>
>>> Yes, I would just remove the play_halt().
>>
>>>
>>>    - Have you seen my other issue regarding use of the Replay Block on
>>>    the N310 such that you can't connect the 4 Replay block ports to the 4 DUC
>>>    ports to produce 4 Tx outputs using 3.15?  There is a graph connection /
>>>    propagation issue that does not like Replay port 2 (3rd  port) connected to
>>>    DUC_1 port 0.
>>>
>>> I'm not aware of any issues with respect to multiple ports. Can you
>> provide more details on the issue you're seeing?
>>
>> Rob
>>>
>>> On Fri, May 1, 2020 at 11:37 AM Wade Fife <wade.fife@ettus.com> wrote:
>>>
>>>> Hi Rob,
>>>>
>>>> I wanted to give you a quick update. I was able to reproduce the issue
>>>> you found. There were two problems.
>>>>
>>>> First, the example you shared calls play_halt() for the replay block
>>>> each time replay is stopped. This basically stops it as soon as possible,
>>>> even if that means it can't send a final packet with EOB. The DUC needs the
>>>> EOB to start/stop cleanly or else the timestamps the DUC generates aren't
>>>> correct when the next set of data comes through.
>>>>
>>>> The second problem I found is part of some known issues that are
>>>> already fixed in UHD 4.0. I'm going to add these fixes to 3.15 since I know
>>>> there was a lot of interest in the Replay block in 3.15. So once these
>>>> fixes appear, you should be able to remove the call the play_halt() and the
>>>> example will work as expected.
>>>>
>>>> Thanks,
>>>>
>>>> Wade
>>>>
>>>> On Thu, Apr 23, 2020 at 9:34 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>
>>>>>
>>>>> Great. I forgot to mention that I was using an n310.
>>>>>
>>>>> On Thu, Apr 23, 2020 at 10:18 PM Wade Fife <wade.fife@ettus.com>
>>>>> wrote:
>>>>>
>>>>>> Hi Rob,
>>>>>>
>>>>>> Thanks for the example! I'd take a look to see if I can reproduce the
>>>>>> issue and figure out what's going on. I've been working recently on the
>>>>>> Replay block, so I'm very interested to understand what's going on.
>>>>>>
>>>>>> Thanks,
>>>>>>
>>>>>> Wade
>>>>>>
>>>>>> On Thu, Apr 23, 2020 at 1:36 PM Rob Kossler via USRP-users <
>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>
>>>>>>> Hi,
>>>>>>> I am having an issue with UHD 3.15.LTS using the replay block.  When
>>>>>>> I play out my previously stored samples the first time, everything works
>>>>>>> fine.  But after stopping the first time, if I try to start playing out
>>>>>>> again, I get a whole bunch of 'Lates' and no RF output.
>>>>>>>
>>>>>>> In order to duplicate the problem with an Ettus example, I modified
>>>>>>> 'replay_samples_from_file' to add a loop and command prompt so that the
>>>>>>> user could hit <enter> to start playing out while still using <ctrl-c> to
>>>>>>> stop.  Unfortunately for me, this worked fine and did not show the problem.
>>>>>>>
>>>>>>> Next, I further modified the example to place a DUC block in between
>>>>>>> the Replay block and the Radio.  Now it duplicates the issue perfectly
>>>>>>> (modified example attached).
>>>>>>>
>>>>>>> So, perhaps I need to clear the DUC in some way when stopping the
>>>>>>> streaming??  But if so, I'm not really sure how to do so.
>>>>>>>
>>>>>>> Thanks.
>>>>>>> Rob
>>>>>>>
>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list
>>>>>>> USRP-users@lists.ettus.com
>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>
>>>>>>

--00000000000067b9d805a49a4375
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">And, one more thing.... Are you aware that the current &#3=
9;master&#39; (UHD 4.0) provides images that do not have the replay block o=
n them (e.g., N310) and that there is no noc_block_replay.v or replay block=
 HPP file anywhere in the repo?<div>Rob</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 1, 2020 at 1:28 PM=
 Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div><div><font face=3D"monospace">Hi Wade,</font></div><div><font=
 face=3D"monospace">The issue can be demonstrated=C2=A0using the stock &quo=
t;replay_samples_from_file&quot; program (N310 UHD3.15).=C2=A0 Run with &qu=
ot;trace&quot; logging if you want even more detail.=C2=A0 So, it&#39;s not=
 really an issue related to multiple ports.=C2=A0 It&#39;s an issue of conn=
ecting Replay port 2 (or likely port 3 as well) to an arbitrary downstream =
port.=C2=A0</font></div><div><font face=3D"monospace">Rob</font></div><div>=
<font face=3D"monospace"><br></font></div><div><font face=3D"monospace"><sp=
an style=3D"background-color:rgb(255,255,0)">******* Here is the command th=
at fails</span></font></div><div><font face=3D"monospace"><span style=3D"ba=
ckground-color:rgb(255,255,0)"><br></span></font></div><div></div></div><di=
v>$ replay_samples_from_file --file Documents/waveforms/mtone_100_0p8_0_le.=
bin --replay_chan 2 --freq 2450e6 --rate 125e6<br>Creating the USRP device =
with: . . .<br><br><font face=3D"monospace">[INFO] [UHD] linux; GNU C++ ver=
sion 7.4.0; Boost_106501; UHD_3.15.0.0-7-g8d228dbe<br>[INFO] [MPMD] Initial=
izing 1 device(s) in parallel with args: mgmt_addr=3D192.168.20.2,type=3Dn3=
xx,product=3Dn310,serial=3D319821D,claimed=3DFalse,addr=3D192.168.20.2<br>[=
INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D192.1=
68.20.2,time_source=3Dinternal,product=3Dn310,clock_source=3Dinternal&#39;.=
<br>[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000=
004)<br>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000=
011312)<br>[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100=
000011312)<br>[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC000=
0000000000)<br>[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC00=
00000000000)<br>[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0=
000000000002)<br>[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C=
0000000000002)<br>[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF=
1F0000000000000)<br>[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0=
xF1F0000000000000)<br>[INFO] [0/FIFO_2] Initializing block control (NOC ID:=
 0xF1F0000000000000)<br>[INFO] [0/FIFO_3] Initializing block control (NOC I=
D: 0xF1F0000000000000)<br>Using radio 0, channel 0<br>Using=C2=A0<span>repl=
ay</span>=C2=A0block 0, channel 2<br>Setting TX Freq: 2450.000000 MHz...<br=
>Actual TX Freq: 2450.000000 MHz...<br><br>Setting TX Rate: 125.000000 Msps=
...<br>Actual TX Rate: 125.000000 Msps...<br><br>Connecting 0/Replay_0 =3D=
=3D&gt; 0/Radio_0<br><span style=3D"background-color:rgb(255,255,0)">Error:=
 LookupError: KeyError: [0/Radio_0] sr_write(): No such port: 2</span></fon=
t></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Fri, May 1, 2020 at 1:19 PM Wade Fife &lt;<a href=3D"mailto:wade=
.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
>See my responses below.<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, May 1, 2020 at 11:08 AM Rob Kossler &=
lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr">Thanks Wade,<div>A few follow=C2=A0up questions:</div><div><ul=
><li>Regarding play_halt(), it sounds like this should never used if you ar=
e planning to start playout again (and the replay output feeds the DUC inpu=
t).=C2=A0 Is this correct?=C2=A0 Or perhaps there is some way to clear the =
DUC?</li></ul></div></div></blockquote><div>My recommendation would be to n=
ot call play_halt() if you are planning on restarting. It will take a littl=
e longer to stop because it has to wait to complete the current memory read=
 and generate the final packet with EOB. I&#39;d have to look into clearing=
 the DUC, but I think the right thing to do is to let the replay block stop=
 normally. =C2=A0 <br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div><ul><li>In the meantime, what is the correct way o=
f using the block in my situation where the replay is connected to the DUC =
and I want to repeatedly start/stop streaming?=C2=A0 Should I just remove t=
he play_halt() call from the example and just wait for the buffer to flush =
following the stop streaming command?</li></ul></div></div></blockquote><di=
v></div><div>Yes, I would just remove the play_halt(). <br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><ul><li>Have =
you seen my other issue regarding use of the Replay Block on the N310 such =
that you can&#39;t connect the 4 Replay block ports to the 4 DUC ports to p=
roduce 4 Tx outputs using 3.15?=C2=A0 There is a graph connection / propaga=
tion issue that does not like Replay port 2 (3rd=C2=A0 port) connected to D=
UC_1 port 0.</li></ul></div></div></blockquote><div>I&#39;m not aware of an=
y issues with respect to multiple ports. Can you provide more details on th=
e issue you&#39;re seeing?<br></div><div> <br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><div><div>Rob</div></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri=
, May 1, 2020 at 11:37 AM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.c=
om" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Rob,</div=
><div><br></div><div>I wanted to give you a quick update. I was able to rep=
roduce the issue you found. There were two problems.</div><div><br></div><d=
iv>First, the example you shared calls play_halt() for the replay block eac=
h time replay is stopped. This basically stops it as soon as possible, even=
 if that means it can&#39;t send a final packet with EOB. The DUC needs the=
 EOB to start/stop cleanly or else the timestamps the DUC generates aren&#3=
9;t correct when the next set of data comes through.</div><div><br></div><d=
iv>The second problem I found is part of some known issues that are already=
 fixed in UHD 4.0. I&#39;m going to add these fixes to 3.15 since I know th=
ere was a lot of interest in the Replay block in 3.15. So once these fixes =
appear, you should be able to remove the call the play_halt() and the examp=
le will work as expected.<br></div><div><br></div><div>Thanks,</div><div><b=
r></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Thu, Apr 23, 2020 at 9:34 PM Rob Kossler &lt;=
<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><b=
r></div><div><div dir=3D"auto">Great. I forgot to mention that I was using =
an n310.=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Apr 23, 2020 at 10:18 PM Wade Fife &lt;<a href=3D"m=
ailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div>Hi Rob,</div><div><br></div><div>Thanks for the example! I&#39;d=
 take a look to see if I can reproduce the issue and figure out what&#39;s =
going on. I&#39;ve been working recently on the Replay block, so I&#39;m ve=
ry interested to understand what&#39;s going on.<br></div><div><br></div><d=
iv>Thanks,</div><div><br></div><div>Wade<br></div></div><br><div class=3D"g=
mail_quote"></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Thu, Apr 23, 2020 at 1:36 PM Rob Kossler via USRP-users &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br></div></div><div class=3D"gmail_quote"><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"></blockquote></div><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi,<br><div>I am having an issue with UHD 3.15.LTS using the repla=
y block.=C2=A0 When I play out my previously stored samples the first time,=
 everything works fine.=C2=A0 But after stopping the first time, if I try t=
o start playing out again, I get a whole bunch of &#39;Lates&#39; and no RF=
 output.</div><div><br></div><div>In order to duplicate the problem with an=
 Ettus example, I modified &#39;replay_samples_from_file&#39; to add a loop=
 and command prompt so that the user could hit &lt;enter&gt; to start playi=
ng out while still using &lt;ctrl-c&gt; to stop.=C2=A0 Unfortunately for me=
, this worked fine and did not show the problem.</div><div><br></div><div>N=
ext, I further modified=C2=A0the example to place a DUC block in between th=
e Replay block and the Radio.=C2=A0 Now it duplicates the issue perfectly (=
modified example attached).</div><div><br></div><div>So, perhaps I need to =
clear the DUC in some way when stopping the streaming??=C2=A0 But if so, I&=
#39;m not really sure how to do so.</div><div><br></div><div>Thanks.</div><=
div>Rob</div></div></blockquote></div><div class=3D"gmail_quote"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">
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

--00000000000067b9d805a49a4375--


--===============8272996143121328702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8272996143121328702==--

