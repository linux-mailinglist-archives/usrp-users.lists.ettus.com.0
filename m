Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FD54BABDB
	for <lists+usrp-users@lfdr.de>; Thu, 17 Feb 2022 22:37:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B8FB38469D
	for <lists+usrp-users@lfdr.de>; Thu, 17 Feb 2022 16:37:32 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ZS3T7V5s";
	dkim-atps=neutral
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 4ADCE3845F5
	for <usrp-users@lists.ettus.com>; Thu, 17 Feb 2022 16:36:38 -0500 (EST)
Received: by mail-yb1-f181.google.com with SMTP id v63so15659766ybv.10
        for <usrp-users@lists.ettus.com>; Thu, 17 Feb 2022 13:36:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/kZw74Lh3zs1zEDMm4EiQdlJ4CHuRDhOyuqHFzpJufY=;
        b=ZS3T7V5sgBCQdP4CGOo7oLcaNoxonHsGjSSq5C/W7+e+5jQSu4YofsCGZBfdYHBjrI
         ZdMlHpCoGKbqTxCoXPAg4X9IXoYp8I6YH0/E5azikZzOV0fJC2wXSNCH3dpt5wYGq7/a
         23d3V/UghtZ6xjkEpNeqdMjD6L92vY9gYb4WWR7vcCC+3VrHypjk/kytThxcvzNTfyLN
         podADEDx7k7iZ8h7CiFGUn4ZyqnSfii59P7xOi8+W4ACCrsgp+gQnrx0tpJCZHC4IvEu
         /6GT/Ern/ZMVeM1pL4pdMrqN+ANqwSsZ3HGtKxP4yMRSnY3wzDaJRn84KLsiFPAT4i6E
         5cLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/kZw74Lh3zs1zEDMm4EiQdlJ4CHuRDhOyuqHFzpJufY=;
        b=PwWCOkV3l6BdaKcr7kb7hza9ioJ1Qf0I5uA6yGw3ne67RjwpjHoUOOEcWBi5GKMdAn
         5Z4h//BnisrDoI5IQzCjsZGduTr0n/2vMaDqpR6e6dSwLbvhjxdkgUNDHnMsQ1UHjW0B
         jpqdwVgAQN+0XxCGfBnMeNCSf+0xNzWlGlJmUMROCdjJeKJjVz4XR8hz9tePrTVh/iFY
         lAXlx72hbneSxHIZBAg1c1YFCmoX0RZfT2vmctg1z3EbG9Cf3lYMHxPKAzmLENZW4lrp
         EPCGEAfpxHVQMbJHd/Jre8dLzaDMdwukz0ogfY/AwtHmU7Z/yLPAK3dHA70q0cBFaa6a
         wmdQ==
X-Gm-Message-State: AOAM533vldQjtpWxleg4eIxU0eX/XlYnwbca9hsfBLADmz1nDbr903sU
	guhKx6TFvIBvTwL1n21mJrCi9Pzcv6DGHF2TG06naw==
X-Google-Smtp-Source: ABdhPJzOI/hauXWl2UVufrZfCQN0BLZh+VHam1F2PPT3IbV/i32B7LWg2aJDIHZxYXA23k70qybS7+xyuefBMQDVwrs=
X-Received: by 2002:a25:3814:0:b0:623:a445:a40a with SMTP id
 f20-20020a253814000000b00623a445a40amr4772726yba.80.1645133797384; Thu, 17
 Feb 2022 13:36:37 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTTQ3aXadTX5KELksuongMR4QJchXS9UdxSs9cNyBBRdTg@mail.gmail.com>
 <CAL7q81sXeHHHSHF+S9hdHk=827igYxQPiY7D070=Dr1yW4GXJg@mail.gmail.com>
 <CAB__hTRk1GcRNph1bW-kbPq9jy9K-8tAY=WRr62KePK03PAgig@mail.gmail.com>
 <CAL7q81sHKB02b7e6VNg9OTY543V+6BLRF-_baoUPUzdzpLMtrA@mail.gmail.com>
 <CAB__hTQrDajD3pnqTuaAZaYWMM24orOaj6JwJMnHdG-3E2hg6Q@mail.gmail.com> <CAB__hTQhZVwHnQGYW=3QmTbCDtWXhB=UdOBAB+6PKn=2==tbHA@mail.gmail.com>
In-Reply-To: <CAB__hTQhZVwHnQGYW=3QmTbCDtWXhB=UdOBAB+6PKn=2==tbHA@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 17 Feb 2022 16:36:25 -0500
Message-ID: <CAB__hTQs_E-GGtMAHxxhd_ZLKX1RtyBofRof+0=fq4VGwQYgGw@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: JJUJP2YJTK5KQFVR7ABWYAPVD6GES2HG
X-Message-ID-Hash: JJUJP2YJTK5KQFVR7ABWYAPVD6GES2HG
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Failure: ERROR:add_1 must be in range [-1,DEPTH-1]
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JJUJP2YJTK5KQFVR7ABWYAPVD6GES2HG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2466670655968383514=="

--===============2466670655968383514==
Content-Type: multipart/alternative; boundary="0000000000009a1f3f05d83d8f31"

--0000000000009a1f3f05d83d8f31
Content-Type: text/plain; charset="UTF-8"

Update. I found an issue with the "simple example" and now the example
works fine.  Now, I need to try my actual example. Sorry about that.
Rob

On Thu, Feb 17, 2022 at 4:10 PM Rob Kossler <rkossler@nd.edu> wrote:

> Jonathon (and all),
> This error message has returned as I'm working with a Xilinx FFT IP core
> again. I never solved it previously and I cannot seem to solve it now. The
> error shows up during the 1st testbench test (Flush/Reset) as shown below.
>
> ========================================================
> TESTBENCH STARTED: rfnoc_block_xfft_256_tb
> ========================================================
> [TEST CASE   1] (t =         0 ns) BEGIN: Flush block then reset it...
> *Failure: ERROR:add_1 must be in range [-1,DEPTH-1]*
> Time: 16 ns  Iteration: 1
>
> After researching this error, it seems that solutions fall in two
> categories.  First, something to do with clock initializations related to
> IP cores. Second, having any uninitialized inputs to an IP core.  I played
> around with the testbench clocks with no success.  I also verified my
> inputs to the FFT instance.  I don't see any problem.
>
> I created a simple project to produce this error using the following steps:
>
>    - copied "rfnoc-example" folder out of tree (UHD-4.1) and verified
>    that I could create a build folder and run cmake & "make
>    rfnoc_block_gain_tb" successfully (I changed the target to E310 so that it
>    could be run with the Vivado 2019.1 Webpack version)
>    - created a Xilinx FFT IP core xci file "xfft_256.xci" (see attached)
>    to implement a 256 pt pipelined, resizable FFT
>    - created a new rfnoc block definition xml file "xfft_256.xml" (see
>    attached) and then ran rfnoc_create_verilog.py to create the boilerplate
>    rfnoc Verilog & Testbench files
>    - ran the testbench with no modifications: SUCCESS
>    - modified only rfnoc_block_xfft_256.v (see attached) to add the FFT
>    IP instance and modified the make/cmake process to locate & build the IP
>    (using the similar modifications needed in the gain example to include a
>    complex_multiplier IP)
>    - ran the testbench: FAILURE (see above)
>
> I have attached to this email the 3 relevant files: xfft_256.xci,
> xfft_256.xml (rfnoc block definition file), and rfnoc_block_xfft_256.v
> (modified rfnoc Verilog code with added instance to FFT).  The other files
> needed to reproduce this (such as the testbench) can be auto-generated
> since I didn't modify them (but I would be happy to provide mine if
> helpful).  All my other changes were to the cmake/make files, and these
> changes just follow the gain example (but I would be happy to provide them
> and/or the full OOT directory if helpful).
>
> Let me know if you have any suggestions or if you are able/unable to
> duplicate the issue with the files provided.
> Rob
>
> On Thu, Oct 15, 2020 at 6:16 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> I'm just using window.v, not the various noc block wrappers.  I don't see
>> any issue with it and when I run the testbench with just the Window enabled
>> (and FFT IP core disabled), it works fine.
>>
>> I'm really struggling with this.  The results are bizarre and the
>> testbench takes forever to run (ok, maybe 5 min) so it is not simple to
>> change 1 thing and check the result.  I can't seem to find any issue with
>> failing to drive inputs of the FFT core.  I've searched the web on this
>> error and the most common response does indicate a failure to drive inputs,
>> but I can't find any culprit.
>>
>> Could it have anything to do with something like a race condition prior
>> to the first clock cycle? Or is that just nonsense.  I definitely don't
>> have the experience to even know if that is a possibility.
>> Rob
>>
>>
>> On Thu, Oct 15, 2020 at 4:23 PM Jonathon Pendlum <
>> jonathon.pendlum@ettus.com> wrote:
>>
>>> The issue could be with the Window block then. Maybe it isn't getting
>>> properly initialized or something changed from RFNoC 3 to RFNoC 4.
>>>
>>> On Thu, Oct 15, 2020 at 3:44 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>> OK. I'll check again.  One thing that's weird is that if I comment out
>>>> either the Window or the FFT (and insert appropriate assign statements to
>>>> replace the commented item), I don't get the error.  The error only occurs
>>>> if both are in place.
>>>> Rob
>>>>
>>>> On Thu, Oct 15, 2020 at 3:42 PM Jonathon Pendlum <
>>>> jonathon.pendlum@ettus.com> wrote:
>>>>
>>>>> Hey Rob,
>>>>>
>>>>> I've ran into that issue when simulating Xilinx IP that use DSP48s.
>>>>> From what I can tell, they don't handle X and U signal states properly. Try
>>>>> double checking that all your signals are all properly driven.
>>>>>
>>>>> Jonathon
>>>>>
>>>>> On Thu, Oct 15, 2020, 15:08 Rob Kossler via USRP-users <
>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>
>>>>>> Hi,
>>>>>> I am getting this error (from the subject line) in a custom block I
>>>>>> created that is effectively just the combination of a window block and a
>>>>>> xilinx fft ip core. I am using UHD-4.0 (and Vivado 2019.1).
>>>>>>
>>>>>> After searching the user's list, I found some old posts from Jonathan
>>>>>> Pendlum that indicated that this was a known issue related to the Xilinx
>>>>>> FFT IP core.  The solution in the previous posts was to copy a "wave.do"
>>>>>> file from the Ettus in-tree FFT tb folder.  I didn't find such a file in
>>>>>> UHD-4.0 and so I'm wondering if there is a solution that works for UHD-4.0.
>>>>>> Rob
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list
>>>>>> USRP-users@lists.ettus.com
>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>
>>>>>

--0000000000009a1f3f05d83d8f31
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Update. I found an issue with the &quot;s=
imple example&quot; and now the example works fine.=C2=A0 Now, I need to tr=
y my actual example. Sorry about that.<div>Rob</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 17, 2022 at=
 4:10 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
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
20 at 6:16 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"=
_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">I&#39;m just using window.v, not th=
e various noc block wrappers.=C2=A0 I don&#39;t see any issue with it and w=
hen I run the testbench with just the Window enabled (and FFT IP core disab=
led), it works fine.<div><br></div><div>I&#39;m really struggling with this=
.=C2=A0 The results are bizarre and the testbench takes forever to run (ok,=
 maybe 5 min) so it is not simple to change 1 thing and check the result.=
=C2=A0 I can&#39;t seem to find any issue with failing to drive inputs of t=
he FFT core.=C2=A0 I&#39;ve searched the web on this error and the most com=
mon response=C2=A0does indicate a failure to drive inputs, but I can&#39;t =
find any culprit.=C2=A0=C2=A0</div><div><br></div><div>Could it have anythi=
ng to do with something like a race condition prior to the first clock cycl=
e? Or is that just nonsense.=C2=A0 I definitely don&#39;t have the experien=
ce to even know if that is a possibility.</div><div>Rob</div><div><br></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Thu, Oct 15, 2020 at 4:23 PM Jonathon Pendlum &lt;<a href=3D"mailto:jon=
athon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr">The issue could be with the Window block then. Maybe it isn&#39;=
t getting properly initialized or something changed from RFNoC 3 to RFNoC 4=
.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Thu, Oct 15, 2020 at 3:44 PM Rob Kossler &lt;<a href=3D"mailto:rkossler=
@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">OK. I&#39;ll che=
ck again.=C2=A0 One thing that&#39;s weird is that if I comment out either =
the Window or the FFT (and insert appropriate assign statements to replace =
the commented item), I don&#39;t get the error.=C2=A0 The error only occurs=
 if both are in place.<div>Rob</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 15, 2020 at 3:42 PM Jonatho=
n Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blan=
k">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"auto">Hey Rob,<div dir=3D"auto"><b=
r></div><div dir=3D"auto">I&#39;ve ran into that issue when simulating Xili=
nx IP that use DSP48s. From what I can tell, they don&#39;t handle X and U =
signal states properly. Try double checking that all your signals are all p=
roperly driven.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Jonathon=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Thu, Oct 15, 2020, 15:08 Rob Kossler via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr">Hi,<br><div>I am getting this error (from the subject=
 line) in a custom block I created that is effectively just the combination=
 of a window block and a xilinx fft ip core. I am using UHD-4.0 (and Vivado=
 2019.1).=C2=A0 </div><div><br></div><div>After searching the user&#39;s li=
st, I found some old posts from Jonathan Pendlum that indicated that this w=
as a known issue related to the Xilinx FFT IP core.=C2=A0 The solution in t=
he previous posts was to copy a &quot;wave.do&quot; file from the Ettus in-=
tree FFT tb folder.=C2=A0 I didn&#39;t find such a file in UHD-4.0 and so I=
&#39;m wondering if there is a solution that works for UHD-4.0.</div><div>R=
ob</div></div>
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
</blockquote></div></div>

--0000000000009a1f3f05d83d8f31--

--===============2466670655968383514==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2466670655968383514==--
