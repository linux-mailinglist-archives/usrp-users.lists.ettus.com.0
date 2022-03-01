Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A66CB4C83A4
	for <lists+usrp-users@lfdr.de>; Tue,  1 Mar 2022 06:56:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 56D403846C4
	for <lists+usrp-users@lfdr.de>; Tue,  1 Mar 2022 00:56:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="RTFr5GW/";
	dkim-atps=neutral
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 52EA638459C
	for <usrp-users@lists.ettus.com>; Tue,  1 Mar 2022 00:55:10 -0500 (EST)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-2d62593ad9bso132830777b3.8
        for <usrp-users@lists.ettus.com>; Mon, 28 Feb 2022 21:55:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iytvVIqoA/m6y81WZgq7K/fOotCP/9oMPkHSXeZFnkg=;
        b=RTFr5GW/x380ILic+juaAOgEqVINML7n1OaTc4p3xioL5SA/zVaGNpSxI0M+34bIg1
         nTYbDS4p1liqqi9gZ5KgHHnDXSp8+eZlStbgXCbUthPNOqkqtI/ysFaHaiPH0RUJBWVW
         O5uufwUWTTQQD0eaS3kM2TOvBYVhstbHePdb0ZKtrV3JUFNNcobs1AE+czdbLEG1H33o
         wBef2spCZl71fFCv6pOWKQxAxmENdDwYvEJT/n2dNoP+ObloqFbLn7l6zJY62l4V86xr
         312sf/DUIW+J0PYeG5eFSP4Ai5bQpKursFyfTpy8yDnBjnj3clRBtaBNN/xd8G8nSjiZ
         MmRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iytvVIqoA/m6y81WZgq7K/fOotCP/9oMPkHSXeZFnkg=;
        b=6xljGmpIYU4R3pCtG3pC+RGbah4I8QksNiPOjl1JHq42atNlOj9xbv+Z5zMYXFgcvS
         1NN6wsXYwo+X2OOIdvfhYlQeDuTeTzNhfTpSNAFuUd/Xq+51RBKxGtHXASAHI+mCCAfB
         2yiajIYZBmLyBo2BuVUrrYo6m7MYPqLfckm4gU2Vgj6MSK+XhlKMdXGD1B0dv7pIx6vK
         jJwVaO7xraA+N3evwfdrPz0TE3PQgoo+yAcLSgMEH3RfOZU1oOzg2g3bFHHf6ieCb4Z9
         gu+aQHZokEjtTVAzzKBnOxmd+s5W3qnVIdV6nw5eohstfutKI/iwu2V8+QlKgCHUyl/S
         F3Sg==
X-Gm-Message-State: AOAM5313RHzhagwbm4OLIA0myskEgE7+lezaZebjHxVo0hsYEFbUNXmW
	ybsfCCijGrobnrttuLorfJrlTgN/+SjdcVoOzv2w7gTFE8VfT52+
X-Google-Smtp-Source: ABdhPJx9diuqBWhWWGNjjtrTS3chEY0VyIsGSsknEobhrt3TW0WjzhJlItaZVf28JpA7m9/myYlt45aMs/leQrIyF10=
X-Received: by 2002:a0d:fcc4:0:b0:2d6:6912:1afa with SMTP id
 m187-20020a0dfcc4000000b002d669121afamr23821566ywf.61.1646114109612; Mon, 28
 Feb 2022 21:55:09 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSOPxRuE8hBdUa_8t5=UL+-6fDFM_wMiod9cZ4VHYwghA@mail.gmail.com>
 <CAFche=iW6jhLn-37Kmg3gTcgUL3qc+ZZOnSD4CRrDzBxovtJMQ@mail.gmail.com>
 <CAB__hTQfTme1csXj=aVNpgu3tyZW4o6=xQZwUG8ZQacAULDncA@mail.gmail.com>
 <CAB__hTQ6vj_MsV8M8rcGDKJD==J6+fFvdEVcDurPy_Cbd7_LCg@mail.gmail.com>
 <CAFche=hcVKo+Mz3mCHT8pDa9-LGYHjkBRdvDcux-c7UbVpVOkA@mail.gmail.com>
 <CAFche=gAjY1qiJHXVywS-hLz8TjgnhLhDn64o6t-ZWveuRJGgw@mail.gmail.com> <CAB__hTRYc8-oxMZ4o8oQ6FKV0uUXKhHSmr1bowx0tOGsxpWagA@mail.gmail.com>
In-Reply-To: <CAB__hTRYc8-oxMZ4o8oQ6FKV0uUXKhHSmr1bowx0tOGsxpWagA@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 28 Feb 2022 23:54:53 -0600
Message-ID: <CAFche=g=XHNMoBk+ezUZ5ayC3t9Efmw9=2exAaBdtuZ2xCXdJw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: W65UY7WRZTONSN4RTMU74AA3H5DFMA7Q
X-Message-ID-Hash: W65UY7WRZTONSN4RTMU74AA3H5DFMA7Q
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: implement user clock in rfnoc
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W65UY7WRZTONSN4RTMU74AA3H5DFMA7Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6799235213034652099=="

--===============6799235213034652099==
Content-Type: multipart/alternative; boundary="000000000000c378ac05d921ce0e"

--000000000000c378ac05d921ce0e
Content-Type: text/plain; charset="UTF-8"

By setting the buffer size to `MTU` in the YAML file, the generated FIFO
depth was being set to 16 instead of the MTU size, which is 1024. I don't
think that's what was intended. But the value used for the input/output
buffers of the DDC/DUC isn't really very important, which is why it hasn't
caused any problems. There are other buffers in the data path to make up
for that.

An MTU size of 1024 in the YAML means 1024 CHDR words, which is 2048
samples or 8192 bytes. I think the intent was to buffer one full packet,
which is where the MTU of 1024 comes from. But it's not strictly necessary
because of the buffers in the stream endpoints and radios. You want blocks
to be able to output data at a continuous rate that exceeds the target
sample rate. If a block is bursty, then you need buffers to compensate for
that. Stream endpoints are very bursty, so they have the largest buffers.
The radio is not bursty at all, but has strict real-time requirements, so
it has buffers to guard against stalls/burstiness elsewhere in the data
stream.

Wade


On Mon, Feb 28, 2022 at 4:38 PM Rob Kossler <rkossler@nd.edu> wrote:

> Thanks Wade,
> Regarding the typo, are you saying that the Ettus generated images are
> using the wrong value for the DDC/DUC buffers or are you saying that the
> generated images are OK, but just the yaml has a typo (that is not
> affecting the generated images)?
>
> And, second question, what is the principle guiding Ettus' decision to
> want an input buffer of 1024 at the DDC?  If the concept is to buffer 1
> full packet, shouldn't it be twice that value (assuming 1 sample per clock)?
> Rob
>
> On Mon, Feb 28, 2022 at 3:36 PM Wade Fife <wade.fife@ettus.com> wrote:
>
>> I looked at the generated DDC/DUC code again and that looks like a typo
>> in the YAML. It should really be `2**MTU`, which is 1024, instead of just
>> `MTU` (which is 10). So if you want a larger buffer on your block, try
>> 2**MTU or some other power of 2.
>>
>> Wade
>>
>> On Sat, Feb 26, 2022 at 5:01 PM Wade Fife <wade.fife@ettus.com> wrote:
>>
>>> Regarding the overflows, that's the kind of thing I would simulate to
>>> understand what's happening. My guess is the zero insertion is blocking the
>>> flow of data, and the radio overflows because of that. Like you said, a
>>> bigger buffer should help.
>>>
>>> Hmm, I was just glancing at the code generated by the RFNoC image
>>> builder and the way it's setting the buffers doesn't look right, so perhaps
>>> you're not getting the buffering you expect. Let me look into that and
>>> get back to you.
>>>
>>> As for fitting, I would start by removing everything you don't need from
>>> the YAML description. Do you need all 4 radio channels? Do you need RX and
>>> TX? Do you need 4 channels of replay? Do you need the DDC and DUC (if you
>>> only want to run at the master clock rate then you don't). Strip out all
>>> the blocks you don't need and all their stream endpoints. If it still
>>> doesn't fit, then I would look at reducing the endpoint buffer sizes. The
>>> default images usually make them as large as we could fit, but you might be
>>> able to get away with smaller buffers, which really only affects TX
>>> streaming performance.
>>>
>>> Wade
>>>
>>>
>>>
>>> On Fri, Feb 25, 2022 at 4:19 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>> I was able to build successfully with the 'dram' clock as the 'ce'
>>>> clock for my rfnoc block. But, I didn't get the performance I was
>>>> expecting. With my rfnoc graph of
>>>> "Radio->DDC->custom-zero-padded-fft-block", the Radio had overflows when
>>>> running at 125e6 but worked well when running 62.5e6.
>>>>
>>>> My current thought is that maybe I don't have enough input buffering in
>>>> my custom rfnoc block.  I initially had my payload input and output buffer
>>>> sizes (defined in the block def yaml) set to 'MTU' which is how the DDC
>>>> block does it.  But, when my build failed (attempting to add 4 of my custom
>>>> blocks), I changed this from 'MTU' to '32'. Turns out that this didn't help
>>>> my build succeed, but I did get a successful build after removing all
>>>> Replay blocks / SEPs. So I am now trying to re-build with the 'MTU' setting
>>>> with the hope that the increased buffering will allow me to run at 125e6
>>>> sample rate.
>>>>
>>>> But, apart from more buffering, is there perhaps a different
>>>> explanation why my custom FFT block clocked at 300 MHz (with 50% insertion
>>>> of zeros) is not keeping up?
>>>>
>>>> On a semi-related topic, I'm wondering if anyone has suggestions
>>>> regarding my build failures.  The build error indicates that I needed more
>>>> slices than are available (out of 69350 total, 47879 are available, but I
>>>> needed 49414).  If I look at the build report for the default Ettus N310 XG
>>>> image (see snippet below), it looks like there is not much availability for
>>>> extra rfnoc blocks (96.44% util%). And, in my experience, this is where my
>>>> builds usually fail.  I am wondering what I can do in the design of my
>>>> custom blocks (or in the build parameters of the N310) to achieve
>>>> successful builds - specifically related to this slice utilization.  Any
>>>> suggestions welcome.
>>>> Thanks.
>>>> Rob
>>>>
>>>> // From build report of default Ettus N310 XG image
>>>> 2. Slice Logic Distribution
>>>> ---------------------------
>>>>
>>>>
>>>> +--------------------------------------------+--------+-----------+-------+
>>>> |                  Site Type                 |  Used  | Available |
>>>> Util% |
>>>>
>>>> +--------------------------------------------+--------+-----------+-------+
>>>> | Slice                                      |  66878 |     69350 | 96.44
>>>> |
>>>> |   SLICEL                                   |  40816 |           |
>>>>   |
>>>> |   SLICEM                                   |  26062 |           |
>>>>   |
>>>>
>>>> On Thu, Feb 24, 2022 at 9:25 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>
>>>>> Thanks for the suggestions Wade. I will first try the low-hanging
>>>>> fruit of using the 300MHz DRAM clock.  Fingers crossed!
>>>>> Rob
>>>>>
>>>>> On Thu, Feb 24, 2022 at 6:43 PM Wade Fife <wade.fife@ettus.com> wrote:
>>>>>
>>>>>> Hi Rob,
>>>>>>
>>>>>> RFNoC doesn't support generating user clocks for you yet (the range
>>>>>> value is not currently used). You could use the `dram` clock on N310 and
>>>>>> connect that to the `ce` inputs of your blocks. That should be about 300
>>>>>> MHz. The `rfnoc_chdr` clock is 200 MHz on N310.
>>>>>>
>>>>>> If it won't close timing with the dram clock, and you want something
>>>>>> slower, then you can modify the HDL to add the clock you want. Take a look
>>>>>> at n3xx_clocking.v. You could probably modify the misc_clock_gen IP block
>>>>>> to add a clock closer to 260 MHz. You'd then have to route that clock into
>>>>>> n3xx_core then rfnoc_image_core, and add the new clock to n310_bsp.yml for
>>>>>> the rfnoc_image_builder to generate code to use it. Adding custom clocks is
>>>>>> a pretty manual process at the moment.
>>>>>>
>>>>>> Wade
>>>>>>
>>>>>> On Wed, Feb 23, 2022 at 10:15 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>>>
>>>>>>> Hi,
>>>>>>> I have a signal processing block that includes a zero-padded FFT
>>>>>>> (50% zeros) that I built for the N310.  Because of the throttling
>>>>>>> that occurs during insertion of zeros, I expect that my FFT will need to be
>>>>>>> clocked at a bit more than twice the max sample rate. So, since I want to
>>>>>>> operate the N310 at the highest sample rate of 125 MS/s, it seems that my
>>>>>>> FFT will need to be clocked >= 260 MHz.  I'm wondering how to do it.
>>>>>>>
>>>>>>> I've looked at the RFNoC specification and my block is already set
>>>>>>> up to use the "CE" clock for both control & data. In the rfnoc spec, it
>>>>>>> mentions that I can enter a "range" for my clock in the block definition
>>>>>>> yaml. But, I also see that in the end, the top N310 yaml will require me to
>>>>>>> map a _device clock to my block's CE clock port.
>>>>>>>
>>>>>>> It's not clear to me how this works. Does it help to provide a range
>>>>>>> in the block definition yaml? Or, perhaps it is even necessary?  How do I
>>>>>>> specify in the top N310 yaml which device clock will map to my blocks CE
>>>>>>> clock port?  It seems to me that I am missing a step (defining a clock
>>>>>>> somewhere?).
>>>>>>>
>>>>>>> I am pretty much a novice, so I expect that this is the cause of my
>>>>>>> confusion. I am even struggling to figure out what the current clock rates
>>>>>>> are (rfnoc_ctrl, rfnoc_chdr, ce, etc) and where they are defined. Any help
>>>>>>> would be appreciated.
>>>>>>> Rob
>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>
>>>>>>

--000000000000c378ac05d921ce0e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>By setting the buffer size to `MTU` in the YAML file,=
 the generated FIFO depth was being set to 16 instead of the MTU size, whic=
h is 1024. I don&#39;t think that&#39;s what was intended.=20
But the value used for the input/output buffers of the DDC/DUC isn&#39;t re=
ally=20
very important, which is why it hasn&#39;t caused any problems. There are o=
ther buffers in the data path to make up for that.</div><div><br></div><div=
>An MTU size of 1024 in the YAML means 1024 CHDR words, which is 2048 sampl=
es or 8192 bytes. I think the intent was to buffer one full packet, which i=
s where the MTU of 1024 comes from. But it&#39;s not strictly necessary bec=
ause of the buffers in the stream endpoints and radios. You want blocks to =
be able to output data at a continuous rate that exceeds the target sample =
rate. If a block is bursty, then you need buffers to compensate for that. S=
tream endpoints are very bursty, so they have the largest buffers. The radi=
o is not bursty at all, but has strict real-time requirements, so it has bu=
ffers to guard against stalls/burstiness elsewhere in the data stream.</div=
><div><br></div><div>Wade</div><div><br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 28, 2022 at 4:38 =
PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr">Thanks Wade,<div>Regarding the typo, are you saying that the Ett=
us generated images are using the wrong value for the DDC/DUC buffers or ar=
e you saying that the generated images are OK, but just the yaml has a typo=
 (that is not affecting the generated images)?</div><div><br></div><div>And=
, second question, what is the principle guiding Ettus&#39; decision to wan=
t an input buffer of 1024 at the DDC?=C2=A0 If the concept is to buffer 1 f=
ull packet, shouldn&#39;t it be twice that value (assuming 1 sample per clo=
ck)?<br><div>Rob</div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Feb 28, 2022 at 3:36 PM Wade Fife &lt=
;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><div>I looked at the generated DDC/DUC code again and th=
at looks like a typo in the YAML. It should really be `2**MTU`, which is 10=
24, instead of just `MTU` (which is 10). So if you want a larger buffer on =
your block, try 2**MTU or some other power of 2.</div><div>=C2=A0<br></div>=
<div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Sat, Feb 26, 2022 at 5:01 PM Wade Fife &lt;<a href=3D=
"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>Regarding the overflows, that&#39;s the kind of thing I would=
 simulate to understand what&#39;s happening. My guess is the=C2=A0zero ins=
ertion is blocking the flow of data, and the radio overflows because of tha=
t. Like you said, a bigger buffer should help.</div><div><br></div><div>Hmm=
, I was just glancing at the code generated by the RFNoC image builder and =
the way it&#39;s setting the buffers doesn&#39;t look right, so perhaps you=
&#39;re not getting the buffering you expect. Let me look into that and get=
=C2=A0back to you.</div><div><br></div><div>As for fitting, I would start b=
y removing everything you don&#39;t need from the YAML description. Do you =
need all 4 radio channels? Do you need RX and TX? Do you need 4 channels of=
 replay? Do you need the=C2=A0DDC and DUC (if you only want to run at the m=
aster clock rate then you don&#39;t). Strip out all the blocks you don&#39;=
t need and all their stream endpoints. If it still doesn&#39;t fit, then I =
would look at reducing the endpoint buffer sizes. The default images usuall=
y make them as large as we could fit, but you might be able to get away wit=
h smaller buffers, which really only affects TX streaming performance.</div=
><div><br></div><div>Wade</div><div><br></div><div><br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 25=
, 2022 at 4:19 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=
=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">I was able to =
build successfully with the &#39;dram&#39; clock as the &#39;ce&#39; clock =
for my=C2=A0rfnoc block. But, I didn&#39;t get the performance I was expect=
ing. With my rfnoc graph of &quot;Radio-&gt;DDC-&gt;custom-zero-padded-fft-=
block&quot;, the Radio had overflows when running at 125e6 but worked well =
when running 62.5e6.=C2=A0<div><br></div><div>My current thought is that ma=
ybe I don&#39;t have enough input buffering in my custom rfnoc block.=C2=A0=
 I initially had my payload input and output buffer sizes (defined in the b=
lock def yaml) set to &#39;MTU&#39; which is how the DDC block does it.=C2=
=A0 But, when my build failed (attempting to add 4 of my custom blocks), I =
changed this from &#39;MTU&#39; to &#39;32&#39;. Turns out that this didn&#=
39;t help my build succeed, but I did get a successful=C2=A0build after rem=
oving all Replay blocks / SEPs. So I am now trying to re-build with the &#3=
9;MTU&#39; setting with the hope that the increased=C2=A0buffering will all=
ow me to run at 125e6 sample rate.=C2=A0</div><div><br></div><div>But, apar=
t from more buffering, is there perhaps a different explanation why my cust=
om FFT block clocked at 300 MHz (with 50% insertion of zeros) is not keepin=
g up?</div><div><br></div><div>On a semi-related topic, I&#39;m wondering i=
f anyone has suggestions regarding my build failures.=C2=A0 The build error=
 indicates that I needed more slices than are available (out of 69350 total=
, 47879 are available,=C2=A0but I needed 49414).=C2=A0 If I look at the bui=
ld report for the default Ettus N310 XG image (see snippet below), it looks=
 like there is not much availability for extra rfnoc blocks (96.44% util%).=
 And, in my experience, this is where my builds usually fail.=C2=A0 I am wo=
ndering what I can do in the design of my custom blocks (or in the build pa=
rameters of the N310) to achieve successful=C2=A0builds - specifically rela=
ted to this slice utilization.=C2=A0 Any suggestions welcome.</div><div>Tha=
nks.</div><div>Rob<br><div><br></div><div><font face=3D"monospace">// From =
build report of default Ettus N310 XG image</font></div><div><font face=3D"=
monospace">2. Slice Logic Distribution<br>---------------------------<br><b=
r>+--------------------------------------------+--------+-----------+------=
-+<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Site =
Type =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0Used =
=C2=A0| Available | Util% |<br>+-------------------------------------------=
-+--------+-----------+-------+<br>| Slice =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A066878 | =C2=A0 =C2=A0 69350 | <span styl=
e=3D"background-color:rgb(255,255,0)">96.44 </span>|<br>| =C2=A0 SLICEL =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A040816 | =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 |<br>| =C2=A0 SLICEM =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A026062 | =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 |</font><br></div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 24, 2022=
 at 9:25 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_b=
lank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr">Thanks for the suggestions Wade. I wi=
ll first try the low-hanging fruit of using the 300MHz DRAM clock.=C2=A0 Fi=
ngers crossed!<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Feb 24, 2022 at 6:43 PM Wade Fife &lt=
;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>RFNoC doesn&#39;t =
support generating user clocks for you yet (the range value is not currentl=
y used). You could use the `dram` clock on N310 and connect that to the `ce=
` inputs of your blocks. That should be about 300 MHz. The `rfnoc_chdr` clo=
ck is 200 MHz on N310.</div><div><br></div><div>If it won&#39;t close timin=
g with the dram clock, and you want something slower, then you can modify t=
he HDL to add the clock you want. Take a look at n3xx_clocking.v. You could=
 probably modify the misc_clock_gen IP block to add a clock closer to 260 M=
Hz. You&#39;d then have to route that clock into n3xx_core then rfnoc_image=
_core, and add the new clock to n310_bsp.yml for the rfnoc_image_builder to=
 generate code to use it. Adding custom clocks is a pretty manual process a=
t the moment.<br></div><div><br></div><div>Wade<br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 23, 20=
22 at 10:15 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D=
"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div>I have a signal processing=
 block that includes a zero-padded FFT (50% zeros) that I built for the N31=
0.=C2=A0 Because of the=C2=A0throttling that=C2=A0occurs during insertion o=
f zeros, I expect that my FFT will need to be clocked at a bit more than tw=
ice the max sample rate. So, since I want to operate=C2=A0the N310 at the h=
ighest sample rate of 125 MS/s, it seems that my FFT will need to be clocke=
d &gt;=3D 260 MHz.=C2=A0 I&#39;m wondering how to do it.</div><div><br></di=
v><div>I&#39;ve looked at the RFNoC specification and my block is already s=
et up to use the &quot;CE&quot; clock for both control &amp; data. In the r=
fnoc spec, it mentions that I can enter a &quot;range&quot; for my clock in=
 the block definition yaml. But, I also see that in the end, the top N310 y=
aml will require me to map a _device clock to my block&#39;s CE clock port.=
=C2=A0</div><div><br></div><div>It&#39;s not clear to me how this works. Do=
es it help to provide a range in the block definition yaml? Or, perhaps it =
is even necessary?=C2=A0 How do I specify in the top N310 yaml which device=
 clock will map to my blocks CE clock port?=C2=A0 It seems to me that I am =
missing a step (defining a clock somewhere?).=C2=A0</div><div><br></div><di=
v>I am pretty much a novice, so I expect that this is the cause of my confu=
sion. I am even struggling to figure out what the current clock rates are (=
rfnoc_ctrl, rfnoc_chdr, ce, etc) and where they are defined. Any help would=
 be appreciated.=C2=A0=C2=A0</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000c378ac05d921ce0e--

--===============6799235213034652099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6799235213034652099==--
