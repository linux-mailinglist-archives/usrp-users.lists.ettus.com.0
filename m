Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFB83BAA56
	for <lists+usrp-users@lfdr.de>; Sat,  3 Jul 2021 23:36:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 59C703846B9
	for <lists+usrp-users@lfdr.de>; Sat,  3 Jul 2021 17:36:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YyOx9TiE";
	dkim-atps=neutral
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 81CC93845DE
	for <usrp-users@lists.ettus.com>; Sat,  3 Jul 2021 17:35:53 -0400 (EDT)
Received: by mail-qt1-f181.google.com with SMTP id h11so6524167qtp.5
        for <usrp-users@lists.ettus.com>; Sat, 03 Jul 2021 14:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:in-reply-to:to;
        bh=lCwd7kQ3OUkIduaFgMV+iDhnpIVtnUazvqChaLrxRlw=;
        b=YyOx9TiEqSpZzN7xV6lUWfXHJdPNo2rslMpRJa/V6InKSfji3/pjihya5mPuD2OMtn
         hYn7iUV6Gg2ivLFUG2owXw+NoI37f6WBLRKh97qFNUl3cPwtOnoqD3thX7vimqvyxsRu
         9McO+Rv80KtmO7dQsCRv6N8M39yy3R45tZewtH7s2tAhr8ERLSfadNbvHQhRK9JKkP3e
         PAZJeQE+Gw8bho7oM37A48hqqHna5RBzVn1sF1xeZKzcIvB54BW9mo7+5zGlm1cA68D8
         1pLERopwf8RQKy1llKT18GczZ2dhVbY4Zs/DkqxVf8sy8qiUs97D/BLevpx4Kx/Ti/zf
         zojg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:in-reply-to:to;
        bh=lCwd7kQ3OUkIduaFgMV+iDhnpIVtnUazvqChaLrxRlw=;
        b=jwBTA2Nnl1hVfzNAku42e+SeM22bKtDpIIxZ8bvuBOjzPxU864STRPOzpb7nOUsLot
         cYL9ABZNSuJwTbjuOsRMzNcwuOWyP8a7kqOXNoFD1DLJ/Axe+ykONhWGyI1ftTZ8j7No
         hbZweTEyOn6lXyK+Tot+xk5Vrw5pK201xh0A/zIOr+cyvrWP/aTLKcW6scm53OzIkuYe
         UZyttPSjt7R7TRvPUclTK2ql7L18X+wkLyOpn4Sw5gRqvA4qFSsrcaUgPYnz5vi920U6
         AWJXq9/1ptWtEWRkYTWW56Pp3t0S60YQmzS8/F0E47JzvER8c06ZuqB9zVYbUv9kJfg2
         YF0w==
X-Gm-Message-State: AOAM533TlPhz/5QBqWIfSdgfxcnHCEAQ4NbvafgcKSWS/Zah3Z1sQ3qd
	+sEAI+xOQoZAI6SUfcRuf8oWBBNmyFfgpw==
X-Google-Smtp-Source: ABdhPJyBuVYCLn99urmiQl1VZrzft1I2IKVGOdzsfcHaqeBmq38u8VDYyq9MMoRC5EHrIKqcWM4ANQ==
X-Received: by 2002:a05:622a:170a:: with SMTP id h10mr5892202qtk.276.1625348152949;
        Sat, 03 Jul 2021 14:35:52 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id m3sm3294841qkh.135.2021.07.03.14.35.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Jul 2021 14:35:52 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sat, 3 Jul 2021 17:35:51 -0400
Message-Id: <FA3D8B5B-C4EE-46A4-A503-6162437FADBE@gmail.com>
References: <CAKHaR3mcCdTmcr3HNfJ7ZkbnFcpxSYE9A-Feg4_y0=LTJRsGBA@mail.gmail.com>
In-Reply-To: <CAKHaR3mcCdTmcr3HNfJ7ZkbnFcpxSYE9A-Feg4_y0=LTJRsGBA@mail.gmail.com>
To: Dario Pennisi <dario@iptronix.com>,
 usrp-users <usrp-users@lists.ettus.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: 2PICWIXQEZS7A6E4DO5YQV4AXLZE7RLP
X-Message-ID-Hash: 2PICWIXQEZS7A6E4DO5YQV4AXLZE7RLP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 Zynq CPU efficiency in UDP transmission
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2PICWIXQEZS7A6E4DO5YQV4AXLZE7RLP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2259608156812142745=="


--===============2259608156812142745==
Content-Type: multipart/alternative; boundary=Apple-Mail-1311123F-E5E9-4153-82EB-875F71860A03
Content-Transfer-Encoding: 7bit


--Apple-Mail-1311123F-E5E9-4153-82EB-875F71860A03
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Unfortunately I have little experience with RFNOC programming, so perhaps so=
meone else will chime in.=20

Sent from my iPhone

> On Jul 3, 2021, at 5:08 PM, Dario Pennisi <dario@iptronix.com> wrote:
>=20
> =EF=BB=BF
> Hi Marcus,
> I have started looking into this but doesn't seem that straightforward. Wh=
ile rfnoc provides an easy way to create DSP blocks which interact with each=
 other, feeding a data stream to a custom streamer endpoint seems a bit comp=
lex. I understand right now it works by injecting chdr packets where metadat=
a contains IP and port. I need to understand how that works but aside from t=
his I would also have to resolve Mac addresses via arp. I see the infrastruc=
ture is there but seems quite complex and can't find much documentation othe=
r than source code.
> Thanks!
>=20
> Dario
>=20
>=20
> Il Sab 3 Lug 2021, 20:46 Marcus D Leech <patchvonbraun@gmail.com> ha scrit=
to:
>> I will certainly ask R&D about this.=20
>>=20
>> But I wonder if an architecture where you demux inside the FPGA and emit U=
DP packets directly would not be better? Not sure how this would fit within t=
he RFNOC framework but since UDP is connectionless, making this work within t=
he FPGA should not consume too many resources.=20
>>=20
>> Sent from my iPhone
>>=20
>>>> On Jul 3, 2021, at 2:04 PM, Dario Pennisi <dario@iptronix.com> wrote:
>>>>=20
>>> =EF=BB=BF
>>> I see. Thanks for your help. So the only option would be to make sfp wor=
k properly.=20
>>> Can you please check with your colleagues if this is a viable option and=
 what eventually would be needed to make it stable?=20
>>> As I was mentioning if I try to generate sustained traffic the connectio=
n is immediately dropped...
>>> Thanks
>>>=20
>>> Dario
>>>=20
>>> Il Sab 3 Lug 2021, 18:51 Marcus D Leech <patchvonbraun@gmail.com> ha scr=
itto:
>>>> Looks like jumno frames on the 1Gbit interface are not supported. This i=
s an underlying Zynq hardware limitation.=20
>>>>=20
>>>>=20
>>>>=20
>>>> Sent from my iPhone
>>>>=20
>>>>>> On Jul 3, 2021, at 12:42 PM, Dario Pennisi <dario@iptronix.com> wrote=
:
>>>>>>=20
>>>>> =EF=BB=BF
>>>>> Hi,
>>>>> data rate is pretty low compared to port capabilities. it's something l=
ike 1MB/sec per channel.
>>>>> in the meantime i did some tests and found the following:
>>>>> 1) iperf caps at 88MB/sec if packets are 420 bytes (as i was transmitt=
ing) with CPU at 50% (single core at 100%)
>>>>> 2) iperf caps at 96MB/sec if packets are at least 1000 bytes long
>>>>> 3) i tried increasing tx buffers and wmem but that didn't help
>>>>> 4) i tried increasing my payload size to 1200 bytes and CPU overhead w=
as greatly reduced
>>>>>=20
>>>>> from the above it seems to me there's a lot of CPU overhead in sending=
 a packet, not really in processing data in the blocks.
>>>>> at this point it would be beneficial to increase MTU so that i can red=
uce the number of calls to writev however it seems like eth0 is locked at 15=
00.=20
>>>>> do you have any clue on how to increase that size?
>>>>> thanks,
>>>>>=20
>>>>> Dario Pennisi
>>>>>=20
>>>>>> On Sat, Jul 3, 2021 at 4:53 PM Marcus D Leech <patchvonbraun@gmail.co=
m> wrote:
>>>>>> What is the aggregate data rate of all your UDP ports?
>>>>>>=20
>>>>>> I=E2=80=99m not sure how =E2=80=9Cgeneral purpose=E2=80=9D the SFP po=
rts are from the perspective of the CPU. They have a special relationship wi=
th the FPGA code, but I don=E2=80=99t know the details.=20
>>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>> Sent from my iPhone
>>>>>>=20
>>>>>>>> On Jul 3, 2021, at 10:47 AM, Dario Pennisi <dario@iptronix.com> wro=
te:
>>>>>>>>=20
>>>>>>> =EF=BB=BF
>>>>>>> Hi Marcus,
>>>>>>> thanks for the response. the demux block is in C++ and in the work f=
unction the only things we do are:
>>>>>>> - look for EOB tags
>>>>>>> - use writev to send a UDP packet with a fixed header prepended to t=
he data bounded by EOB
>>>>>>>=20
>>>>>>> on the other hand the graph is in python but i understand it is only=
 setting up the endpoint connections and that should not impact performance.=

>>>>>>> another issue i see is that apparently eth0 is limited to 1500 MTU a=
nd as i was saying when we tested sending traffic from zynq to SFP port it d=
idn't really work.
>>>>>>> thanks,
>>>>>>>=20
>>>>>>> Dario Pennisi
>>>>>>>=20
>>>>>>>> On Sat, Jul 3, 2021 at 3:12 PM Marcus D Leech <patchvonbraun@gmail.=
com> wrote:
>>>>>>>> If your special demux block is written in Python, that=E2=80=99s th=
e first place to look for optimization. A Zynq CPU is only a fraction as pow=
erful as even a modest desktop or laptop CPU. So you need to use C++ to give=
 it a fighting chance.=20
>>>>>>>>=20
>>>>>>>> Sent from my iPhone
>>>>>>>>=20
>>>>>>>>>> On Jul 3, 2021, at 3:39 AM, Dario Pennisi <dario@iptronix.com> wr=
ote:
>>>>>>>>>>=20
>>>>>>>>> =EF=BB=BF
>>>>>>>>> Hi,
>>>>>>>>> i'm working on a N310 and developed a custom block which processes=
 multiple radio channels generating a low data rate output for each one. i'm=
 outputting this data in a serialized way through a RFNoC block and parsing i=
t through a gnuradio block that demuxes it and sends each channel's data to a=
 socket. this works perfectly if graph runs on a PC but on zynq CPU load ris=
es quickly and with around 20 channels CPU saturates.
>>>>>>>>> what demux block work function does is simply looking for EOB tags=
 and sending each chunk of data to an UDP socket using writev, which i hoped=
 was doing zero copy but that doesn't seem to be the case.
>>>>>>>>> note that in order for the demux block to work i had to use the 1G=
B port eth0 as using SFP ports connection would drop right away for some rea=
son.
>>>>>>>>> note also i'm using a graph generated in python and haven't yet te=
sted doing the same in C... not sure that would really help anyway.
>>>>>>>>>=20
>>>>>>>>> do you have any suggestion to improve UDP packet transmission on z=
ynq, eventually suggesting how to perform real zero copy for UDP traffic in a=
 GNURadio block?=20
>>>>>>>>>=20
>>>>>>>>> thanks!
>>>>>>>>> Dario Pennisi
>>>>>>>>>=20
>>>>>>>>> _______________________________________________
>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-1311123F-E5E9-4153-82EB-875F71860A03
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Unfortunately I have little experience with=
 RFNOC programming, so perhaps someone else will chime in.&nbsp;<br><br><div=
 dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D=
"cite">On Jul 3, 2021, at 5:08 PM, Dario Pennisi &lt;dario@iptronix.com&gt; w=
rote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=
=BB=BF<div dir=3D"auto">Hi Marcus,<div dir=3D"auto">I have started looking i=
nto this but doesn't seem that straightforward. While rfnoc provides an easy=
 way to create DSP blocks which interact with each other, feeding a data str=
eam to a custom streamer endpoint seems a bit complex. I understand right no=
w it works by injecting chdr packets where metadata contains IP and port. I n=
eed to understand how that works but aside from this I would also have to re=
solve Mac addresses via arp. I see the infrastructure is there but seems qui=
te complex and can't find much documentation other than source code.</div><d=
iv dir=3D"auto">Thanks!</div><div dir=3D"auto"><br></div><div dir=3D"auto">D=
ario</div><br><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" c=
lass=3D"gmail_attr">Il Sab 3 Lug 2021, 20:46 Marcus D Leech &lt;<a href=3D"m=
ailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; ha scritto:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto">I will certainly ask=
 R&amp;D about this.&nbsp;<div><br></div><div>But I wonder if an architectur=
e where you demux inside the FPGA and emit UDP packets directly would not be=
 better? Not sure how this would fit within the RFNOC framework but since UD=
P is connectionless, making this work within the FPGA should not consume too=
 many resources.&nbsp;</div><div><br><div dir=3D"ltr">Sent from my iPhone</d=
iv><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jul 3, 2021, at 2:04 PM=
, Dario Pennisi &lt;<a href=3D"mailto:dario@iptronix.com" target=3D"_blank" r=
el=3D"noreferrer">dario@iptronix.com</a>&gt; wrote:<br><br></blockquote></di=
v><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"auto"><div=
>I see. Thanks for your help. So the only option would be to make sfp work p=
roperly.&nbsp;<br>Can you please check with your colleagues if this is a via=
ble option and what eventually would be needed to make it stable?&nbsp;</div=
><div dir=3D"auto">As I was mentioning if I try to generate sustained traffi=
c the connection is immediately dropped...</div><div dir=3D"auto">Thanks</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">Dario</div><div dir=3D"auto"=
><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail=
_attr">Il Sab 3 Lug 2021, 18:51 Marcus D Leech &lt;<a href=3D"mailto:patchvo=
nbraun@gmail.com" target=3D"_blank" rel=3D"noreferrer">patchvonbraun@gmail.c=
om</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"au=
to">Looks like jumno frames on the 1Gbit interface are not supported. This i=
s an underlying Zynq hardware limitation.&nbsp;<div><br></div><div><br><br><=
div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote ty=
pe=3D"cite">On Jul 3, 2021, at 12:42 PM, Dario Pennisi &lt;<a href=3D"mailto=
:dario@iptronix.com" rel=3D"noreferrer noreferrer" target=3D"_blank">dario@i=
ptronix.com</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cit=
e"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hi,<div>data rate is pretty lo=
w compared to port capabilities. it's something like 1MB/sec per channel.</d=
iv><div>in the meantime i did some tests and found the following:</div><div>=
1) iperf caps at 88MB/sec if packets are 420 bytes (as i was transmitting) w=
ith CPU at 50% (single core at 100%)</div><div>2) iperf caps at 96MB/sec if p=
ackets are at least 1000 bytes long</div><div>3) i tried increasing tx buffe=
rs and wmem but that&nbsp;didn't help</div><div>4) i tried increasing my pay=
load size to 1200 bytes and CPU overhead was greatly reduced</div><div><br><=
/div><div>from the above it seems to me there's a lot of CPU overhead in sen=
ding a packet, not really in processing data in the blocks.</div><div>at thi=
s point it would be beneficial to increase MTU so that i can reduce the numb=
er of calls to writev however it seems like eth0 is locked at 1500.&nbsp;</d=
iv><div>do you have any clue on how to increase that size?</div><div>thanks,=
</div><div><br clear=3D"all"><div><div dir=3D"ltr" data-smartmail=3D"gmail_s=
ignature"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:Calib=
ri,sans-serif;font-size:13.3333px">Dario Pennisi</span><br style=3D"color:rg=
b(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px"></div></div></d=
iv></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Sat, Jul 3, 2021 at 4:53 PM Marcus D Leech &lt;<a href=3D"mailto:=
patchvonbraun@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">pat=
chvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"auto">What is the aggregate data rate of all y=
our UDP ports?<div><br></div><div>I=E2=80=99m not sure how =E2=80=9Cgeneral p=
urpose=E2=80=9D the SFP ports are from the perspective of the CPU. They have=
 a special relationship with the FPGA code, but I don=E2=80=99t know the det=
ails.&nbsp;</div><div><br></div><div><br><br><div dir=3D"ltr">Sent from my i=
Phone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jul 3, 2021, at=
 10:47 AM, Dario Pennisi &lt;<a href=3D"mailto:dario@iptronix.com" rel=3D"no=
referrer noreferrer" target=3D"_blank">dario@iptronix.com</a>&gt; wrote:<br>=
<br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<=
div dir=3D"ltr">Hi Marcus,<div>thanks for the response. the demux block is i=
n C++ and in the work function the only things we do are:</div><div>- look f=
or EOB tags</div><div>- use writev to send a UDP packet with a fixed header p=
repended to the data bounded by EOB</div><div><br></div><div>on the other ha=
nd the graph is in python but i understand it is only setting up the endpoin=
t connections and that should not impact performance.</div><div>another issu=
e i see is that apparently eth0 is limited to 1500 MTU and as i was saying w=
hen we tested sending traffic from zynq to SFP port it didn't really work.</=
div><div>thanks,</div><div><br clear=3D"all"><div><div dir=3D"ltr"><div dir=3D=
"ltr"><span style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-si=
ze:13.3333px">Dario Pennisi</span><br style=3D"color:rgb(0,0,0);font-family:=
Calibri,sans-serif;font-size:13.3333px"></div></div></div></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jul 3=
, 2021 at 3:12 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">patchvonbraun@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"auto">If your special demux block is written in Python, that=E2=80=99=
s the first place to look for optimization. A Zynq CPU is only a fraction as=
 powerful as even a modest desktop or laptop CPU. So you need to use C++ to g=
ive it a fighting chance.&nbsp;<div><br><div dir=3D"ltr">Sent from my iPhone=
</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jul 3, 2021, at 3:39=
 AM, Dario Pennisi &lt;<a href=3D"mailto:dario@iptronix.com" rel=3D"noreferr=
er noreferrer" target=3D"_blank">dario@iptronix.com</a>&gt; wrote:<br><br></=
blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div di=
r=3D"ltr">Hi,<div>i'm working on a N310 and developed a custom block which p=
rocesses multiple radio channels generating a low data rate output for each o=
ne. i'm outputting this data in a serialized way through a RFNoC block and p=
arsing it through a gnuradio block that demuxes it and sends each channel's d=
ata to a socket. this works perfectly if graph runs on a PC but on zynq CPU l=
oad rises quickly and with around 20 channels CPU saturates.</div><div>what d=
emux block work function does is simply looking for EOB tags and sending eac=
h chunk of data to an UDP socket using writev, which i hoped was doing zero c=
opy but that doesn't seem to be the case.</div><div>note that in order for t=
he demux block to work i had to use the 1GB port eth0 as using SFP ports con=
nection would drop right away for some reason.</div><div>note also i'm using=
 a graph generated in python and haven't yet tested doing the same in C... n=
ot sure that would really help anyway.</div><div><br></div><div>do you have a=
ny suggestion to improve UDP packet transmission on zynq, eventually suggest=
ing how to perform real zero copy for UDP traffic in a GNURadio block?&nbsp;=
</div><div><br></div><div>thanks!<br clear=3D"all"><div><div dir=3D"ltr"><di=
v dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif=
;font-size:13.3333px">Dario Pennisi</span><br style=3D"color:rgb(0,0,0);font=
-family:Calibri,sans-serif;font-size:13.3333px"><br></div></div></div></div>=
</div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"no=
referrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a></span>=
<br><span>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave=
@lists.ettus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users=
-leave@lists.ettus.com</a></span><br></div></blockquote></div></div></blockq=
uote></div>
</div></blockquote></div></div></blockquote></div>
</div></blockquote></div></div></blockquote></div></div></div>
</div></blockquote></div></div></blockquote></div></div>
</div></blockquote></body></html>=

--Apple-Mail-1311123F-E5E9-4153-82EB-875F71860A03--

--===============2259608156812142745==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2259608156812142745==--
