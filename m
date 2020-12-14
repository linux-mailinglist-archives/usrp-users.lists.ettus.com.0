Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 084BA2D9A77
	for <lists+usrp-users@lfdr.de>; Mon, 14 Dec 2020 15:59:59 +0100 (CET)
Received: from [::1] (port=55844 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kopKP-00070L-4C; Mon, 14 Dec 2020 09:59:57 -0500
Received: from mail-ot1-f53.google.com ([209.85.210.53]:39142)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kopKK-0006ud-W1
 for usrp-users@lists.ettus.com; Mon, 14 Dec 2020 09:59:53 -0500
Received: by mail-ot1-f53.google.com with SMTP id d8so15960520otq.6
 for <usrp-users@lists.ettus.com>; Mon, 14 Dec 2020 06:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ksPL6ut+elWApCVZwfkoaksl5TalAdNjaU/16SEdv2g=;
 b=I9BNNu/iGqOpKC/NfML64Iphhbj5UuKHt55BF5uzfCaNjuavtTGfzQDL/+SZP7YYj3
 5nwX6UQZMt5d13qAQqoPdPrkI/GowwNOwTP/co1vMb6M46L0GK/H17/k04zj5i8pXEsE
 MNRKQ4WGcdQiOFeZr6wW/LNR+whwojwRm6FGJqF6HDWTnKfCQ4yiG/5OsETHYLyCcSJq
 1NvTw/HacBmBm4oucQsUfAsLnld62jAirnTriud++4BnCpQk8I02ZYOI0J8YyirENpJ8
 N2W3/QDVZz30Lo6B9Lb340uM64cVQh00i4AFPioaW66+Wk4EWHBQFK4eiLZGYzQ5JjSD
 lIIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ksPL6ut+elWApCVZwfkoaksl5TalAdNjaU/16SEdv2g=;
 b=VvBM7D6mb+vRbkJOD7MMxW1k9madtv8F27V7s1pgJMQWdDEsbVHIRPPzi3OPMRv/cG
 PLUkaM0//5DWbL5VxfZ6ddFVG8gLPu2TxdAPuqc/V49a5y8fAU3SyNHtq7NqKpcbiTex
 I0eYqzbY7XPQ/ESCEoEEYLVfaMoAUrcnGc2m7XV9zhS8DsdKZaZMJbKrc0qoiSI4iY+s
 hUh9qje2Vch7u7YThUqa2JSdoUm+PJHpIpG57ngeafX8l/EafFa6/DQe5k/0rsuaEg0M
 r6peBQh5QEnDThLy7fx9+Ldzq9gbju/QebGSCIjkRK/CoEdR9IrZFGXoRS1Pmh6fYggr
 4MbA==
X-Gm-Message-State: AOAM530b6eewXyM4e9bOV9cwT/ykydRKOras4Y9WBvVDBK5J9FbxghJA
 Oe6aQVa1QGdUQLhaSACGP5F0FYDXqrpD2S5hGxFqoQ==
X-Google-Smtp-Source: ABdhPJwH7gQphPE/X5jZqf2A4a6TRh4DcP+xmORIllV0lINM+rbMGfnnk0BzuxWiU27I8XhOIc0E8IaYyDwYpU/uvH8=
X-Received: by 2002:a9d:4e87:: with SMTP id v7mr10445142otk.302.1607957952039; 
 Mon, 14 Dec 2020 06:59:12 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTQa8v40-nQGCQMcK36317oWxue448NrMoMYvbf3oacmug@mail.gmail.com>
 <CAFche=htoRKHMituvggWa15UwoiVkdR6n=3EXYK6d5TR696SiQ@mail.gmail.com>
 <CAB__hTTd6++q8K6xOtHhpJv905CW1wp4E5YpUR0mM5yULUf44Q@mail.gmail.com>
 <CAB__hTRBNRoGu+yYjGMawb1ongZ5u0G4HyafJUOuCA5637ysgA@mail.gmail.com>
 <CAB__hTQX+URNC-_qno0jStxo0qm8YtUWas0MffMebtd6TzfTNQ@mail.gmail.com>
 <CAB__hTSpKwx7JSoWCExtqThW+qGSi919KTTm1TNWN6KU4HkQig@mail.gmail.com>
 <CAFche=iE+RoE6Wi7vWHB73z48HF36SBeK0mqQQDeC=ujhX4d=w@mail.gmail.com>
In-Reply-To: <CAFche=iE+RoE6Wi7vWHB73z48HF36SBeK0mqQQDeC=ujhX4d=w@mail.gmail.com>
Date: Mon, 14 Dec 2020 09:59:01 -0500
Message-ID: <CAB__hTTRaGEnBDHrj3eJ3sHEqPPSbJ0G1aL7xQF2HLUS+z8Mvg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============0584286532942759558=="
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

--===============0584286532942759558==
Content-Type: multipart/alternative; boundary="0000000000008bd75005b66de277"

--0000000000008bd75005b66de277
Content-Type: text/plain; charset="UTF-8"

Hi Wade,
I tried the command to re-load the FPGA, but I couldn't communicate with
UHD nicely until I also added the command "systemctl restart ursp-uhd".  I
am now able to reset the N310 to proper behavior when it gets in this state.

Regarding this issue of real/imag swapping, do you want me to create a
support request through support@ettus.com?  Also, do you need me to provide
any more info or an example program / FPGA image?  Note that now that I
know how to duplicate the issue, I believe I also know how to avoid it. So,
it is probably not a critical issue for me presently.

Rob

On Sat, Dec 12, 2020 at 9:47 AM Wade Fife <wade.fife@ettus.com> wrote:

> Thanks for the updates. If you just want to reload the FPGA, try running
> "overlay rm n310 && overlay add n310" on the N310. This should simply
> reload the FPGA using the bistream already in the flash.
>
> Wade
>
> On Fri, Dec 11, 2020 at 6:45 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Wade,
>> The following also fails using just 2 blocks and 2 attempts:
>>   host_tx => Switchboard#0 => Switchboard#1 => host_rx  // SUCCESS
>>   host_tx => Switchboard#1 => Switchboard#0 => host_rx  // FAILURE (RX
>> samples equal swapped I/Q of TX samples)
>>
>> In addition to wanting to get this issue fixed, I also have a question
>> about the best way to "reboot" the N310 which is what I need to do to fix
>> the issue after it occurs.  One way is to give the "reboot now" linux
>> command.  But, this takes a long time.  Another way is to reprogram the
>> FPGA image via uhd_image_loader. This is appreciably faster, but I'm
>> thinking that this is not a great idea if the flash memory has a limited
>> number of write cycles before failure.  Is there another way to achieve a
>> reboot other than these two?
>> Rob
>>
>> On Fri, Dec 11, 2020 at 7:34 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> AHA!  I duplicated the issue with the Switchboard image.  The way to
>>> duplicate the issue is the run the following series of graphs:
>>>   host_tx => Switchboard#0 => Switchboard#1 => host_rx  // SUCCESS
>>>   host_tx => Switchboard#2 => Switchboard#3 => host_rx  // SUCCESS
>>>   host_tx => Switchboard#0 => Switchboard#2 => host_rx  // FAILURE (RX
>>> samples equal swapped I/Q of TX samples)
>>> Each of these 3 runs consists of running my application (similar to one
>>> of the examples such as rfnoc_rx_to_file) such that the UHD object is
>>> re-created each time.  My guess is that you could use gnuradio to do it
>>> instead.
>>>
>>> My working theory is that the problem is caused by the fact that the
>>> Switchboard#2 input port was changed from being connected to the host in
>>> test case 2 to then be connected to another RFNoC block in test case 3.
>>> Or, I suppose it could be the output port on this block (same logic).
>>>
>>> If you want me to send you my FPGA image with the 4 Switchboard blocks,
>>> let me know.
>>> Rob
>>>
>>>
>>>
>>> On Fri, Dec 11, 2020 at 7:09 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>> Hi Wade,
>>>> After thinking about it a bit, I would ignore the "negation" issue for
>>>> now. This may be a byproduct of I/Q swapping related to my custom block.
>>>> Rob
>>>>
>>>> On Fri, Dec 11, 2020 at 6:34 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>
>>>>> Hi Wade,
>>>>> Thanks for the info.  I still do not know what's going on, but here
>>>>> are a few updates:
>>>>>
>>>>>    - I built a new N310 image with 4 switchboards (1x1) and 1
>>>>>    splitstream (1x2) blocks in addition to the default blocks.  All of the
>>>>>    additional blocks are connected to SEPs for dynamic linking.  I tried my
>>>>>    best to get bad behavior using a chain of 1 to 4 switchboards, but I could
>>>>>    not duplicate any I/Q swapping or negation issues.
>>>>>    - I went back to my custom image (that I described below) and
>>>>>    found different behavior today (sometimes things worked OK).  So, this got
>>>>>    me to thinking that I am somehow getting the FPGA in a bad state such that
>>>>>    a reboot (or FPGA re-flashing) fixes things.  I have had some success with
>>>>>    re-booting and things working properly.  But, I still do not have a true
>>>>>    handle on things and cannot adequately predict when things are going to
>>>>>    succeed or fail.
>>>>>    - One thing that has been constant is that I have never seen bad
>>>>>    behavior when I only have 1 block in my graph (no matter which block I
>>>>>    choose).  Note that for all of my tests, the graph looks like this: host_tx
>>>>>    => block_chain => host_rx, where block_chain is a sequential chain of 1 or
>>>>>    more rfnoc blocks.
>>>>>
>>>>> I will send a follow up once I figure things out.
>>>>> Rob
>>>>>
>>>>>
>>>>> On Fri, Dec 11, 2020 at 6:22 PM Wade Fife <wade.fife@ettus.com> wrote:
>>>>>
>>>>>> Hi Rob,
>>>>>>
>>>>>> The SEPs do have the ability to swap I and Q. This is because on the
>>>>>> host computer, I is usually in the lower bits and Q is in the upper bits of
>>>>>> each 32-bit word, but in RFNoC, for historical reasons, I goes in the upper
>>>>>> bits and Q in the lower bits. The software programs the IQ swapping when it
>>>>>> sets up the graph.
>>>>>>
>>>>>> I assume you're using dynamic connections (through the crossbar) to
>>>>>> control the number of FFTs the data is passed through, and not static
>>>>>> connections? If that's the case then I wonder if software configures IQ
>>>>>> swapping incorrectly in some configurations. I'll see if I can do some
>>>>>> testing next week to confirm if it's working correctly.
>>>>>>
>>>>>> As for negation, I'm not aware of anywhere we do that off the top of
>>>>>> my head. Is that behavior block dependent? I'll see if I can find anywhere
>>>>>> this happens.
>>>>>>
>>>>>> Thanks,
>>>>>>
>>>>>> Wade
>>>>>>
>>>>>> On Thu, Dec 10, 2020 at 3:54 PM Rob Kossler via USRP-users <
>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>
>>>>>>> Hi,
>>>>>>> I am encountering very strange behavior with a custom FPGA image
>>>>>>> (N310). It appears that data streaming through SEPs can get swapped (I/Q)
>>>>>>> and/or negated.  Is anyone at Ettus aware of anything that could cause
>>>>>>> this?  Of course, the issue might be on my end, but I can't think of what
>>>>>>> it might be given that all of my custom blocks work as expected in
>>>>>>> isolation (if the block is the only block in graph).
>>>>>>>
>>>>>>> My custom image is the following:
>>>>>>>
>>>>>>>    - default blocks of Radios, DDCs, DUCs (each 2x2 and statically
>>>>>>>    connected as in default image)
>>>>>>>    - custom blocks of two 1x1 windowed-fft blocks, two 1x1
>>>>>>>    vector-avg blocks, and one 2x2 custom block. Note: each of these blocks is
>>>>>>>    connected to its own SEP, so I can connect dynamically in any fashion.
>>>>>>>
>>>>>>> My test case is transmitting 8192 random samples from host to FFT
>>>>>>> block and then optionally through a 2nd FFT block before back to host.  In
>>>>>>> the test case, the radios/DDCs/DUCs are not used.
>>>>>>>
>>>>>>> Here is what I observed:
>>>>>>>
>>>>>>>    - If I only include 1 FFT block in my RFNoC graph, I get the
>>>>>>>    expected results (the output from the FPGA matches what I calculate in
>>>>>>>    Matlab for the FFT).  This is true for either of the two FFT blocks.
>>>>>>>    - If I include both FFT blocks in series, I can only match the
>>>>>>>    FPGA output if I swap the I/Q values in between my Matlab FFTs.
>>>>>>>    - Note: that this issue is not FFT-related as I can also
>>>>>>>    duplicate this issue with the other blocks.
>>>>>>>    - If I use 3 blocks in series (each through SEP), I need to
>>>>>>>    negate certain data in order to get it to match the FPGA output
>>>>>>>
>>>>>>> My next step is likely to build a new image with Ettus-developed
>>>>>>> FIFOs to prove that the data is getting swapped/negated when 2 or more are
>>>>>>> used in series through SEPs.
>>>>>>>
>>>>>>> Let me know if you have any suggestions for other things to try.
>>>>>>>
>>>>>>> Rob
>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list
>>>>>>> USRP-users@lists.ettus.com
>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>
>>>>>>

--0000000000008bd75005b66de277
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Wade,<div>I tried the command=C2=A0to re-load the FPGA,=
=C2=A0but I couldn&#39;t communicate with UHD nicely until I also added the=
 command &quot;systemctl restart ursp-uhd&quot;.=C2=A0 I am now able to res=
et the N310 to proper behavior when it gets in this state.<div><br></div><d=
iv>Regarding this issue of real/imag swapping, do you want me to create a s=
upport request through <a href=3D"mailto:support@ettus.com">support@ettus.c=
om</a>?=C2=A0 Also, do you need me to provide any more info or an example p=
rogram / FPGA image?=C2=A0

Note that now that I know how to duplicate the issue, I believe I also know=
 how to avoid it. So, it is probably not a critical=C2=A0issue for me prese=
ntly.

</div></div><div><br></div><div>Rob</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Dec 12, 2020 at 9:47 AM Wa=
de Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div>Thanks for the updates. If you just want to reload the FPG=
A, try running &quot;overlay rm n310 &amp;&amp; overlay add n310&quot; on t=
he N310. This should simply reload the FPGA using the bistream already in t=
he flash. <br></div><div><br></div><div>Wade<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 11, 2020=
 at 6:45 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_b=
lank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div>Wade,</div><div>The following al=
so fails using just 2 blocks and 2 attempts:</div><div><div>=C2=A0 host_tx =
=3D&gt; Switchboard#0 =3D&gt; Switchboard#1 =3D&gt; host_rx=C2=A0 // SUCCES=
S</div><div></div></div><div><div>=C2=A0 host_tx =3D&gt; Switchboard#1 =3D&=
gt; Switchboard#0 =3D&gt; host_rx=C2=A0 // FAILURE (RX samples equal swappe=
d I/Q of TX samples)</div><div><br></div><div>In addition to wanting to get=
 this issue fixed, I also have a question about the best way to &quot;reboo=
t&quot; the N310 which is what I need to do to fix the issue after it occur=
s.=C2=A0 One way is to give the &quot;reboot now&quot; linux command.=C2=A0=
 But, this takes a long time.=C2=A0 Another way is to reprogram the FPGA im=
age via uhd_image_loader. This is appreciably faster, but I&#39;m thinking =
that this is not a great idea if the flash memory has a limited number of w=
rite cycles before failure.=C2=A0 Is there another way to achieve a reboot =
other than these two?</div><div>Rob</div><div><br></div><div></div></div><d=
iv></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Fri, Dec 11, 2020 at 7:34 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@n=
d.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">AHA!=C2=A0 I dupli=
cated the issue with the Switchboard image.=C2=A0 The way to duplicate the =
issue is the run the following series of graphs:<div>=C2=A0 host_tx =3D&gt;=
 Switchboard#0 =3D&gt; Switchboard#1 =3D&gt; host_rx=C2=A0 // SUCCESS</div>=
<div>=C2=A0 host_tx =3D&gt; Switchboard#2 =3D&gt; Switchboard#3 =3D&gt; hos=
t_rx=C2=A0 // SUCCESS</div><div></div><div>=C2=A0 host_tx =3D&gt; Switchboa=
rd#0 =3D&gt; Switchboard#2 =3D&gt; host_rx=C2=A0 // FAILURE (RX samples equ=
al swapped I/Q of TX samples)</div><div>Each of these 3 runs consists of ru=
nning my application (similar to one of the examples such as rfnoc_rx_to_fi=
le) such that the UHD object is re-created each time.=C2=A0 My guess is tha=
t you could use gnuradio to do it instead.</div><div><br></div><div>My work=
ing theory is that the problem is caused by the fact that the Switchboard#2=
 input port was changed from being connected to the host in test case 2 to =
then be connected to another RFNoC block in test case 3.=C2=A0 Or, I suppos=
e it could be the output port on this block (same logic).</div><div><br></d=
iv><div>If you want me to send you my FPGA image with the 4 Switchboard blo=
cks, let me know.</div><div>Rob</div><div><br></div><div></div><div>=C2=A0=
=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Fri, Dec 11, 2020 at 7:09 PM Rob Kossler &lt;<a href=3D"mail=
to:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Wa=
de,<div>After thinking about it a bit, I would ignore the &quot;negation&qu=
ot; issue for now. This may be a byproduct of I/Q swapping related to my cu=
stom block.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, Dec 11, 2020 at 6:34 PM Rob Kossler =
&lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr">Hi Wade,<div>Thanks for the info.=C2=A0 I still do not know w=
hat&#39;s going on, but here are a few updates:</div><div><ul><li>I built a=
 new N310 image with 4 switchboards (1x1) and 1 splitstream=C2=A0(1x2) bloc=
ks in addition to the default blocks.=C2=A0 All of the additional blocks ar=
e connected to SEPs for dynamic linking.=C2=A0 I tried my best to get bad b=
ehavior using a chain of 1 to 4 switchboards, but I could not duplicate any=
 I/Q swapping or negation issues.=C2=A0</li><li>I went back to my custom im=
age (that I described below) and found different behavior today (sometimes =
things worked OK).=C2=A0 So, this got me to thinking that I am somehow gett=
ing the FPGA in a bad state such that a reboot (or FPGA re-flashing) fixes =
things.=C2=A0 I have had some success with re-booting and things working pr=
operly.=C2=A0 But, I still do not have a true handle on things and cannot a=
dequately predict when things are going to succeed or fail.</li><li>One thi=
ng that has been constant is that I have never seen bad behavior when I onl=
y have 1 block in my graph (no matter which block I choose).=C2=A0 Note tha=
t for all of my tests, the graph looks like this: host_tx =3D&gt; block_cha=
in =3D&gt; host_rx, where block_chain is a sequential chain of 1 or more rf=
noc blocks.</li></ul><div>I will send a follow up once I figure things out.=
</div><div>Rob</div></div><div><br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 11, 2020 at 6:22 PM Wa=
de Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.f=
ife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>The SEP=
s do have the ability to swap I and Q. This is because on the host computer=
, I is usually in the lower bits and Q is in the upper bits of each 32-bit =
word, but in RFNoC, for historical reasons, I goes in the upper bits and Q =
in the lower bits. The software programs the IQ swapping when it sets up th=
e graph. </div><div><br></div><div>I assume you&#39;re using dynamic connec=
tions (through the crossbar) to control the number of FFTs the data is pass=
ed through, and not static connections? If that&#39;s the case then=20
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
</blockquote></div>

--0000000000008bd75005b66de277--


--===============0584286532942759558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0584286532942759558==--

