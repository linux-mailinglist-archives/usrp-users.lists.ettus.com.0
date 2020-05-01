Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 180BB1C1BAC
	for <lists+usrp-users@lfdr.de>; Fri,  1 May 2020 19:29:05 +0200 (CEST)
Received: from [::1] (port=56894 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jUZTD-0003lt-Hi; Fri, 01 May 2020 13:29:03 -0400
Received: from mail-oi1-f177.google.com ([209.85.167.177]:39633)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jUZT9-0003fB-79
 for usrp-users@lists.ettus.com; Fri, 01 May 2020 13:28:59 -0400
Received: by mail-oi1-f177.google.com with SMTP id m10so358211oie.6
 for <usrp-users@lists.ettus.com>; Fri, 01 May 2020 10:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Bagf2Y1mt+oMJ++T87w/fTD4XHqs9OAtr7JlAPi9jZ8=;
 b=Q4eTlaz+lN3eKbB1nBNyAKT4iUuo5uIn+HfrX19kKZEIPsCLC/KGebQhloSeqpx7Dy
 KF/9xkZ03EIk/VjWR0xEuIIUV2BRrLs33lHGSD8d3YljpvKn4SmswS+IPcdJPX+wwMVW
 9Ep0F6kJj6IcVhndwqUylhDBb3ckUtg2THR7qFjrrddVtn6LdCezcNnezxnE3ps2ktJh
 168MWlxbKupZzjRZLjYmOjfV/W3ANpxZItRrPvekmboIrXocZgvEyEXJ2oncYjk0iBfw
 tb/zgfok0Okt4OHOZCSdzpQyQ+IEk9FsdG5GO5fqjAZJkeIE2A/3ZTHDNYqp12FqsBkl
 YEVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Bagf2Y1mt+oMJ++T87w/fTD4XHqs9OAtr7JlAPi9jZ8=;
 b=gZSfQa7qXINKW1Qgcp7fNOL9R3bl36ddkT4/m/17gcboRxnEt9L3+rfqJwKzwuBYgm
 3XKqfgTUhknKAh4FLRUbhV6zOOGExsEQV+qp/K3IY2vD+ljyMhoLPQsGtaGW+v+5uNrC
 VNdFa5sapdB1XstqFtl8srick+aABD5mihyzLXy0lCLIWkd7viVgJLxkmnueUfCFU94L
 Cavks4XersM8cHO1DWi3wh/TmQbNnVrSB+7YZS3RMq2nlDIaSJlii5QENAhzEoRVnIno
 kaWTziJy3h/Vfc9JfPuNUKZWkmsCpyrAR9phkInYH3ik6FKx9WBu4jA1KQNp7lp7SOsI
 duAg==
X-Gm-Message-State: AGi0PuZzi/Q3QT9zbncV2OIbxJS2pThG2XtjuB7KQJNeglLjQNhT+Y/j
 Hcan2PDB5H89UbxJRGewREduHOfb9sOp7g6mM5/ZSsynEIcqMw==
X-Google-Smtp-Source: APiQypJ/7t9AmKATZz/54Ea2PZPgzQsFMs8WzvJ5BCqIg/3W2qIg2rGknxaT462enrpKBzopCG07ebdpR1cdPhlqANY=
X-Received: by 2002:aca:4386:: with SMTP id q128mr490790oia.150.1588354098201; 
 Fri, 01 May 2020 10:28:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTRkiAjJ4H7ehSMHfjsO3NDLpghzjJpnZMZw6-MTVYp8hw@mail.gmail.com>
 <CAFche=gmhz5khOrpufGLN2hW1+SvhW3KA7nfR0mna570BOZs3Q@mail.gmail.com>
 <CAB__hTQkmbb9CR4RCQ4Mhq_YP-VRFP9Tubd3EWJuQkXxN7Er3Q@mail.gmail.com>
 <CAFche=iUdUmipErA3UWyTO3Da990uSiCKcRVrc3r2sNACrOpow@mail.gmail.com>
 <CAB__hTThtrgSDNDdufEEUbeKkxWijHXaiNLDJC=y2QBx1pwBWw@mail.gmail.com>
 <CAFche=g75+rjH1=XSoLQKceVFxuz+VevJWyBEw36P_4dQ+Xgug@mail.gmail.com>
In-Reply-To: <CAFche=g75+rjH1=XSoLQKceVFxuz+VevJWyBEw36P_4dQ+Xgug@mail.gmail.com>
Date: Fri, 1 May 2020 13:28:07 -0400
Message-ID: <CAB__hTQThzg4J7yFqbsONsBSaeuQsV9nSmWFf6W-DGUsncAMjA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============1965915246316042558=="
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

--===============1965915246316042558==
Content-Type: multipart/alternative; boundary="000000000000cd5e9805a49981b9"

--000000000000cd5e9805a49981b9
Content-Type: text/plain; charset="UTF-8"

Hi Wade,
The issue can be demonstrated using the stock "replay_samples_from_file"
program (N310 UHD3.15).  Run with "trace" logging if you want even more
detail.  So, it's not really an issue related to multiple ports.  It's an
issue of connecting Replay port 2 (or likely port 3 as well) to an
arbitrary downstream port.
Rob

******* Here is the command that fails

$ replay_samples_from_file --file
Documents/waveforms/mtone_100_0p8_0_le.bin --replay_chan 2 --freq 2450e6
--rate 125e6
Creating the USRP device with: . . .

[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
UHD_3.15.0.0-7-g8d228dbe
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.20.2,type=n3xx,product=n310,serial=319821D,claimed=False,addr=192.168.20.2
[INFO] [MPM.PeriphManager] init() called with device args
`mgmt_addr=192.168.20.2,time_source=internal,product=n310,clock_source=internal'.
[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)
[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)
Using radio 0, channel 0
Using replay block 0, channel 2
Setting TX Freq: 2450.000000 MHz...
Actual TX Freq: 2450.000000 MHz...

Setting TX Rate: 125.000000 Msps...
Actual TX Rate: 125.000000 Msps...

Connecting 0/Replay_0 ==> 0/Radio_0
Error: LookupError: KeyError: [0/Radio_0] sr_write(): No such port: 2

On Fri, May 1, 2020 at 1:19 PM Wade Fife <wade.fife@ettus.com> wrote:

> See my responses below.
>
> On Fri, May 1, 2020 at 11:08 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Thanks Wade,
>> A few follow up questions:
>>
>>    - Regarding play_halt(), it sounds like this should never used if you
>>    are planning to start playout again (and the replay output feeds the DUC
>>    input).  Is this correct?  Or perhaps there is some way to clear the DUC?
>>
>> My recommendation would be to not call play_halt() if you are planning on
> restarting. It will take a little longer to stop because it has to wait to
> complete the current memory read and generate the final packet with EOB.
> I'd have to look into clearing the DUC, but I think the right thing to do
> is to let the replay block stop normally.
>
>>
>>    - In the meantime, what is the correct way of using the block in my
>>    situation where the replay is connected to the DUC and I want to repeatedly
>>    start/stop streaming?  Should I just remove the play_halt() call from the
>>    example and just wait for the buffer to flush following the stop streaming
>>    command?
>>
>> Yes, I would just remove the play_halt().
>
>>
>>    - Have you seen my other issue regarding use of the Replay Block on
>>    the N310 such that you can't connect the 4 Replay block ports to the 4 DUC
>>    ports to produce 4 Tx outputs using 3.15?  There is a graph connection /
>>    propagation issue that does not like Replay port 2 (3rd  port) connected to
>>    DUC_1 port 0.
>>
>> I'm not aware of any issues with respect to multiple ports. Can you
> provide more details on the issue you're seeing?
>
> Rob
>>
>> On Fri, May 1, 2020 at 11:37 AM Wade Fife <wade.fife@ettus.com> wrote:
>>
>>> Hi Rob,
>>>
>>> I wanted to give you a quick update. I was able to reproduce the issue
>>> you found. There were two problems.
>>>
>>> First, the example you shared calls play_halt() for the replay block
>>> each time replay is stopped. This basically stops it as soon as possible,
>>> even if that means it can't send a final packet with EOB. The DUC needs the
>>> EOB to start/stop cleanly or else the timestamps the DUC generates aren't
>>> correct when the next set of data comes through.
>>>
>>> The second problem I found is part of some known issues that are already
>>> fixed in UHD 4.0. I'm going to add these fixes to 3.15 since I know there
>>> was a lot of interest in the Replay block in 3.15. So once these fixes
>>> appear, you should be able to remove the call the play_halt() and the
>>> example will work as expected.
>>>
>>> Thanks,
>>>
>>> Wade
>>>
>>> On Thu, Apr 23, 2020 at 9:34 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>>
>>>> Great. I forgot to mention that I was using an n310.
>>>>
>>>> On Thu, Apr 23, 2020 at 10:18 PM Wade Fife <wade.fife@ettus.com> wrote:
>>>>
>>>>> Hi Rob,
>>>>>
>>>>> Thanks for the example! I'd take a look to see if I can reproduce the
>>>>> issue and figure out what's going on. I've been working recently on the
>>>>> Replay block, so I'm very interested to understand what's going on.
>>>>>
>>>>> Thanks,
>>>>>
>>>>> Wade
>>>>>
>>>>> On Thu, Apr 23, 2020 at 1:36 PM Rob Kossler via USRP-users <
>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>
>>>>>> Hi,
>>>>>> I am having an issue with UHD 3.15.LTS using the replay block.  When
>>>>>> I play out my previously stored samples the first time, everything works
>>>>>> fine.  But after stopping the first time, if I try to start playing out
>>>>>> again, I get a whole bunch of 'Lates' and no RF output.
>>>>>>
>>>>>> In order to duplicate the problem with an Ettus example, I modified
>>>>>> 'replay_samples_from_file' to add a loop and command prompt so that the
>>>>>> user could hit <enter> to start playing out while still using <ctrl-c> to
>>>>>> stop.  Unfortunately for me, this worked fine and did not show the problem.
>>>>>>
>>>>>> Next, I further modified the example to place a DUC block in between
>>>>>> the Replay block and the Radio.  Now it duplicates the issue perfectly
>>>>>> (modified example attached).
>>>>>>
>>>>>> So, perhaps I need to clear the DUC in some way when stopping the
>>>>>> streaming??  But if so, I'm not really sure how to do so.
>>>>>>
>>>>>> Thanks.
>>>>>> Rob
>>>>>>
>>>>> _______________________________________________
>>>>>> USRP-users mailing list
>>>>>> USRP-users@lists.ettus.com
>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>
>>>>>

--000000000000cd5e9805a49981b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><font face=3D"monospace">Hi Wade,</font></div><d=
iv><font face=3D"monospace">The issue can be demonstrated=C2=A0using the st=
ock &quot;replay_samples_from_file&quot; program (N310 UHD3.15).=C2=A0 Run =
with &quot;trace&quot; logging if you want even more detail.=C2=A0 So, it&#=
39;s not really an issue related to multiple ports.=C2=A0 It&#39;s an issue=
 of connecting Replay port 2 (or likely port 3 as well) to an arbitrary dow=
nstream port.=C2=A0</font></div><div><font face=3D"monospace">Rob</font></d=
iv><div><font face=3D"monospace"><br></font></div><div><font face=3D"monosp=
ace"><span style=3D"background-color:rgb(255,255,0)">******* Here is the co=
mmand that fails</span></font></div><div><font face=3D"monospace"><span sty=
le=3D"background-color:rgb(255,255,0)"><br></span></font></div><div></div><=
/div><div>$ replay_samples_from_file --file Documents/waveforms/mtone_100_0=
p8_0_le.bin --replay_chan 2 --freq 2450e6 --rate 125e6<br>Creating the USRP=
 device with: . . .<br><br><font face=3D"monospace">[INFO] [UHD] linux; GNU=
 C++ version 7.4.0; Boost_106501; UHD_3.15.0.0-7-g8d228dbe<br>[INFO] [MPMD]=
 Initializing 1 device(s) in parallel with args: mgmt_addr=3D192.168.20.2,t=
ype=3Dn3xx,product=3Dn310,serial=3D319821D,claimed=3DFalse,addr=3D192.168.2=
0.2<br>[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=
=3D192.168.20.2,time_source=3Dinternal,product=3Dn310,clock_source=3Dintern=
al&#39;.<br>[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A=
00000000004)<br>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12=
AD100000011312)<br>[INFO] [0/Radio_1] Initializing block control (NOC ID: 0=
x12AD100000011312)<br>[INFO] [0/DDC_0] Initializing block control (NOC ID: =
0xDDC0000000000000)<br>[INFO] [0/DDC_1] Initializing block control (NOC ID:=
 0xDDC0000000000000)<br>[INFO] [0/DUC_0] Initializing block control (NOC ID=
: 0xD0C0000000000002)<br>[INFO] [0/DUC_1] Initializing block control (NOC I=
D: 0xD0C0000000000002)<br>[INFO] [0/FIFO_0] Initializing block control (NOC=
 ID: 0xF1F0000000000000)<br>[INFO] [0/FIFO_1] Initializing block control (N=
OC ID: 0xF1F0000000000000)<br>[INFO] [0/FIFO_2] Initializing block control =
(NOC ID: 0xF1F0000000000000)<br>[INFO] [0/FIFO_3] Initializing block contro=
l (NOC ID: 0xF1F0000000000000)<br>Using radio 0, channel 0<br>Using=C2=A0<s=
pan class=3D"gmail-il">replay</span>=C2=A0block 0, channel 2<br>Setting TX =
Freq: 2450.000000 MHz...<br>Actual TX Freq: 2450.000000 MHz...<br><br>Setti=
ng TX Rate: 125.000000 Msps...<br>Actual TX Rate: 125.000000 Msps...<br><br=
>Connecting 0/Replay_0 =3D=3D&gt; 0/Radio_0<br><span style=3D"background-co=
lor:rgb(255,255,0)">Error: LookupError: KeyError: [0/Radio_0] sr_write(): N=
o such port: 2</span></font></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Fri, May 1, 2020 at 1:19 PM Wade Fife =
&lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div>See my responses below.<br></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Fri, May 1, 2020 at 11:08 AM Rob Kos=
sler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.e=
du</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr">Thanks Wade,<div>A few follow=C2=A0up questions:</div><d=
iv><ul><li>Regarding play_halt(), it sounds like this should never used if =
you are planning to start playout again (and the replay output feeds the DU=
C input).=C2=A0 Is this correct?=C2=A0 Or perhaps there is some way to clea=
r the DUC?</li></ul></div></div></blockquote><div>My recommendation would b=
e to not call play_halt() if you are planning on restarting. It will take a=
 little longer to stop because it has to wait to complete the current memor=
y read and generate the final packet with EOB. I&#39;d have to look into cl=
earing the DUC, but I think the right thing to do is to let the replay bloc=
k stop normally. =C2=A0 <br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div><ul><li>In the meantime, what is the corre=
ct way of using the block in my situation where the replay is connected to =
the DUC and I want to repeatedly start/stop streaming?=C2=A0 Should I just =
remove the play_halt() call from the example and just wait for the buffer t=
o flush following the stop streaming command?</li></ul></div></div></blockq=
uote><div></div><div>Yes, I would just remove the play_halt(). <br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><ul><=
li>Have you seen my other issue regarding use of the Replay Block on the N3=
10 such that you can&#39;t connect the 4 Replay block ports to the 4 DUC po=
rts to produce 4 Tx outputs using 3.15?=C2=A0 There is a graph connection /=
 propagation issue that does not like Replay port 2 (3rd=C2=A0 port) connec=
ted to DUC_1 port 0.</li></ul></div></div></blockquote><div>I&#39;m not awa=
re of any issues with respect to multiple ports. Can you provide more detai=
ls on the issue you&#39;re seeing?<br></div><div> <br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><div>Rob</div></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Fri, May 1, 2020 at 11:37 AM Wade Fife &lt;<a href=3D"mailto:wade.fife=
@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi R=
ob,</div><div><br></div><div>I wanted to give you a quick update. I was abl=
e to reproduce the issue you found. There were two problems.</div><div><br>=
</div><div>First, the example you shared calls play_halt() for the replay b=
lock each time replay is stopped. This basically stops it as soon as possib=
le, even if that means it can&#39;t send a final packet with EOB. The DUC n=
eeds the EOB to start/stop cleanly or else the timestamps the DUC generates=
 aren&#39;t correct when the next set of data comes through.</div><div><br>=
</div><div>The second problem I found is part of some known issues that are=
 already fixed in UHD 4.0. I&#39;m going to add these fixes to 3.15 since I=
 know there was a lot of interest in the Replay block in 3.15. So once thes=
e fixes appear, you should be able to remove the call the play_halt() and t=
he example will work as expected.<br></div><div><br></div><div>Thanks,</div=
><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 23, 2020 at 9:34 PM Rob Koss=
ler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.ed=
u</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div><br></div><div><div dir=3D"auto">Great. I forgot to mention that I wa=
s using an n310.=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Thu, Apr 23, 2020 at 10:18 PM Wade Fife &lt;<a hre=
f=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>Thanks for the example! I=
&#39;d take a look to see if I can reproduce the issue and figure out what&=
#39;s going on. I&#39;ve been working recently on the Replay block, so I&#3=
9;m very interested to understand what&#39;s going on.<br></div><div><br></=
div><div>Thanks,</div><div><br></div><div>Wade<br></div></div><br><div clas=
s=3D"gmail_quote"></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Apr 23, 2020 at 1:36 PM Rob Kossler via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br></div></div><div class=3D"gmail_quote=
"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"></blockquote></div><div=
 class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr">Hi,<br><div>I am having an issue with UHD 3.15.LTS using the=
 replay block.=C2=A0 When I play out my previously stored samples the first=
 time, everything works fine.=C2=A0 But after stopping the first time, if I=
 try to start playing out again, I get a whole bunch of &#39;Lates&#39; and=
 no RF output.</div><div><br></div><div>In order to duplicate the problem w=
ith an Ettus example, I modified &#39;replay_samples_from_file&#39; to add =
a loop and command prompt so that the user could hit &lt;enter&gt; to start=
 playing out while still using &lt;ctrl-c&gt; to stop.=C2=A0 Unfortunately =
for me, this worked fine and did not show the problem.</div><div><br></div>=
<div>Next, I further modified=C2=A0the example to place a DUC block in betw=
een the Replay block and the Radio.=C2=A0 Now it duplicates the issue perfe=
ctly (modified example attached).</div><div><br></div><div>So, perhaps I ne=
ed to clear the DUC in some way when stopping the streaming??=C2=A0 But if =
so, I&#39;m not really sure how to do so.</div><div><br></div><div>Thanks.<=
/div><div>Rob</div></div></blockquote></div><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">
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

--000000000000cd5e9805a49981b9--


--===============1965915246316042558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1965915246316042558==--

