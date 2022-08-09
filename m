Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E54B258D983
	for <lists+usrp-users@lfdr.de>; Tue,  9 Aug 2022 15:41:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 24D3E383F98
	for <lists+usrp-users@lfdr.de>; Tue,  9 Aug 2022 09:41:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660052468; bh=XIQxJXBPK9Od6nyU66SaKAH/GTJ7+0qVF2RAOZppJn8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=DUeKDtmkPpw6UVQH/HouA4MkNlWlwVhuWK9Ldra/royJVx/ZXBg6qGnUaglOMmb8O
	 3xzPml1ERqhCQHPJkOGa5rNq1q3XrQjWncnGs0l6wTBjNXjTGnFDTwzWU1fxs81tlS
	 fWup3ffvny7QtKTsdevYqz+X6JAKYC61RlGbmQY5VDYFdCeCZTL9aToXSzmsu/ZEDv
	 bEUJqvVyUC6QCg0v5ibqhDKiSqAK0+DjXN0g0PVfC4coQhSUCrpc0Abu9swww9qeF1
	 cdw4dAl9G2/OuqnryULMMQtN3zfSc0fc7dJ05BPmpHG2BzDRmkQYvIGeq7D0hKCwc0
	 rP+US+j8wF6rg==
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 622CF383D63
	for <usrp-users@lists.ettus.com>; Tue,  9 Aug 2022 09:38:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="WhGhT63u";
	dkim-atps=neutral
Received: by mail-yb1-f179.google.com with SMTP id 199so18340516ybl.9
        for <usrp-users@lists.ettus.com>; Tue, 09 Aug 2022 06:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=z+zU9n43bGF3tzO+zAIr3emkJ0UnTBlVyXS5TgCI5V4=;
        b=WhGhT63uQE412Tuw4sQlX//cXFqbQhhkme0dNyXEAQmQJuiXCNC21hvA7Gdcbk/eWV
         qZbdJgCwrP4qDzb+2cQ7rMDx6MdtHAcBlq0BNi1Ojix63U5WLitcoeJVb+Fn18gUMfb7
         wu4Lw92GTRVY6epmw6YGT+CjUGynABpU5SZRdO+CzA1gvqbN/AMHCwT/PAR5KnpQid3C
         4PwKP6fMTi/6MTX0lu4fwJJ40W6qU7DjzsyEUWvcgLMMKBpU3ChanO8cjljQL4ecjTPM
         2qH7nIEyL8sRqvTOC8S1FCnZg0FY9peZpSgmu8sNLjoWIV88VIJoVso3+ScqV+rD1gbD
         lN3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=z+zU9n43bGF3tzO+zAIr3emkJ0UnTBlVyXS5TgCI5V4=;
        b=DQQOZqX7LBfVr/PfFYKtdD2Ocdxo0BFAxwrmtCgTHDiV3DTZEJPfQTP+1MH/Y1I4Go
         qvNUb3n5zQNb1TrUYNqRXNtX2bnHSTNBN8BfNZpBimewOQwxR5wcbs8RJGd+BafnaI7O
         Il3OOKHft4AUjtri5f/1Og4dVqpkM4RO6GocDu9tOffJK63xXgz83nUcOqdmUnPZjE0q
         1kRtx5b6ghCsliAQyU8VfLAjoEjF6+8cnkScVO3auJ8tXinKiL83pPpPEA5NaiaJnqdO
         JO1cOY3CyppJN02HYO/xH+b65tkMb4SQ+wvIcY0EB/Uvaq5jjEr1M33QnojzwmnlOOTV
         MGVQ==
X-Gm-Message-State: ACgBeo3WZbXxPviWk8wxURTtgJ98U260t/beqg0OB0vwVlZUNM832o0B
	DpDDRf4ixN5e0YVFR1TR1YhEKka30z6dJq+UryFFEQ==
X-Google-Smtp-Source: AA6agR6THmzJU3KdygMLqqmKd6AkWmCrAwmSXBx1vRBwDJtbBs5sPcVRLB3hTj/4m7P3wNNXTM3y3USLcp6dnf85AeM=
X-Received: by 2002:a25:6612:0:b0:670:7c81:3aa6 with SMTP id
 a18-20020a256612000000b006707c813aa6mr21042735ybc.530.1660052312367; Tue, 09
 Aug 2022 06:38:32 -0700 (PDT)
MIME-Version: 1.0
References: <CALooG3-tGbHmBpZUvb8z3daaB61QW=w1-SrOKx5LuryiL4i-HA@mail.gmail.com>
 <CAL7q81uunsoLn00fzCLdVqWPNssurXfoBw7pqyLL6DoaNHfT6A@mail.gmail.com>
 <CALooG39hAmOTaXhb8Vh2siJx6mu7U-ydX-Ktvfk1yQmLfEtiGw@mail.gmail.com> <CAB__hTQeQvoC9viTfoMMDibfqt1sUSUUgnPCakW+mU4f0ZKo9w@mail.gmail.com>
In-Reply-To: <CAB__hTQeQvoC9viTfoMMDibfqt1sUSUUgnPCakW+mU4f0ZKo9w@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 9 Aug 2022 09:38:21 -0400
Message-ID: <CAB__hTQG6=LUBPheWvTTXU=ZWbRRNb27da14M8BRMN10qO+NwA@mail.gmail.com>
To: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Message-ID-Hash: FYGAQDUIGQ4BHUAJAKGP7HH5EVCGWNLY
X-Message-ID-Hash: FYGAQDUIGQ4BHUAJAKGP7HH5EVCGWNLY
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Building Custom IP and Working it via UHD
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FYGAQDUIGQ4BHUAJAKGP7HH5EVCGWNLY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9134782678146049977=="

--===============9134782678146049977==
Content-Type: multipart/alternative; boundary="000000000000635cec05e5cf0c70"

--000000000000635cec05e5cf0c70
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Also, have you tried your IP in a testbench?  If not, this is the first
place to start.

On Tue, Aug 9, 2022 at 9:34 AM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Yasir,
> One of the nice things about RFNoC graphs is the ability to connect at
> runtime (at least for dynamically linked blocks). So, one test you can tr=
y
> is to change your RFNoC graph as follows: DDS_block =3D> rx_streamer (rat=
her
> than your existing DDS_block =3D> DUC =3D> Radio-Tx).  In this case you s=
hould
> see your samples stream to the host.  If this works then you can add the
> DUC/Radio and try other experiments. But, if not, then at least your
> problem has been simplified. As a comparison you could build the siggen
> block and try the graph siggen =3D> rx_streamer, which I expect will work=
.
>
> Another relevant example that you might investigate is the Replay block.
> This block has more functionality than yours because it can act as both a
> sink and a source. But, when it is acting as a source, it is similar to
> your block.  One test I tried with the Replay block was to send samples
> from host (tx_streamer =3D> Replay) and then later to send them back to h=
ost
> (Replay =3D> rx_streamer) to verify that the samples were equal.
> Rob
>
> On Tue, Aug 9, 2022 at 4:53 AM Yasir =C3=96z=C3=A7al=C4=B1k <simultaneous=
11@gmail.com>
> wrote:
>
>> Hi Jonathon,
>> Thank you for the answer. For complex multiplier IP, I have already
>> looked at it and used it as a reference point for my DDS IP. I have chan=
ged
>> complex multiplier IP files with DDS IP files and implemented it. That's
>> how I generated my bitstream. For Cpp file  rfnoc_siggen_example.cpp is
>> what I was looking for. I changed my cpp code according to the siggen
>> example. After that, I tried it on E320. The Error message is gone now, =
but
>> the signal is still not generated. I expect at least a red light on TX/R=
X
>> channel even if my DDS Block doesn't work properly, but this is not the
>> case. There is no light on Radio channels. I don't know if this is becau=
se
>> of my DDS block or because of the CPP file. I will try to make some chan=
ges
>> on Verilog and generate new bitstream. After that, I will post the resul=
ts
>> here.
>>
>> While doing that, I will be glad for any more help.
>>
>> Sorry for the late answer, there is a 10 hours time zone difference
>> between where I live and the US.
>>
>> Kind regards,
>> Yasir
>>
>> Jonathon Pendlum <jonathon.pendlum@ettus.com>, 8 A=C4=9Fu 2022 Pzt, 19:2=
9
>> tarihinde =C5=9Funu yazd=C4=B1:
>>
>>> Hi Yasir,
>>>
>>> I suggest taking a look at this example using the Siggen block:
>>> https://github.com/EttusResearch/rfnoc-apps/blob/testing/master/apps/rf=
noc_siggen_example.cpp.
>>> As for adding IP, rfnoc-example has an example using a complex multipli=
er:
>>> https://github.com/EttusResearch/uhd/tree/master/host/examples/rfnoc-ex=
ample/fpga/ip/.
>>> I also suggest updating your E320 and Host UHD version to 4.2 as there =
have
>>> been several bug fixes since UHD 4.0.
>>>
>>> Jonathon
>>>
>>>
>>> On Mon, Aug 8, 2022 at 2:50 AM Yasir =C3=96z=C3=A7al=C4=B1k <simultaneo=
us11@gmail.com>
>>> wrote:
>>>
>>>> Hi everyone,
>>>>
>>>>   I have a E320 device and I am trying to learn how to build my own
>>>> custom IPs. The thing is that the IPs which were implemented by Ettus =
were
>>>> not enough for me. Therefore; I need to build my own custom IPs. I hav=
e all
>>>> the HDL codes that I need to build on E320, but I am having a problem =
with
>>>> E320 development flow.
>>>>
>>>>   To learn how to add my custom IPs, I have analyzed the Rfnoc-example
>>>> in the uhd repository. In that example, they showed basic Gain IP (whi=
ch
>>>> uses multiply IP). Firstly, I have synthesized and implemented that
>>>> example. After that, I loaded the bit file into USRP and tested it
>>>> with a init_gain_block C++ file. I tried to write a value to register =
and
>>>> read back from the same register. It worked fine. I also changed the
>>>> default UHD C++ code and wrote a basic UHD C++ code to amplify a signa=
l by
>>>> looking at example UHD C++ codes. That worked fine, too. The Signal gi=
ven
>>>> from ADC is amplified and given back to DAC. After that I changed the
>>>> multiply IP with DDS IP and tried to build it to generate a signal. Th=
e
>>>> thing is that I implemented it successfully and the bit file was gener=
ated,
>>>> but it did not work after loading it into the device.
>>>>
>>>> There are 2 problems:
>>>> 1 -) Since all the example UHD C++ codes are meant to transfer data
>>>> between host and device, I do not know how to make it work. Because, m=
y DDS
>>>> IP does not need to transfer data between host and device. I just need=
 to
>>>> write a frequency value to register and DDS will generate a signal. Af=
ter
>>>> that, I expect it to work fine. To do that, in UHD C++ code I have use=
d
>>>> rfnoc_graph and connected my block with the DUC block. Also I connecte=
d the
>>>> DUC block with the Radio block. I expect this to work seamlessly, but =
it
>>>> did not. I could not figure out how to write a C++ code to make this w=
ork.
>>>> The code gives an error which is "[ERROR] [RFNOC::GRAPH] Caught
>>>> exception while initializing graph: Environment Error: IOError: Timed =
out
>>>> getting recv buff for management transaction"
>>>>
>>>> 2 -) While building DDS IP, I have opened a Vivado 2019.1 and generate=
d
>>>> a DDS IP. Then, I used the .xci file in uhd. I do not know if this is =
the
>>>> right way, but UHD gives no error while implementing it.
>>>>
>>>>
>>>>
>>>> USRP Device :E320
>>>> UHD Version : 4.0.0.0
>>>> Host OS : Ubuntu 20.04.4
>>>>
>>>> Kind Regards,
>>>> Yasir
>>>>
>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000635cec05e5cf0c70
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Also, have you tried your IP in a testbench?=C2=A0 If not,=
 this is the first place to start.</div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 9, 2022 at 9:34 AM Rob Kossle=
r &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi=
 Yasir,<div>One of the nice things about RFNoC graphs is the ability to con=
nect at runtime (at least for dynamically linked blocks). So, one test you =
can try is to change your RFNoC graph as follows: DDS_block =3D&gt; rx_stre=
amer (rather than your existing DDS_block =3D&gt; DUC =3D&gt; Radio-Tx).=C2=
=A0 In this case you should see your samples stream to the host.=C2=A0 If t=
his works then you can add the DUC/Radio and try other experiments. But, if=
 not, then at least your problem has been simplified. As a comparison you c=
ould build the siggen block and try the graph siggen =3D&gt; rx_streamer, w=
hich I expect will work.</div><div><br></div><div>Another relevant example =
that you might investigate is the Replay block.=C2=A0 This block has more f=
unctionality than yours because it can act as both a sink and a source. But=
, when it is acting as a source, it is similar to your block.=C2=A0 One tes=
t I tried with=C2=A0the Replay block was to send samples from host (tx_stre=
amer =3D&gt; Replay) and then later to send them back to host (Replay =3D&g=
t; rx_streamer) to verify that the samples were equal.</div><div>Rob</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Tue, Aug 9, 2022 at 4:53 AM Yasir =C3=96z=C3=A7al=C4=B1k &lt;<a href=3D"m=
ailto:simultaneous11@gmail.com" target=3D"_blank">simultaneous11@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr">Hi Jonathon,=C2=A0<div>Thank you for the answer. For comple=
x multiplier IP, I have already looked at it and used it as a reference poi=
nt for my DDS IP. I have changed complex multiplier IP files with DDS IP fi=
les and implemented it. That&#39;s how I generated my bitstream. For Cpp fi=
le=C2=A0 rfnoc_siggen_example.cpp is what I was looking for. I changed my c=
pp code according to the siggen example. After that, I tried it on E320. Th=
e Error message is gone now, but the signal is still not generated. I expec=
t at least a red light on TX/RX channel even if my DDS Block doesn&#39;t wo=
rk properly, but this is not the case. There is no light on Radio channels.=
 I don&#39;t know if this is because of my DDS block or because of the CPP =
file. I will try to make some changes on Verilog and generate new bitstream=
. After that, I will post the=C2=A0results here.</div><div><br></div><div>W=
hile doing that, I will be glad for any more help.</div><div><br></div><div=
>Sorry for the late answer, there is a 10 hours time zone difference betwee=
n where I live and the US.</div><div><br></div><div>Kind regards,</div><div=
>Yasir</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.c=
om" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;, 8 A=C4=9Fu 2022 P=
zt, 19:29 tarihinde =C5=9Funu yazd=C4=B1:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr">Hi=C2=A0Yasir,<div><br></div><di=
v>I suggest taking a look at this example using the Siggen block:=C2=A0<a h=
ref=3D"https://github.com/EttusResearch/rfnoc-apps/blob/testing/master/apps=
/rfnoc_siggen_example.cpp" target=3D"_blank">https://github.com/EttusResear=
ch/rfnoc-apps/blob/testing/master/apps/rfnoc_siggen_example.cpp</a>. As for=
 adding IP, rfnoc-example has an example using a complex multiplier:=C2=A0<=
a href=3D"https://github.com/EttusResearch/uhd/tree/master/host/examples/rf=
noc-example/fpga/ip/" target=3D"_blank">https://github.com/EttusResearch/uh=
d/tree/master/host/examples/rfnoc-example/fpga/ip/</a>. I also suggest upda=
ting your E320 and Host UHD version to 4.2 as there have been several bug f=
ixes since UHD 4.0.</div><div><br></div><div>Jonathon</div><div><br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Mon, Aug 8, 2022 at 2:50 AM Yasir =C3=96z=C3=A7al=C4=B1k &lt;<a href=3D"m=
ailto:simultaneous11@gmail.com" target=3D"_blank">simultaneous11@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr">Hi everyone,<div><br><div>=C2=A0 I have a E320 device and I=
 am trying to learn how to build my own custom IPs. The thing is that the I=
Ps which were implemented by Ettus were not enough for me. Therefore; I nee=
d to build my own custom IPs. I have all the HDL codes that I need to build=
 on E320, but I am having a problem with E320 development flow.</div><div><=
br></div><div>=C2=A0 To learn how to add my custom IPs, I have analyzed the=
 Rfnoc-example in the uhd repository. In that example, they showed basic Ga=
in IP (which uses multiply IP). Firstly, I have synthesized and implemented=
 that example. After that, I loaded the bit file into USRP and tested it wi=
th=C2=A0a=C2=A0init_gain_block C++ file. I tried to write a value to regist=
er and read back from the same=C2=A0register. It worked fine. I also change=
d the default UHD C++ code and wrote a basic UHD C++ code to amplify a sign=
al by looking at example=C2=A0UHD C++ codes. That worked fine, too. The Sig=
nal given from ADC is amplified and given back to DAC. After that I changed=
 the multiply IP with DDS IP and tried to build it to generate a signal. Th=
e thing is that I implemented it successfully and the bit file was generate=
d, but it did not work after loading it into the device.=C2=A0</div><div><b=
r></div><div>There are 2 problems:</div><div>1 -) Since all the example UHD=
 C++ codes are meant to transfer data between host and device, I do not kno=
w how to make it work. Because, my DDS IP does not need to transfer data be=
tween host and device. I just need to write a frequency value to register a=
nd DDS will generate a signal. After that, I expect it to work fine. To do =
that, in UHD C++ code I have used rfnoc_graph and connected my block with t=
he DUC block. Also I connected the DUC block with the Radio block. I expect=
 this to work seamlessly, but it did not.=C2=A0I could=C2=A0not figure out =
how to write a C++ code to make this work.</div><div>The code gives an erro=
r which is &quot;[ERROR] [RFNOC::GRAPH] Caught exception while initializing=
 graph: Environment Error: IOError: Timed out getting recv buff for managem=
ent transaction&quot;</div><div><br></div><div>2 -) While building DDS IP, =
I have opened a Vivado 2019.1 and generated a DDS IP. Then, I used the .xci=
 file in uhd. I do not know if this is the right way, but UHD gives no erro=
r while implementing it.</div><div><br></div><div><br></div><div><br></div>=
<div>USRP Device :E320</div><div>UHD Version : 4.0.0.0</div><div>Host OS : =
Ubuntu 20.04.4</div></div><div><br></div><div>Kind Regards,</div><div>Yasir=
</div><div><br></div><div><br></div><div><br></div></div>
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
</blockquote></div>

--000000000000635cec05e5cf0c70--

--===============9134782678146049977==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9134782678146049977==--
