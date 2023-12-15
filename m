Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E57D281418D
	for <lists+usrp-users@lfdr.de>; Fri, 15 Dec 2023 06:53:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D3D4C38528F
	for <lists+usrp-users@lfdr.de>; Fri, 15 Dec 2023 00:53:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702619582; bh=E7/p4KFZK9rLF3YFQgvnbEducz6X4HVnajdag9fp0XQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=E3M49B8mvqnEB/DxA9tDjcVb+13aB4qkWsgTSMAO99teV1ye5FA2apfwQ09COKkCg
	 zs3UOmabMwC7WWmmb1YrcxEAwwqEQCxasQ9Q/mAkqyDetNcvewbK73X8HCqfhmdqJ9
	 lbUc24NXywhoxzneASesoOd54HBdmgU/5znAQRaLiU/PCUyZ0DKoa2G2TCk1o8/GBc
	 xh2FsCvwUK0rP3WfLAJWnOJrpj/WQ8O/p7Q1UEImnKZo8GZvYfSoP8trlrFSwCLfWf
	 tQIYDunTjA3fJkZ168wBv6xTaEMTa8HhuCKHNIjHrwvSa5iOLkVkZj+iM/brOuQEbT
	 YMVh8qSMiOAYA==
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	by mm2.emwd.com (Postfix) with ESMTPS id C6DD738528F
	for <usrp-users@lists.ettus.com>; Fri, 15 Dec 2023 00:52:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="F014VL0q";
	dkim-atps=neutral
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-6da52f16427so33493a34.0
        for <usrp-users@lists.ettus.com>; Thu, 14 Dec 2023 21:52:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702619577; x=1703224377; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Gbl8hQmKagvXCE7+qx5cqACi5JLd58AYYYQ+1MTjO1E=;
        b=F014VL0qWwjo2A7kE4eGy0poIzSb2STRIaHBb2upj8Gb8Y75H4aPF1rzhSeYvRcWj4
         T/BzTPJkCvSx8p+MM+nLlNw0U16myVt3tCHkDsd5ZZUSQbaWI6SmCMueBfJnjlWXFgG0
         vS50ggVpf7YxwSlGahxBej7Jq7wkA2K7UBp+Rdd64flzaY4pgVJojdCJZq6bz0c9wO7T
         /3zHV00i/MyFrRIHqGe4cNqiFdwSSiBBuBNcbegKtxRWPpAGcbkEPlrzjIZbo3DPk1e9
         enhOkgPGTHTcD0Jd3KOxsFKzXxJVkNK0RNCk1YPcGJQE561bG2qQDIcBWHJvw5HNOTof
         Xsvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702619577; x=1703224377;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gbl8hQmKagvXCE7+qx5cqACi5JLd58AYYYQ+1MTjO1E=;
        b=oBav9kKbG5cPITixYfF1uQZsEWgNhTwECowEbczkLunKnxGU2LQ7nFhGmSv66ldq8q
         WkmgNlpyrMTkoXL8Vw/eyyJL3mT54rDge6b8lOwmHECcdWVLVjMpEqHUOtSb1X5s47zT
         cwWjthR3beUGQsF/dsvOyPs1GAG6HTPKB25SIo42HwomumSAYHcA57bxYFLcsNWc4piC
         5ZOfCG9ZWDcvddpQUTSi4hp9sBttR53p8MwlWfP2mAuMemNx8qlGbC81E4GDkOcC59CU
         Ak6Ju1KFVEoRIz4yEW1fR3GP8akJpfYMRIP3JyBrqZthRf5I0hnlfGmP/8Fk9S4rfWN5
         xkyA==
X-Gm-Message-State: AOJu0YxjdEYD++mpxw1EkHcER29pnOfSZzrxVib8ybHZQ675YAFMkJ0+
	oj5QBv494NeZS/KFavqW2L/Wy5hJDGGniYNM4uU=
X-Google-Smtp-Source: AGHT+IEu7KC2ni6AU4rAB8J3HrpBLNxPu7snfHNazTKXidTK8ul+JmK/gBqI2laVGJ7d5vOz1lbRbc03DgpHZeeGYfw=
X-Received: by 2002:a9d:75ca:0:b0:6d9:9fea:3328 with SMTP id
 c10-20020a9d75ca000000b006d99fea3328mr11708188otl.13.1702619576817; Thu, 14
 Dec 2023 21:52:56 -0800 (PST)
MIME-Version: 1.0
References: <CAFPzw1kOz59xv_tRZW7X8jntTLHS-szF_vUvzS5pE8KaGKExtg@mail.gmail.com>
 <CAB__hTTzgcb1p0Gut3qL2U2uvTQ9wRXVHg9EfJ080RC-LETg_A@mail.gmail.com>
 <CAFPzw1kn-j45P_7jf6cMG-kLQiz3zCTYjHog49nPXB+KswUKUw@mail.gmail.com> <CAB__hTSKQRF3eE5i=D_6zQo8C4LLWioP+ts=YvRDJiUM=UnnYw@mail.gmail.com>
In-Reply-To: <CAB__hTSKQRF3eE5i=D_6zQo8C4LLWioP+ts=YvRDJiUM=UnnYw@mail.gmail.com>
From: Anabel Almodovar <anabel.almodovar@gmail.com>
Date: Fri, 15 Dec 2023 06:52:44 +0100
Message-ID: <CAFPzw1kVSnS0Nuye2QPKxJ0XFND3e==zFCejGLKY0s3AifKjZQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: TYTN6KYL466XHQB63AA7GKADZLHVGOH2
X-Message-ID-Hash: TYTN6KYL466XHQB63AA7GKADZLHVGOH2
X-MailFrom: anabel.almodovar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: streamer error X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TYTN6KYL466XHQB63AA7GKADZLHVGOH2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2677340918571618831=="

--===============2677340918571618831==
Content-Type: multipart/alternative; boundary="000000000000105a4c060c860387"

--000000000000105a4c060c860387
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Rob,

Yes, I use an external clock configuration.

*std::this_thread::sleep_for( std::chrono::milliseconds(int64_t(1000 *
setup_time) );*



*usrp->set_clock_source("external", uhd::usrp::multi_usrp::ALL_MBOARDS);
 usrp->set_time_source("external",
uhd::usrp::multi_usrp::ALL_MBOARDS);usrp->set_time_unknown_pps(uhd::time_sp=
ec_t(0.0));std::this_thread::sleep_for(std::chrono::seconds(1));*

I have only modified the code to get 8 channels and LO sharing. I want to
get a continuous acquisition setup without losing samples. But I am
starting with something basic at the moment. Any suggestions are welcome.
So I've modified the streamer, the pointer buffer, and added writing files.

my line is
*$sudo ./rx_samples_to_file_v1
--args=3D"addr0=3D192.168.60.2,second_addr0=3D192.168.50.2,addr1=3D192.168.=
40.2,second_addr1=3D192.168.30.2,recv_buff_size=3D900000000"
--subdev=3D"A:0 A:1 B:0 B:1" --channel=3D"0,1,2,3,4,5,6,7" --freq 800e6 --r=
ate
25e6 --bw 25e6 --gain 70 *

Regards,

*Anabel*



El jue, 14 dic 2023 a las 18:25, Rob Kossler (<rkossler@nd.edu>) escribi=C3=
=B3:

> Hi Anabel,
> In my opinion, the error you are experiencing has nothing to do with
> streaming performance settings (such as "performance" governor, network
> descriptors, MTU size, etc). The issue seems to be that the two X310
> devices do not have synchronized clocks. In addition to the physical
> synchronization using OctoClock, you must also configure each device to u=
se
> external synchronization and you must tell each device to reset its FPGA
> clock count at a common PPS. The typical sequence is: (1) wait for a PPS =
to
> occur (by querying either device), (2) tell each device to reset its FPGA
> clock at the subsequent PPS (this step must complete before the next PPS
> arrives).
>
> You mentioned that you are using rx_samples_to_file. Did you modify it in
> any way?  What is your exact command line with all parameters?
> Rob
>
> On Thu, Dec 14, 2023 at 10:29=E2=80=AFAM Anabel Almodovar <
> anabel.almodovar@gmail.com> wrote:
>
>> Dear Rob
>>
>> Thank you for your answer.
>> I make use of the CDA-2990 octoclock as a source of synchronization
>> between both USRPs, in addition to local oscillator sharing. I use dual
>> 10GigEth connections and a MTU of 9000 to connect the USRPs to the PC.
>>
>> Due to various compatibility issues I am unable to upgrade the system.
>>
>> When I work with a sample rate of 10MSps I don't get problems but when I
>> increase to 25MSps I start to get the error. I need them working with
>> 100MSps. I have tried changing the CPU governor to "performance" to get =
the
>> maximum working frequency (*sudo cpupower frequency-set --governor
>> performance*), as well as changing the number of network interface
>> descriptors to maximum (*sudo ethtool -G <interface> tx <max> rx <max>*)=
,
>> or increasing the dirty memory buffer (*sudo sysctl -w
>> vm.dirty_ratio=3D80; sudo sysctl -w vm.dirty_background_ratio=3D50*), bu=
t I
>> still get the same problem.
>>
>> Regards,
>> Anabel
>>
>> El jue, 14 dic 2023 a las 15:38, Rob Kossler (<rkossler@nd.edu>)
>> escribi=C3=B3:
>>
>>> Hi Anabel,
>>> How are you sync-ing the clocks on the two units? Do you have an
>>> external PPS source and are you configuring both devices to use this
>>> external source?
>>>
>>> Finally, do you have the ability to upgrade your OS and your UHD
>>> versions? There aren't many user's that are using UHD 3.12 so if you ha=
ve
>>> issues, it will be hard to get support.
>>> Rob
>>>
>>> On Thu, Dec 14, 2023 at 5:20=E2=80=AFAM Anabel Almodovar <
>>> anabel.almodovar@gmail.com> wrote:
>>>
>>>> Dear all,
>>>>
>>>> I am trying to make an acquisition with two X310 equipped with two
>>>> TwinRx. I am using Ubuntu 16.04 LTS 64-bit and UHD 3.12. My PC contain=
s
>>>> 128GB RAM and an Intel=C2=AE Xeon(R) Silver 4114 CPU @ 2.20GHz =C3=97 =
40 and a 4TB
>>>> SSD. I have modified the example rx_samples_to_file.cpp code to get 8
>>>> channels and I get the following error:
>>>>
>>>> *D*
>>>> *[ERROR] [STREAMER] The receive packet handler failed to time-align
>>>> packets. 1002 received packets were processed by the handler. However,=
 a
>>>> timestamp match could not be determined.*
>>>> *Timeout while streaming*
>>>>
>>>> *[ERROR] [X300] 192.168.60.2 <http://192.168.60.2>: x300 fw
>>>> communication failure #1*
>>>> *EnvironmentError: IOError: x300 fw poke32 - reply timed out*
>>>> *[ERROR] [UHD] An unexpected exception was caught in a task loop.The
>>>> task loop will now exit, things may not work.AssertionError: reply.seq=
uence
>>>> =3D=3D request.sequence*
>>>> *  in virtual void
>>>> x300_ctrl_iface_enet::__poke32(uhd::wb_iface::wb_addr_type, uint32_t)*
>>>> *  at
>>>> /home/rs3_lab/workarea-uhd/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:135=
*
>>>>
>>>> I don't know how to solve the Timeout problem, I have tried to start
>>>> the acquisition 1.1 sg in time. But it didn't work.
>>>>
>>>>
>>>> *        stream_cmd.stream_now =3D false;        stream_cmd.time_spec =
=3D
>>>> usrp->get_time_last_pps(0)+1.1;*
>>>>
>>>> What is the problem and how can I fix it?
>>>>
>>>> Regards,
>>>> Anabel
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>

--000000000000105a4c060c860387
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear Rob,</div><div><br></div><div>Yes, I use an exte=
rnal clock configuration.</div><div><br></div><div><i>std::this_thread::sle=
ep_for( std::chrono::milliseconds(int64_t(1000 * setup_time) );</i></div><d=
iv><i>usrp-&gt;set_clock_source(&quot;external&quot;, uhd::usrp::multi_usrp=
::ALL_MBOARDS); =C2=A0 =C2=A0<br>usrp-&gt;set_time_source(&quot;external&qu=
ot;, uhd::usrp::multi_usrp::ALL_MBOARDS);<br>usrp-&gt;set_time_unknown_pps(=
uhd::time_spec_t(0.0));<br>std::this_thread::sleep_for(std::chrono::seconds=
(1));</i></div><div><br></div><div>I have only modified the code to get 8 c=
hannels and LO sharing. I want to get a continuous acquisition setup withou=
t losing samples. But I am starting with something basic at the moment. Any=
 suggestions are welcome. So I&#39;ve modified the streamer, the pointer bu=
ffer, and added writing files.</div><div><br></div><div>my line is <i>$sudo=
 ./rx_samples_to_file_v1 --args=3D&quot;addr0=3D192.168.60.2,second_addr0=
=3D192.168.50.2,addr1=3D192.168.40.2,second_addr1=3D192.168.30.2,recv_buff_=
size=3D900000000&quot; --subdev=3D&quot;A:0 A:1 B:0 B:1&quot; --channel=3D&=
quot;0,1,2,3,4,5,6,7&quot; --freq 800e6 --rate 25e6 --bw 25e6 --gain 70 <br=
></i></div><div><i><br></i></div><div>Regards,</div><div><i>Anabel<br></i><=
/div><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">El jue, 14 dic 2023 a las 18:25, Rob Kos=
sler (&lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt;) escri=
bi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr">Hi Anabel,<div>In my opinion, the error you are experiencing has=
 nothing to do with streaming performance settings (such as &quot;performan=
ce&quot; governor, network descriptors, MTU size, etc). The issue seems to =
be that the two X310 devices do not have synchronized clocks. In addition t=
o the physical synchronization using OctoClock, you must also configure eac=
h device to use external synchronization and you must tell each device to r=
eset its FPGA clock count at a common PPS. The typical sequence is: (1) wai=
t for a PPS to occur (by querying either device), (2) tell each device to r=
eset its FPGA clock at the subsequent PPS (this step must complete before t=
he next PPS arrives).</div><div><br></div><div>You mentioned that you are u=
sing rx_samples_to_file. Did you modify it in any way?=C2=A0 What is your e=
xact command line with all parameters?=C2=A0</div><div>Rob</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec=
 14, 2023 at 10:29=E2=80=AFAM Anabel Almodovar &lt;<a href=3D"mailto:anabel=
.almodovar@gmail.com" target=3D"_blank">anabel.almodovar@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr"><div>Dear Rob</div><div><br></div><div>Thank you =
for your answer. <br></div><div>I make use of the CDA-2990 octoclock as a s=
ource of synchronization between both USRPs, in addition to local oscillato=
r sharing. I use dual 10GigEth connections and a MTU of 9000 to connect the=
 USRPs to the PC. <br><br>Due to various compatibility issues I am unable t=
o upgrade the system. <br><br>When I work with a sample rate of 10MSps I do=
n&#39;t get problems but when I increase to 25MSps I start to get the error=
. I need them working with 100MSps. I have tried changing the CPU governor =
to &quot;performance&quot; to get the maximum working frequency (<i>sudo cp=
upower frequency-set --governor performance</i>), as well as changing the n=
umber of network interface descriptors to maximum (<i>sudo ethtool -G &lt;i=
nterface&gt; tx &lt;max&gt; rx &lt;max&gt;</i>), or increasing the dirty me=
mory buffer (<i>sudo sysctl -w vm.dirty_ratio=3D80; sudo sysctl -w vm.dirty=
_background_ratio=3D50</i>), but I still get the same problem.</div><div><b=
r></div><div>Regards,<br></div><div>Anabel<br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El jue, 14 dic 2023 a l=
as 15:38, Rob Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_bl=
ank">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Anabel,<d=
iv>How are you sync-ing the clocks on the two units? Do you have an externa=
l PPS source and are you configuring both devices to use this external sour=
ce?</div><div><br></div><div>Finally, do you have the ability to upgrade yo=
ur OS and your UHD versions? There aren&#39;t many user&#39;s that are usin=
g UHD 3.12 so if you have issues, it will be hard to get support.</div><div=
>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Thu, Dec 14, 2023 at 5:20=E2=80=AFAM Anabel Almodovar &lt;<a h=
ref=3D"mailto:anabel.almodovar@gmail.com" target=3D"_blank">anabel.almodova=
r@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div></div><div>Dear all,</div><div><br></div><=
div>I am trying to make an acquisition with two X310 equipped with two Twin=
Rx. I am using Ubuntu 16.04 LTS 64-bit and UHD 3.12. My PC contains 128GB R=
AM and an Intel=C2=AE Xeon(R) Silver 4114 CPU @ 2.20GHz =C3=97 40 and a 4TB=
 SSD. I have modified the example rx_samples_to_file.cpp code to get 8 chan=
nels and I get the following error:<br><br></div><div><div><i><span style=
=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvet=
ica,sans-serif;font-size:12pt;color:rgb(0,0,0)">D</span></i></div><div><i><=
span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">[ERROR]
 [STREAMER] The receive packet handler failed to time-align packets.=20
1002 received packets were processed by the handler. However, a=20
timestamp match could not be determined.</span></i></div><div><i><span styl=
e=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helve=
tica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Timeout while streaming</s=
pan></i></div><div><i><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,A=
ptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,=
0,0)"><br aria-hidden=3D"true"></span></i></div><div><i><span style=3D"font=
-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans=
-serif;font-size:12pt;color:rgb(0,0,0)">[ERROR] [X300] <a href=3D"http://19=
2.168.60.2" target=3D"_blank">192.168.60.2</a>: x300 fw communication failu=
re #1</span></i></div><div><i><span style=3D"font-family:Aptos,Aptos_Embedd=
edFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;colo=
r:rgb(0,0,0)">EnvironmentError: IOError: x300 fw poke32 - reply timed out</=
span></i></div><div><i><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,=
Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0=
,0,0)">[ERROR]
 [UHD] An unexpected exception was caught in a task loop.The task loop=20
will now exit, things may not work.AssertionError: reply.sequence =3D=3D=20
request.sequence</span></i></div><div><i><span style=3D"font-family:Aptos,A=
ptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">=C2=A0 in virtual void x300_ctrl_iface_enet::__pok=
e32(uhd::wb_iface::wb_addr_type, uint32_t)</span></i></div><div><i><span st=
yle=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Hel=
vetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">=C2=A0 at /home/rs3_lab/=
workarea-uhd/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:135</span></i></div><d=
iv><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br></span></=
div><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontSe=
rvice,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">I don&#=
39;t know how to solve the Timeout problem, I have tried to start the acqui=
sition 1.1 sg in time. But it didn&#39;t work. <br><br><i>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 stream_cmd.stream_now =3D false;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
stream_cmd.time_spec =3D usrp-&gt;get_time_last_pps(0)+1.1;</i></span></div=
><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServi=
ce,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br></span=
></div><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFon=
tService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">What=
 is the problem and how can I fix it? <br></span></div><div><span style=3D"=
font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,=
sans-serif;font-size:12pt;color:rgb(0,0,0)"><br></span></div><div><span sty=
le=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helv=
etica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Regards,</span></div><div=
><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Ca=
libri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Anabel<br></spa=
n></div><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br=
></span></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>

--000000000000105a4c060c860387--

--===============2677340918571618831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2677340918571618831==--
