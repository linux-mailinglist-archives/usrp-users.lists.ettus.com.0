Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AAB858D973
	for <lists+usrp-users@lfdr.de>; Tue,  9 Aug 2022 15:37:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 763A4383EB6
	for <lists+usrp-users@lfdr.de>; Tue,  9 Aug 2022 09:37:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660052238; bh=SCsQvZPctXjj8pbQv854ipgvOTAH9drLPjxenitRzzM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=j762qhjUvJXkhCxGR6culTZZKwwWr6CO4t45MStpnReAGbSNI6aljdunolWnZXnYE
	 WQAXOBCoPeroL2UVGEKIbb0KvzSDs/wBEfrHstp0E1v0BlgwQm4Ds2/KRna6F/SE7H
	 XFO3hcKZ1oMoJ1JR759Ukm5rVwZLw0BDFIbMQlBB5iyjJ9gR3iNRwUQNb2ZfOBW3vL
	 4Q1eQAGFHJEZZAsTJe5DIqylREghr3OQ0abZ+nqhy5cxSaFJk32LMi7XJHC1vhTRpC
	 iw1GLU92kRzfK03nvzi0ctBRBgyc7WUn+KI90wGLlp4ABkRKi1sk63mY79uXqCr0hg
	 2rLIXyJXH0l3Q==
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C8F2383C73
	for <usrp-users@lists.ettus.com>; Tue,  9 Aug 2022 09:34:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="B5R33/+a";
	dkim-atps=neutral
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-324ec5a9e97so111575167b3.7
        for <usrp-users@lists.ettus.com>; Tue, 09 Aug 2022 06:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=H+LT7KH8BZpLMiWNQvOERKDicjJSu1erwSo1Q6VKRvA=;
        b=B5R33/+ahno58+/miNbf2PFMTYGnlYwhsAbdvxQREXxqyf8qYSVkZ/+Z5wOEg5vSTe
         YFN9Caa7BY23l4op46/m4ov+Zo2i4UW2vOzkXLWTFA9yl+g5PdhQjJgzBCx0xeGaWoTR
         xQPSYX8LkftrLfIIhzMLvdMOx6HMDx70oEk9Iw7R3RP+3rdhgqyRdE1PAx+QdqKSAbnP
         cslun4yhlodK4Tcy5nzUCIjq6OdFV8FV5LaHCWkmMAj2TT1cqCzeP5JlV8ce3a/xJpuu
         Hk09FoqWtX/9wkjuP4KeWAVmOHDqVG4GGWqJDqJn7+byB1NkE1xdzdAvXCPaD4zIuKEl
         JTPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=H+LT7KH8BZpLMiWNQvOERKDicjJSu1erwSo1Q6VKRvA=;
        b=snwT4qTacpDgS6bSHDC8pepa1fDFgjOvIdo9YEWgQKj5ylQz7/21b9yQblhYKpXoSq
         eRk8K4wCI5fYoalKsyN8gVgYI41vhyQ2ksK3itCwUIhwJdBtm/NRMYFmc9TwdIjrQ6gP
         hIQtQYmJAsMtjYo/0OJmECAsw3k5EBYkXONkKlDUMA6YFQKkKhSMeWk4kHXd6MW28wlq
         eoylVXX8oOEMvji81FSnBPndxeRlY2jfq5lmO+lseIR3aQVn29BDLo7NesMvbRYuzaAJ
         NlyvmQI6DpIHBTJdBsc4Rux0f+VpPwYSOACBWGORZwvO5KoMexbSjKkL+qBqP+VvTMmA
         okBQ==
X-Gm-Message-State: ACgBeo3dr+ArrgWayBUFvXkrQNjq3cJKzMnmxUcsrgZo1WVMLRDXe23m
	iQBvGWzGGdITyAN6J6Nzg5oulTczJ3icE/ikLj3OVaEq5Sg=
X-Google-Smtp-Source: AA6agR5KSBh37tKLgMSLhNiVM6RWKgEFMMSbTPnxsODi63WB0eUdbN/5YCgXE2aMHJlvbttJy20/Lgv7eA9c2YzNabc=
X-Received: by 2002:a0d:ca41:0:b0:324:b593:d631 with SMTP id
 m62-20020a0dca41000000b00324b593d631mr23178736ywd.396.1660052089458; Tue, 09
 Aug 2022 06:34:49 -0700 (PDT)
MIME-Version: 1.0
References: <CALooG3-tGbHmBpZUvb8z3daaB61QW=w1-SrOKx5LuryiL4i-HA@mail.gmail.com>
 <CAL7q81uunsoLn00fzCLdVqWPNssurXfoBw7pqyLL6DoaNHfT6A@mail.gmail.com> <CALooG39hAmOTaXhb8Vh2siJx6mu7U-ydX-Ktvfk1yQmLfEtiGw@mail.gmail.com>
In-Reply-To: <CALooG39hAmOTaXhb8Vh2siJx6mu7U-ydX-Ktvfk1yQmLfEtiGw@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 9 Aug 2022 09:34:38 -0400
Message-ID: <CAB__hTQeQvoC9viTfoMMDibfqt1sUSUUgnPCakW+mU4f0ZKo9w@mail.gmail.com>
To: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Message-ID-Hash: RVU36KTVVNWL2R7OBCMNS7X2DW4RRXV5
X-Message-ID-Hash: RVU36KTVVNWL2R7OBCMNS7X2DW4RRXV5
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Building Custom IP and Working it via UHD
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RVU36KTVVNWL2R7OBCMNS7X2DW4RRXV5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4927585275749087580=="

--===============4927585275749087580==
Content-Type: multipart/alternative; boundary="0000000000001a103d05e5ceff40"

--0000000000001a103d05e5ceff40
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Yasir,
One of the nice things about RFNoC graphs is the ability to connect at
runtime (at least for dynamically linked blocks). So, one test you can try
is to change your RFNoC graph as follows: DDS_block =3D> rx_streamer (rathe=
r
than your existing DDS_block =3D> DUC =3D> Radio-Tx).  In this case you sho=
uld
see your samples stream to the host.  If this works then you can add the
DUC/Radio and try other experiments. But, if not, then at least your
problem has been simplified. As a comparison you could build the siggen
block and try the graph siggen =3D> rx_streamer, which I expect will work.

Another relevant example that you might investigate is the Replay block.
This block has more functionality than yours because it can act as both a
sink and a source. But, when it is acting as a source, it is similar to
your block.  One test I tried with the Replay block was to send samples
from host (tx_streamer =3D> Replay) and then later to send them back to hos=
t
(Replay =3D> rx_streamer) to verify that the samples were equal.
Rob

On Tue, Aug 9, 2022 at 4:53 AM Yasir =C3=96z=C3=A7al=C4=B1k <simultaneous11=
@gmail.com>
wrote:

> Hi Jonathon,
> Thank you for the answer. For complex multiplier IP, I have already looke=
d
> at it and used it as a reference point for my DDS IP. I have changed
> complex multiplier IP files with DDS IP files and implemented it. That's
> how I generated my bitstream. For Cpp file  rfnoc_siggen_example.cpp is
> what I was looking for. I changed my cpp code according to the siggen
> example. After that, I tried it on E320. The Error message is gone now, b=
ut
> the signal is still not generated. I expect at least a red light on TX/RX
> channel even if my DDS Block doesn't work properly, but this is not the
> case. There is no light on Radio channels. I don't know if this is becaus=
e
> of my DDS block or because of the CPP file. I will try to make some chang=
es
> on Verilog and generate new bitstream. After that, I will post the result=
s
> here.
>
> While doing that, I will be glad for any more help.
>
> Sorry for the late answer, there is a 10 hours time zone difference
> between where I live and the US.
>
> Kind regards,
> Yasir
>
> Jonathon Pendlum <jonathon.pendlum@ettus.com>, 8 A=C4=9Fu 2022 Pzt, 19:29
> tarihinde =C5=9Funu yazd=C4=B1:
>
>> Hi Yasir,
>>
>> I suggest taking a look at this example using the Siggen block:
>> https://github.com/EttusResearch/rfnoc-apps/blob/testing/master/apps/rfn=
oc_siggen_example.cpp.
>> As for adding IP, rfnoc-example has an example using a complex multiplie=
r:
>> https://github.com/EttusResearch/uhd/tree/master/host/examples/rfnoc-exa=
mple/fpga/ip/.
>> I also suggest updating your E320 and Host UHD version to 4.2 as there h=
ave
>> been several bug fixes since UHD 4.0.
>>
>> Jonathon
>>
>>
>> On Mon, Aug 8, 2022 at 2:50 AM Yasir =C3=96z=C3=A7al=C4=B1k <simultaneou=
s11@gmail.com>
>> wrote:
>>
>>> Hi everyone,
>>>
>>>   I have a E320 device and I am trying to learn how to build my own
>>> custom IPs. The thing is that the IPs which were implemented by Ettus w=
ere
>>> not enough for me. Therefore; I need to build my own custom IPs. I have=
 all
>>> the HDL codes that I need to build on E320, but I am having a problem w=
ith
>>> E320 development flow.
>>>
>>>   To learn how to add my custom IPs, I have analyzed the Rfnoc-example
>>> in the uhd repository. In that example, they showed basic Gain IP (whic=
h
>>> uses multiply IP). Firstly, I have synthesized and implemented that
>>> example. After that, I loaded the bit file into USRP and tested it
>>> with a init_gain_block C++ file. I tried to write a value to register a=
nd
>>> read back from the same register. It worked fine. I also changed the
>>> default UHD C++ code and wrote a basic UHD C++ code to amplify a signal=
 by
>>> looking at example UHD C++ codes. That worked fine, too. The Signal giv=
en
>>> from ADC is amplified and given back to DAC. After that I changed the
>>> multiply IP with DDS IP and tried to build it to generate a signal. The
>>> thing is that I implemented it successfully and the bit file was genera=
ted,
>>> but it did not work after loading it into the device.
>>>
>>> There are 2 problems:
>>> 1 -) Since all the example UHD C++ codes are meant to transfer data
>>> between host and device, I do not know how to make it work. Because, my=
 DDS
>>> IP does not need to transfer data between host and device. I just need =
to
>>> write a frequency value to register and DDS will generate a signal. Aft=
er
>>> that, I expect it to work fine. To do that, in UHD C++ code I have used
>>> rfnoc_graph and connected my block with the DUC block. Also I connected=
 the
>>> DUC block with the Radio block. I expect this to work seamlessly, but i=
t
>>> did not. I could not figure out how to write a C++ code to make this wo=
rk.
>>> The code gives an error which is "[ERROR] [RFNOC::GRAPH] Caught
>>> exception while initializing graph: Environment Error: IOError: Timed o=
ut
>>> getting recv buff for management transaction"
>>>
>>> 2 -) While building DDS IP, I have opened a Vivado 2019.1 and generated
>>> a DDS IP. Then, I used the .xci file in uhd. I do not know if this is t=
he
>>> right way, but UHD gives no error while implementing it.
>>>
>>>
>>>
>>> USRP Device :E320
>>> UHD Version : 4.0.0.0
>>> Host OS : Ubuntu 20.04.4
>>>
>>> Kind Regards,
>>> Yasir
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001a103d05e5ceff40
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Yasir,<div>One of the nice things about RFNoC graphs is=
 the ability to connect at runtime (at least for dynamically linked blocks)=
. So, one test you can try is to change your RFNoC graph as follows: DDS_bl=
ock =3D&gt; rx_streamer (rather than your existing DDS_block =3D&gt; DUC =
=3D&gt; Radio-Tx).=C2=A0 In this case you should see your samples stream to=
 the host.=C2=A0 If this works then you can add the DUC/Radio and try other=
 experiments. But, if not, then at least your problem has been simplified. =
As a comparison you could build the siggen block and try the graph siggen =
=3D&gt; rx_streamer, which I expect will work.</div><div><br></div><div>Ano=
ther relevant example that you might investigate is the Replay block.=C2=A0=
 This block has more functionality than yours because it can act as both a =
sink and a source. But, when it is acting as a source, it is similar to you=
r block.=C2=A0 One test I tried with=C2=A0the Replay block was to send samp=
les from host (tx_streamer =3D&gt; Replay) and then later to send them back=
 to host (Replay =3D&gt; rx_streamer) to verify that the samples were equal=
.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, Aug 9, 2022 at 4:53 AM Yasir =C3=96z=C3=A7al=
=C4=B1k &lt;<a href=3D"mailto:simultaneous11@gmail.com">simultaneous11@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr">Hi Jonathon,=C2=A0<div>Thank you for the answer. For =
complex multiplier IP, I have already looked at it and used it as a referen=
ce point for my DDS IP. I have changed complex multiplier IP files with DDS=
 IP files and implemented it. That&#39;s how I generated my bitstream. For =
Cpp file=C2=A0 rfnoc_siggen_example.cpp is what I was looking for. I change=
d my cpp code according to the siggen example. After that, I tried it on E3=
20. The Error message is gone now, but the signal is still not generated. I=
 expect at least a red light on TX/RX channel even if my DDS Block doesn&#3=
9;t work properly, but this is not the case. There is no light on Radio cha=
nnels. I don&#39;t know if this is because of my DDS block or because of th=
e CPP file. I will try to make some changes on Verilog and generate new bit=
stream. After that, I will post the=C2=A0results here.</div><div><br></div>=
<div>While doing that, I will be glad for any more help.</div><div><br></di=
v><div>Sorry for the late answer, there is a 10 hours time zone difference =
between where I live and the US.</div><div><br></div><div>Kind regards,</di=
v><div>Yasir</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@e=
ttus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;, 8 A=C4=9Fu =
2022 Pzt, 19:29 tarihinde =C5=9Funu yazd=C4=B1:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi=C2=A0Yasir,<div><br></=
div><div>I suggest taking a look at this example using the Siggen block:=C2=
=A0<a href=3D"https://github.com/EttusResearch/rfnoc-apps/blob/testing/mast=
er/apps/rfnoc_siggen_example.cpp" target=3D"_blank">https://github.com/Ettu=
sResearch/rfnoc-apps/blob/testing/master/apps/rfnoc_siggen_example.cpp</a>.=
 As for adding IP, rfnoc-example has an example using a complex multiplier:=
=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/tree/master/host/exam=
ples/rfnoc-example/fpga/ip/" target=3D"_blank">https://github.com/EttusRese=
arch/uhd/tree/master/host/examples/rfnoc-example/fpga/ip/</a>. I also sugge=
st updating your E320 and Host UHD version to 4.2 as there have been severa=
l bug fixes since UHD 4.0.</div><div><br></div><div>Jonathon</div><div><br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Mon, Aug 8, 2022 at 2:50 AM Yasir =C3=96z=C3=A7al=C4=B1k &lt;<a hr=
ef=3D"mailto:simultaneous11@gmail.com" target=3D"_blank">simultaneous11@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr">Hi everyone,<div><br><div>=C2=A0 I have a E320 devic=
e and I am trying to learn how to build my own custom IPs. The thing is tha=
t the IPs which were implemented by Ettus were not enough for me. Therefore=
; I need to build my own custom IPs. I have all the HDL codes that I need t=
o build on E320, but I am having a problem with E320 development flow.</div=
><div><br></div><div>=C2=A0 To learn how to add my custom IPs, I have analy=
zed the Rfnoc-example in the uhd repository. In that example, they showed b=
asic Gain IP (which uses multiply IP). Firstly, I have synthesized and impl=
emented that example. After that, I loaded the bit file into USRP and teste=
d it with=C2=A0a=C2=A0init_gain_block C++ file. I tried to write a value to=
 register and read back from the same=C2=A0register. It worked fine. I also=
 changed the default UHD C++ code and wrote a basic UHD C++ code to amplify=
 a signal by looking at example=C2=A0UHD C++ codes. That worked fine, too. =
The Signal given from ADC is amplified and given back to DAC. After that I =
changed the multiply IP with DDS IP and tried to build it to generate a sig=
nal. The thing is that I implemented it successfully and the bit file was g=
enerated, but it did not work after loading it into the device.=C2=A0</div>=
<div><br></div><div>There are 2 problems:</div><div>1 -) Since all the exam=
ple UHD C++ codes are meant to transfer data between host and device, I do =
not know how to make it work. Because, my DDS IP does not need to transfer =
data between host and device. I just need to write a frequency value to reg=
ister and DDS will generate a signal. After that, I expect it to work fine.=
 To do that, in UHD C++ code I have used rfnoc_graph and connected my block=
 with the DUC block. Also I connected the DUC block with the Radio block. I=
 expect this to work seamlessly, but it did not.=C2=A0I could=C2=A0not figu=
re out how to write a C++ code to make this work.</div><div>The code gives =
an error which is &quot;[ERROR] [RFNOC::GRAPH] Caught exception while initi=
alizing graph: Environment Error: IOError: Timed out getting recv buff for =
management transaction&quot;</div><div><br></div><div>2 -) While building D=
DS IP, I have opened a Vivado 2019.1 and generated a DDS IP. Then, I used t=
he .xci file in uhd. I do not know if this is the right way, but UHD gives =
no error while implementing it.</div><div><br></div><div><br></div><div><br=
></div><div>USRP Device :E320</div><div>UHD Version : 4.0.0.0</div><div>Hos=
t OS : Ubuntu 20.04.4</div></div><div><br></div><div>Kind Regards,</div><di=
v>Yasir</div><div><br></div><div><br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001a103d05e5ceff40--

--===============4927585275749087580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4927585275749087580==--
