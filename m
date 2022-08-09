Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 056B458D5C0
	for <lists+usrp-users@lfdr.de>; Tue,  9 Aug 2022 10:54:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 76B823839A1
	for <lists+usrp-users@lfdr.de>; Tue,  9 Aug 2022 04:54:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660035262; bh=nbVRhF554XQJRweJepfFOl3LiUApUh3Ct+pcVUBxfTU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=rXoeXqXlh1oOldwctqD60kAt4493UDz4P/nXrH40ISGsZsGnoEjvYNNWqG4f3wpl6
	 2lqWYGIUeFLnQO7hWxYS70jFQyrH85Fc3w/kTfdgzV5UtanY1mV53AiCQ3h7dTUT6V
	 fqjvFStoZU+kpcpmcsZsxaFVAg2yZz3ipEDmlfEjaVN8LrAD5hwqeE0SumeyS8guOm
	 JaLN3MlGoPoYltXBcWWWaCSZaZ7lc34z6vBuW1pxMqf7t1Y8e5KzNJk0WFk3h4szF6
	 KiLNvyGfjH65McRFcnfspDA9EzViJ3+MFBdqfYpggnKl6dHw38s9dsn6wrXZUwfRvN
	 jzxp44BF2Judg==
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C18C381426
	for <usrp-users@lists.ettus.com>; Tue,  9 Aug 2022 04:52:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TKoelgSH";
	dkim-atps=neutral
Received: by mail-yb1-f171.google.com with SMTP id y127so17315105yby.8
        for <usrp-users@lists.ettus.com>; Tue, 09 Aug 2022 01:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=Fjp9IQdpKt1qWl0Bi3HZzs5/Iq2CftlGEx4IKcpcaWc=;
        b=TKoelgSHoqp7MOMHgahqAkHqQgFfaIqqT3ua80FWXcNc1rHj26hWLUkvzC5YIHC6WV
         h5YlenP+PlCjqqE0ncqGjzXXecL7nupSVtsxzQZN5droi3u2mHTefuixBDaYS4/TLP1g
         8WWxz6b5DpJ77zzykoQ3hZN50ct1kmDEwL+Um0ucA6SKQ05Agj+H4kKpM9BbhHtKxguO
         B33cbwLjGL6o9PgmNmgLPHaC4u2qzAf+w/M58MwBtOmr4/EeXRUYuOxnE/VhyVcgnfW7
         EFyHx9iCtDVHm8ziil93pjCNfgFyystlZYZHDNkymK5s+R466CzS73ajofytq/fCoF3B
         z1OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=Fjp9IQdpKt1qWl0Bi3HZzs5/Iq2CftlGEx4IKcpcaWc=;
        b=FF0O+qL2vkHFf2EgiDZtsJm1aYeaCI8yuxJ90QcWTCXyOawcAA649y0gv0A/q5YfqY
         JYwuRsxczcTVek7a2q6DGnM9LJ17b97i2/qQzOmsPXqvYPt9R+oR+dx6/NC3ziY5PqUN
         xxhZXUFzdAiahL1Bm/U8taaxn1XnhRFJSG3TFubJAtFxhJ9/8I118tU2SV3gXhJu+4pM
         CogLTdIB6BZvoU7GAIOCUo0L7DMAMQs1kn8dIFkytZvrNHpqkAeJkhcjX+N8TsvDT2Ta
         FslLYWyAVNiiVaOTcjMP8wAbRdVNf9gQVbbbUUV2PdXDAjEvuVLce+ueVYU+hPuFbiAF
         4OPA==
X-Gm-Message-State: ACgBeo2MTNduzm8xNYR0wObDFoC5zj790tvJBOGheb0bhFci6aUuSqQ8
	jmJQFIQ2eoNfkc51Qy15r7T388e6AKgM2sorlx//qaD7E8lh
X-Google-Smtp-Source: AA6agR5G5jR68acUfY30nMGFNMBLhwyx/UCZf1C9xrpXpLjLe4qs2AmlwUPM166OgcjpHA6kR82++NdvUjiUd7QHPY4=
X-Received: by 2002:a25:f309:0:b0:671:8725:7f22 with SMTP id
 c9-20020a25f309000000b0067187257f22mr19257356ybs.512.1660035125647; Tue, 09
 Aug 2022 01:52:05 -0700 (PDT)
MIME-Version: 1.0
References: <CALooG3-tGbHmBpZUvb8z3daaB61QW=w1-SrOKx5LuryiL4i-HA@mail.gmail.com>
 <CAL7q81uunsoLn00fzCLdVqWPNssurXfoBw7pqyLL6DoaNHfT6A@mail.gmail.com>
In-Reply-To: <CAL7q81uunsoLn00fzCLdVqWPNssurXfoBw7pqyLL6DoaNHfT6A@mail.gmail.com>
From: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Date: Tue, 9 Aug 2022 11:51:54 +0300
Message-ID: <CALooG39hAmOTaXhb8Vh2siJx6mu7U-ydX-Ktvfk1yQmLfEtiGw@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: 62DQNVHJP6PVI7RBFPENNYUJHGNQQIV7
X-Message-ID-Hash: 62DQNVHJP6PVI7RBFPENNYUJHGNQQIV7
X-MailFrom: simultaneous11@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Building Custom IP and Working it via UHD
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/62DQNVHJP6PVI7RBFPENNYUJHGNQQIV7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9127718315881314185=="

--===============9127718315881314185==
Content-Type: multipart/alternative; boundary="000000000000fa9ebf05e5cb0be3"

--000000000000fa9ebf05e5cb0be3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jonathon,
Thank you for the answer. For complex multiplier IP, I have already looked
at it and used it as a reference point for my DDS IP. I have changed
complex multiplier IP files with DDS IP files and implemented it. That's
how I generated my bitstream. For Cpp file  rfnoc_siggen_example.cpp is
what I was looking for. I changed my cpp code according to the siggen
example. After that, I tried it on E320. The Error message is gone now, but
the signal is still not generated. I expect at least a red light on TX/RX
channel even if my DDS Block doesn't work properly, but this is not the
case. There is no light on Radio channels. I don't know if this is because
of my DDS block or because of the CPP file. I will try to make some changes
on Verilog and generate new bitstream. After that, I will post the results
here.

While doing that, I will be glad for any more help.

Sorry for the late answer, there is a 10 hours time zone difference between
where I live and the US.

Kind regards,
Yasir

Jonathon Pendlum <jonathon.pendlum@ettus.com>, 8 A=C4=9Fu 2022 Pzt, 19:29
tarihinde =C5=9Funu yazd=C4=B1:

> Hi Yasir,
>
> I suggest taking a look at this example using the Siggen block:
> https://github.com/EttusResearch/rfnoc-apps/blob/testing/master/apps/rfno=
c_siggen_example.cpp.
> As for adding IP, rfnoc-example has an example using a complex multiplier=
:
> https://github.com/EttusResearch/uhd/tree/master/host/examples/rfnoc-exam=
ple/fpga/ip/.
> I also suggest updating your E320 and Host UHD version to 4.2 as there ha=
ve
> been several bug fixes since UHD 4.0.
>
> Jonathon
>
>
> On Mon, Aug 8, 2022 at 2:50 AM Yasir =C3=96z=C3=A7al=C4=B1k <simultaneous=
11@gmail.com>
> wrote:
>
>> Hi everyone,
>>
>>   I have a E320 device and I am trying to learn how to build my own
>> custom IPs. The thing is that the IPs which were implemented by Ettus we=
re
>> not enough for me. Therefore; I need to build my own custom IPs. I have =
all
>> the HDL codes that I need to build on E320, but I am having a problem wi=
th
>> E320 development flow.
>>
>>   To learn how to add my custom IPs, I have analyzed the Rfnoc-example i=
n
>> the uhd repository. In that example, they showed basic Gain IP (which us=
es
>> multiply IP). Firstly, I have synthesized and implemented that example.
>> After that, I loaded the bit file into USRP and tested it
>> with a init_gain_block C++ file. I tried to write a value to register an=
d
>> read back from the same register. It worked fine. I also changed the
>> default UHD C++ code and wrote a basic UHD C++ code to amplify a signal =
by
>> looking at example UHD C++ codes. That worked fine, too. The Signal give=
n
>> from ADC is amplified and given back to DAC. After that I changed the
>> multiply IP with DDS IP and tried to build it to generate a signal. The
>> thing is that I implemented it successfully and the bit file was generat=
ed,
>> but it did not work after loading it into the device.
>>
>> There are 2 problems:
>> 1 -) Since all the example UHD C++ codes are meant to transfer data
>> between host and device, I do not know how to make it work. Because, my =
DDS
>> IP does not need to transfer data between host and device. I just need t=
o
>> write a frequency value to register and DDS will generate a signal. Afte=
r
>> that, I expect it to work fine. To do that, in UHD C++ code I have used
>> rfnoc_graph and connected my block with the DUC block. Also I connected =
the
>> DUC block with the Radio block. I expect this to work seamlessly, but it
>> did not. I could not figure out how to write a C++ code to make this wor=
k.
>> The code gives an error which is "[ERROR] [RFNOC::GRAPH] Caught exceptio=
n
>> while initializing graph: Environment Error: IOError: Timed out getting
>> recv buff for management transaction"
>>
>> 2 -) While building DDS IP, I have opened a Vivado 2019.1 and generated =
a
>> DDS IP. Then, I used the .xci file in uhd. I do not know if this is the
>> right way, but UHD gives no error while implementing it.
>>
>>
>>
>> USRP Device :E320
>> UHD Version : 4.0.0.0
>> Host OS : Ubuntu 20.04.4
>>
>> Kind Regards,
>> Yasir
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000fa9ebf05e5cb0be3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jonathon,=C2=A0<div>Thank you for the answer. For compl=
ex multiplier IP, I have already looked at it and used it as a reference po=
int for my DDS IP. I have changed complex multiplier IP files with DDS IP f=
iles and implemented it. That&#39;s how I generated my bitstream. For Cpp f=
ile=C2=A0 rfnoc_siggen_example.cpp is what I was looking for. I changed my =
cpp code according to the siggen example. After that, I tried it on E320. T=
he Error message is gone now, but the signal is still not generated. I expe=
ct at least a red light on TX/RX channel even if my DDS Block doesn&#39;t w=
ork properly, but this is not the case. There is no light on Radio channels=
. I don&#39;t know if this is because of my DDS block or because of the CPP=
 file. I will try to make some changes on Verilog and generate new bitstrea=
m. After that, I will post the=C2=A0results here.</div><div><br></div><div>=
While doing that, I will be glad for any more help.</div><div><br></div><di=
v>Sorry for the late answer, there is a 10 hours time zone difference betwe=
en where I live and the US.</div><div><br></div><div>Kind regards,</div><di=
v>Yasir</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.=
com">jonathon.pendlum@ettus.com</a>&gt;, 8 A=C4=9Fu 2022 Pzt, 19:29 tarihin=
de =C5=9Funu yazd=C4=B1:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi=C2=A0Yasir,<div><br></div><div>I suggest tak=
ing a look at this example using the Siggen block:=C2=A0<a href=3D"https://=
github.com/EttusResearch/rfnoc-apps/blob/testing/master/apps/rfnoc_siggen_e=
xample.cpp" target=3D"_blank">https://github.com/EttusResearch/rfnoc-apps/b=
lob/testing/master/apps/rfnoc_siggen_example.cpp</a>. As for adding IP, rfn=
oc-example has an example using a complex multiplier:=C2=A0<a href=3D"https=
://github.com/EttusResearch/uhd/tree/master/host/examples/rfnoc-example/fpg=
a/ip/" target=3D"_blank">https://github.com/EttusResearch/uhd/tree/master/h=
ost/examples/rfnoc-example/fpga/ip/</a>. I also suggest updating your E320 =
and Host UHD version to 4.2 as there have been several bug fixes since UHD =
4.0.</div><div><br></div><div>Jonathon</div><div><br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 8, 2=
022 at 2:50 AM Yasir =C3=96z=C3=A7al=C4=B1k &lt;<a href=3D"mailto:simultane=
ous11@gmail.com" target=3D"_blank">simultaneous11@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
>Hi everyone,<div><br><div>=C2=A0 I have a E320 device and I am trying to l=
earn how to build my own custom IPs. The thing is that the IPs which were i=
mplemented by Ettus were not enough for me. Therefore; I need to build my o=
wn custom IPs. I have all the HDL codes that I need to build on E320, but I=
 am having a problem with E320 development flow.</div><div><br></div><div>=
=C2=A0 To learn how to add my custom IPs, I have analyzed the Rfnoc-example=
 in the uhd repository. In that example, they showed basic Gain IP (which u=
ses multiply IP). Firstly, I have synthesized and implemented that example.=
 After that, I loaded the bit file into USRP and tested it with=C2=A0a=C2=
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

--000000000000fa9ebf05e5cb0be3--

--===============9127718315881314185==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9127718315881314185==--
