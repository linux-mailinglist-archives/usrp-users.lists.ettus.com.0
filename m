Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A76524BAB92
	for <lists+usrp-users@lfdr.de>; Thu, 17 Feb 2022 22:12:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 81F9338480B
	for <lists+usrp-users@lfdr.de>; Thu, 17 Feb 2022 16:12:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ZjmLjXkO";
	dkim-atps=neutral
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 3FD44384517
	for <usrp-users@lists.ettus.com>; Thu, 17 Feb 2022 16:10:59 -0500 (EST)
Received: by mail-yb1-f182.google.com with SMTP id v73so3259765ybe.12
        for <usrp-users@lists.ettus.com>; Thu, 17 Feb 2022 13:10:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RXcXQ4a31UfpLohHa61N77JfLHQv6KRWotpuON27DVs=;
        b=ZjmLjXkOzl6WKn2ISCuIyKugCF/BQ3gMqGbkbSb0UYbjOms0zsOBa/mMc0Cx1gRhCR
         86P5CLPtrc+kSCDlodPtsRlUEWdqEAT2Z8C2cwOr1lKZfbl6lLwyxhjEM/spKreJVfOI
         Vx1fJ2tvGr4NlbkG223AD0Y/qQqSRV8HJO2NziJFTg0vOPGvxzZt3WzvCXZpEomIuYbd
         VaNkAbsE55F5OJEhdxqFTz94eCNOujon+HapfTp9rWQ+f1ERQU7rkYsjDTF9VS0CZbp6
         oIYFoQ/WkB41e0wl9dYFDR/hdaUJlqUPZjCrjt16go0z3dvFQPxNSjAHZHlpQZ2kHvN4
         78+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RXcXQ4a31UfpLohHa61N77JfLHQv6KRWotpuON27DVs=;
        b=bmAXGa/Yv85vHcdE80S+smEwVAlJstsmjrK50GTLdzkODvDaDHn886y3HdyOl/1Nsj
         9aG9tR1TUTaPyV+rJHFop1SD91w0ZrlyxXLcnV2LsqpKAzL+3ADyAQzlZwfq1Bey23xg
         dNOCXG31ez2Bb1CMRnbYZGU07o0Zrg1Ko3gXdzJtTPgM+GH8CJRUtrwY5wYYSy78zbEE
         gH93fG1MWc32DCDky7nljGEG+Mzrz97XVDsx4gH2iJDhNXNvY3sCMCcJmJXFxrLHYz3n
         5TSd/X9BUupjHgznVKRew5O6SBG584ZAArZ0ZXvLqUNuxmU0lFxnmuwFO1CBD6flPBjI
         hJ0Q==
X-Gm-Message-State: AOAM530B48tiGm6hb7+I9etIhU8LWcXDnhYcS01WSgrwIFhJNaiT2P1H
	jMcUaAPOuDqlTIxDm9pGEOprbv2msKbNzJPJhEFUWCcl0d4GdNL5
X-Google-Smtp-Source: ABdhPJxtaTtE4/0Q6qtev4RK54mWT3wIhLW9fMr4burQHTzoVFUT1NIlsWCffWJGNkLovuNrq2ld5lk13fOhMUhqMqM=
X-Received: by 2002:a25:2842:0:b0:623:a267:b127 with SMTP id
 o63-20020a252842000000b00623a267b127mr4231915ybo.218.1645132258315; Thu, 17
 Feb 2022 13:10:58 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTTQ3aXadTX5KELksuongMR4QJchXS9UdxSs9cNyBBRdTg@mail.gmail.com>
 <CAL7q81sXeHHHSHF+S9hdHk=827igYxQPiY7D070=Dr1yW4GXJg@mail.gmail.com>
 <CAB__hTRk1GcRNph1bW-kbPq9jy9K-8tAY=WRr62KePK03PAgig@mail.gmail.com>
 <CAL7q81sHKB02b7e6VNg9OTY543V+6BLRF-_baoUPUzdzpLMtrA@mail.gmail.com> <CAB__hTQrDajD3pnqTuaAZaYWMM24orOaj6JwJMnHdG-3E2hg6Q@mail.gmail.com>
In-Reply-To: <CAB__hTQrDajD3pnqTuaAZaYWMM24orOaj6JwJMnHdG-3E2hg6Q@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 17 Feb 2022 16:10:47 -0500
Message-ID: <CAB__hTQhZVwHnQGYW=3QmTbCDtWXhB=UdOBAB+6PKn=2==tbHA@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="000000000000de163405d83d3389"
Message-ID-Hash: 4UPJANGVT4SKJVVJRHVRT54BUAWLORC7
X-Message-ID-Hash: 4UPJANGVT4SKJVVJRHVRT54BUAWLORC7
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Failure: ERROR:add_1 must be in range [-1,DEPTH-1]
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4UPJANGVT4SKJVVJRHVRT54BUAWLORC7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--000000000000de163405d83d3389
Content-Type: multipart/alternative; boundary="000000000000de163205d83d3387"

--000000000000de163205d83d3387
Content-Type: text/plain; charset="UTF-8"

Jonathon (and all),
This error message has returned as I'm working with a Xilinx FFT IP core
again. I never solved it previously and I cannot seem to solve it now. The
error shows up during the 1st testbench test (Flush/Reset) as shown below.

========================================================
TESTBENCH STARTED: rfnoc_block_xfft_256_tb
========================================================
[TEST CASE   1] (t =         0 ns) BEGIN: Flush block then reset it...
*Failure: ERROR:add_1 must be in range [-1,DEPTH-1]*
Time: 16 ns  Iteration: 1

After researching this error, it seems that solutions fall in two
categories.  First, something to do with clock initializations related to
IP cores. Second, having any uninitialized inputs to an IP core.  I played
around with the testbench clocks with no success.  I also verified my
inputs to the FFT instance.  I don't see any problem.

I created a simple project to produce this error using the following steps:

   - copied "rfnoc-example" folder out of tree (UHD-4.1) and verified that
   I could create a build folder and run cmake & "make rfnoc_block_gain_tb"
   successfully (I changed the target to E310 so that it could be run with the
   Vivado 2019.1 Webpack version)
   - created a Xilinx FFT IP core xci file "xfft_256.xci" (see attached) to
   implement a 256 pt pipelined, resizable FFT
   - created a new rfnoc block definition xml file "xfft_256.xml" (see
   attached) and then ran rfnoc_create_verilog.py to create the boilerplate
   rfnoc Verilog & Testbench files
   - ran the testbench with no modifications: SUCCESS
   - modified only rfnoc_block_xfft_256.v (see attached) to add the FFT IP
   instance and modified the make/cmake process to locate & build the IP
   (using the similar modifications needed in the gain example to include a
   complex_multiplier IP)
   - ran the testbench: FAILURE (see above)

I have attached to this email the 3 relevant files: xfft_256.xci,
xfft_256.xml (rfnoc block definition file), and rfnoc_block_xfft_256.v
(modified rfnoc Verilog code with added instance to FFT).  The other files
needed to reproduce this (such as the testbench) can be auto-generated
since I didn't modify them (but I would be happy to provide mine if
helpful).  All my other changes were to the cmake/make files, and these
changes just follow the gain example (but I would be happy to provide them
and/or the full OOT directory if helpful).

Let me know if you have any suggestions or if you are able/unable to
duplicate the issue with the files provided.
Rob

On Thu, Oct 15, 2020 at 6:16 PM Rob Kossler <rkossler@nd.edu> wrote:

> I'm just using window.v, not the various noc block wrappers.  I don't see
> any issue with it and when I run the testbench with just the Window enabled
> (and FFT IP core disabled), it works fine.
>
> I'm really struggling with this.  The results are bizarre and the
> testbench takes forever to run (ok, maybe 5 min) so it is not simple to
> change 1 thing and check the result.  I can't seem to find any issue with
> failing to drive inputs of the FFT core.  I've searched the web on this
> error and the most common response does indicate a failure to drive inputs,
> but I can't find any culprit.
>
> Could it have anything to do with something like a race condition prior to
> the first clock cycle? Or is that just nonsense.  I definitely don't have
> the experience to even know if that is a possibility.
> Rob
>
>
> On Thu, Oct 15, 2020 at 4:23 PM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> The issue could be with the Window block then. Maybe it isn't getting
>> properly initialized or something changed from RFNoC 3 to RFNoC 4.
>>
>> On Thu, Oct 15, 2020 at 3:44 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> OK. I'll check again.  One thing that's weird is that if I comment out
>>> either the Window or the FFT (and insert appropriate assign statements to
>>> replace the commented item), I don't get the error.  The error only occurs
>>> if both are in place.
>>> Rob
>>>
>>> On Thu, Oct 15, 2020 at 3:42 PM Jonathon Pendlum <
>>> jonathon.pendlum@ettus.com> wrote:
>>>
>>>> Hey Rob,
>>>>
>>>> I've ran into that issue when simulating Xilinx IP that use DSP48s.
>>>> From what I can tell, they don't handle X and U signal states properly. Try
>>>> double checking that all your signals are all properly driven.
>>>>
>>>> Jonathon
>>>>
>>>> On Thu, Oct 15, 2020, 15:08 Rob Kossler via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>>> Hi,
>>>>> I am getting this error (from the subject line) in a custom block I
>>>>> created that is effectively just the combination of a window block and a
>>>>> xilinx fft ip core. I am using UHD-4.0 (and Vivado 2019.1).
>>>>>
>>>>> After searching the user's list, I found some old posts from Jonathan
>>>>> Pendlum that indicated that this was a known issue related to the Xilinx
>>>>> FFT IP core.  The solution in the previous posts was to copy a "wave.do"
>>>>> file from the Ettus in-tree FFT tb folder.  I didn't find such a file in
>>>>> UHD-4.0 and so I'm wondering if there is a solution that works for UHD-4.0.
>>>>> Rob
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>>

--000000000000de163205d83d3387
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Jonathon (and all),</div><div>This e=
rror message has returned as I&#39;m working with a Xilinx FFT IP core agai=
n. I never solved it previously and I cannot seem to solve it now. The erro=
r shows up during the 1st testbench test (Flush/Reset) as shown below. <br>=
</div><div><br></div><div><div dir=3D"ltr"><div><span style=3D"font-family:=
monospace">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>TESTBENCH STARTED: rfnoc_block_xfft_256_t=
b<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>[TEST CASE =C2=A0 1] (t =3D =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 0 ns) BEGIN: Flush block then reset it...<br><span style=3D"colo=
r:rgb(255,0,0)"><b>Failure: ERROR:add_1 must be in range [-1,DEPTH-1]</b></=
span><br>Time: 16 ns =C2=A0Iteration: 1</span></div><div><br></div></div></=
div><div><div>After researching this error, it seems that solutions fall in=
 two=20
categories.=C2=A0 First, something to do with clock initializations related=
 to IP cores. Second,=20
having any uninitialized inputs to an IP core.=C2=A0 I played around with=
=20
the testbench clocks with no success.=C2=A0 I also verified my inputs to th=
e=20
FFT instance.=C2=A0 I don&#39;t see any problem.</div><div><br></div>I crea=
ted a simple project to produce this error using the following steps:</div>=
<div><ul><li>copied &quot;rfnoc-example&quot; folder out of tree (UHD-4.1) =
and verified that I could create a build folder and run cmake &amp; &quot;m=
ake rfnoc_block_gain_tb&quot; successfully (I changed the target to E310 so=
 that it could be run with the Vivado 2019.1 Webpack version)<br></li><li>c=
reated a Xilinx FFT IP core xci file &quot;xfft_256.xci&quot; (see attached=
) to implement a 256 pt pipelined, resizable FFT<br></li><li>created a new =
rfnoc block definition xml file &quot;xfft_256.xml&quot; (see attached) and=
 then ran rfnoc_create_verilog.py to create the boilerplate rfnoc Verilog &=
amp; Testbench files</li><li>ran the testbench with no modifications: SUCCE=
SS</li><li>modified only rfnoc_block_xfft_256.v (see attached) to add the F=
FT IP instance and modified the make/cmake process to locate &amp; build th=
e IP (using the similar modifications needed in the gain example to include=
 a complex_multiplier IP)<br></li><li>ran the testbench: FAILURE (see above=
)</li></ul>I have attached to this email the 3 relevant files: xfft_256.xci=
, xfft_256.xml (rfnoc block definition file), and rfnoc_block_xfft_256.v (m=
odified rfnoc Verilog code with added instance to FFT).=C2=A0 The other fil=
es needed to reproduce this (such as the testbench) can be auto-generated s=
ince I didn&#39;t modify them (but I would be happy to provide mine if help=
ful).=C2=A0 All my other changes were to the cmake/make files, and these ch=
anges just follow the gain example (but I would be happy to provide them an=
d/or the full OOT directory if helpful).<br><div><br></div></div><div>Let m=
e know if you have any suggestions or if you are able/unable to duplicate t=
he issue with the files provided.</div><div>Rob<br></div><br></div><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 15, 20=
20 at 6:16 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@n=
d.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr">I&#39;m just using window.v, not the various noc bloc=
k wrappers.=C2=A0 I don&#39;t see any issue with it and when I run the test=
bench with just the Window enabled (and FFT IP core disabled), it works fin=
e.<div><br></div><div>I&#39;m really struggling with this.=C2=A0 The result=
s are bizarre and the testbench takes forever to run (ok, maybe 5 min) so i=
t is not simple to change 1 thing and check the result.=C2=A0 I can&#39;t s=
eem to find any issue with failing to drive inputs of the FFT core.=C2=A0 I=
&#39;ve searched the web on this error and the most common response=C2=A0do=
es indicate a failure to drive inputs, but I can&#39;t find any culprit.=C2=
=A0=C2=A0</div><div><br></div><div>Could it have anything to do with someth=
ing like a race condition prior to the first clock cycle? Or is that just n=
onsense.=C2=A0 I definitely don&#39;t have the experience to even know if t=
hat is a possibility.</div><div>Rob</div><div><br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 15, 202=
0 at 4:23 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.=
com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">The issue=
 could be with the Window block then. Maybe it isn&#39;t getting properly i=
nitialized or something changed from RFNoC 3 to RFNoC 4.</div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 15, 202=
0 at 3:44 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_=
blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">OK. I&#39;ll check again.=C2=A0 One =
thing that&#39;s weird is that if I comment out either the Window or the FF=
T (and insert appropriate assign statements to replace the commented item),=
 I don&#39;t get the error.=C2=A0 The error only occurs if both are in plac=
e.<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Oct 15, 2020 at 3:42 PM Jonathon Pendlum &lt;<a hre=
f=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"auto">Hey Rob,<div dir=3D"auto"><br></div><div dir=
=3D"auto">I&#39;ve ran into that issue when simulating Xilinx IP that use D=
SP48s. From what I can tell, they don&#39;t handle X and U signal states pr=
operly. Try double checking that all your signals are all properly driven.<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto">Jonathon</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oc=
t 15, 2020, 15:08 Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr">Hi,<br><div>I am getting this error (from the subject line) in a cust=
om block I created that is effectively just the combination of a window blo=
ck and a xilinx fft ip core. I am using UHD-4.0 (and Vivado 2019.1).=C2=A0 =
</div><div><br></div><div>After searching the user&#39;s list, I found some=
 old posts from Jonathan Pendlum that indicated that this was a known issue=
 related to the Xilinx FFT IP core.=C2=A0 The solution in the previous post=
s was to copy a &quot;wave.do&quot; file from the Ettus in-tree FFT tb fold=
er.=C2=A0 I didn&#39;t find such a file in UHD-4.0 and so I&#39;m wondering=
 if there is a solution that works for UHD-4.0.</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>

--000000000000de163205d83d3387--

--000000000000de163405d83d3389
Content-Type: application/x-yaml; name="xfft_256.yml"
Content-Disposition: attachment; filename="xfft_256.yml"
Content-Transfer-Encoding: base64
Content-ID: <f_kzrgpon00>
X-Attachment-Id: f_kzrgpon00

c2NoZW1hOiByZm5vY19tb2R0b29sX2FyZ3MKbW9kdWxlX25hbWU6IHhmZnRfMjU2CnZlcnNpb246
IDEuMApyZm5vY192ZXJzaW9uOiAxLjAKY2hkcl93aWR0aDogNjQKbm9jX2lkOiAweDRFNDQ0QjBE
CgpjbG9ja3M6CiAgLSBuYW1lOiByZm5vY19jaGRyCiAgICBmcmVxOiAiW10iCiAgLSBuYW1lOiBy
Zm5vY19jdHJsCiAgICBmcmVxOiAiW10iCiAgLSBuYW1lOiBjZQogICAgZnJlcTogIltdIgoKY29u
dHJvbDoKICBzd19pZmFjZTogbm9jc2NyaXB0CiAgZnBnYV9pZmFjZTogY3RybHBvcnQKICBpbnRl
cmZhY2VfZGlyZWN0aW9uOiBzbGF2ZQogIGZpZm9fZGVwdGg6IDMyCiAgY2xrX2RvbWFpbjogY2UK
ICBjdHJscG9ydDoKICAgIGJ5dGVfbW9kZTogRmFsc2UKICAgIHRpbWVkOiBGYWxzZQogICAgaGFz
X3N0YXR1czogRmFsc2UKCmRhdGE6CiAgZnBnYV9pZmFjZTogYXhpc19kYXRhCiAgY2xrX2RvbWFp
bjogY2UKICBpbnB1dHM6CiAgICBpbjoKICAgICAgaW5kZXg6IDAKICAgICAgaXRlbV93aWR0aDog
MzIKICAgICAgbmlwYzogMQogICAgICBpbmZvX2ZpZm9fZGVwdGg6IDIKICAgICAgcGF5bG9hZF9m
aWZvX2RlcHRoOiBNVFUKICAgICAgZm9ybWF0OiBzYzE2CiAgICAgIG1kYXRhX3NpZzogfgogIG91
dHB1dHM6CiAgICBvdXQ6CiAgICAgIGluZGV4OiAwCiAgICAgIGl0ZW1fd2lkdGg6IDMyCiAgICAg
IG5pcGM6IDEKICAgICAgaW5mb19maWZvX2RlcHRoOiAyCiAgICAgIHBheWxvYWRfZmlmb19kZXB0
aDogTVRVCiAgICAgIGZvcm1hdDogc2MxNgogICAgICBtZGF0YV9zaWc6IH4KCmlvX3BvcnQ6Cgpy
ZWdpc3RlcnM6Cgpwcm9wZXJ0aWVzOgo=
--000000000000de163405d83d3389
Content-Type: application/octet-stream; name="xfft_256.xci"
Content-Disposition: attachment; filename="xfft_256.xci"
Content-Transfer-Encoding: base64
Content-ID: <f_kzrgq10n1>
X-Attachment-Id: f_kzrgq10n1

PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHNwaXJpdDpkZXNpZ24geG1s
bnM6eGlsaW54PSJodHRwOi8vd3d3LnhpbGlueC5jb20iIHhtbG5zOnNwaXJpdD0iaHR0cDovL3d3
dy5zcGlyaXRjb25zb3J0aXVtLm9yZy9YTUxTY2hlbWEvU1BJUklULzE2ODUtMjAwOSIgeG1sbnM6
eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSI+CiAgPHNwaXJp
dDp2ZW5kb3I+eGlsaW54LmNvbTwvc3Bpcml0OnZlbmRvcj4KICA8c3Bpcml0OmxpYnJhcnk+eGNp
PC9zcGlyaXQ6bGlicmFyeT4KICA8c3Bpcml0Om5hbWU+dW5rbm93bjwvc3Bpcml0Om5hbWU+CiAg
PHNwaXJpdDp2ZXJzaW9uPjEuMDwvc3Bpcml0OnZlcnNpb24+CiAgPHNwaXJpdDpjb21wb25lbnRJ
bnN0YW5jZXM+CiAgICA8c3Bpcml0OmNvbXBvbmVudEluc3RhbmNlPgogICAgICA8c3Bpcml0Omlu
c3RhbmNlTmFtZT54ZmZ0XzI1Njwvc3Bpcml0Omluc3RhbmNlTmFtZT4KICAgICAgPHNwaXJpdDpj
b21wb25lbnRSZWYgc3Bpcml0OnZlbmRvcj0ieGlsaW54LmNvbSIgc3Bpcml0OmxpYnJhcnk9Imlw
IiBzcGlyaXQ6bmFtZT0ieGZmdCIgc3Bpcml0OnZlcnNpb249IjkuMSIvPgogICAgICA8c3Bpcml0
OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZXM+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVF
bGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVFLkFDTEtFTl9J
TlRGLlBPTEFSSVRZIj5BQ1RJVkVfTE9XPC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVl
PgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZlcmVu
Y2VJZD0iQlVTSUZQQVJBTV9WQUxVRS5BQ0xLX0lOVEYuQ0xLX0RPTUFJTiIvPgogICAgICAgIDxz
cGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iQlVTSUZQ
QVJBTV9WQUxVRS5BQ0xLX0lOVEYuRlJFUV9IWiI+MTAwMDAwMDAwPC9zcGlyaXQ6Y29uZmlndXJh
YmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVl
IHNwaXJpdDpyZWZlcmVuY2VJZD0iQlVTSUZQQVJBTV9WQUxVRS5BQ0xLX0lOVEYuSU5TRVJUX1ZJ
UCI+MDwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNv
bmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1fVkFM
VUUuQUNMS19JTlRGLlBIQVNFIj4wLjAwMDwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1
ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJl
bmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUuQVJFU0VUTl9JTlRGLklOU0VSVF9WSVAiPjA8L3NwaXJp
dDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVF
bGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVFLkVWRU5UX0RB
VEFfSU5fQ0hBTk5FTF9IQUxUX0lOVEYuUG9ydFdpZHRoIj4xPC9zcGlyaXQ6Y29uZmlndXJhYmxl
RWxlbWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNw
aXJpdDpyZWZlcmVuY2VJZD0iQlVTSUZQQVJBTV9WQUxVRS5FVkVOVF9EQVRBX09VVF9DSEFOTkVM
X0hBTFRfSU5URi5Qb3J0V2lkdGgiPjE8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+
CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5j
ZUlkPSJCVVNJRlBBUkFNX1ZBTFVFLkVWRU5UX0ZGVF9PVkVSRkxPV19JTlRGLlBvcnRXaWR0aCI+
MTwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZp
Z3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUu
RVZFTlRfRlJBTUVfU1RBUlRFRF9JTlRGLlBvcnRXaWR0aCI+MTwvc3Bpcml0OmNvbmZpZ3VyYWJs
ZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBz
cGlyaXQ6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUuRVZFTlRfU1RBVFVTX0NIQU5ORUxf
SEFMVF9JTlRGLlBvcnRXaWR0aCI+MTwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4K
ICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNl
SWQ9IkJVU0lGUEFSQU1fVkFMVUUuRVZFTlRfVExBU1RfTUlTU0lOR19JTlRGLlBvcnRXaWR0aCI+
MTwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZp
Z3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUu
RVZFTlRfVExBU1RfVU5FWFBFQ1RFRF9JTlRGLlBvcnRXaWR0aCI+MTwvc3Bpcml0OmNvbmZpZ3Vy
YWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1
ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUuTV9BWElTX0RBVEEuQ0xLX0RP
TUFJTiIvPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpy
ZWZlcmVuY2VJZD0iQlVTSUZQQVJBTV9WQUxVRS5NX0FYSVNfREFUQS5GUkVRX0haIj4xMDAwMDAw
MDA8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25m
aWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVF
Lk1fQVhJU19EQVRBLkhBU19US0VFUCI+MDwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1
ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJl
bmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUuTV9BWElTX0RBVEEuSEFTX1RMQVNUIj4xPC9zcGlyaXQ6
Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxl
bWVudFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iQlVTSUZQQVJBTV9WQUxVRS5NX0FYSVNfREFU
QS5IQVNfVFJFQURZIj4xPC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlPgogICAgICAg
IDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iQlVT
SUZQQVJBTV9WQUxVRS5NX0FYSVNfREFUQS5IQVNfVFNUUkIiPjA8L3NwaXJpdDpjb25maWd1cmFi
bGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUg
c3Bpcml0OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVFLk1fQVhJU19EQVRBLklOU0VSVF9W
SVAiPjA8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpj
b25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZB
TFVFLk1fQVhJU19EQVRBLkxBWUVSRURfTUVUQURBVEEiPnVuZGVmPC9zcGlyaXQ6Y29uZmlndXJh
YmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVl
IHNwaXJpdDpyZWZlcmVuY2VJZD0iQlVTSUZQQVJBTV9WQUxVRS5NX0FYSVNfREFUQS5QSEFTRSI+
MC4wMDA8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpj
b25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZB
TFVFLk1fQVhJU19EQVRBLlREQVRBX05VTV9CWVRFUyI+NDwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVs
ZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGly
aXQ6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUuTV9BWElTX0RBVEEuVERFU1RfV0lEVEgi
PjA8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25m
aWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVF
Lk1fQVhJU19EQVRBLlRJRF9XSURUSCI+MDwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1
ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJl
bmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUuTV9BWElTX0RBVEEuVFVTRVJfV0lEVEgiPjg8L3NwaXJp
dDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVF
bGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVFLk1fQVhJU19T
VEFUVVMuQ0xLX0RPTUFJTiIvPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZh
bHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iQlVTSUZQQVJBTV9WQUxVRS5NX0FYSVNfU1RBVFVTLkZS
RVFfSFoiPjEwMDAwMDAwMDwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAg
ICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IkJV
U0lGUEFSQU1fVkFMVUUuTV9BWElTX1NUQVRVUy5IQVNfVEtFRVAiPjA8L3NwaXJpdDpjb25maWd1
cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFs
dWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVFLk1fQVhJU19TVEFUVVMuSEFT
X1RMQVNUIj4wPC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGly
aXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iQlVTSUZQQVJB
TV9WQUxVRS5NX0FYSVNfU1RBVFVTLkhBU19UUkVBRFkiPjE8L3NwaXJpdDpjb25maWd1cmFibGVF
bGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bp
cml0OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVFLk1fQVhJU19TVEFUVVMuSEFTX1RTVFJC
Ij4wPC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29u
ZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iQlVTSUZQQVJBTV9WQUxV
RS5NX0FYSVNfU1RBVFVTLklOU0VSVF9WSVAiPjA8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50
VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJl
ZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVFLk1fQVhJU19TVEFUVVMuTEFZRVJFRF9NRVRBREFU
QSI+dW5kZWY8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJp
dDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFN
X1ZBTFVFLk1fQVhJU19TVEFUVVMuUEhBU0UiPjAuMDAwPC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxl
bWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJp
dDpyZWZlcmVuY2VJZD0iQlVTSUZQQVJBTV9WQUxVRS5NX0FYSVNfU1RBVFVTLlREQVRBX05VTV9C
WVRFUyI+MTwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0
OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1f
VkFMVUUuTV9BWElTX1NUQVRVUy5UREVTVF9XSURUSCI+MDwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVs
ZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGly
aXQ6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUuTV9BWElTX1NUQVRVUy5USURfV0lEVEgi
PjA8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25m
aWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVF
Lk1fQVhJU19TVEFUVVMuVFVTRVJfV0lEVEgiPjA8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50
VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJl
ZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVFLlNfQVhJU19DT05GSUcuQ0xLX0RPTUFJTiIvPgog
ICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJ
ZD0iQlVTSUZQQVJBTV9WQUxVRS5TX0FYSVNfQ09ORklHLkZSRVFfSFoiPjEwMDAwMDAwMDwvc3Bp
cml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJs
ZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUuU19BWElT
X0NPTkZJRy5IQVNfVEtFRVAiPjA8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAg
ICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlk
PSJCVVNJRlBBUkFNX1ZBTFVFLlNfQVhJU19DT05GSUcuSEFTX1RMQVNUIj4wPC9zcGlyaXQ6Y29u
ZmlndXJhYmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVu
dFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iQlVTSUZQQVJBTV9WQUxVRS5TX0FYSVNfQ09ORklH
LkhBU19UUkVBRFkiPjE8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAg
PHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJCVVNJ
RlBBUkFNX1ZBTFVFLlNfQVhJU19DT05GSUcuSEFTX1RTVFJCIj4wPC9zcGlyaXQ6Y29uZmlndXJh
YmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVl
IHNwaXJpdDpyZWZlcmVuY2VJZD0iQlVTSUZQQVJBTV9WQUxVRS5TX0FYSVNfQ09ORklHLklOU0VS
VF9WSVAiPjA8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJp
dDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFN
X1ZBTFVFLlNfQVhJU19DT05GSUcuTEFZRVJFRF9NRVRBREFUQSI+dW5kZWY8L3NwaXJpdDpjb25m
aWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50
VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVFLlNfQVhJU19DT05GSUcu
UEhBU0UiPjAuMDAwPC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxz
cGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iQlVTSUZQ
QVJBTV9WQUxVRS5TX0FYSVNfQ09ORklHLlREQVRBX05VTV9CWVRFUyI+Mzwvc3Bpcml0OmNvbmZp
Z3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRW
YWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUuU19BWElTX0NPTkZJRy5U
REVTVF9XSURUSCI+MDwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8
c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IkJVU0lG
UEFSQU1fVkFMVUUuU19BWElTX0NPTkZJRy5USURfV0lEVEgiPjA8L3NwaXJpdDpjb25maWd1cmFi
bGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUg
c3Bpcml0OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVFLlNfQVhJU19DT05GSUcuVFVTRVJf
V0lEVEgiPjA8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJp
dDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFN
X1ZBTFVFLlNfQVhJU19EQVRBLkNMS19ET01BSU4iLz4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3Vy
YWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUuU19B
WElTX0RBVEEuRlJFUV9IWiI+MTAwMDAwMDAwPC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZh
bHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZl
cmVuY2VJZD0iQlVTSUZQQVJBTV9WQUxVRS5TX0FYSVNfREFUQS5IQVNfVEtFRVAiPjA8L3NwaXJp
dDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVF
bGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVFLlNfQVhJU19E
QVRBLkhBU19UTEFTVCI+MTwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAg
ICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IkJV
U0lGUEFSQU1fVkFMVUUuU19BWElTX0RBVEEuSEFTX1RSRUFEWSI+MTwvc3Bpcml0OmNvbmZpZ3Vy
YWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1
ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUuU19BWElTX0RBVEEuSEFTX1RT
VFJCIj4wPC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6
Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iQlVTSUZQQVJBTV9W
QUxVRS5TX0FYSVNfREFUQS5JTlNFUlRfVklQIj4wPC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVu
dFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpy
ZWZlcmVuY2VJZD0iQlVTSUZQQVJBTV9WQUxVRS5TX0FYSVNfREFUQS5MQVlFUkVEX01FVEFEQVRB
Ij51bmRlZjwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0
OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1f
VkFMVUUuU19BWElTX0RBVEEuUEhBU0UiPjAuMDAwPC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVu
dFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpy
ZWZlcmVuY2VJZD0iQlVTSUZQQVJBTV9WQUxVRS5TX0FYSVNfREFUQS5UREFUQV9OVU1fQllURVMi
PjQ8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25m
aWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVF
LlNfQVhJU19EQVRBLlRERVNUX1dJRFRIIj4wPC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZh
bHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZl
cmVuY2VJZD0iQlVTSUZQQVJBTV9WQUxVRS5TX0FYSVNfREFUQS5USURfV0lEVEgiPjA8L3NwaXJp
dDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVF
bGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVFLlNfQVhJU19E
QVRBLlRVU0VSX1dJRFRIIj4wPC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlPgogICAg
ICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0i
TU9ERUxQQVJBTV9WQUxVRS5DX0FSQ0giPjM8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFs
dWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVy
ZW5jZUlkPSJNT0RFTFBBUkFNX1ZBTFVFLkNfQkZMWV9UWVBFIj4wPC9zcGlyaXQ6Y29uZmlndXJh
YmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVl
IHNwaXJpdDpyZWZlcmVuY2VJZD0iTU9ERUxQQVJBTV9WQUxVRS5DX0JSQU1fU1RBR0VTIj4xPC9z
cGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJh
YmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iTU9ERUxQQVJBTV9WQUxVRS5DX0NI
QU5ORUxTIj4xPC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGly
aXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iTU9ERUxQQVJB
TV9WQUxVRS5DX0NNUFlfVFlQRSI+MTwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4K
ICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNl
SWQ9Ik1PREVMUEFSQU1fVkFMVUUuQ19EQVRBX01FTV9UWVBFIj4xPC9zcGlyaXQ6Y29uZmlndXJh
YmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVl
IHNwaXJpdDpyZWZlcmVuY2VJZD0iTU9ERUxQQVJBTV9WQUxVRS5DX0hBU19BQ0xLRU4iPjA8L3Nw
aXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFi
bGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJNT0RFTFBBUkFNX1ZBTFVFLkNfSEFT
X0FSRVNFVE4iPjE8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNw
aXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJNT0RFTFBB
UkFNX1ZBTFVFLkNfSEFTX0JGUCI+MDwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4K
ICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNl
SWQ9Ik1PREVMUEFSQU1fVkFMVUUuQ19IQVNfQ1lDTElDX1BSRUZJWCI+MDwvc3Bpcml0OmNvbmZp
Z3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRW
YWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9Ik1PREVMUEFSQU1fVkFMVUUuQ19IQVNfTkFUVVJBTF9J
TlBVVCI+MTwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0
OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9Ik1PREVMUEFSQU1f
VkFMVUUuQ19IQVNfTkFUVVJBTF9PVVRQVVQiPjE8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50
VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJl
ZmVyZW5jZUlkPSJNT0RFTFBBUkFNX1ZBTFVFLkNfSEFTX05GRlQiPjE8L3NwaXJpdDpjb25maWd1
cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFs
dWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJNT0RFTFBBUkFNX1ZBTFVFLkNfSEFTX09WRkxPIj4xPC9z
cGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJh
YmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iTU9ERUxQQVJBTV9WQUxVRS5DX0hB
U19ST1VORElORyI+MTwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8
c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9Ik1PREVM
UEFSQU1fVkFMVUUuQ19IQVNfU0NBTElORyI+MTwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRW
YWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVm
ZXJlbmNlSWQ9Ik1PREVMUEFSQU1fVkFMVUUuQ19IQVNfWEtfSU5ERVgiPjA8L3NwaXJpdDpjb25m
aWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50
VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJNT0RFTFBBUkFNX1ZBTFVFLkNfSU5QVVRfV0lEVEgi
PjE2PC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29u
ZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iTU9ERUxQQVJBTV9WQUxV
RS5DX01fQVhJU19EQVRBX1REQVRBX1dJRFRIIj4zMjwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1l
bnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6
cmVmZXJlbmNlSWQ9Ik1PREVMUEFSQU1fVkFMVUUuQ19NX0FYSVNfREFUQV9UVVNFUl9XSURUSCI+
ODwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZp
Z3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9Ik1PREVMUEFSQU1fVkFMVUUu
Q19NX0FYSVNfU1RBVFVTX1REQVRBX1dJRFRIIj44PC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVu
dFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpy
ZWZlcmVuY2VJZD0iTU9ERUxQQVJBTV9WQUxVRS5DX05GRlRfTUFYIj44PC9zcGlyaXQ6Y29uZmln
dXJhYmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZh
bHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iTU9ERUxQQVJBTV9WQUxVRS5DX09QVElNSVpFX0dPQUwi
PjA8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25m
aWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJNT0RFTFBBUkFNX1ZBTFVF
LkNfT1VUUFVUX1dJRFRIIj4xNjwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAg
ICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9
Ik1PREVMUEFSQU1fVkFMVUUuQ19SRU9SREVSX01FTV9UWVBFIj4xPC9zcGlyaXQ6Y29uZmlndXJh
YmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVl
IHNwaXJpdDpyZWZlcmVuY2VJZD0iTU9ERUxQQVJBTV9WQUxVRS5DX1NfQVhJU19DT05GSUdfVERB
VEFfV0lEVEgiPjI0PC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxz
cGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iTU9ERUxQ
QVJBTV9WQUxVRS5DX1NfQVhJU19EQVRBX1REQVRBX1dJRFRIIj4zMjwvc3Bpcml0OmNvbmZpZ3Vy
YWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1
ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9Ik1PREVMUEFSQU1fVkFMVUUuQ19USFJPVFRMRV9TQ0hFTUUi
PjE8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25m
aWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJNT0RFTFBBUkFNX1ZBTFVF
LkNfVFdJRERMRV9NRU1fVFlQRSI+MTwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4K
ICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNl
SWQ9Ik1PREVMUEFSQU1fVkFMVUUuQ19UV0lERExFX1dJRFRIIj4xNjwvc3Bpcml0OmNvbmZpZ3Vy
YWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1
ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9Ik1PREVMUEFSQU1fVkFMVUUuQ19VU0VfRkxUX1BUIj4wPC9z
cGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJh
YmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iTU9ERUxQQVJBTV9WQUxVRS5DX1VT
RV9IWUJSSURfUkFNIj4wPC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlPgogICAgICAg
IDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iTU9E
RUxQQVJBTV9WQUxVRS5DX1hERVZJQ0VGQU1JTFkiPnp5bnE8L3NwaXJpdDpjb25maWd1cmFibGVF
bGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bp
cml0OnJlZmVyZW5jZUlkPSJQQVJBTV9WQUxVRS5Db21wb25lbnRfTmFtZSI+eGZmdF8yNTY8L3Nw
aXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFi
bGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJQQVJBTV9WQUxVRS5hY2xrZW4iPmZh
bHNlPC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29u
ZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iUEFSQU1fVkFMVUUuYXJl
c2V0biI+dHJ1ZTwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bp
cml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IlBBUkFNX1ZB
TFVFLmJ1dHRlcmZseV90eXBlIj51c2VfbHV0czwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRW
YWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVm
ZXJlbmNlSWQ9IlBBUkFNX1ZBTFVFLmNoYW5uZWxzIj4xPC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxl
bWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJp
dDpyZWZlcmVuY2VJZD0iUEFSQU1fVkFMVUUuY29tcGxleF9tdWx0X3R5cGUiPnVzZV9tdWx0c19y
ZXNvdXJjZXM8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJp
dDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJQQVJBTV9WQUxV
RS5jeWNsaWNfcHJlZml4X2luc2VydGlvbiI+ZmFsc2U8L3NwaXJpdDpjb25maWd1cmFibGVFbGVt
ZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0
OnJlZmVyZW5jZUlkPSJQQVJBTV9WQUxVRS5kYXRhX2Zvcm1hdCI+Zml4ZWRfcG9pbnQ8L3NwaXJp
dDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVF
bGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJQQVJBTV9WQUxVRS5pbXBsZW1lbnRhdGlv
bl9vcHRpb25zIj5hdXRvbWF0aWNhbGx5X3NlbGVjdDwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1l
bnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6
cmVmZXJlbmNlSWQ9IlBBUkFNX1ZBTFVFLmlucHV0X3dpZHRoIj4xNjwvc3Bpcml0OmNvbmZpZ3Vy
YWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1
ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IlBBUkFNX1ZBTFVFLm1lbW9yeV9vcHRpb25zX2RhdGEiPmJs
b2NrX3JhbTwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0
OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IlBBUkFNX1ZBTFVF
Lm1lbW9yeV9vcHRpb25zX2h5YnJpZCI+ZmFsc2U8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50
VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJl
ZmVyZW5jZUlkPSJQQVJBTV9WQUxVRS5tZW1vcnlfb3B0aW9uc19waGFzZV9mYWN0b3JzIj5ibG9j
a19yYW08L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpj
b25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJQQVJBTV9WQUxVRS5t
ZW1vcnlfb3B0aW9uc19yZW9yZGVyIj5ibG9ja19yYW08L3NwaXJpdDpjb25maWd1cmFibGVFbGVt
ZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0
OnJlZmVyZW5jZUlkPSJQQVJBTV9WQUxVRS5udW1iZXJfb2Zfc3RhZ2VzX3VzaW5nX2Jsb2NrX3Jh
bV9mb3JfZGF0YV9hbmRfcGhhc2VfZmFjdG9ycyI+MTwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1l
bnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6
cmVmZXJlbmNlSWQ9IlBBUkFNX1ZBTFVFLm91dHB1dF9vcmRlcmluZyI+bmF0dXJhbF9vcmRlcjwv
c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3Vy
YWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IlBBUkFNX1ZBTFVFLm92ZmxvIj50
cnVlPC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29u
ZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iUEFSQU1fVkFMVUUucGhh
c2VfZmFjdG9yX3dpZHRoIj4xNjwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAg
ICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9
IlBBUkFNX1ZBTFVFLnJvdW5kaW5nX21vZGVzIj5jb252ZXJnZW50X3JvdW5kaW5nPC9zcGlyaXQ6
Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxl
bWVudFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iUEFSQU1fVkFMVUUucnVuX3RpbWVfY29uZmln
dXJhYmxlX3RyYW5zZm9ybV9sZW5ndGgiPnRydWU8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50
VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJl
ZmVyZW5jZUlkPSJQQVJBTV9WQUxVRS5zY2FsaW5nX29wdGlvbnMiPnNjYWxlZDwvc3Bpcml0OmNv
bmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1l
bnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IlBBUkFNX1ZBTFVFLnRhcmdldF9jbG9ja19mcmVx
dWVuY3kiPjIwMDwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bp
cml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IlBBUkFNX1ZB
TFVFLnRhcmdldF9kYXRhX3Rocm91Z2hwdXQiPjEyNTwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1l
bnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6
cmVmZXJlbmNlSWQ9IlBBUkFNX1ZBTFVFLnRocm90dGxlX3NjaGVtZSI+bm9ucmVhbHRpbWU8L3Nw
aXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFi
bGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJQQVJBTV9WQUxVRS50cmFuc2Zvcm1f
bGVuZ3RoIj4yNTY8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNw
aXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJQQVJBTV9W
QUxVRS54a19pbmRleCI+ZmFsc2U8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWU+CiAg
ICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlk
PSJQUk9KRUNUX1BBUkFNLkFSQ0hJVEVDVFVSRSI+enlucTwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVs
ZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGly
aXQ6cmVmZXJlbmNlSWQ9IlBST0pFQ1RfUEFSQU0uQkFTRV9CT0FSRF9QQVJUIi8+CiAgICAgICAg
PHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJQUk9K
RUNUX1BBUkFNLkJPQVJEX0NPTk5FQ1RJT05TIi8+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFi
bGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJQUk9KRUNUX1BBUkFNLkRFVklDRSI+
eGM3ejAyMDwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0
OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IlBST0pFQ1RfUEFS
QU0uUEFDS0FHRSI+Y2xnNDg0PC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlPgogICAg
ICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0i
UFJPSkVDVF9QQVJBTS5QUkVGSERMIj5WRVJJTE9HPC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVu
dFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpy
ZWZlcmVuY2VJZD0iUFJPSkVDVF9QQVJBTS5TSUxJQ09OX1JFVklTSU9OIi8+CiAgICAgICAgPHNw
aXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJQUk9KRUNU
X1BBUkFNLlNJTVVMQVRPUl9MQU5HVUFHRSI+TUlYRUQ8L3NwaXJpdDpjb25maWd1cmFibGVFbGVt
ZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0
OnJlZmVyZW5jZUlkPSJQUk9KRUNUX1BBUkFNLlNQRUVER1JBREUiPi0zPC9zcGlyaXQ6Y29uZmln
dXJhYmxlRWxlbWVudFZhbHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZh
bHVlIHNwaXJpdDpyZWZlcmVuY2VJZD0iUFJPSkVDVF9QQVJBTS5TVEFUSUNfUE9XRVIiLz4KICAg
ICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9
IlBST0pFQ1RfUEFSQU0uVEVNUEVSQVRVUkVfR1JBREUiLz4KICAgICAgICA8c3Bpcml0OmNvbmZp
Z3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IlBST0pFQ1RfUEFSQU0uVVNF
X1JESV9DVVNUT01JWkFUSU9OIj5UUlVFPC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVl
PgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZlcmVu
Y2VJZD0iUFJPSkVDVF9QQVJBTS5VU0VfUkRJX0dFTkVSQVRJT04iPlRSVUU8L3NwaXJpdDpjb25m
aWd1cmFibGVFbGVtZW50VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50
VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJSVU5USU1FX1BBUkFNLklQQ09OVEVYVCI+SVBfRmxv
dzwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bpcml0OmNvbmZp
Z3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IlJVTlRJTUVfUEFSQU0uSVBS
RVZJU0lPTiI+Mjwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAgICA8c3Bp
cml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IlJVTlRJTUVf
UEFSQU0uTUFOQUdFRCI+VFJVRTwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAg
ICAgICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9
IlJVTlRJTUVfUEFSQU0uT1VUUFVURElSIj4uPC9zcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZh
bHVlPgogICAgICAgIDxzcGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlIHNwaXJpdDpyZWZl
cmVuY2VJZD0iUlVOVElNRV9QQVJBTS5TRUxFQ1RFRFNJTU1PREVMIi8+CiAgICAgICAgPHNwaXJp
dDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJlZmVyZW5jZUlkPSJSVU5USU1FX1BB
UkFNLlNIQVJFRERJUiI+Ljwvc3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZT4KICAgICAg
ICA8c3Bpcml0OmNvbmZpZ3VyYWJsZUVsZW1lbnRWYWx1ZSBzcGlyaXQ6cmVmZXJlbmNlSWQ9IlJV
TlRJTUVfUEFSQU0uU1dWRVJTSU9OIj4yMDE5LjE8L3NwaXJpdDpjb25maWd1cmFibGVFbGVtZW50
VmFsdWU+CiAgICAgICAgPHNwaXJpdDpjb25maWd1cmFibGVFbGVtZW50VmFsdWUgc3Bpcml0OnJl
ZmVyZW5jZUlkPSJSVU5USU1FX1BBUkFNLlNZTlRIRVNJU0ZMT1ciPk9VVF9PRl9DT05URVhUPC9z
cGlyaXQ6Y29uZmlndXJhYmxlRWxlbWVudFZhbHVlPgogICAgICA8L3NwaXJpdDpjb25maWd1cmFi
bGVFbGVtZW50VmFsdWVzPgogICAgICA8c3Bpcml0OnZlbmRvckV4dGVuc2lvbnM+CiAgICAgICAg
PHhpbGlueDpjb21wb25lbnRJbnN0YW5jZUV4dGVuc2lvbnM+CiAgICAgICAgICA8eGlsaW54OmNv
bmZpZ0VsZW1lbnRJbmZvcz4KICAgICAgICAgICAgPHhpbGlueDpjb25maWdFbGVtZW50SW5mbyB4
aWxpbng6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUuTV9BWElTX0RBVEEuSEFTX1RLRUVQ
IiB4aWxpbng6dmFsdWVTb3VyY2U9ImNvbnN0YW50Ii8+CiAgICAgICAgICAgIDx4aWxpbng6Y29u
ZmlnRWxlbWVudEluZm8geGlsaW54OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVFLk1fQVhJ
U19EQVRBLkhBU19UTEFTVCIgeGlsaW54OnZhbHVlU291cmNlPSJjb25zdGFudCIvPgogICAgICAg
ICAgICA8eGlsaW54OmNvbmZpZ0VsZW1lbnRJbmZvIHhpbGlueDpyZWZlcmVuY2VJZD0iQlVTSUZQ
QVJBTV9WQUxVRS5NX0FYSVNfREFUQS5IQVNfVFNUUkIiIHhpbGlueDp2YWx1ZVNvdXJjZT0iY29u
c3RhbnQiLz4KICAgICAgICAgICAgPHhpbGlueDpjb25maWdFbGVtZW50SW5mbyB4aWxpbng6cmVm
ZXJlbmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUuTV9BWElTX0RBVEEuVERBVEFfTlVNX0JZVEVTIiB4
aWxpbng6dmFsdWVTb3VyY2U9ImF1dG8iLz4KICAgICAgICAgICAgPHhpbGlueDpjb25maWdFbGVt
ZW50SW5mbyB4aWxpbng6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUuTV9BWElTX0RBVEEu
VERFU1RfV0lEVEgiIHhpbGlueDp2YWx1ZVNvdXJjZT0iY29uc3RhbnQiLz4KICAgICAgICAgICAg
PHhpbGlueDpjb25maWdFbGVtZW50SW5mbyB4aWxpbng6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1f
VkFMVUUuTV9BWElTX0RBVEEuVElEX1dJRFRIIiB4aWxpbng6dmFsdWVTb3VyY2U9ImNvbnN0YW50
Ii8+CiAgICAgICAgICAgIDx4aWxpbng6Y29uZmlnRWxlbWVudEluZm8geGlsaW54OnJlZmVyZW5j
ZUlkPSJCVVNJRlBBUkFNX1ZBTFVFLk1fQVhJU19EQVRBLlRVU0VSX1dJRFRIIiB4aWxpbng6dmFs
dWVTb3VyY2U9ImF1dG8iLz4KICAgICAgICAgICAgPHhpbGlueDpjb25maWdFbGVtZW50SW5mbyB4
aWxpbng6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUuTV9BWElTX1NUQVRVUy5IQVNfVEtF
RVAiIHhpbGlueDp2YWx1ZVNvdXJjZT0iY29uc3RhbnQiLz4KICAgICAgICAgICAgPHhpbGlueDpj
b25maWdFbGVtZW50SW5mbyB4aWxpbng6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUuTV9B
WElTX1NUQVRVUy5IQVNfVExBU1QiIHhpbGlueDp2YWx1ZVNvdXJjZT0iY29uc3RhbnQiLz4KICAg
ICAgICAgICAgPHhpbGlueDpjb25maWdFbGVtZW50SW5mbyB4aWxpbng6cmVmZXJlbmNlSWQ9IkJV
U0lGUEFSQU1fVkFMVUUuTV9BWElTX1NUQVRVUy5IQVNfVFNUUkIiIHhpbGlueDp2YWx1ZVNvdXJj
ZT0iY29uc3RhbnQiLz4KICAgICAgICAgICAgPHhpbGlueDpjb25maWdFbGVtZW50SW5mbyB4aWxp
bng6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUuTV9BWElTX1NUQVRVUy5UREVTVF9XSURU
SCIgeGlsaW54OnZhbHVlU291cmNlPSJjb25zdGFudCIvPgogICAgICAgICAgICA8eGlsaW54OmNv
bmZpZ0VsZW1lbnRJbmZvIHhpbGlueDpyZWZlcmVuY2VJZD0iQlVTSUZQQVJBTV9WQUxVRS5NX0FY
SVNfU1RBVFVTLlRJRF9XSURUSCIgeGlsaW54OnZhbHVlU291cmNlPSJjb25zdGFudCIvPgogICAg
ICAgICAgICA8eGlsaW54OmNvbmZpZ0VsZW1lbnRJbmZvIHhpbGlueDpyZWZlcmVuY2VJZD0iQlVT
SUZQQVJBTV9WQUxVRS5NX0FYSVNfU1RBVFVTLlRVU0VSX1dJRFRIIiB4aWxpbng6dmFsdWVTb3Vy
Y2U9ImNvbnN0YW50Ii8+CiAgICAgICAgICAgIDx4aWxpbng6Y29uZmlnRWxlbWVudEluZm8geGls
aW54OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVFLlNfQVhJU19DT05GSUcuSEFTX1RLRUVQ
IiB4aWxpbng6dmFsdWVTb3VyY2U9ImNvbnN0YW50Ii8+CiAgICAgICAgICAgIDx4aWxpbng6Y29u
ZmlnRWxlbWVudEluZm8geGlsaW54OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVFLlNfQVhJ
U19DT05GSUcuSEFTX1RMQVNUIiB4aWxpbng6dmFsdWVTb3VyY2U9ImNvbnN0YW50Ii8+CiAgICAg
ICAgICAgIDx4aWxpbng6Y29uZmlnRWxlbWVudEluZm8geGlsaW54OnJlZmVyZW5jZUlkPSJCVVNJ
RlBBUkFNX1ZBTFVFLlNfQVhJU19DT05GSUcuSEFTX1RSRUFEWSIgeGlsaW54OnZhbHVlU291cmNl
PSJjb25zdGFudCIvPgogICAgICAgICAgICA8eGlsaW54OmNvbmZpZ0VsZW1lbnRJbmZvIHhpbGlu
eDpyZWZlcmVuY2VJZD0iQlVTSUZQQVJBTV9WQUxVRS5TX0FYSVNfQ09ORklHLkhBU19UU1RSQiIg
eGlsaW54OnZhbHVlU291cmNlPSJjb25zdGFudCIvPgogICAgICAgICAgICA8eGlsaW54OmNvbmZp
Z0VsZW1lbnRJbmZvIHhpbGlueDpyZWZlcmVuY2VJZD0iQlVTSUZQQVJBTV9WQUxVRS5TX0FYSVNf
Q09ORklHLlREQVRBX05VTV9CWVRFUyIgeGlsaW54OnZhbHVlU291cmNlPSJhdXRvIi8+CiAgICAg
ICAgICAgIDx4aWxpbng6Y29uZmlnRWxlbWVudEluZm8geGlsaW54OnJlZmVyZW5jZUlkPSJCVVNJ
RlBBUkFNX1ZBTFVFLlNfQVhJU19DT05GSUcuVERFU1RfV0lEVEgiIHhpbGlueDp2YWx1ZVNvdXJj
ZT0iY29uc3RhbnQiLz4KICAgICAgICAgICAgPHhpbGlueDpjb25maWdFbGVtZW50SW5mbyB4aWxp
bng6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUuU19BWElTX0NPTkZJRy5USURfV0lEVEgi
IHhpbGlueDp2YWx1ZVNvdXJjZT0iY29uc3RhbnQiLz4KICAgICAgICAgICAgPHhpbGlueDpjb25m
aWdFbGVtZW50SW5mbyB4aWxpbng6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUuU19BWElT
X0NPTkZJRy5UVVNFUl9XSURUSCIgeGlsaW54OnZhbHVlU291cmNlPSJjb25zdGFudCIvPgogICAg
ICAgICAgICA8eGlsaW54OmNvbmZpZ0VsZW1lbnRJbmZvIHhpbGlueDpyZWZlcmVuY2VJZD0iQlVT
SUZQQVJBTV9WQUxVRS5TX0FYSVNfREFUQS5IQVNfVEtFRVAiIHhpbGlueDp2YWx1ZVNvdXJjZT0i
Y29uc3RhbnQiLz4KICAgICAgICAgICAgPHhpbGlueDpjb25maWdFbGVtZW50SW5mbyB4aWxpbng6
cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1fVkFMVUUuU19BWElTX0RBVEEuSEFTX1RMQVNUIiB4aWxp
bng6dmFsdWVTb3VyY2U9ImNvbnN0YW50Ii8+CiAgICAgICAgICAgIDx4aWxpbng6Y29uZmlnRWxl
bWVudEluZm8geGlsaW54OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVFLlNfQVhJU19EQVRB
LkhBU19UUkVBRFkiIHhpbGlueDp2YWx1ZVNvdXJjZT0iY29uc3RhbnQiLz4KICAgICAgICAgICAg
PHhpbGlueDpjb25maWdFbGVtZW50SW5mbyB4aWxpbng6cmVmZXJlbmNlSWQ9IkJVU0lGUEFSQU1f
VkFMVUUuU19BWElTX0RBVEEuSEFTX1RTVFJCIiB4aWxpbng6dmFsdWVTb3VyY2U9ImNvbnN0YW50
Ii8+CiAgICAgICAgICAgIDx4aWxpbng6Y29uZmlnRWxlbWVudEluZm8geGlsaW54OnJlZmVyZW5j
ZUlkPSJCVVNJRlBBUkFNX1ZBTFVFLlNfQVhJU19EQVRBLlREQVRBX05VTV9CWVRFUyIgeGlsaW54
OnZhbHVlU291cmNlPSJhdXRvIi8+CiAgICAgICAgICAgIDx4aWxpbng6Y29uZmlnRWxlbWVudElu
Zm8geGlsaW54OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVFLlNfQVhJU19EQVRBLlRERVNU
X1dJRFRIIiB4aWxpbng6dmFsdWVTb3VyY2U9ImNvbnN0YW50Ii8+CiAgICAgICAgICAgIDx4aWxp
bng6Y29uZmlnRWxlbWVudEluZm8geGlsaW54OnJlZmVyZW5jZUlkPSJCVVNJRlBBUkFNX1ZBTFVF
LlNfQVhJU19EQVRBLlRJRF9XSURUSCIgeGlsaW54OnZhbHVlU291cmNlPSJjb25zdGFudCIvPgog
ICAgICAgICAgICA8eGlsaW54OmNvbmZpZ0VsZW1lbnRJbmZvIHhpbGlueDpyZWZlcmVuY2VJZD0i
QlVTSUZQQVJBTV9WQUxVRS5TX0FYSVNfREFUQS5UVVNFUl9XSURUSCIgeGlsaW54OnZhbHVlU291
cmNlPSJjb25zdGFudCIvPgogICAgICAgICAgICA8eGlsaW54OmNvbmZpZ0VsZW1lbnRJbmZvIHhp
bGlueDpyZWZlcmVuY2VJZD0iUEFSQU1fVkFMVUUuYXJlc2V0biIgeGlsaW54OnZhbHVlU291cmNl
PSJ1c2VyIi8+CiAgICAgICAgICAgIDx4aWxpbng6Y29uZmlnRWxlbWVudEluZm8geGlsaW54OnJl
ZmVyZW5jZUlkPSJQQVJBTV9WQUxVRS5jaGFubmVscyIgeGlsaW54OnZhbHVlU291cmNlPSJ1c2Vy
Ii8+CiAgICAgICAgICAgIDx4aWxpbng6Y29uZmlnRWxlbWVudEluZm8geGlsaW54OnJlZmVyZW5j
ZUlkPSJQQVJBTV9WQUxVRS5kYXRhX2Zvcm1hdCIgeGlsaW54OnZhbHVlU291cmNlPSJ1c2VyIi8+
CiAgICAgICAgICAgIDx4aWxpbng6Y29uZmlnRWxlbWVudEluZm8geGlsaW54OnJlZmVyZW5jZUlk
PSJQQVJBTV9WQUxVRS5pbXBsZW1lbnRhdGlvbl9vcHRpb25zIiB4aWxpbng6dmFsdWVTb3VyY2U9
InVzZXIiLz4KICAgICAgICAgICAgPHhpbGlueDpjb25maWdFbGVtZW50SW5mbyB4aWxpbng6cmVm
ZXJlbmNlSWQ9IlBBUkFNX1ZBTFVFLm1lbW9yeV9vcHRpb25zX3Jlb3JkZXIiIHhpbGlueDp2YWx1
ZVNvdXJjZT0idXNlciIvPgogICAgICAgICAgICA8eGlsaW54OmNvbmZpZ0VsZW1lbnRJbmZvIHhp
bGlueDpyZWZlcmVuY2VJZD0iUEFSQU1fVkFMVUUubnVtYmVyX29mX3N0YWdlc191c2luZ19ibG9j
a19yYW1fZm9yX2RhdGFfYW5kX3BoYXNlX2ZhY3RvcnMiIHhpbGlueDp2YWx1ZVNvdXJjZT0idXNl
ciIvPgogICAgICAgICAgICA8eGlsaW54OmNvbmZpZ0VsZW1lbnRJbmZvIHhpbGlueDpyZWZlcmVu
Y2VJZD0iUEFSQU1fVkFMVUUub3V0cHV0X29yZGVyaW5nIiB4aWxpbng6dmFsdWVTb3VyY2U9InVz
ZXIiLz4KICAgICAgICAgICAgPHhpbGlueDpjb25maWdFbGVtZW50SW5mbyB4aWxpbng6cmVmZXJl
bmNlSWQ9IlBBUkFNX1ZBTFVFLm92ZmxvIiB4aWxpbng6dmFsdWVTb3VyY2U9InVzZXIiLz4KICAg
ICAgICAgICAgPHhpbGlueDpjb25maWdFbGVtZW50SW5mbyB4aWxpbng6cmVmZXJlbmNlSWQ9IlBB
UkFNX1ZBTFVFLnJvdW5kaW5nX21vZGVzIiB4aWxpbng6dmFsdWVTb3VyY2U9InVzZXIiLz4KICAg
ICAgICAgICAgPHhpbGlueDpjb25maWdFbGVtZW50SW5mbyB4aWxpbng6cmVmZXJlbmNlSWQ9IlBB
UkFNX1ZBTFVFLnJ1bl90aW1lX2NvbmZpZ3VyYWJsZV90cmFuc2Zvcm1fbGVuZ3RoIiB4aWxpbng6
dmFsdWVTb3VyY2U9InVzZXIiLz4KICAgICAgICAgICAgPHhpbGlueDpjb25maWdFbGVtZW50SW5m
byB4aWxpbng6cmVmZXJlbmNlSWQ9IlBBUkFNX1ZBTFVFLnNjYWxpbmdfb3B0aW9ucyIgeGlsaW54
OnZhbHVlU291cmNlPSJ1c2VyIi8+CiAgICAgICAgICAgIDx4aWxpbng6Y29uZmlnRWxlbWVudElu
Zm8geGlsaW54OnJlZmVyZW5jZUlkPSJQQVJBTV9WQUxVRS50YXJnZXRfY2xvY2tfZnJlcXVlbmN5
IiB4aWxpbng6dmFsdWVTb3VyY2U9InVzZXIiLz4KICAgICAgICAgICAgPHhpbGlueDpjb25maWdF
bGVtZW50SW5mbyB4aWxpbng6cmVmZXJlbmNlSWQ9IlBBUkFNX1ZBTFVFLnRhcmdldF9kYXRhX3Ro
cm91Z2hwdXQiIHhpbGlueDp2YWx1ZVNvdXJjZT0idXNlciIvPgogICAgICAgICAgICA8eGlsaW54
OmNvbmZpZ0VsZW1lbnRJbmZvIHhpbGlueDpyZWZlcmVuY2VJZD0iUEFSQU1fVkFMVUUudHJhbnNm
b3JtX2xlbmd0aCIgeGlsaW54OnZhbHVlU291cmNlPSJ1c2VyIi8+CiAgICAgICAgICA8L3hpbGlu
eDpjb25maWdFbGVtZW50SW5mb3M+CiAgICAgICAgPC94aWxpbng6Y29tcG9uZW50SW5zdGFuY2VF
eHRlbnNpb25zPgogICAgICA8L3NwaXJpdDp2ZW5kb3JFeHRlbnNpb25zPgogICAgPC9zcGlyaXQ6
Y29tcG9uZW50SW5zdGFuY2U+CiAgPC9zcGlyaXQ6Y29tcG9uZW50SW5zdGFuY2VzPgo8L3NwaXJp
dDpkZXNpZ24+Cg==
--000000000000de163405d83d3389
Content-Type: text/x-verilog; charset="US-ASCII"; name="rfnoc_block_xfft_256.v"
Content-Disposition: attachment; filename="rfnoc_block_xfft_256.v"
Content-Transfer-Encoding: base64
Content-ID: <f_kzrgqk8e2>
X-Attachment-Id: f_kzrgqk8e2

Ly8KLy8gQ29weXJpZ2h0IDIwMjIgRXR0dXMgUmVzZWFyY2gsIGEgTmF0aW9uYWwgSW5zdHJ1bWVu
dHMgQnJhbmQKLy8KLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IExHUEwtMy4wLW9yLWxhdGVy
Ci8vCi8vIE1vZHVsZTogcmZub2NfYmxvY2tfeGZmdF8yNTYKLy8KLy8gRGVzY3JpcHRpb246Ci8v
Ci8vICAgPEFkZCBibG9jayBkZXNjcmlwdGlvbiBoZXJlPgovLwovLyBQYXJhbWV0ZXJzOgovLwov
LyAgIFRISVNfUE9SVElEIDogQ29udHJvbCBjcm9zc2JhciBwb3J0IHRvIHdoaWNoIHRoaXMgYmxv
Y2sgaXMgY29ubmVjdGVkCi8vICAgQ0hEUl9XICAgICAgOiBBWElTLUNIRFIgZGF0YSBidXMgd2lk
dGgKLy8gICBNVFUgICAgICAgICA6IE1heGltdW0gdHJhbnNtaXNzaW9uIHVuaXQgKGkuZS4sIG1h
eGltdW0gcGFja2V0IHNpemUgaW4KLy8gICAgICAgICAgICAgICAgIENIRFIgd29yZHMgaXMgMioq
TVRVKS4KLy8KCmBkZWZhdWx0X25ldHR5cGUgbm9uZQoKCm1vZHVsZSByZm5vY19ibG9ja194ZmZ0
XzI1NiAjKAogIHBhcmFtZXRlciBbOTowXSBUSElTX1BPUlRJRCAgICAgPSAxMCdkMCwKICBwYXJh
bWV0ZXIgICAgICAgQ0hEUl9XICAgICAgICAgID0gNjQsCiAgcGFyYW1ldGVyIFs1OjBdIE1UVSAg
ICAgICAgICAgICA9IDEwCikoCiAgLy8gUkZOb0MgRnJhbWV3b3JrIENsb2NrcyBhbmQgUmVzZXRz
CiAgaW5wdXQgIHdpcmUgICAgICAgICAgICAgICAgICAgcmZub2NfY2hkcl9jbGssCiAgaW5wdXQg
IHdpcmUgICAgICAgICAgICAgICAgICAgcmZub2NfY3RybF9jbGssCiAgaW5wdXQgIHdpcmUgICAg
ICAgICAgICAgICAgICAgY2VfY2xrLAogIC8vIFJGTm9DIEJhY2tlbmQgSW50ZXJmYWNlCiAgaW5w
dXQgIHdpcmUgWzUxMTowXSAgICAgICAgICAgcmZub2NfY29yZV9jb25maWcsCiAgb3V0cHV0IHdp
cmUgWzUxMTowXSAgICAgICAgICAgcmZub2NfY29yZV9zdGF0dXMsCiAgLy8gQVhJUy1DSERSIElu
cHV0IFBvcnRzIChmcm9tIGZyYW1ld29yaykKICBpbnB1dCAgd2lyZSBbKDEpKkNIRFJfVy0xOjBd
IHNfcmZub2NfY2hkcl90ZGF0YSwKICBpbnB1dCAgd2lyZSBbKDEpLTE6MF0gICAgICAgIHNfcmZu
b2NfY2hkcl90bGFzdCwKICBpbnB1dCAgd2lyZSBbKDEpLTE6MF0gICAgICAgIHNfcmZub2NfY2hk
cl90dmFsaWQsCiAgb3V0cHV0IHdpcmUgWygxKS0xOjBdICAgICAgICBzX3Jmbm9jX2NoZHJfdHJl
YWR5LAogIC8vIEFYSVMtQ0hEUiBPdXRwdXQgUG9ydHMgKHRvIGZyYW1ld29yaykKICBvdXRwdXQg
d2lyZSBbKDEpKkNIRFJfVy0xOjBdIG1fcmZub2NfY2hkcl90ZGF0YSwKICBvdXRwdXQgd2lyZSBb
KDEpLTE6MF0gICAgICAgIG1fcmZub2NfY2hkcl90bGFzdCwKICBvdXRwdXQgd2lyZSBbKDEpLTE6
MF0gICAgICAgIG1fcmZub2NfY2hkcl90dmFsaWQsCiAgaW5wdXQgIHdpcmUgWygxKS0xOjBdICAg
ICAgICBtX3Jmbm9jX2NoZHJfdHJlYWR5LAogIC8vIEFYSVMtQ3RybCBJbnB1dCBQb3J0IChmcm9t
IGZyYW1ld29yaykKICBpbnB1dCAgd2lyZSBbMzE6MF0gICAgICAgICAgICBzX3Jmbm9jX2N0cmxf
dGRhdGEsCiAgaW5wdXQgIHdpcmUgICAgICAgICAgICAgICAgICAgc19yZm5vY19jdHJsX3RsYXN0
LAogIGlucHV0ICB3aXJlICAgICAgICAgICAgICAgICAgIHNfcmZub2NfY3RybF90dmFsaWQsCiAg
b3V0cHV0IHdpcmUgICAgICAgICAgICAgICAgICAgc19yZm5vY19jdHJsX3RyZWFkeSwKICAvLyBB
WElTLUN0cmwgT3V0cHV0IFBvcnQgKHRvIGZyYW1ld29yaykKICBvdXRwdXQgd2lyZSBbMzE6MF0g
ICAgICAgICAgICBtX3Jmbm9jX2N0cmxfdGRhdGEsCiAgb3V0cHV0IHdpcmUgICAgICAgICAgICAg
ICAgICAgbV9yZm5vY19jdHJsX3RsYXN0LAogIG91dHB1dCB3aXJlICAgICAgICAgICAgICAgICAg
IG1fcmZub2NfY3RybF90dmFsaWQsCiAgaW5wdXQgIHdpcmUgICAgICAgICAgICAgICAgICAgbV9y
Zm5vY19jdHJsX3RyZWFkeQopOwoKICAvLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogIC8vIFNpZ25hbCBE
ZWNsYXJhdGlvbnMKICAvLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICAvLyBDbG9ja3MgYW5kIFJlc2V0
cwogIHdpcmUgICAgICAgICAgICAgICBjdHJscG9ydF9jbGs7CiAgd2lyZSAgICAgICAgICAgICAg
IGN0cmxwb3J0X3JzdDsKICB3aXJlICAgICAgICAgICAgICAgYXhpc19kYXRhX2NsazsKICB3aXJl
ICAgICAgICAgICAgICAgYXhpc19kYXRhX3JzdDsKICAvLyBDdHJsUG9ydCBNYXN0ZXIKICB3aXJl
ICAgICAgICAgICAgICAgbV9jdHJscG9ydF9yZXFfd3I7CiAgd2lyZSAgICAgICAgICAgICAgIG1f
Y3RybHBvcnRfcmVxX3JkOwogIHdpcmUgWzE5OjBdICAgICAgICBtX2N0cmxwb3J0X3JlcV9hZGRy
OwogIHdpcmUgWzMxOjBdICAgICAgICBtX2N0cmxwb3J0X3JlcV9kYXRhOwogIHdpcmUgICAgICAg
ICAgICAgICBtX2N0cmxwb3J0X3Jlc3BfYWNrOwogIHdpcmUgWzMxOjBdICAgICAgICBtX2N0cmxw
b3J0X3Jlc3BfZGF0YTsKICAvLyBEYXRhIFN0cmVhbSB0byBVc2VyIExvZ2ljOiBpbgogIHdpcmUg
WzMyKjEtMTowXSAgICBtX2luX2F4aXNfdGRhdGE7CiAgd2lyZSBbMS0xOjBdICAgICAgIG1faW5f
YXhpc190a2VlcDsKICB3aXJlICAgICAgICAgICAgICAgbV9pbl9heGlzX3RsYXN0OwogIHdpcmUg
ICAgICAgICAgICAgICBtX2luX2F4aXNfdHZhbGlkOwogIHdpcmUgICAgICAgICAgICAgICBtX2lu
X2F4aXNfdHJlYWR5OwogIHdpcmUgWzYzOjBdICAgICAgICBtX2luX2F4aXNfdHRpbWVzdGFtcDsK
ICB3aXJlICAgICAgICAgICAgICAgbV9pbl9heGlzX3RoYXNfdGltZTsKICB3aXJlIFsxNTowXSAg
ICAgICAgbV9pbl9heGlzX3RsZW5ndGg7CiAgd2lyZSAgICAgICAgICAgICAgIG1faW5fYXhpc190
ZW92OwogIHdpcmUgICAgICAgICAgICAgICBtX2luX2F4aXNfdGVvYjsKICAvLyBEYXRhIFN0cmVh
bSBmcm9tIFVzZXIgTG9naWM6IG91dAogIHdpcmUgWzMyKjEtMTowXSAgICBzX291dF9heGlzX3Rk
YXRhOwogIHdpcmUgWzA6MF0gICAgICAgICBzX291dF9heGlzX3RrZWVwOwogIHdpcmUgICAgICAg
ICAgICAgICBzX291dF9heGlzX3RsYXN0OwogIHdpcmUgICAgICAgICAgICAgICBzX291dF9heGlz
X3R2YWxpZDsKICB3aXJlICAgICAgICAgICAgICAgc19vdXRfYXhpc190cmVhZHk7CiAgd2lyZSBb
NjM6MF0gICAgICAgIHNfb3V0X2F4aXNfdHRpbWVzdGFtcDsKICB3aXJlICAgICAgICAgICAgICAg
c19vdXRfYXhpc190aGFzX3RpbWU7CiAgd2lyZSBbMTU6MF0gICAgICAgIHNfb3V0X2F4aXNfdGxl
bmd0aDsKICB3aXJlICAgICAgICAgICAgICAgc19vdXRfYXhpc190ZW92OwogIHdpcmUgICAgICAg
ICAgICAgICBzX291dF9heGlzX3Rlb2I7CgogIC8vLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAgLy8gTm9D
IFNoZWxsCiAgLy8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgbm9jX3NoZWxsX3hmZnRfMjU2ICMoCiAg
ICAuQ0hEUl9XICAgICAgICAgICAgICAoQ0hEUl9XKSwKICAgIC5USElTX1BPUlRJRCAgICAgICAg
IChUSElTX1BPUlRJRCksCiAgICAuTVRVICAgICAgICAgICAgICAgICAoTVRVKQogICkgbm9jX3No
ZWxsX3hmZnRfMjU2X2kgKAogICAgLy8tLS0tLS0tLS0tLS0tLS0tLS0tLS0KICAgIC8vIEZyYW1l
d29yayBJbnRlcmZhY2UKICAgIC8vLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogICAgLy8gQ2xvY2sg
SW5wdXRzCiAgICAucmZub2NfY2hkcl9jbGsgICAgICAocmZub2NfY2hkcl9jbGspLAogICAgLnJm
bm9jX2N0cmxfY2xrICAgICAgKHJmbm9jX2N0cmxfY2xrKSwKICAgIC5jZV9jbGsgICAgICAgICAg
ICAgIChjZV9jbGspLAogICAgLy8gUmVzZXQgT3V0cHV0cwogICAgLnJmbm9jX2NoZHJfcnN0ICAg
ICAgKCksCiAgICAucmZub2NfY3RybF9yc3QgICAgICAoKSwKICAgIC5jZV9yc3QgICAgICAgICAg
ICAgICgpLAogICAgLy8gUkZOb0MgQmFja2VuZCBJbnRlcmZhY2UKICAgIC5yZm5vY19jb3JlX2Nv
bmZpZyAgIChyZm5vY19jb3JlX2NvbmZpZyksCiAgICAucmZub2NfY29yZV9zdGF0dXMgICAocmZu
b2NfY29yZV9zdGF0dXMpLAogICAgLy8gQ0hEUiBJbnB1dCBQb3J0cyAgKGZyb20gZnJhbWV3b3Jr
KQogICAgLnNfcmZub2NfY2hkcl90ZGF0YSAgKHNfcmZub2NfY2hkcl90ZGF0YSksCiAgICAuc19y
Zm5vY19jaGRyX3RsYXN0ICAoc19yZm5vY19jaGRyX3RsYXN0KSwKICAgIC5zX3Jmbm9jX2NoZHJf
dHZhbGlkIChzX3Jmbm9jX2NoZHJfdHZhbGlkKSwKICAgIC5zX3Jmbm9jX2NoZHJfdHJlYWR5IChz
X3Jmbm9jX2NoZHJfdHJlYWR5KSwKICAgIC8vIENIRFIgT3V0cHV0IFBvcnRzICh0byBmcmFtZXdv
cmspCiAgICAubV9yZm5vY19jaGRyX3RkYXRhICAobV9yZm5vY19jaGRyX3RkYXRhKSwKICAgIC5t
X3Jmbm9jX2NoZHJfdGxhc3QgIChtX3Jmbm9jX2NoZHJfdGxhc3QpLAogICAgLm1fcmZub2NfY2hk
cl90dmFsaWQgKG1fcmZub2NfY2hkcl90dmFsaWQpLAogICAgLm1fcmZub2NfY2hkcl90cmVhZHkg
KG1fcmZub2NfY2hkcl90cmVhZHkpLAogICAgLy8gQVhJUy1DdHJsIElucHV0IFBvcnQgKGZyb20g
ZnJhbWV3b3JrKQogICAgLnNfcmZub2NfY3RybF90ZGF0YSAgKHNfcmZub2NfY3RybF90ZGF0YSks
CiAgICAuc19yZm5vY19jdHJsX3RsYXN0ICAoc19yZm5vY19jdHJsX3RsYXN0KSwKICAgIC5zX3Jm
bm9jX2N0cmxfdHZhbGlkIChzX3Jmbm9jX2N0cmxfdHZhbGlkKSwKICAgIC5zX3Jmbm9jX2N0cmxf
dHJlYWR5IChzX3Jmbm9jX2N0cmxfdHJlYWR5KSwKICAgIC8vIEFYSVMtQ3RybCBPdXRwdXQgUG9y
dCAodG8gZnJhbWV3b3JrKQogICAgLm1fcmZub2NfY3RybF90ZGF0YSAgKG1fcmZub2NfY3RybF90
ZGF0YSksCiAgICAubV9yZm5vY19jdHJsX3RsYXN0ICAobV9yZm5vY19jdHJsX3RsYXN0KSwKICAg
IC5tX3Jmbm9jX2N0cmxfdHZhbGlkIChtX3Jmbm9jX2N0cmxfdHZhbGlkKSwKICAgIC5tX3Jmbm9j
X2N0cmxfdHJlYWR5IChtX3Jmbm9jX2N0cmxfdHJlYWR5KSwKCiAgICAvLy0tLS0tLS0tLS0tLS0t
LS0tLS0tLQogICAgLy8gQ2xpZW50IEludGVyZmFjZQogICAgLy8tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KCiAgICAvLyBDdHJsUG9ydCBDbG9jayBhbmQgUmVzZXQKICAgIC5jdHJscG9ydF9jbGsgICAg
ICAgICAgICAgIChjdHJscG9ydF9jbGspLAogICAgLmN0cmxwb3J0X3JzdCAgICAgICAgICAgICAg
KGN0cmxwb3J0X3JzdCksCiAgICAvLyBDdHJsUG9ydCBNYXN0ZXIKICAgIC5tX2N0cmxwb3J0X3Jl
cV93ciAgICAgICAgIChtX2N0cmxwb3J0X3JlcV93ciksCiAgICAubV9jdHJscG9ydF9yZXFfcmQg
ICAgICAgICAobV9jdHJscG9ydF9yZXFfcmQpLAogICAgLm1fY3RybHBvcnRfcmVxX2FkZHIgICAg
ICAgKG1fY3RybHBvcnRfcmVxX2FkZHIpLAogICAgLm1fY3RybHBvcnRfcmVxX2RhdGEgICAgICAg
KG1fY3RybHBvcnRfcmVxX2RhdGEpLAogICAgLm1fY3RybHBvcnRfcmVzcF9hY2sgICAgICAgKG1f
Y3RybHBvcnRfcmVzcF9hY2spLAogICAgLm1fY3RybHBvcnRfcmVzcF9kYXRhICAgICAgKG1fY3Ry
bHBvcnRfcmVzcF9kYXRhKSwKCiAgICAvLyBBWEktU3RyZWFtIENsb2NrIGFuZCBSZXNldAogICAg
LmF4aXNfZGF0YV9jbGsgKGF4aXNfZGF0YV9jbGspLAogICAgLmF4aXNfZGF0YV9yc3QgKGF4aXNf
ZGF0YV9yc3QpLAogICAgLy8gRGF0YSBTdHJlYW0gdG8gVXNlciBMb2dpYzogaW4KICAgIC5tX2lu
X2F4aXNfdGRhdGEgICAgICAobV9pbl9heGlzX3RkYXRhKSwKICAgIC5tX2luX2F4aXNfdGtlZXAg
ICAgICAobV9pbl9heGlzX3RrZWVwKSwKICAgIC5tX2luX2F4aXNfdGxhc3QgICAgICAobV9pbl9h
eGlzX3RsYXN0KSwKICAgIC5tX2luX2F4aXNfdHZhbGlkICAgICAobV9pbl9heGlzX3R2YWxpZCks
CiAgICAubV9pbl9heGlzX3RyZWFkeSAgICAgKG1faW5fYXhpc190cmVhZHkpLAogICAgLm1faW5f
YXhpc190dGltZXN0YW1wIChtX2luX2F4aXNfdHRpbWVzdGFtcCksCiAgICAubV9pbl9heGlzX3Ro
YXNfdGltZSAgKG1faW5fYXhpc190aGFzX3RpbWUpLAogICAgLm1faW5fYXhpc190bGVuZ3RoICAg
IChtX2luX2F4aXNfdGxlbmd0aCksCiAgICAubV9pbl9heGlzX3Rlb3YgICAgICAgKG1faW5fYXhp
c190ZW92KSwKICAgIC5tX2luX2F4aXNfdGVvYiAgICAgICAobV9pbl9heGlzX3Rlb2IpLAogICAg
Ly8gRGF0YSBTdHJlYW0gZnJvbSBVc2VyIExvZ2ljOiBvdXQKICAgIC5zX291dF9heGlzX3RkYXRh
ICAgICAgKHNfb3V0X2F4aXNfdGRhdGEpLAogICAgLnNfb3V0X2F4aXNfdGtlZXAgICAgICAoc19v
dXRfYXhpc190a2VlcCksCiAgICAuc19vdXRfYXhpc190bGFzdCAgICAgIChzX291dF9heGlzX3Rs
YXN0KSwKICAgIC5zX291dF9heGlzX3R2YWxpZCAgICAgKHNfb3V0X2F4aXNfdHZhbGlkKSwKICAg
IC5zX291dF9heGlzX3RyZWFkeSAgICAgKHNfb3V0X2F4aXNfdHJlYWR5KSwKICAgIC5zX291dF9h
eGlzX3R0aW1lc3RhbXAgKHNfb3V0X2F4aXNfdHRpbWVzdGFtcCksCiAgICAuc19vdXRfYXhpc190
aGFzX3RpbWUgIChzX291dF9heGlzX3RoYXNfdGltZSksCiAgICAuc19vdXRfYXhpc190bGVuZ3Ro
ICAgIChzX291dF9heGlzX3RsZW5ndGgpLAogICAgLnNfb3V0X2F4aXNfdGVvdiAgICAgICAoc19v
dXRfYXhpc190ZW92KSwKICAgIC5zX291dF9heGlzX3Rlb2IgICAgICAgKHNfb3V0X2F4aXNfdGVv
YikKICApOwoKICAvLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogIC8vIFVzZXIgTG9naWMKICAvLy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQogIHdpcmUgWzIzOjBdIGZmdF9jb25maWdfdGRhdGEgPSAyNCdkNjQ7CiAg
d2lyZSBmZnRfY29uZmlnX3RyZWFkeTsKICByZWcgZmZ0X2NvbmZpZ190dmFsaWQ7CiAgYWx3YXlz
IEAocG9zZWRnZSBheGlzX2RhdGFfY2xrKSBiZWdpbgogICAgaWYgKGF4aXNfZGF0YV9yc3QpIGZm
dF9jb25maWdfdHZhbGlkIDw9IDEnYjE7CiAgICBlbHNlIGlmIChmZnRfY29uZmlnX3R2YWxpZCAm
IGZmdF9jb25maWdfdHJlYWR5KSBmZnRfY29uZmlnX3R2YWxpZCA8PSAxJ2IwOwogIGVuZAoKICB3
aXJlIFs3OjBdIGZmdF9zdGF0dXNfdGRhdGE7CiAgd2lyZSBmZnRfc3RhdHVzX3R2YWxpZDsKICB3
aXJlIGZmdF9zdGF0dXNfdHJlYWR5ID0gMSdiMTsKICAKICB3aXJlIGV2ZW50X2ZyYW1lX3N0YXJ0
ZWQ7CiAgd2lyZSBldmVudF90bGFzdF91bmV4cGVjdGVkOwogIHdpcmUgZXZlbnRfdGxhc3RfbWlz
c2luZzsKICB3aXJlIGV2ZW50X2ZmdF9vdmVyZmxvdzsKICB3aXJlIGV2ZW50X3N0YXR1c19jaGFu
bmVsX2hhbHQ7CiAgd2lyZSBldmVudF9kYXRhX2luX2NoYW5uZWxfaGFsdDsKICB3aXJlIGV2ZW50
X2RhdGFfb3V0X2NoYW5uZWxfaGFsdDsKICAKICB3aXJlIFs3OjBdIGZmdF9vdXRfdHVzZXI7CiAg
CiAgLy8gdGhpcyBpcyBjb3BpZWQgZnJvbSB0aGUgWGlsaW54IC52ZW8gdGVtcGxhdGUKICB4ZmZ0
XzI1NiBpbnN0X3hmZnQgKAogICAgLmFjbGsoYXhpc19kYXRhX2NsayksICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAvLyBpbnB1dCB3aXJlIGFjbGsKICAgIC5hcmVzZXRuKH5h
eGlzX2RhdGFfcnN0KSwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gaW5wdXQg
d2lyZSBhcmVzZXRuCiAgICAKICAgIC5zX2F4aXNfY29uZmlnX3RkYXRhKGZmdF9jb25maWdfdGRh
dGEpLCAgICAgICAgICAgICAgICAgICAgLy8gaW5wdXQgd2lyZSBbMjMgOiAwXSBzX2F4aXNfY29u
ZmlnX3RkYXRhCiAgICAuc19heGlzX2NvbmZpZ190dmFsaWQoZmZ0X2NvbmZpZ190dmFsaWQpLCAg
ICAgICAgICAgICAgICAgIC8vIGlucHV0IHdpcmUgc19heGlzX2NvbmZpZ190dmFsaWQKICAgIC5z
X2F4aXNfY29uZmlnX3RyZWFkeShmZnRfY29uZmlnX3RyZWFkeSksICAgICAgICAgICAgICAgICAg
Ly8gb3V0cHV0IHdpcmUgc19heGlzX2NvbmZpZ190cmVhZHkKICAgIAogICAgLnNfYXhpc19kYXRh
X3RkYXRhKG1faW5fYXhpc190ZGF0YSksICAgICAgICAgICAgICAgICAgICAgICAvLyBpbnB1dCB3
aXJlIFszMSA6IDBdIHNfYXhpc19kYXRhX3RkYXRhCiAgICAuc19heGlzX2RhdGFfdHZhbGlkKG1f
aW5fYXhpc190dmFsaWQpLCAgICAgICAgICAgICAgICAgICAgIC8vIGlucHV0IHdpcmUgc19heGlz
X2RhdGFfdHZhbGlkCiAgICAuc19heGlzX2RhdGFfdHJlYWR5KG1faW5fYXhpc190cmVhZHkpLCAg
ICAgICAgICAgICAgICAgICAgIC8vIG91dHB1dCB3aXJlIHNfYXhpc19kYXRhX3RyZWFkeQogICAg
LnNfYXhpc19kYXRhX3RsYXN0KG1faW5fYXhpc190bGFzdCksICAgICAgICAgICAgICAgICAgICAg
ICAvLyBpbnB1dCB3aXJlIHNfYXhpc19kYXRhX3RsYXN0CiAgICAKICAgIC5tX2F4aXNfZGF0YV90
ZGF0YShzX291dF9heGlzX3RkYXRhKSwgICAgICAgICAgICAgICAgICAgICAgLy8gb3V0cHV0IHdp
cmUgWzMxIDogMF0gbV9heGlzX2RhdGFfdGRhdGEKICAgIC5tX2F4aXNfZGF0YV90dXNlcihmZnRf
b3V0X3R1c2VyKSwgICAgICAgICAgICAgICAgICAgICAgICAgLy8gb3V0cHV0IHdpcmUgWzcgOiAw
XSBtX2F4aXNfZGF0YV90dXNlcgogICAgLm1fYXhpc19kYXRhX3R2YWxpZChzX291dF9heGlzX3R2
YWxpZCksICAgICAgICAgICAgICAgICAgICAvLyBvdXRwdXQgd2lyZSBtX2F4aXNfZGF0YV90dmFs
aWQKICAgIC5tX2F4aXNfZGF0YV90cmVhZHkoc19vdXRfYXhpc190cmVhZHkpLCAgICAgICAgICAg
ICAgICAgICAgLy8gaW5wdXQgd2lyZSBtX2F4aXNfZGF0YV90cmVhZHkKICAgIC5tX2F4aXNfZGF0
YV90bGFzdChzX291dF9heGlzX3RsYXN0KSwgICAgICAgICAgICAgICAgICAgICAgLy8gb3V0cHV0
IHdpcmUgbV9heGlzX2RhdGFfdGxhc3QKICAgIAogICAgLm1fYXhpc19zdGF0dXNfdGRhdGEoZmZ0
X3N0YXR1c190ZGF0YSksICAgICAgICAgICAgICAgICAgICAvLyBvdXRwdXQgd2lyZSBbNyA6IDBd
IG1fYXhpc19zdGF0dXNfdGRhdGEKICAgIC5tX2F4aXNfc3RhdHVzX3R2YWxpZChmZnRfc3RhdHVz
X3R2YWxpZCksICAgICAgICAgICAgICAgICAgLy8gb3V0cHV0IHdpcmUgbV9heGlzX3N0YXR1c190
dmFsaWQKICAgIC5tX2F4aXNfc3RhdHVzX3RyZWFkeShmZnRfc3RhdHVzX3RyZWFkeSksICAgICAg
ICAgICAgICAgICAgLy8gaW5wdXQgd2lyZSBtX2F4aXNfc3RhdHVzX3RyZWFkeQogICAgCiAgICAu
ZXZlbnRfZnJhbWVfc3RhcnRlZChldmVudF9mcmFtZV9zdGFydGVkKSwgICAgICAgICAgICAgICAg
IC8vIG91dHB1dCB3aXJlIGV2ZW50X2ZyYW1lX3N0YXJ0ZWQKICAgIC5ldmVudF90bGFzdF91bmV4
cGVjdGVkKGV2ZW50X3RsYXN0X3VuZXhwZWN0ZWQpLCAgICAgICAgICAgLy8gb3V0cHV0IHdpcmUg
ZXZlbnRfdGxhc3RfdW5leHBlY3RlZAogICAgLmV2ZW50X3RsYXN0X21pc3NpbmcoZXZlbnRfdGxh
c3RfbWlzc2luZyksICAgICAgICAgICAgICAgICAvLyBvdXRwdXQgd2lyZSBldmVudF90bGFzdF9t
aXNzaW5nCiAgICAuZXZlbnRfZmZ0X292ZXJmbG93KGV2ZW50X2ZmdF9vdmVyZmxvdyksICAgICAg
ICAgICAgICAgICAgIC8vIG91dHB1dCB3aXJlIGV2ZW50X2ZmdF9vdmVyZmxvdwogICAgLmV2ZW50
X3N0YXR1c19jaGFubmVsX2hhbHQoZXZlbnRfc3RhdHVzX2NoYW5uZWxfaGFsdCksICAgICAvLyBv
dXRwdXQgd2lyZSBldmVudF9zdGF0dXNfY2hhbm5lbF9oYWx0CiAgICAuZXZlbnRfZGF0YV9pbl9j
aGFubmVsX2hhbHQoZXZlbnRfZGF0YV9pbl9jaGFubmVsX2hhbHQpLCAgIC8vIG91dHB1dCB3aXJl
IGV2ZW50X2RhdGFfaW5fY2hhbm5lbF9oYWx0CiAgICAuZXZlbnRfZGF0YV9vdXRfY2hhbm5lbF9o
YWx0KGV2ZW50X2RhdGFfb3V0X2NoYW5uZWxfaGFsdCkgIC8vIG91dHB1dCB3aXJlIGV2ZW50X2Rh
dGFfb3V0X2NoYW5uZWxfaGFsdAogICk7CgogIC8vIE5vdGhpbmcgdG8gZG8geWV0LCBzbyBqdXN0
IGRyaXZlIGNvbnRyb2wgc2lnbmFscyB0byBkZWZhdWx0IHZhbHVlcwogIGFzc2lnbiBtX2N0cmxw
b3J0X3Jlc3BfYWNrID0gMSdiMDsKICBhc3NpZ24gbV9pbl9heGlzX3RyZWFkeSA9IDEnYjA7CiAg
YXNzaWduIHNfb3V0X2F4aXNfdHZhbGlkID0gMSdiMDsKCmVuZG1vZHVsZSAvLyByZm5vY19ibG9j
a194ZmZ0XzI1NgoKCmBkZWZhdWx0X25ldHR5cGUgd2lyZQo=
--000000000000de163405d83d3389
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000de163405d83d3389--
