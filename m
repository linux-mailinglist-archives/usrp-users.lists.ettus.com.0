Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E601C58F0C3
	for <lists+usrp-users@lfdr.de>; Wed, 10 Aug 2022 18:52:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6F10E383E7E
	for <lists+usrp-users@lfdr.de>; Wed, 10 Aug 2022 12:52:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660150329; bh=FS5EmqmHepBcExaRHDZdG/nhu7Z+tcMKxkYLkd/jqCY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Yw6g4/29JGJbuRC4KUfHvgsrRcNv0QHfvn1yunKQlf460XtMwrFOILDJSqFCSDcR2
	 55fhtDF0UnMvDGB8j5dLOMF4J+oU6hlXg4EKxVTWTkA0IxQKsQnaut83DSSOzUQSaA
	 9jOa0GGH3oZvL4CJheDfdx5JUluDclopmrrZW3PF8Fq1SpKjut7faF+B4q0ftrFbU5
	 chkZ7xzIzj50408tj28tODjg5kIOl8XTM4VpQWDYJKoAyMXc1fsNCA0JAyn+T3VV3L
	 2ITMY3s2jIQarbqt14gK7j9HHa4aDgRrDtwkOR/f1bfkx8VrabjcHwRofRnIvSwHIV
	 VFeu4436lEOpg==
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	by mm2.emwd.com (Postfix) with ESMTPS id BF5D63839E6
	for <usrp-users@lists.ettus.com>; Wed, 10 Aug 2022 12:49:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fvd8W39X";
	dkim-atps=neutral
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-328a1cff250so148528097b3.6
        for <usrp-users@lists.ettus.com>; Wed, 10 Aug 2022 09:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=ancOuiiX95hqZjrSgTa23rMPZnTF3pr+INlFx1IRHcQ=;
        b=fvd8W39XIo7fvBi43vkg4ZzHFC1GahSiQERS3fOqjWsbeZJVUmS41lGEvqtJK7CEVe
         U2B0pO+enzo5UDQvs27GekZm7z0R++JGOGXKMSY8gfDiu2c8Ezy7xXyRWYc6j93C85JS
         +oA/I/DnaovWWY2exR64K+ohIR02YTOURlKVCjBAgw6XTyNpf1t99FPaq1EvGCfMTkEN
         WFrfbFKXUCkBFSpFZqa81iny9aHJAvldqyYabTG5au/xMuO1igY1k101pNBpBIBa6OZX
         uNsiVN5uMXv3qyMepfpylh/aLCZBIaQrKAussCc+feYtVLKsL4/RNGa3+79r5HQY6FSP
         sh1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=ancOuiiX95hqZjrSgTa23rMPZnTF3pr+INlFx1IRHcQ=;
        b=2jE7VolVRQI7IpPJ0Watb6k9Fqp8VpMPtKV76lDt1fReIRfFJ5dPodBt7KiVl8TmJj
         S3hZ9dbH4N3UzTGFNKWBosQUNNJatBugBBijiMw5R/MG1wR7a6nLAGFpolMAcwHjpq+o
         WGf2cPhpDXPy6OfVUBKjRZtg4YjQ5iBIrokmdJXuIi4jbuifXC6NA2tum+FlrOSwv9mi
         HdvaUjAD3DcTCdfySgnCejEr8BYuEhA62+CGckXkrB8ghpMi4CKg0nnNn8PrRZAfuEGY
         Pk/GGKATgIfsPrjNJ4EC0lyfZxd7LfuWTV9IOG6fPomO9ObWlTSH+ctLibw1b88Rj9Eo
         1q0g==
X-Gm-Message-State: ACgBeo0ZLWf7OyeL8+TTngHEdSQjqaFpxzP+KAokHixm5rHct5ncdtlp
	KSo0PBXgtMHPWt5ApLkFj5iLPASIYczh0P93wApVmlHcIA==
X-Google-Smtp-Source: AA6agR5uymFz5QOOd2gs92Mjdgoi6v+2v61EAeOqkXmt+/svCYi1G7CivDEEq+fSgbSyTVKo8B2ZsdHpgpGzakSdPfY=
X-Received: by 2002:a81:25c6:0:b0:324:294e:6fea with SMTP id
 l189-20020a8125c6000000b00324294e6feamr29949146ywl.426.1660150184941; Wed, 10
 Aug 2022 09:49:44 -0700 (PDT)
MIME-Version: 1.0
References: <CALooG3-tGbHmBpZUvb8z3daaB61QW=w1-SrOKx5LuryiL4i-HA@mail.gmail.com>
 <CAL7q81uunsoLn00fzCLdVqWPNssurXfoBw7pqyLL6DoaNHfT6A@mail.gmail.com>
 <CALooG39hAmOTaXhb8Vh2siJx6mu7U-ydX-Ktvfk1yQmLfEtiGw@mail.gmail.com>
 <CAB__hTQeQvoC9viTfoMMDibfqt1sUSUUgnPCakW+mU4f0ZKo9w@mail.gmail.com> <CAB__hTQG6=LUBPheWvTTXU=ZWbRRNb27da14M8BRMN10qO+NwA@mail.gmail.com>
In-Reply-To: <CAB__hTQG6=LUBPheWvTTXU=ZWbRRNb27da14M8BRMN10qO+NwA@mail.gmail.com>
From: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Date: Wed, 10 Aug 2022 19:49:34 +0300
Message-ID: <CALooG38oERXQH0aOVyKnT3BKg7jFWzRGcScAp64ikOwN4kHVNA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: R5JCBZBTDKIK5J74EMHM4WNIVASNZOPQ
X-Message-ID-Hash: R5JCBZBTDKIK5J74EMHM4WNIVASNZOPQ
X-MailFrom: simultaneous11@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Building Custom IP and Working it via UHD
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R5JCBZBTDKIK5J74EMHM4WNIVASNZOPQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3877495006013794506=="

--===============3877495006013794506==
Content-Type: multipart/alternative; boundary="0000000000000c1ba105e5e5d69b"

--0000000000000c1ba105e5e5d69b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,
thank you very much for your answer. I used rx_streamer to check if my
block was working, it did not. Then, I found the problem on Verilog and
fixed it. After that I used rx_streamer to check my block and it worked.
Thank you for your advice, it was really helpful.

Rob Kossler <rkossler@nd.edu>, 9 A=C4=9Fu 2022 Sal, 16:38 tarihinde =C5=9Fu=
nu yazd=C4=B1:

> Also, have you tried your IP in a testbench?  If not, this is the first
> place to start.
>
> On Tue, Aug 9, 2022 at 9:34 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Yasir,
>> One of the nice things about RFNoC graphs is the ability to connect at
>> runtime (at least for dynamically linked blocks). So, one test you can t=
ry
>> is to change your RFNoC graph as follows: DDS_block =3D> rx_streamer (ra=
ther
>> than your existing DDS_block =3D> DUC =3D> Radio-Tx).  In this case you =
should
>> see your samples stream to the host.  If this works then you can add the
>> DUC/Radio and try other experiments. But, if not, then at least your
>> problem has been simplified. As a comparison you could build the siggen
>> block and try the graph siggen =3D> rx_streamer, which I expect will wor=
k.
>>
>> Another relevant example that you might investigate is the Replay block.
>> This block has more functionality than yours because it can act as both =
a
>> sink and a source. But, when it is acting as a source, it is similar to
>> your block.  One test I tried with the Replay block was to send samples
>> from host (tx_streamer =3D> Replay) and then later to send them back to =
host
>> (Replay =3D> rx_streamer) to verify that the samples were equal.
>> Rob
>>
>> On Tue, Aug 9, 2022 at 4:53 AM Yasir =C3=96z=C3=A7al=C4=B1k <simultaneou=
s11@gmail.com>
>> wrote:
>>
>>> Hi Jonathon,
>>> Thank you for the answer. For complex multiplier IP, I have already
>>> looked at it and used it as a reference point for my DDS IP. I have cha=
nged
>>> complex multiplier IP files with DDS IP files and implemented it. That'=
s
>>> how I generated my bitstream. For Cpp file  rfnoc_siggen_example.cpp is
>>> what I was looking for. I changed my cpp code according to the siggen
>>> example. After that, I tried it on E320. The Error message is gone now,=
 but
>>> the signal is still not generated. I expect at least a red light on TX/=
RX
>>> channel even if my DDS Block doesn't work properly, but this is not the
>>> case. There is no light on Radio channels. I don't know if this is beca=
use
>>> of my DDS block or because of the CPP file. I will try to make some cha=
nges
>>> on Verilog and generate new bitstream. After that, I will post the resu=
lts
>>> here.
>>>
>>> While doing that, I will be glad for any more help.
>>>
>>> Sorry for the late answer, there is a 10 hours time zone difference
>>> between where I live and the US.
>>>
>>> Kind regards,
>>> Yasir
>>>
>>> Jonathon Pendlum <jonathon.pendlum@ettus.com>, 8 A=C4=9Fu 2022 Pzt, 19:=
29
>>> tarihinde =C5=9Funu yazd=C4=B1:
>>>
>>>> Hi Yasir,
>>>>
>>>> I suggest taking a look at this example using the Siggen block:
>>>> https://github.com/EttusResearch/rfnoc-apps/blob/testing/master/apps/r=
fnoc_siggen_example.cpp.
>>>> As for adding IP, rfnoc-example has an example using a complex multipl=
ier:
>>>> https://github.com/EttusResearch/uhd/tree/master/host/examples/rfnoc-e=
xample/fpga/ip/.
>>>> I also suggest updating your E320 and Host UHD version to 4.2 as there=
 have
>>>> been several bug fixes since UHD 4.0.
>>>>
>>>> Jonathon
>>>>
>>>>
>>>> On Mon, Aug 8, 2022 at 2:50 AM Yasir =C3=96z=C3=A7al=C4=B1k <simultane=
ous11@gmail.com>
>>>> wrote:
>>>>
>>>>> Hi everyone,
>>>>>
>>>>>   I have a E320 device and I am trying to learn how to build my own
>>>>> custom IPs. The thing is that the IPs which were implemented by Ettus=
 were
>>>>> not enough for me. Therefore; I need to build my own custom IPs. I ha=
ve all
>>>>> the HDL codes that I need to build on E320, but I am having a problem=
 with
>>>>> E320 development flow.
>>>>>
>>>>>   To learn how to add my custom IPs, I have analyzed the Rfnoc-exampl=
e
>>>>> in the uhd repository. In that example, they showed basic Gain IP (wh=
ich
>>>>> uses multiply IP). Firstly, I have synthesized and implemented that
>>>>> example. After that, I loaded the bit file into USRP and tested it
>>>>> with a init_gain_block C++ file. I tried to write a value to register=
 and
>>>>> read back from the same register. It worked fine. I also changed the
>>>>> default UHD C++ code and wrote a basic UHD C++ code to amplify a sign=
al by
>>>>> looking at example UHD C++ codes. That worked fine, too. The Signal g=
iven
>>>>> from ADC is amplified and given back to DAC. After that I changed the
>>>>> multiply IP with DDS IP and tried to build it to generate a signal. T=
he
>>>>> thing is that I implemented it successfully and the bit file was gene=
rated,
>>>>> but it did not work after loading it into the device.
>>>>>
>>>>> There are 2 problems:
>>>>> 1 -) Since all the example UHD C++ codes are meant to transfer data
>>>>> between host and device, I do not know how to make it work. Because, =
my DDS
>>>>> IP does not need to transfer data between host and device. I just nee=
d to
>>>>> write a frequency value to register and DDS will generate a signal. A=
fter
>>>>> that, I expect it to work fine. To do that, in UHD C++ code I have us=
ed
>>>>> rfnoc_graph and connected my block with the DUC block. Also I connect=
ed the
>>>>> DUC block with the Radio block. I expect this to work seamlessly, but=
 it
>>>>> did not. I could not figure out how to write a C++ code to make this =
work.
>>>>> The code gives an error which is "[ERROR] [RFNOC::GRAPH] Caught
>>>>> exception while initializing graph: Environment Error: IOError: Timed=
 out
>>>>> getting recv buff for management transaction"
>>>>>
>>>>> 2 -) While building DDS IP, I have opened a Vivado 2019.1 and
>>>>> generated a DDS IP. Then, I used the .xci file in uhd. I do not know =
if
>>>>> this is the right way, but UHD gives no error while implementing it.
>>>>>
>>>>>
>>>>>
>>>>> USRP Device :E320
>>>>> UHD Version : 4.0.0.0
>>>>> Host OS : Ubuntu 20.04.4
>>>>>
>>>>> Kind Regards,
>>>>> Yasir
>>>>>
>>>>>
>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--0000000000000c1ba105e5e5d69b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rob,<div>thank you very much for your answer. I used rx=
_streamer to check if my block was working, it did not. Then, I found the p=
roblem on Verilog and fixed it. After that I used rx_streamer to check my b=
lock and it worked. Thank you for your advice, it was really helpful.</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt;,=
 9 A=C4=9Fu 2022 Sal, 16:38 tarihinde =C5=9Funu yazd=C4=B1:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Also, have you=
 tried your IP in a testbench?=C2=A0 If not, this is the first place to sta=
rt.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Tue, Aug 9, 2022 at 9:34 AM Rob Kossler &lt;<a href=3D"mailto:rkossle=
r@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Yasir,<div>O=
ne of the nice things about RFNoC graphs is the ability to connect at runti=
me (at least for dynamically linked blocks). So, one test you can try is to=
 change your RFNoC graph as follows: DDS_block =3D&gt; rx_streamer (rather =
than your existing DDS_block =3D&gt; DUC =3D&gt; Radio-Tx).=C2=A0 In this c=
ase you should see your samples stream to the host.=C2=A0 If this works the=
n you can add the DUC/Radio and try other experiments. But, if not, then at=
 least your problem has been simplified. As a comparison you could build th=
e siggen block and try the graph siggen =3D&gt; rx_streamer, which I expect=
 will work.</div><div><br></div><div>Another relevant example that you migh=
t investigate is the Replay block.=C2=A0 This block has more functionality =
than yours because it can act as both a sink and a source. But, when it is =
acting as a source, it is similar to your block.=C2=A0 One test I tried wit=
h=C2=A0the Replay block was to send samples from host (tx_streamer =3D&gt; =
Replay) and then later to send them back to host (Replay =3D&gt; rx_streame=
r) to verify that the samples were equal.</div><div>Rob</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 9,=
 2022 at 4:53 AM Yasir =C3=96z=C3=A7al=C4=B1k &lt;<a href=3D"mailto:simulta=
neous11@gmail.com" target=3D"_blank">simultaneous11@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r">Hi Jonathon,=C2=A0<div>Thank you for the answer. For complex multiplier =
IP, I have already looked at it and used it as a reference point for my DDS=
 IP. I have changed complex multiplier IP files with DDS IP files and imple=
mented it. That&#39;s how I generated my bitstream. For Cpp file=C2=A0 rfno=
c_siggen_example.cpp is what I was looking for. I changed my cpp code accor=
ding to the siggen example. After that, I tried it on E320. The Error messa=
ge is gone now, but the signal is still not generated. I expect at least a =
red light on TX/RX channel even if my DDS Block doesn&#39;t work properly, =
but this is not the case. There is no light on Radio channels. I don&#39;t =
know if this is because of my DDS block or because of the CPP file. I will =
try to make some changes on Verilog and generate new bitstream. After that,=
 I will post the=C2=A0results here.</div><div><br></div><div>While doing th=
at, I will be glad for any more help.</div><div><br></div><div>Sorry for th=
e late answer, there is a 10 hours time zone difference between where I liv=
e and the US.</div><div><br></div><div>Kind regards,</div><div>Yasir</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">J=
onathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D=
"_blank">jonathon.pendlum@ettus.com</a>&gt;, 8 A=C4=9Fu 2022 Pzt, 19:29 tar=
ihinde =C5=9Funu yazd=C4=B1:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr">Hi=C2=A0Yasir,<div><br></div><div>I suggest t=
aking a look at this example using the Siggen block:=C2=A0<a href=3D"https:=
//github.com/EttusResearch/rfnoc-apps/blob/testing/master/apps/rfnoc_siggen=
_example.cpp" target=3D"_blank">https://github.com/EttusResearch/rfnoc-apps=
/blob/testing/master/apps/rfnoc_siggen_example.cpp</a>. As for adding IP, r=
fnoc-example has an example using a complex multiplier:=C2=A0<a href=3D"htt=
ps://github.com/EttusResearch/uhd/tree/master/host/examples/rfnoc-example/f=
pga/ip/" target=3D"_blank">https://github.com/EttusResearch/uhd/tree/master=
/host/examples/rfnoc-example/fpga/ip/</a>. I also suggest updating your E32=
0 and Host UHD version to 4.2 as there have been several bug fixes since UH=
D 4.0.</div><div><br></div><div>Jonathon</div><div><br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 8,=
 2022 at 2:50 AM Yasir =C3=96z=C3=A7al=C4=B1k &lt;<a href=3D"mailto:simulta=
neous11@gmail.com" target=3D"_blank">simultaneous11@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r">Hi everyone,<div><br><div>=C2=A0 I have a E320 device and I am trying to=
 learn how to build my own custom IPs. The thing is that the IPs which were=
 implemented by Ettus were not enough for me. Therefore; I need to build my=
 own custom IPs. I have all the HDL codes that I need to build on E320, but=
 I am having a problem with E320 development flow.</div><div><br></div><div=
>=C2=A0 To learn how to add my custom IPs, I have analyzed the Rfnoc-exampl=
e in the uhd repository. In that example, they showed basic Gain IP (which =
uses multiply IP). Firstly, I have synthesized and implemented that example=
. After that, I loaded the bit file into USRP and tested it with=C2=A0a=C2=
=A0init_gain_block C++ file. I tried to write a value to register and read =
back from the same=C2=A0register. It worked fine. I also changed the defaul=
t UHD C++ code and wrote a basic UHD C++ code to amplify a signal by lookin=
g at example=C2=A0UHD C++ codes. That worked fine, too. The Signal given fr=
om ADC is amplified and given back to DAC. After that I changed the multipl=
y IP with DDS IP and tried to build it to generate a signal. The thing is t=
hat I implemented it successfully and the bit file was generated, but it di=
d not work after loading it into the device.=C2=A0</div><div><br></div><div=
>There are 2 problems:</div><div>1 -) Since all the example UHD C++ codes a=
re meant to transfer data between host and device, I do not know how to mak=
e it work. Because, my DDS IP does not need to transfer data between host a=
nd device. I just need to write a frequency value to register and DDS will =
generate a signal. After that, I expect it to work fine. To do that, in UHD=
 C++ code I have used rfnoc_graph and connected my block with the DUC block=
. Also I connected the DUC block with the Radio block. I expect this to wor=
k seamlessly, but it did not.=C2=A0I could=C2=A0not figure out how to write=
 a C++ code to make this work.</div><div>The code gives an error which is &=
quot;[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Envi=
ronment Error: IOError: Timed out getting recv buff for management transact=
ion&quot;</div><div><br></div><div>2 -) While building DDS IP, I have opene=
d a Vivado 2019.1 and generated a DDS IP. Then, I used the .xci file in uhd=
. I do not know if this is the right way, but UHD gives no error while impl=
ementing it.</div><div><br></div><div><br></div><div><br></div><div>USRP De=
vice :E320</div><div>UHD Version : 4.0.0.0</div><div>Host OS : Ubuntu 20.04=
.4</div></div><div><br></div><div>Kind Regards,</div><div>Yasir</div><div><=
br></div><div><br></div><div><br></div></div>
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
</blockquote></div>

--0000000000000c1ba105e5e5d69b--

--===============3877495006013794506==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3877495006013794506==--
