Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 25911813877
	for <lists+usrp-users@lfdr.de>; Thu, 14 Dec 2023 18:26:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2FBAD3854BD
	for <lists+usrp-users@lfdr.de>; Thu, 14 Dec 2023 12:26:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702574765; bh=+++m7L+OKDfOiu0tOmc+PFGXL+eEc8CXh21rteDh+nE=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=hUItRYCcrBI1iCkJT4wDX7SuDB3+mFsu4r+xGvQeNQJbeTxKWYGbj/Zl9l7jVucD9
	 AACeVdz5/BdGsTBdElO67Qch09a8jeujdGfEesTT5xzdXhC0+FVT1HzBsXv8oA1YXF
	 QnIJLPOZeuzRk+l0flNeOEKZfgR5yWXZ3fXXv3htPXV1OheZm0ftHQpEaP8Hv6fNFf
	 AxnJ9kM2hcMIuO4YKPNpEo0m/L6o/5mTJHA0nuVwBLx/f6jpl7DsJyeFdDXEyW2mfi
	 4sFJ+VG7nm8Ipe5kXkOJ+bJgrzBeOZshasezfwpL8+Uix8pOxY00Dsa/2xX7stt0Lt
	 rQOTv/ml/re+g==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 3DDC23854BB
	for <usrp-users@lists.ettus.com>; Thu, 14 Dec 2023 12:26:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="SxJPGQ+A";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-552231d9c1dso2842981a12.0
        for <usrp-users@lists.ettus.com>; Thu, 14 Dec 2023 09:26:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1702574759; x=1703179559; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1AgHGMFbyCAYJGn0EaWbqAaa6McjcSxsWnnMy5Nr2Zk=;
        b=SxJPGQ+A57NaZdOedKu6uWqWE/kbdgFim5H3i9yncbv6x4HYKXcx/UI4h2UPOKyYm4
         jZDeBhDg3KjQqOrpdP82XVRkPMQGvIkcgkkz8Mjtv2sfmj+iPB1/f51NBU4hpBKLXsCv
         y7Elr5RKiuCJr6OT6r2NuNVm8e2hRlpetiXd43LHLusJ77V2X4WRNOEjlHn40Vvp7nQF
         2cN+/KVYvpdtpL5u0qOaa3qOjwyYQb4BOSp5PlyCoWilnCK2djhXTWmpL0YgD5NY6NMP
         QBNP01NjhB+/0JHBz0wERmmBRB6Tm3lENxl9cxWUD60RTv6LITbAxiNETWX+JZzqKhhX
         tYlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702574759; x=1703179559;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1AgHGMFbyCAYJGn0EaWbqAaa6McjcSxsWnnMy5Nr2Zk=;
        b=Kxq8x+o8/UN0G/3flthq2HOdfXlVImtA5GzQuSOLqkIli7XgeZGVyjO2TGsQUz6zl6
         sQETxFivCzKCgBQ7VNusMaP3QKjzJoKTo7cZ4Um3+7zzXbKFAcxKJHBrwQDe4fECawfU
         kcGj/Xa9uT+Z/ggKjsF/R23Q4BGQb9cGqKxf3h27K9zKLYz2MLJHWQdSpkfAtZ51ezku
         noJCmxWxIgPTsN4zYyGEcxVb4I3WFOh+cXHIpKMz8Ei+czPNt/x+BCXlwk110XFXgPYC
         /xMnThvh3fyebYuQdulOVbaxfezBzSytD9uSbIckaYW2QjT7FfHiEj8i7qsGODuZySFD
         Mhsw==
X-Gm-Message-State: AOJu0Yw+HKTznGcHCPc/1FvoHfsQVDmRV57/YF0mG2XjApAqzs6ONTzW
	pqdq+91ecGp5REu2SNz21ZvqGhpcg4SYaMVOE9ioCYD7rwJ8EZev
X-Google-Smtp-Source: AGHT+IHVz5lbpyhughFD64CNlyrX7n0lTUNKExArBMwpDb3yw5HXTZz+7c0fvCvO/BzSK0X3cB62v+cvhJVZluctGBA=
X-Received: by 2002:a50:d0d5:0:b0:552:9643:294d with SMTP id
 g21-20020a50d0d5000000b005529643294dmr133745edf.26.1702574758387; Thu, 14 Dec
 2023 09:25:58 -0800 (PST)
MIME-Version: 1.0
References: <CAFPzw1kOz59xv_tRZW7X8jntTLHS-szF_vUvzS5pE8KaGKExtg@mail.gmail.com>
 <CAB__hTTzgcb1p0Gut3qL2U2uvTQ9wRXVHg9EfJ080RC-LETg_A@mail.gmail.com> <CAFPzw1kn-j45P_7jf6cMG-kLQiz3zCTYjHog49nPXB+KswUKUw@mail.gmail.com>
In-Reply-To: <CAFPzw1kn-j45P_7jf6cMG-kLQiz3zCTYjHog49nPXB+KswUKUw@mail.gmail.com>
Date: Thu, 14 Dec 2023 12:25:47 -0500
Message-ID: <CAB__hTSKQRF3eE5i=D_6zQo8C4LLWioP+ts=YvRDJiUM=UnnYw@mail.gmail.com>
To: Anabel Almodovar <anabel.almodovar@gmail.com>
Message-ID-Hash: 47CRCG35IPFYQX2LEBMMDU6NRAPU3TQ7
X-Message-ID-Hash: 47CRCG35IPFYQX2LEBMMDU6NRAPU3TQ7
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: streamer error X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/47CRCG35IPFYQX2LEBMMDU6NRAPU3TQ7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============0488559368051155693=="

--===============0488559368051155693==
Content-Type: multipart/alternative; boundary="000000000000ad8f0f060c7b9357"

--000000000000ad8f0f060c7b9357
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Anabel,
In my opinion, the error you are experiencing has nothing to do with
streaming performance settings (such as "performance" governor, network
descriptors, MTU size, etc). The issue seems to be that the two X310
devices do not have synchronized clocks. In addition to the physical
synchronization using OctoClock, you must also configure each device to use
external synchronization and you must tell each device to reset its FPGA
clock count at a common PPS. The typical sequence is: (1) wait for a PPS to
occur (by querying either device), (2) tell each device to reset its FPGA
clock at the subsequent PPS (this step must complete before the next PPS
arrives).

You mentioned that you are using rx_samples_to_file. Did you modify it in
any way?  What is your exact command line with all parameters?
Rob

On Thu, Dec 14, 2023 at 10:29=E2=80=AFAM Anabel Almodovar <
anabel.almodovar@gmail.com> wrote:

> Dear Rob
>
> Thank you for your answer.
> I make use of the CDA-2990 octoclock as a source of synchronization
> between both USRPs, in addition to local oscillator sharing. I use dual
> 10GigEth connections and a MTU of 9000 to connect the USRPs to the PC.
>
> Due to various compatibility issues I am unable to upgrade the system.
>
> When I work with a sample rate of 10MSps I don't get problems but when I
> increase to 25MSps I start to get the error. I need them working with
> 100MSps. I have tried changing the CPU governor to "performance" to get t=
he
> maximum working frequency (*sudo cpupower frequency-set --governor
> performance*), as well as changing the number of network interface
> descriptors to maximum (*sudo ethtool -G <interface> tx <max> rx <max>*),
> or increasing the dirty memory buffer (*sudo sysctl -w vm.dirty_ratio=3D8=
0;
> sudo sysctl -w vm.dirty_background_ratio=3D50*), but I still get the same
> problem.
>
> Regards,
> Anabel
>
> El jue, 14 dic 2023 a las 15:38, Rob Kossler (<rkossler@nd.edu>) escribi=
=C3=B3:
>
>> Hi Anabel,
>> How are you sync-ing the clocks on the two units? Do you have an externa=
l
>> PPS source and are you configuring both devices to use this external sou=
rce?
>>
>> Finally, do you have the ability to upgrade your OS and your UHD
>> versions? There aren't many user's that are using UHD 3.12 so if you hav=
e
>> issues, it will be hard to get support.
>> Rob
>>
>> On Thu, Dec 14, 2023 at 5:20=E2=80=AFAM Anabel Almodovar <
>> anabel.almodovar@gmail.com> wrote:
>>
>>> Dear all,
>>>
>>> I am trying to make an acquisition with two X310 equipped with two
>>> TwinRx. I am using Ubuntu 16.04 LTS 64-bit and UHD 3.12. My PC contains
>>> 128GB RAM and an Intel=C2=AE Xeon(R) Silver 4114 CPU @ 2.20GHz =C3=97 4=
0 and a 4TB
>>> SSD. I have modified the example rx_samples_to_file.cpp code to get 8
>>> channels and I get the following error:
>>>
>>> *D*
>>> *[ERROR] [STREAMER] The receive packet handler failed to time-align
>>> packets. 1002 received packets were processed by the handler. However, =
a
>>> timestamp match could not be determined.*
>>> *Timeout while streaming*
>>>
>>> *[ERROR] [X300] 192.168.60.2 <http://192.168.60.2>: x300 fw
>>> communication failure #1*
>>> *EnvironmentError: IOError: x300 fw poke32 - reply timed out*
>>> *[ERROR] [UHD] An unexpected exception was caught in a task loop.The
>>> task loop will now exit, things may not work.AssertionError: reply.sequ=
ence
>>> =3D=3D request.sequence*
>>> *  in virtual void
>>> x300_ctrl_iface_enet::__poke32(uhd::wb_iface::wb_addr_type, uint32_t)*
>>> *  at
>>> /home/rs3_lab/workarea-uhd/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:135*
>>>
>>> I don't know how to solve the Timeout problem, I have tried to start th=
e
>>> acquisition 1.1 sg in time. But it didn't work.
>>>
>>>
>>> *        stream_cmd.stream_now =3D false;        stream_cmd.time_spec =
=3D
>>> usrp->get_time_last_pps(0)+1.1;*
>>>
>>> What is the problem and how can I fix it?
>>>
>>> Regards,
>>> Anabel
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--000000000000ad8f0f060c7b9357
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Anabel,<div>In my opinion, the error you are experienci=
ng has nothing to do with streaming performance settings (such as &quot;per=
formance&quot; governor, network descriptors, MTU size, etc). The issue see=
ms to be that the two X310 devices do not have synchronized clocks. In addi=
tion to the physical synchronization using OctoClock, you must also configu=
re each device to use external synchronization and you must tell each devic=
e to reset its FPGA clock count at a common PPS. The typical sequence is: (=
1) wait for a PPS to occur (by querying either device), (2) tell each devic=
e to reset its FPGA clock at the subsequent PPS (this step must complete be=
fore the next PPS arrives).</div><div><br></div><div>You mentioned that you=
 are using rx_samples_to_file. Did you modify it in any way?=C2=A0 What is =
your exact command line with all parameters?=C2=A0</div><div>Rob</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Th=
u, Dec 14, 2023 at 10:29=E2=80=AFAM Anabel Almodovar &lt;<a href=3D"mailto:=
anabel.almodovar@gmail.com">anabel.almodovar@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div>Dear Rob</div><div><br></div><div>Thank you for your answ=
er. <br></div><div>I make use of the CDA-2990 octoclock as a source of sync=
hronization between both USRPs, in addition to local oscillator sharing. I =
use dual 10GigEth connections and a MTU of 9000 to connect the USRPs to the=
 PC. <br><br>Due to various compatibility issues I am unable to upgrade the=
 system. <br><br>When I work with a sample rate of 10MSps I don&#39;t get p=
roblems but when I increase to 25MSps I start to get the error. I need them=
 working with 100MSps. I have tried changing the CPU governor to &quot;perf=
ormance&quot; to get the maximum working frequency (<i>sudo cpupower freque=
ncy-set --governor performance</i>), as well as changing the number of netw=
ork interface descriptors to maximum (<i>sudo ethtool -G &lt;interface&gt; =
tx &lt;max&gt; rx &lt;max&gt;</i>), or increasing the dirty memory buffer (=
<i>sudo sysctl -w vm.dirty_ratio=3D80; sudo sysctl -w vm.dirty_background_r=
atio=3D50</i>), but I still get the same problem.</div><div><br></div><div>=
Regards,<br></div><div>Anabel<br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">El jue, 14 dic 2023 a las 15:38, Rob=
 Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler=
@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Anabel,<div>How are yo=
u sync-ing the clocks on the two units? Do you have an external PPS source =
and are you configuring both devices to use this external source?</div><div=
><br></div><div>Finally, do you have the ability to upgrade your OS and you=
r UHD versions? There aren&#39;t many user&#39;s that are using UHD 3.12 so=
 if you have issues, it will be hard to get support.</div><div>Rob</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Thu, Dec 14, 2023 at 5:20=E2=80=AFAM Anabel Almodovar &lt;<a href=3D"mailto=
:anabel.almodovar@gmail.com" target=3D"_blank">anabel.almodovar@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div></div><div>Dear all,</div><div><br></div><div>I am tryi=
ng to make an acquisition with two X310 equipped with two TwinRx. I am usin=
g Ubuntu 16.04 LTS 64-bit and UHD 3.12. My PC contains 128GB RAM and an Int=
el=C2=AE Xeon(R) Silver 4114 CPU @ 2.20GHz =C3=97 40 and a 4TB SSD. I have =
modified the example rx_samples_to_file.cpp code to get 8 channels and I ge=
t the following error:<br><br></div><div><div><i><span style=3D"font-family=
:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;=
font-size:12pt;color:rgb(0,0,0)">D</span></i></div><div><i><span style=3D"f=
ont-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,s=
ans-serif;font-size:12pt;color:rgb(0,0,0)">[ERROR]
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

--000000000000ad8f0f060c7b9357--

--===============0488559368051155693==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0488559368051155693==--
