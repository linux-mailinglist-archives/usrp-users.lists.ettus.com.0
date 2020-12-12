Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF652D8725
	for <lists+usrp-users@lfdr.de>; Sat, 12 Dec 2020 15:48:24 +0100 (CET)
Received: from [::1] (port=35174 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ko6C4-0002Gg-Tz; Sat, 12 Dec 2020 09:48:20 -0500
Received: from mail-oi1-f179.google.com ([209.85.167.179]:35467)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1ko6C1-0002BS-Fg
 for usrp-users@lists.ettus.com; Sat, 12 Dec 2020 09:48:17 -0500
Received: by mail-oi1-f179.google.com with SMTP id s2so13588907oij.2
 for <usrp-users@lists.ettus.com>; Sat, 12 Dec 2020 06:47:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YvFpqL5QudYJeROLVsUwJGrVRT32NvVsfkH0N4Ak5WU=;
 b=LyYLMVkC3j6mO5EzC16R2O+rAfvsey97pFRJjHm/y675lWevx+fBSpM7jMp3tJNt6L
 Lg9JULYa35NFkvgW9Mzj6/tJgeCxNUFDbkNllISlJIAKKOD/QVm4/9o+ltSn7Fk432kA
 kdajIx2T18LxWOQAD1IYuxO2kFmmHO02sZ2q3Q5nbhtc/PB3t93iz1P7M6LGcNRFK/Id
 zm2FbMkZOL9Bu6ewUNx0iBbT09Mhs3Q+EO202HS2infhLgSlRHXPzDNMogQVr6Tamq6e
 bOlNswebGqiMFfcWsQAoZjGe6LSstc+qyIw6v/YwXAABUqf1fMjqGCH3dvWpxHCyWZLu
 jNCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YvFpqL5QudYJeROLVsUwJGrVRT32NvVsfkH0N4Ak5WU=;
 b=PF4Megswt4wyXwc6EQ3QJVYvkmsVH2DFZWN7xT9mEU2+Zmq/dxsqKb8kjBk/I8hUtP
 4aewsFrrGMYiL5TBs3cfVRHzjTxCd33pvCcdcuVKTLPEXgNK0I18VppU62NLWFi1B+aw
 UlZ3JiSw8LicRs8XMJKkpwkuUUhq8D+9m/YWWrP7r5vnWCvO0tDGBtjYGYIRm6L5MxMw
 fcqk5SJYBtxf0Lij8jvciCTOXkHGbbGbUc16Q9wPgwaOLgrYKvK2aPbgj50hs5CXm+G8
 QjtVpkuBM2es4B9JZBH+yVkk3xF6uyznfsvnhoY/sFq4GIYWPzi2UCadbSt3T/AAoBh6
 IPPg==
X-Gm-Message-State: AOAM533hlK6E8O6pNBBv4anU86mwBEk2rgWenSaGjPq9yM5H5AtN9GFA
 nj4W2r1IGFVdUQRwNXhK4MgGqitXXDJ8ZHKChZYfhh46
X-Google-Smtp-Source: ABdhPJxhiHpAXUhuSX42NiK18Eu4IKk2CQiYtsHfyBCBC7+VkB8SPg+mIttXfKaOVxdPAdOkMcCOdZWu6Fb/AauNBDM=
X-Received: by 2002:aca:2418:: with SMTP id n24mr12377830oic.62.1607784456686; 
 Sat, 12 Dec 2020 06:47:36 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTQa8v40-nQGCQMcK36317oWxue448NrMoMYvbf3oacmug@mail.gmail.com>
 <CAFche=htoRKHMituvggWa15UwoiVkdR6n=3EXYK6d5TR696SiQ@mail.gmail.com>
 <CAB__hTTd6++q8K6xOtHhpJv905CW1wp4E5YpUR0mM5yULUf44Q@mail.gmail.com>
 <CAB__hTRBNRoGu+yYjGMawb1ongZ5u0G4HyafJUOuCA5637ysgA@mail.gmail.com>
 <CAB__hTQX+URNC-_qno0jStxo0qm8YtUWas0MffMebtd6TzfTNQ@mail.gmail.com>
 <CAB__hTSpKwx7JSoWCExtqThW+qGSi919KTTm1TNWN6KU4HkQig@mail.gmail.com>
In-Reply-To: <CAB__hTSpKwx7JSoWCExtqThW+qGSi919KTTm1TNWN6KU4HkQig@mail.gmail.com>
Date: Sat, 12 Dec 2020 08:47:27 -0600
Message-ID: <CAFche=iE+RoE6Wi7vWHB73z48HF36SBeK0mqQQDeC=ujhX4d=w@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC 4.0 data swapping?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
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
Content-Type: multipart/mixed; boundary="===============5909247277183809480=="
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

--===============5909247277183809480==
Content-Type: multipart/alternative; boundary="0000000000006aa04e05b6457d25"

--0000000000006aa04e05b6457d25
Content-Type: text/plain; charset="UTF-8"

Thanks for the updates. If you just want to reload the FPGA, try running
"overlay rm n310 && overlay add n310" on the N310. This should simply
reload the FPGA using the bistream already in the flash.

Wade

On Fri, Dec 11, 2020 at 6:45 PM Rob Kossler <rkossler@nd.edu> wrote:

> Wade,
> The following also fails using just 2 blocks and 2 attempts:
>   host_tx => Switchboard#0 => Switchboard#1 => host_rx  // SUCCESS
>   host_tx => Switchboard#1 => Switchboard#0 => host_rx  // FAILURE (RX
> samples equal swapped I/Q of TX samples)
>
> In addition to wanting to get this issue fixed, I also have a question
> about the best way to "reboot" the N310 which is what I need to do to fix
> the issue after it occurs.  One way is to give the "reboot now" linux
> command.  But, this takes a long time.  Another way is to reprogram the
> FPGA image via uhd_image_loader. This is appreciably faster, but I'm
> thinking that this is not a great idea if the flash memory has a limited
> number of write cycles before failure.  Is there another way to achieve a
> reboot other than these two?
> Rob
>
> On Fri, Dec 11, 2020 at 7:34 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> AHA!  I duplicated the issue with the Switchboard image.  The way to
>> duplicate the issue is the run the following series of graphs:
>>   host_tx => Switchboard#0 => Switchboard#1 => host_rx  // SUCCESS
>>   host_tx => Switchboard#2 => Switchboard#3 => host_rx  // SUCCESS
>>   host_tx => Switchboard#0 => Switchboard#2 => host_rx  // FAILURE (RX
>> samples equal swapped I/Q of TX samples)
>> Each of these 3 runs consists of running my application (similar to one
>> of the examples such as rfnoc_rx_to_file) such that the UHD object is
>> re-created each time.  My guess is that you could use gnuradio to do it
>> instead.
>>
>> My working theory is that the problem is caused by the fact that the
>> Switchboard#2 input port was changed from being connected to the host in
>> test case 2 to then be connected to another RFNoC block in test case 3.
>> Or, I suppose it could be the output port on this block (same logic).
>>
>> If you want me to send you my FPGA image with the 4 Switchboard blocks,
>> let me know.
>> Rob
>>
>>
>>
>> On Fri, Dec 11, 2020 at 7:09 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Hi Wade,
>>> After thinking about it a bit, I would ignore the "negation" issue for
>>> now. This may be a byproduct of I/Q swapping related to my custom block.
>>> Rob
>>>
>>> On Fri, Dec 11, 2020 at 6:34 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>> Hi Wade,
>>>> Thanks for the info.  I still do not know what's going on, but here are
>>>> a few updates:
>>>>
>>>>    - I built a new N310 image with 4 switchboards (1x1) and 1
>>>>    splitstream (1x2) blocks in addition to the default blocks.  All of the
>>>>    additional blocks are connected to SEPs for dynamic linking.  I tried my
>>>>    best to get bad behavior using a chain of 1 to 4 switchboards, but I could
>>>>    not duplicate any I/Q swapping or negation issues.
>>>>    - I went back to my custom image (that I described below) and found
>>>>    different behavior today (sometimes things worked OK).  So, this got me to
>>>>    thinking that I am somehow getting the FPGA in a bad state such that a
>>>>    reboot (or FPGA re-flashing) fixes things.  I have had some success with
>>>>    re-booting and things working properly.  But, I still do not have a true
>>>>    handle on things and cannot adequately predict when things are going to
>>>>    succeed or fail.
>>>>    - One thing that has been constant is that I have never seen bad
>>>>    behavior when I only have 1 block in my graph (no matter which block I
>>>>    choose).  Note that for all of my tests, the graph looks like this: host_tx
>>>>    => block_chain => host_rx, where block_chain is a sequential chain of 1 or
>>>>    more rfnoc blocks.
>>>>
>>>> I will send a follow up once I figure things out.
>>>> Rob
>>>>
>>>>
>>>> On Fri, Dec 11, 2020 at 6:22 PM Wade Fife <wade.fife@ettus.com> wrote:
>>>>
>>>>> Hi Rob,
>>>>>
>>>>> The SEPs do have the ability to swap I and Q. This is because on the
>>>>> host computer, I is usually in the lower bits and Q is in the upper bits of
>>>>> each 32-bit word, but in RFNoC, for historical reasons, I goes in the upper
>>>>> bits and Q in the lower bits. The software programs the IQ swapping when it
>>>>> sets up the graph.
>>>>>
>>>>> I assume you're using dynamic connections (through the crossbar) to
>>>>> control the number of FFTs the data is passed through, and not static
>>>>> connections? If that's the case then I wonder if software configures IQ
>>>>> swapping incorrectly in some configurations. I'll see if I can do some
>>>>> testing next week to confirm if it's working correctly.
>>>>>
>>>>> As for negation, I'm not aware of anywhere we do that off the top of
>>>>> my head. Is that behavior block dependent? I'll see if I can find anywhere
>>>>> this happens.
>>>>>
>>>>> Thanks,
>>>>>
>>>>> Wade
>>>>>
>>>>> On Thu, Dec 10, 2020 at 3:54 PM Rob Kossler via USRP-users <
>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>
>>>>>> Hi,
>>>>>> I am encountering very strange behavior with a custom FPGA image
>>>>>> (N310). It appears that data streaming through SEPs can get swapped (I/Q)
>>>>>> and/or negated.  Is anyone at Ettus aware of anything that could cause
>>>>>> this?  Of course, the issue might be on my end, but I can't think of what
>>>>>> it might be given that all of my custom blocks work as expected in
>>>>>> isolation (if the block is the only block in graph).
>>>>>>
>>>>>> My custom image is the following:
>>>>>>
>>>>>>    - default blocks of Radios, DDCs, DUCs (each 2x2 and statically
>>>>>>    connected as in default image)
>>>>>>    - custom blocks of two 1x1 windowed-fft blocks, two 1x1
>>>>>>    vector-avg blocks, and one 2x2 custom block. Note: each of these blocks is
>>>>>>    connected to its own SEP, so I can connect dynamically in any fashion.
>>>>>>
>>>>>> My test case is transmitting 8192 random samples from host to FFT
>>>>>> block and then optionally through a 2nd FFT block before back to host.  In
>>>>>> the test case, the radios/DDCs/DUCs are not used.
>>>>>>
>>>>>> Here is what I observed:
>>>>>>
>>>>>>    - If I only include 1 FFT block in my RFNoC graph, I get the
>>>>>>    expected results (the output from the FPGA matches what I calculate in
>>>>>>    Matlab for the FFT).  This is true for either of the two FFT blocks.
>>>>>>    - If I include both FFT blocks in series, I can only match the
>>>>>>    FPGA output if I swap the I/Q values in between my Matlab FFTs.
>>>>>>    - Note: that this issue is not FFT-related as I can also
>>>>>>    duplicate this issue with the other blocks.
>>>>>>    - If I use 3 blocks in series (each through SEP), I need to
>>>>>>    negate certain data in order to get it to match the FPGA output
>>>>>>
>>>>>> My next step is likely to build a new image with Ettus-developed
>>>>>> FIFOs to prove that the data is getting swapped/negated when 2 or more are
>>>>>> used in series through SEPs.
>>>>>>
>>>>>> Let me know if you have any suggestions for other things to try.
>>>>>>
>>>>>> Rob
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list
>>>>>> USRP-users@lists.ettus.com
>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>
>>>>>

--0000000000006aa04e05b6457d25
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for the updates. If you just want to reload th=
e FPGA, try running &quot;overlay rm n310 &amp;&amp; overlay add n310&quot;=
 on the N310. This should simply reload the FPGA using the bistream already=
 in the flash. <br></div><div><br></div><div>Wade<br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 11, =
2020 at 6:45 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler=
@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>Wade,</div><div>The following also fails using=
 just 2 blocks and 2 attempts:</div><div><div>=C2=A0 host_tx =3D&gt; Switch=
board#0 =3D&gt; Switchboard#1 =3D&gt; host_rx=C2=A0 // SUCCESS</div><div></=
div></div><div><div>=C2=A0 host_tx =3D&gt; Switchboard#1 =3D&gt; Switchboar=
d#0 =3D&gt; host_rx=C2=A0 // FAILURE (RX samples equal swapped I/Q of TX sa=
mples)</div><div><br></div><div>In addition to wanting to get this issue fi=
xed, I also have a question about the best way to &quot;reboot&quot; the N3=
10 which is what I need to do to fix the issue after it occurs.=C2=A0 One w=
ay is to give the &quot;reboot now&quot; linux command.=C2=A0 But, this tak=
es a long time.=C2=A0 Another way is to reprogram the FPGA image via uhd_im=
age_loader. This is appreciably faster, but I&#39;m thinking that this is n=
ot a great idea if the flash memory has a limited number of write cycles be=
fore failure.=C2=A0 Is there another way to achieve a reboot other than the=
se two?</div><div>Rob</div><div><br></div><div></div></div><div></div><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 11,=
 2020 at 7:34 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=
=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr">AHA!=C2=A0 I duplicated the iss=
ue with the Switchboard image.=C2=A0 The way to duplicate the issue is the =
run the following series of graphs:<div>=C2=A0 host_tx =3D&gt; Switchboard#=
0 =3D&gt; Switchboard#1 =3D&gt; host_rx=C2=A0 // SUCCESS</div><div>=C2=A0 h=
ost_tx =3D&gt; Switchboard#2 =3D&gt; Switchboard#3 =3D&gt; host_rx=C2=A0 //=
 SUCCESS</div><div></div><div>=C2=A0 host_tx =3D&gt; Switchboard#0 =3D&gt; =
Switchboard#2 =3D&gt; host_rx=C2=A0 // FAILURE (RX samples equal swapped I/=
Q of TX samples)</div><div>Each of these 3 runs consists of running my appl=
ication (similar to one of the examples such as rfnoc_rx_to_file) such that=
 the UHD object is re-created each time.=C2=A0 My guess is that you could u=
se gnuradio to do it instead.</div><div><br></div><div>My working theory is=
 that the problem is caused by the fact that the Switchboard#2 input port w=
as changed from being connected to the host in test case 2 to then be conne=
cted to another RFNoC block in test case 3.=C2=A0 Or, I suppose it could be=
 the output port on this block (same logic).</div><div><br></div><div>If yo=
u want me to send you my FPGA image with the 4 Switchboard blocks, let me k=
now.</div><div>Rob</div><div><br></div><div></div><div>=C2=A0=C2=A0</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Fri, Dec 11, 2020 at 7:09 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd=
.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Wade,<div>After =
thinking about it a bit, I would ignore the &quot;negation&quot; issue for =
now. This may be a byproduct of I/Q swapping related to my custom block.</d=
iv><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Fri, Dec 11, 2020 at 6:34 PM Rob Kossler &lt;<a href=3D=
"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Hi Wade,<div>Thanks for the info.=C2=A0 I still do not know what&#39;s goin=
g on, but here are a few updates:</div><div><ul><li>I built a new N310 imag=
e with 4 switchboards (1x1) and 1 splitstream=C2=A0(1x2) blocks in addition=
 to the default blocks.=C2=A0 All of the additional blocks are connected to=
 SEPs for dynamic linking.=C2=A0 I tried my best to get bad behavior using =
a chain of 1 to 4 switchboards, but I could not duplicate any I/Q swapping =
or negation issues.=C2=A0</li><li>I went back to my custom image (that I de=
scribed below) and found different behavior today (sometimes things worked =
OK).=C2=A0 So, this got me to thinking that I am somehow getting the FPGA i=
n a bad state such that a reboot (or FPGA re-flashing) fixes things.=C2=A0 =
I have had some success with re-booting and things working properly.=C2=A0 =
But, I still do not have a true handle on things and cannot adequately pred=
ict when things are going to succeed or fail.</li><li>One thing that has be=
en constant is that I have never seen bad behavior when I only have 1 block=
 in my graph (no matter which block I choose).=C2=A0 Note that for all of m=
y tests, the graph looks like this: host_tx =3D&gt; block_chain =3D&gt; hos=
t_rx, where block_chain is a sequential chain of 1 or more rfnoc blocks.</l=
i></ul><div>I will send a follow up once I figure things out.</div><div>Rob=
</div></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Fri, Dec 11, 2020 at 6:22 PM Wade Fife &lt;<a=
 href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>The SEPs do have the =
ability to swap I and Q. This is because on the host computer, I is usually=
 in the lower bits and Q is in the upper bits of each 32-bit word, but in R=
FNoC, for historical reasons, I goes in the upper bits and Q in the lower b=
its. The software programs the IQ swapping when it sets up the graph. </div=
><div><br></div><div>I assume you&#39;re using dynamic connections (through=
 the crossbar) to control the number of FFTs the data is passed through, an=
d not static connections? If that&#39;s the case then=20
I wonder if software configures IQ swapping incorrectly in some configurati=
ons.

I&#39;ll see if I can do some testing next week to confirm if it&#39;s work=
ing correctly.</div><div><br></div><div>As for negation, I&#39;m not aware =
of anywhere we do that off the top of my head. Is that behavior block depen=
dent? I&#39;ll see if I can find anywhere this happens.</div><div><br></div=
><div>Thanks,</div><div><br></div><div>Wade=C2=A0 <br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 10,=
 2020 at 3:54 PM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr">Hi,<br><div>I am encountering very strange behavior with a custom FPGA=
 image (N310). It appears that data streaming through SEPs can get swapped =
(I/Q) and/or negated.=C2=A0=C2=A0Is anyone at Ettus aware of=C2=A0anything =
that could cause this?=C2=A0 Of course, the issue might be on my end, but I=
 can&#39;t think of what it might be given that all of my custom blocks wor=
k as expected in isolation (if the block is the only block in graph).</div>=
<div><br></div><div>My custom image is the following:</div><div><ul><li>def=
ault blocks of Radios, DDCs, DUCs (each 2x2 and statically connected as in =
default image)</li><li>custom blocks of=C2=A0two 1x1 windowed-fft blocks, t=
wo 1x1 vector-avg blocks, and one 2x2 custom block. Note: each of these blo=
cks is connected to its own SEP, so I can connect dynamically in any fashio=
n.</li></ul><div>My test case is transmitting 8192 random samples from host=
 to FFT block and then optionally through a 2nd FFT block before back to ho=
st.=C2=A0 In the test case, the radios/DDCs/DUCs are not used.</div><div><b=
r></div>Here is what I observed:<br><ul><li>If I only include 1 FFT block i=
n my RFNoC graph, I get the expected results (the output from the FPGA matc=
hes what I calculate in Matlab for the FFT).=C2=A0 This is true for either =
of the two FFT blocks.</li><li>If I include both FFT blocks in series, I ca=
n only match the FPGA output if I swap the I/Q values in between my Matlab =
FFTs.</li><li>Note: that this issue is not FFT-related as I can also duplic=
ate this issue with the other blocks.=C2=A0</li><li>If I use 3 blocks in se=
ries (each through SEP), I need to negate certain data in order to get it t=
o match the FPGA output</li></ul><div>My next step is likely to build a new=
 image with Ettus-developed FIFOs to prove that the data is getting swapped=
/negated when 2 or more are used in series through SEPs.</div></div><div><b=
r></div><div>Let me know if you have any suggestions for other things to tr=
y.<br></div><div><br></div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--0000000000006aa04e05b6457d25--


--===============5909247277183809480==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5909247277183809480==--

