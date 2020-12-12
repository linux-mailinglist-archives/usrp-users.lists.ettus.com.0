Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3812D833F
	for <lists+usrp-users@lfdr.de>; Sat, 12 Dec 2020 01:10:42 +0100 (CET)
Received: from [::1] (port=57130 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1knsUi-00084W-3e; Fri, 11 Dec 2020 19:10:40 -0500
Received: from mail-oi1-f169.google.com ([209.85.167.169]:42980)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1knsUe-0007wZ-05
 for usrp-users@lists.ettus.com; Fri, 11 Dec 2020 19:10:36 -0500
Received: by mail-oi1-f169.google.com with SMTP id l200so11874459oig.9
 for <usrp-users@lists.ettus.com>; Fri, 11 Dec 2020 16:10:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u9HgSp2ai/NoWUeoqBdZMC3oS6CTpqz+BpoSk2sArQI=;
 b=J0CEwnDa3S7nFMNa1RUOaHqjMn+wtFhhkz82sa5Bnyu375/qSmSjIAlKaeC1pF01nF
 KRwGiD27hTKULvgyNoAVt2NPE6Lc4ohEMdtZBzL0x6nB4FBbjscMvkFdL5eJFIIOg10y
 TQNwGtkuqiHcu6DRZ4L6XiMuyNUGTxAyIhsNcT7RmKWyYKb8GcDLfjvUXpudtqRdU0WP
 ceBNdtN0/nVEJNw9rsJfy4lUU/93kUxugbDBjflBtoJ5A0znh24CgnvoEFjjjjo/pan0
 LHLTodNHna3/2hjJ2Xb9ij6DCTsK+JiVJOKtoAVqvCb041bAsErupVFfN25G0a7DSIs1
 KIMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u9HgSp2ai/NoWUeoqBdZMC3oS6CTpqz+BpoSk2sArQI=;
 b=P/4mUnBWZq2wIQme8UM5jxBJ7E9Ac7ZDxVt/XW/OfR7UPcWj3TduuFTIDwyeu2WPmO
 Ak0IPrxfSKOwKAda46fuBJU8UBvT/c/qeShxDXZjk4bLtTwXBOVlZ+FCxUG4RFDXv+91
 QO/T17XedQzmYI+S5NOziB0XStwzJ+2+S2buiSEVW4ckRvNZhMmvARj3FfIk/z7as4wi
 p6N1ZoJFvmU6IA9Tlupu+DNP4K1DVDztQjve0qMddpkgW1PBi3mlamqcaa4IYzKeziDW
 4Pf5Ga1mY27lTKWhQGHynMdcXb+L4VN5yiedE16CtYJiH7PB8EEKdoB/AL8qAEhczPha
 Rnyw==
X-Gm-Message-State: AOAM533wnNb07qjlfBgZgoyr60huAy889Lzx8t2A+O9O+eWTs9/EiQOW
 DRGpXuofh3OPIuCqGHLE4eKhSt7JWpMCN5t25DvBOQ==
X-Google-Smtp-Source: ABdhPJwaTSsOhR5rqMbO9Bw59FLsLt/Pzq2+1pfyrmwlvqeuTvCjtLs3MPKguLbLOckiwHx/U61s9dknxgtKyyZfVHk=
X-Received: by 2002:aca:5ec2:: with SMTP id s185mr11211762oib.33.1607731795018; 
 Fri, 11 Dec 2020 16:09:55 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTQa8v40-nQGCQMcK36317oWxue448NrMoMYvbf3oacmug@mail.gmail.com>
 <CAFche=htoRKHMituvggWa15UwoiVkdR6n=3EXYK6d5TR696SiQ@mail.gmail.com>
 <CAB__hTTd6++q8K6xOtHhpJv905CW1wp4E5YpUR0mM5yULUf44Q@mail.gmail.com>
In-Reply-To: <CAB__hTTd6++q8K6xOtHhpJv905CW1wp4E5YpUR0mM5yULUf44Q@mail.gmail.com>
Date: Fri, 11 Dec 2020 19:09:44 -0500
Message-ID: <CAB__hTRBNRoGu+yYjGMawb1ongZ5u0G4HyafJUOuCA5637ysgA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5650114077232169522=="
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

--===============5650114077232169522==
Content-Type: multipart/alternative; boundary="00000000000089894f05b6393a3e"

--00000000000089894f05b6393a3e
Content-Type: text/plain; charset="UTF-8"

Hi Wade,
After thinking about it a bit, I would ignore the "negation" issue for now.
This may be a byproduct of I/Q swapping related to my custom block.
Rob

On Fri, Dec 11, 2020 at 6:34 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Wade,
> Thanks for the info.  I still do not know what's going on, but here are a
> few updates:
>
>    - I built a new N310 image with 4 switchboards (1x1) and 1
>    splitstream (1x2) blocks in addition to the default blocks.  All of the
>    additional blocks are connected to SEPs for dynamic linking.  I tried my
>    best to get bad behavior using a chain of 1 to 4 switchboards, but I could
>    not duplicate any I/Q swapping or negation issues.
>    - I went back to my custom image (that I described below) and found
>    different behavior today (sometimes things worked OK).  So, this got me to
>    thinking that I am somehow getting the FPGA in a bad state such that a
>    reboot (or FPGA re-flashing) fixes things.  I have had some success with
>    re-booting and things working properly.  But, I still do not have a true
>    handle on things and cannot adequately predict when things are going to
>    succeed or fail.
>    - One thing that has been constant is that I have never seen bad
>    behavior when I only have 1 block in my graph (no matter which block I
>    choose).  Note that for all of my tests, the graph looks like this: host_tx
>    => block_chain => host_rx, where block_chain is a sequential chain of 1 or
>    more rfnoc blocks.
>
> I will send a follow up once I figure things out.
> Rob
>
>
> On Fri, Dec 11, 2020 at 6:22 PM Wade Fife <wade.fife@ettus.com> wrote:
>
>> Hi Rob,
>>
>> The SEPs do have the ability to swap I and Q. This is because on the host
>> computer, I is usually in the lower bits and Q is in the upper bits of each
>> 32-bit word, but in RFNoC, for historical reasons, I goes in the upper bits
>> and Q in the lower bits. The software programs the IQ swapping when it sets
>> up the graph.
>>
>> I assume you're using dynamic connections (through the crossbar) to
>> control the number of FFTs the data is passed through, and not static
>> connections? If that's the case then I wonder if software configures IQ
>> swapping incorrectly in some configurations. I'll see if I can do some
>> testing next week to confirm if it's working correctly.
>>
>> As for negation, I'm not aware of anywhere we do that off the top of my
>> head. Is that behavior block dependent? I'll see if I can find anywhere
>> this happens.
>>
>> Thanks,
>>
>> Wade
>>
>> On Thu, Dec 10, 2020 at 3:54 PM Rob Kossler via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi,
>>> I am encountering very strange behavior with a custom FPGA image (N310).
>>> It appears that data streaming through SEPs can get swapped (I/Q) and/or
>>> negated.  Is anyone at Ettus aware of anything that could cause this?  Of
>>> course, the issue might be on my end, but I can't think of what it might be
>>> given that all of my custom blocks work as expected in isolation (if the
>>> block is the only block in graph).
>>>
>>> My custom image is the following:
>>>
>>>    - default blocks of Radios, DDCs, DUCs (each 2x2 and statically
>>>    connected as in default image)
>>>    - custom blocks of two 1x1 windowed-fft blocks, two 1x1 vector-avg
>>>    blocks, and one 2x2 custom block. Note: each of these blocks is connected
>>>    to its own SEP, so I can connect dynamically in any fashion.
>>>
>>> My test case is transmitting 8192 random samples from host to FFT block
>>> and then optionally through a 2nd FFT block before back to host.  In the
>>> test case, the radios/DDCs/DUCs are not used.
>>>
>>> Here is what I observed:
>>>
>>>    - If I only include 1 FFT block in my RFNoC graph, I get the
>>>    expected results (the output from the FPGA matches what I calculate in
>>>    Matlab for the FFT).  This is true for either of the two FFT blocks.
>>>    - If I include both FFT blocks in series, I can only match the FPGA
>>>    output if I swap the I/Q values in between my Matlab FFTs.
>>>    - Note: that this issue is not FFT-related as I can also duplicate
>>>    this issue with the other blocks.
>>>    - If I use 3 blocks in series (each through SEP), I need to negate
>>>    certain data in order to get it to match the FPGA output
>>>
>>> My next step is likely to build a new image with Ettus-developed FIFOs
>>> to prove that the data is getting swapped/negated when 2 or more are used
>>> in series through SEPs.
>>>
>>> Let me know if you have any suggestions for other things to try.
>>>
>>> Rob
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--00000000000089894f05b6393a3e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Wade,<div>After thinking about it a bit, I would ignore=
 the &quot;negation&quot; issue for now. This may be a byproduct of I/Q swa=
pping related to my custom block.</div><div>Rob</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 11, 2020=
 at 6:34 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.=
edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr">Hi Wade,<div>Thanks for the info.=C2=A0 I still do not =
know what&#39;s going on, but here are a few updates:</div><div><ul><li>I b=
uilt a new N310 image with 4 switchboards (1x1) and 1 splitstream=C2=A0(1x2=
) blocks in addition to the default blocks.=C2=A0 All of the additional blo=
cks are connected to SEPs for dynamic linking.=C2=A0 I tried my best to get=
 bad behavior using a chain of 1 to 4 switchboards, but I could not duplica=
te any I/Q swapping or negation issues.=C2=A0</li><li>I went back to my cus=
tom image (that I described below) and found different behavior today (some=
times things worked OK).=C2=A0 So, this got me to thinking that I am someho=
w getting the FPGA in a bad state such that a reboot (or FPGA re-flashing) =
fixes things.=C2=A0 I have had some success with re-booting and things work=
ing properly.=C2=A0 But, I still do not have a true handle on things and ca=
nnot adequately predict when things are going to succeed or fail.</li><li>O=
ne thing that has been constant is that I have never seen bad behavior when=
 I only have 1 block in my graph (no matter which block I choose).=C2=A0 No=
te that for all of my tests, the graph looks like this: host_tx =3D&gt; blo=
ck_chain =3D&gt; host_rx, where block_chain is a sequential chain of 1 or m=
ore rfnoc blocks.</li></ul><div>I will send a follow up once I figure thing=
s out.</div><div>Rob</div></div><div><br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 11, 2020 at 6:22=
 PM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">=
wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>T=
he SEPs do have the ability to swap I and Q. This is because on the host co=
mputer, I is usually in the lower bits and Q is in the upper bits of each 3=
2-bit word, but in RFNoC, for historical reasons, I goes in the upper bits =
and Q in the lower bits. The software programs the IQ swapping when it sets=
 up the graph. </div><div><br></div><div>I assume you&#39;re using dynamic =
connections (through the crossbar) to control the number of FFTs the data i=
s passed through, and not static connections? If that&#39;s the case then=
=20
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

--00000000000089894f05b6393a3e--


--===============5650114077232169522==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5650114077232169522==--

