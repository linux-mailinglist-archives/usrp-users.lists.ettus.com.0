Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FF7814AA6
	for <lists+usrp-users@lfdr.de>; Fri, 15 Dec 2023 15:39:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B192438564B
	for <lists+usrp-users@lfdr.de>; Fri, 15 Dec 2023 09:39:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702651172; bh=46malKyH3Tk6ZaRUcxnglKI+WK+68J6kdPrFXLWQuHY=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=u3TzmPBdxiqOhlESFN1Cqqzq7yvA9/MGrAmybUqpWj7KhGbhC3jgbpbXs0L6e/YS2
	 RKFro2d83JIBaw1/JtjHieAopT2nzCR4at0iKXKAkYUhuVyrn45JnUzFAe0IhQlQtH
	 uvEvp3XCFS3mNwIqTnR+YiyvjcplLLjgM49hhmKgZPpPUmMtZMuek0bjCOGTbFHWmw
	 M5bg19rErsSdRcHmX0VSCa0Hu6HVcucjPLDaleeZiZekHEjv+wA78De+e6vKw/1za9
	 Ap6Jbt2psZYlRyEOVi4LnI1c/x8TIrRcJoKgqI23SXG86itZkC+uqyoU0ONswqK9Ch
	 2N60V68Q7EU4w==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 4559A385631
	for <usrp-users@lists.ettus.com>; Fri, 15 Dec 2023 09:39:27 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="BxPajUSZ";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-54c64316a22so831367a12.0
        for <usrp-users@lists.ettus.com>; Fri, 15 Dec 2023 06:39:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1702651166; x=1703255966; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=i7VYtEUQEIoW0PO6/eF72DAWrmufVt5jjEqchDz7jEE=;
        b=BxPajUSZ18cdkslfANO2D4062pKJnvmYgdY18WWSS2d61x+Bo6DPeWUFtqQQcUIDn0
         JvsPT3QDoCCoymvSCE0uCC8X4oMsiLiCkesfCLfHZXEg/LHjKGpncmEJZPrZ1xE+gdjj
         auDndrZDqNVSb8oXnEx3NCuly5QEjeZQLOxQwFEbEdyPZ88RyKcTFViT8t9lApYatccN
         OMMsWVsYhI+eurxb3dwM0vaNoiqsl+btmJRopd6nIs7Gme7huiBP08FeDuT1Z1x2Nw7g
         VYf8fj/xGYeJ4v1EN1pF5YeCY5WNK2Y8H2/j084Qt9O0t4v4RlAK8SaUYheZI5QdI6OO
         p/1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702651166; x=1703255966;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i7VYtEUQEIoW0PO6/eF72DAWrmufVt5jjEqchDz7jEE=;
        b=GFOdJFVCz/hq3q/SNHtxvku0ZkLE9aHi1RwmiV2FECvyogTrdnhbIPxV8euSOfC1I1
         ltSpVqjuiagmDBf29jRiCxppkyhu4QYJzaIOTSD+DT+4/UqCcfH0d6msvELSP7zy7kFN
         ZK+ZN5BU18k1jfzGWhTCctItja2kKHH4ir3jDSctqw+5WzDM0GCLr+qU2Tms62jLZm+E
         Z7eu3y13QKueSssXbrb8Ayb1BS1G9OqVtS5n0Yr9/ks7b5HuN7L0xWgqM9dPswnrn34a
         U6Ql4HDNA7bQnmwGuI+uMCmoZ8VAwr1oTq7iX7KOBouDaYS6VxPpm7/UL31CWu8ODvzh
         T3Gg==
X-Gm-Message-State: AOJu0YyrIjQ1Vw76D9q+WATWTc/krsuX7ebvLwLnS84yvsrWTP8FGW/U
	baKS7RprPa3jSZecATlCMTEegmEiQAy6eZg3XEkkAg==
X-Google-Smtp-Source: AGHT+IGedsv7qlwgbhSvDijFGMelJmvk1dlahXzkcPJEX+PGefxe8ePzbWPlSfXUtzJgTc+0axgM8ah2dNCyssxcyhQ=
X-Received: by 2002:a50:cd84:0:b0:552:9883:47ce with SMTP id
 p4-20020a50cd84000000b00552988347cemr969890edi.32.1702651165801; Fri, 15 Dec
 2023 06:39:25 -0800 (PST)
MIME-Version: 1.0
References: <CAFPzw1kOz59xv_tRZW7X8jntTLHS-szF_vUvzS5pE8KaGKExtg@mail.gmail.com>
 <CAB__hTTzgcb1p0Gut3qL2U2uvTQ9wRXVHg9EfJ080RC-LETg_A@mail.gmail.com>
 <CAFPzw1kn-j45P_7jf6cMG-kLQiz3zCTYjHog49nPXB+KswUKUw@mail.gmail.com>
 <CAB__hTSKQRF3eE5i=D_6zQo8C4LLWioP+ts=YvRDJiUM=UnnYw@mail.gmail.com> <CAFPzw1kVSnS0Nuye2QPKxJ0XFND3e==zFCejGLKY0s3AifKjZQ@mail.gmail.com>
In-Reply-To: <CAFPzw1kVSnS0Nuye2QPKxJ0XFND3e==zFCejGLKY0s3AifKjZQ@mail.gmail.com>
Date: Fri, 15 Dec 2023 09:39:13 -0500
Message-ID: <CAB__hTTYiTXXgV9Ra1UxaQrLC9p_=Vzr3A4XFGTwKbOHJrb4zQ@mail.gmail.com>
To: Anabel Almodovar <anabel.almodovar@gmail.com>
Message-ID-Hash: LP7KUBZSKO7LKWEDADOSZTGH4MGD6GI6
X-Message-ID-Hash: LP7KUBZSKO7LKWEDADOSZTGH4MGD6GI6
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: streamer error X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LP7KUBZSKO7LKWEDADOSZTGH4MGD6GI6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6543100585834899793=="

--===============6543100585834899793==
Content-Type: multipart/alternative; boundary="000000000000ea7a6f060c8d5ddb"

--000000000000ea7a6f060c8d5ddb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hmmm. I'm not sure. Here are a few comments:

   - Try running without "second_addr".  I realize that you will need it
   for full rate (4 x 100MS/s for each X310), but you could run at 50 MS/s
   without second_addr
   - Try running without shared LO. I don't think you would need to
   physically change any sharing cables.
   - I am curious why you needed to modify the streamer, pointer buffer and
   file writing.  I would expect that this would scale with the number of
   channels such that you didn't need to modify any code in this area
   - If you were using a more recent UHD, I would recommend switching to
   the example benchmark_rate which natively supports external PPS and
   multiple devices.  I noticed that even the most recent rx_samples_to_fil=
e
   does not support external PPS (without modifying the code)
   - I know you mentioned you were unable to upgrade because of
   compatibility constraints.  But, even if you cannot upgrade the OS, woul=
d
   you be able to install a new UHD - perhaps in a local folder that did no=
t
   interfere with the system-wide UHD 3.12 installation.  I typically have
   multiple UHD versions on my system and switch among them by "sourcing" a
   given setup file as needed.


On Fri, Dec 15, 2023 at 12:52=E2=80=AFAM Anabel Almodovar <
anabel.almodovar@gmail.com> wrote:

> Dear Rob,
>
> Yes, I use an external clock configuration.
>
> *std::this_thread::sleep_for( std::chrono::milliseconds(int64_t(1000 *
> setup_time) );*
>
>
>
> *usrp->set_clock_source("external", uhd::usrp::multi_usrp::ALL_MBOARDS);
>  usrp->set_time_source("external",
> uhd::usrp::multi_usrp::ALL_MBOARDS);usrp->set_time_unknown_pps(uhd::time_=
spec_t(0.0));std::this_thread::sleep_for(std::chrono::seconds(1));*
>
> I have only modified the code to get 8 channels and LO sharing. I want to
> get a continuous acquisition setup without losing samples. But I am
> starting with something basic at the moment. Any suggestions are welcome.
> So I've modified the streamer, the pointer buffer, and added writing file=
s.
>
> my line is
> *$sudo ./rx_samples_to_file_v1
> --args=3D"addr0=3D192.168.60.2,second_addr0=3D192.168.50.2,addr1=3D192.16=
8.40.2,second_addr1=3D192.168.30.2,recv_buff_size=3D900000000"
> --subdev=3D"A:0 A:1 B:0 B:1" --channel=3D"0,1,2,3,4,5,6,7" --freq 800e6 -=
-rate
> 25e6 --bw 25e6 --gain 70 *
>
> Regards,
>
> *Anabel*
>
>
>
> El jue, 14 dic 2023 a las 18:25, Rob Kossler (<rkossler@nd.edu>) escribi=
=C3=B3:
>
>> Hi Anabel,
>> In my opinion, the error you are experiencing has nothing to do with
>> streaming performance settings (such as "performance" governor, network
>> descriptors, MTU size, etc). The issue seems to be that the two X310
>> devices do not have synchronized clocks. In addition to the physical
>> synchronization using OctoClock, you must also configure each device to =
use
>> external synchronization and you must tell each device to reset its FPGA
>> clock count at a common PPS. The typical sequence is: (1) wait for a PPS=
 to
>> occur (by querying either device), (2) tell each device to reset its FPG=
A
>> clock at the subsequent PPS (this step must complete before the next PPS
>> arrives).
>>
>> You mentioned that you are using rx_samples_to_file. Did you modify it i=
n
>> any way?  What is your exact command line with all parameters?
>> Rob
>>
>> On Thu, Dec 14, 2023 at 10:29=E2=80=AFAM Anabel Almodovar <
>> anabel.almodovar@gmail.com> wrote:
>>
>>> Dear Rob
>>>
>>> Thank you for your answer.
>>> I make use of the CDA-2990 octoclock as a source of synchronization
>>> between both USRPs, in addition to local oscillator sharing. I use dual
>>> 10GigEth connections and a MTU of 9000 to connect the USRPs to the PC.
>>>
>>> Due to various compatibility issues I am unable to upgrade the system.
>>>
>>> When I work with a sample rate of 10MSps I don't get problems but when =
I
>>> increase to 25MSps I start to get the error. I need them working with
>>> 100MSps. I have tried changing the CPU governor to "performance" to get=
 the
>>> maximum working frequency (*sudo cpupower frequency-set --governor
>>> performance*), as well as changing the number of network interface
>>> descriptors to maximum (*sudo ethtool -G <interface> tx <max> rx <max>*=
),
>>> or increasing the dirty memory buffer (*sudo sysctl -w
>>> vm.dirty_ratio=3D80; sudo sysctl -w vm.dirty_background_ratio=3D50*), b=
ut I
>>> still get the same problem.
>>>
>>> Regards,
>>> Anabel
>>>
>>> El jue, 14 dic 2023 a las 15:38, Rob Kossler (<rkossler@nd.edu>)
>>> escribi=C3=B3:
>>>
>>>> Hi Anabel,
>>>> How are you sync-ing the clocks on the two units? Do you have an
>>>> external PPS source and are you configuring both devices to use this
>>>> external source?
>>>>
>>>> Finally, do you have the ability to upgrade your OS and your UHD
>>>> versions? There aren't many user's that are using UHD 3.12 so if you h=
ave
>>>> issues, it will be hard to get support.
>>>> Rob
>>>>
>>>> On Thu, Dec 14, 2023 at 5:20=E2=80=AFAM Anabel Almodovar <
>>>> anabel.almodovar@gmail.com> wrote:
>>>>
>>>>> Dear all,
>>>>>
>>>>> I am trying to make an acquisition with two X310 equipped with two
>>>>> TwinRx. I am using Ubuntu 16.04 LTS 64-bit and UHD 3.12. My PC contai=
ns
>>>>> 128GB RAM and an Intel=C2=AE Xeon(R) Silver 4114 CPU @ 2.20GHz =C3=97=
 40 and a 4TB
>>>>> SSD. I have modified the example rx_samples_to_file.cpp code to get 8
>>>>> channels and I get the following error:
>>>>>
>>>>> *D*
>>>>> *[ERROR] [STREAMER] The receive packet handler failed to time-align
>>>>> packets. 1002 received packets were processed by the handler. However=
, a
>>>>> timestamp match could not be determined.*
>>>>> *Timeout while streaming*
>>>>>
>>>>> *[ERROR] [X300] 192.168.60.2 <http://192.168.60.2>: x300 fw
>>>>> communication failure #1*
>>>>> *EnvironmentError: IOError: x300 fw poke32 - reply timed out*
>>>>> *[ERROR] [UHD] An unexpected exception was caught in a task loop.The
>>>>> task loop will now exit, things may not work.AssertionError: reply.se=
quence
>>>>> =3D=3D request.sequence*
>>>>> *  in virtual void
>>>>> x300_ctrl_iface_enet::__poke32(uhd::wb_iface::wb_addr_type, uint32_t)=
*
>>>>> *  at
>>>>> /home/rs3_lab/workarea-uhd/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:13=
5*
>>>>>
>>>>> I don't know how to solve the Timeout problem, I have tried to start
>>>>> the acquisition 1.1 sg in time. But it didn't work.
>>>>>
>>>>>
>>>>> *        stream_cmd.stream_now =3D false;        stream_cmd.time_spec=
 =3D
>>>>> usrp->get_time_last_pps(0)+1.1;*
>>>>>
>>>>> What is the problem and how can I fix it?
>>>>>
>>>>> Regards,
>>>>> Anabel
>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>>

--000000000000ea7a6f060c8d5ddb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hmmm. I&#39;m not sure. Here are a few comments:</div=
><div><ul><li>Try running without &quot;second_addr&quot;.=C2=A0 I realize =
that you will need it for full rate (4 x 100MS/s for each X310), but you co=
uld run at 50 MS/s without second_addr</li><li>Try running without=C2=A0sha=
red LO. I don&#39;t think you would need to physically change any sharing c=
ables.</li><li>I am curious why you needed to modify the streamer, pointer =
buffer and file writing.=C2=A0 I would expect that this would scale with th=
e number of channels such that you didn&#39;t need to modify any code in th=
is area</li><li>If you were using a more recent UHD, I would recommend swit=
ching to the example benchmark_rate which natively supports external PPS an=
d multiple devices.=C2=A0 I noticed that even the most recent=C2=A0rx_sampl=
es_to_file does not support external PPS (without modifying the code)</li><=
li>I know you mentioned you were unable to upgrade because of compatibility=
 constraints.=C2=A0 But, even if you cannot upgrade the OS, would you be ab=
le to install a new UHD - perhaps in a local folder that did not interfere =
with the system-wide UHD 3.12 installation.=C2=A0 I typically have multiple=
 UHD versions on my system and switch among them by &quot;sourcing&quot; a =
given setup file as needed.</li></ul></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 15, 2023 at 12:52=E2=80=AF=
AM Anabel Almodovar &lt;<a href=3D"mailto:anabel.almodovar@gmail.com">anabe=
l.almodovar@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div>Dear Rob,</div><div><br></div><d=
iv>Yes, I use an external clock configuration.</div><div><br></div><div><i>=
std::this_thread::sleep_for( std::chrono::milliseconds(int64_t(1000 * setup=
_time) );</i></div><div><i>usrp-&gt;set_clock_source(&quot;external&quot;, =
uhd::usrp::multi_usrp::ALL_MBOARDS); =C2=A0 =C2=A0<br>usrp-&gt;set_time_sou=
rce(&quot;external&quot;, uhd::usrp::multi_usrp::ALL_MBOARDS);<br>usrp-&gt;=
set_time_unknown_pps(uhd::time_spec_t(0.0));<br>std::this_thread::sleep_for=
(std::chrono::seconds(1));</i></div><div><br></div><div>I have only modifie=
d the code to get 8 channels and LO sharing. I want to get a continuous acq=
uisition setup without losing samples. But I am starting with something bas=
ic at the moment. Any suggestions are welcome. So I&#39;ve modified the str=
eamer, the pointer buffer, and added writing files.</div><div><br></div><di=
v>my line is <i>$sudo ./rx_samples_to_file_v1 --args=3D&quot;addr0=3D192.16=
8.60.2,second_addr0=3D192.168.50.2,addr1=3D192.168.40.2,second_addr1=3D192.=
168.30.2,recv_buff_size=3D900000000&quot; --subdev=3D&quot;A:0 A:1 B:0 B:1&=
quot; --channel=3D&quot;0,1,2,3,4,5,6,7&quot; --freq 800e6 --rate 25e6 --bw=
 25e6 --gain 70 <br></i></div><div><i><br></i></div><div>Regards,</div><div=
><i>Anabel<br></i></div><div><br></div><div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El jue, 14 dic 2023 =
a las 18:25, Rob Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"=
_blank">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Anabel,<div>In my opin=
ion, the error you are experiencing has nothing to do with streaming perfor=
mance settings (such as &quot;performance&quot; governor, network descripto=
rs, MTU size, etc). The issue seems to be that the two X310 devices do not =
have synchronized clocks. In addition to the physical synchronization using=
 OctoClock, you must also configure each device to use external synchroniza=
tion and you must tell each device to reset its FPGA clock count at a commo=
n PPS. The typical sequence is: (1) wait for a PPS to occur (by querying ei=
ther device), (2) tell each device to reset its FPGA clock at the subsequen=
t PPS (this step must complete before the next PPS arrives).</div><div><br>=
</div><div>You mentioned that you are using rx_samples_to_file. Did you mod=
ify it in any way?=C2=A0 What is your exact command line with all parameter=
s?=C2=A0</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Dec 14, 2023 at 10:29=E2=80=AFAM Anab=
el Almodovar &lt;<a href=3D"mailto:anabel.almodovar@gmail.com" target=3D"_b=
lank">anabel.almodovar@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div>Dea=
r Rob</div><div><br></div><div>Thank you for your answer. <br></div><div>I =
make use of the CDA-2990 octoclock as a source of synchronization between b=
oth USRPs, in addition to local oscillator sharing. I use dual 10GigEth con=
nections and a MTU of 9000 to connect the USRPs to the PC. <br><br>Due to v=
arious compatibility issues I am unable to upgrade the system. <br><br>When=
 I work with a sample rate of 10MSps I don&#39;t get problems but when I in=
crease to 25MSps I start to get the error. I need them working with 100MSps=
. I have tried changing the CPU governor to &quot;performance&quot; to get =
the maximum working frequency (<i>sudo cpupower frequency-set --governor pe=
rformance</i>), as well as changing the number of network interface descrip=
tors to maximum (<i>sudo ethtool -G &lt;interface&gt; tx &lt;max&gt; rx &lt=
;max&gt;</i>), or increasing the dirty memory buffer (<i>sudo sysctl -w vm.=
dirty_ratio=3D80; sudo sysctl -w vm.dirty_background_ratio=3D50</i>), but I=
 still get the same problem.</div><div><br></div><div>Regards,<br></div><di=
v>Anabel<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">El jue, 14 dic 2023 a las 15:38, Rob Kossler (&lt;<a href=
=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;) escr=
ibi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div dir=3D"ltr">Hi Anabel,<div>How are you sync-ing the clocks=
 on the two units? Do you have an external PPS source and are you configuri=
ng both devices to use this external source?</div><div><br></div><div>Final=
ly, do you have the ability to upgrade your OS and your UHD versions? There=
 aren&#39;t many user&#39;s that are using UHD 3.12 so if you have issues, =
it will be hard to get support.</div><div>Rob</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 14, 2023 at =
5:20=E2=80=AFAM Anabel Almodovar &lt;<a href=3D"mailto:anabel.almodovar@gma=
il.com" target=3D"_blank">anabel.almodovar@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><=
/div><div>Dear all,</div><div><br></div><div>I am trying to make an acquisi=
tion with two X310 equipped with two TwinRx. I am using Ubuntu 16.04 LTS 64=
-bit and UHD 3.12. My PC contains 128GB RAM and an Intel=C2=AE Xeon(R) Silv=
er 4114 CPU @ 2.20GHz =C3=97 40 and a 4TB SSD. I have modified the example =
rx_samples_to_file.cpp code to get 8 channels and I get the following error=
:<br><br></div><div><div><i><span style=3D"font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:=
rgb(0,0,0)">D</span></i></div><div><i><span style=3D"font-family:Aptos,Apto=
s_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:1=
2pt;color:rgb(0,0,0)">[ERROR]
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
</blockquote></div></div>

--000000000000ea7a6f060c8d5ddb--

--===============6543100585834899793==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6543100585834899793==--
