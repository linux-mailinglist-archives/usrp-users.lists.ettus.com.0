Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D18116E1685
	for <lists+usrp-users@lfdr.de>; Thu, 13 Apr 2023 23:37:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CC6653840B2
	for <lists+usrp-users@lfdr.de>; Thu, 13 Apr 2023 17:37:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681421874; bh=B6cFdmTKn5NI1v9DuEk5Zgm0OxenLgBk7gx9mqaFKow=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Q1kXea4tHdu/QfbZyJ4xNWOu95IPctQWm8sBDHWHRALucq8+UR5o9ki7YntqObUMm
	 DO/x8sdKl8/Aynhbka+2/GtoJAxwHvG/xNA1+dnrJ5E2H/RSuWuSG1N6anszzZBOLD
	 6aD8nTYluD77M2f8tq+bKNFRxVxcZtcAikkkX8BT2CyHWDATNJGGSFl9+/+RbuhxXy
	 XIxiK6CXaq0ZFoSFwYwU77r8RVT5oQ2gSgKQR4qzovvtBUxrd9qxE+s2wWvETJyb32
	 JBc6uMuGlRPKyXHCcOfKnbz/ypqTLcWr1mrbrRDscocBwNeOl5aKimduca1b8L7w92
	 z+YlSB6Ke8S9g==
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 12CCA384034
	for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 17:37:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="WE5YvOfV";
	dkim-atps=neutral
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-504eb1155d3so9614491a12.1
        for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 14:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1681421836; x=1684013836;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hCsTulEikvUYgTgSR4UOfgUIw/4FFCDnJW/EAb2N/I8=;
        b=WE5YvOfVkT5kmKsba7S4PIm7iays/0oc88t1yoK8s4qXIEWQWfsjgUegMnJGtkMHtU
         stLez0rniDuhLK9p7Z0Hv973UmtrHx6ZE2hc+vW+Tx8V1FVHaFHF/wn4V9Y3bhJDdpse
         0RdSed/yj94tlStBzjRhywd5asLXZCZViB/vZ/8jBEt3C+SHQk//GFaNNjYC/3ry0nIm
         ZfE3MMabFDknTxkc8W+05T7wvOg2B0yoTyi7AC20dIqbsYlF8OjIYIfmh2RevycbMWK/
         TwQ5cDxwip64ZmPIGkA/i/ki6bd/abwAtNmFE7ccmGO6gqyNa/oe/2XSkHW01h2tR1EV
         y3OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681421836; x=1684013836;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hCsTulEikvUYgTgSR4UOfgUIw/4FFCDnJW/EAb2N/I8=;
        b=C1JvaqMeaGd5arlrnJn2j6N1ypqnaDdTBBD4BZ2DQs3pXHbSibeQIejWzBVQKXQOq9
         Bp4ZndeKn2SHK/DIWiC7vF9herzeMfQ8cIcPoIJtTrZWgHL+x9ad9vZsLwmuclaCgnzH
         uiJWMttKSBhGmwYO6fWnFhpO/3crUVdXyz/jHdVVXL5tECDDl+04nKXMaHf4AwgLjlt9
         KF1KwVYP6FRCoctztYYwBwEuJpziJySmQe3iZ2DwATdWyAnLIdtNEB7myGPOHrsF9Ops
         uLyu6EY/G9ASkzb6h+Ii7Vc/DfgCtsnkIStg4aZ3rawCAuM1bJZAiSSf9JOq+Pa7HuLz
         0bCQ==
X-Gm-Message-State: AAQBX9dcqcOIiGXVurQvZlSz0RvMmObDdF+3ZSdFjGz9VtExG5WjHYAg
	1DftXMFxsSsC+iOJGqRwIreIqmUx5coPP6mEM3Xjhw==
X-Google-Smtp-Source: AKy350Z31tv3SsjQaSX/SEY0ZkBpGqCSH7IZMyAloBrwKPtootBSDDZyPyKj0rcI1tmsiCYJGpMLaorZvm289uhEPiU=
X-Received: by 2002:a05:6402:550b:b0:4fb:e069:77ac with SMTP id
 fi11-20020a056402550b00b004fbe06977acmr4947820edb.0.1681421835499; Thu, 13
 Apr 2023 14:37:15 -0700 (PDT)
MIME-Version: 1.0
References: <20230408021338.994254D94B@mail.futurelabusa.com>
 <d5460510-c3e2-9f3f-31ea-2bf55fedcf7e@gmail.com> <20230411011218.5513E4D94B@mail.futurelabusa.com>
 <ec810fb7-3220-4fbb-3ce5-31385a878931@gmail.com> <20230413210221.4BED44D905@mail.futurelabusa.com>
In-Reply-To: <20230413210221.4BED44D905@mail.futurelabusa.com>
Date: Thu, 13 Apr 2023 17:37:04 -0400
Message-ID: <CAB__hTR+N0tZ=B8s9urCWK9U2uGT96g=x8w7rS5WkHQLW_H_gw@mail.gmail.com>
To: Jim Schatzman <james.schatzman@futurelabusa.com>
Message-ID-Hash: MS4SWZ63BCUXSIHAMJLCDTRQKBPA26N4
X-Message-ID-Hash: MS4SWZ63BCUXSIHAMJLCDTRQKBPA26N4
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Halting issue with USRP socket connection - how to set SO_PRIORITY?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MS4SWZ63BCUXSIHAMJLCDTRQKBPA26N4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4212126003984265206=="

--===============4212126003984265206==
Content-Type: multipart/alternative; boundary="000000000000391cbc05f93e87ce"

--000000000000391cbc05f93e87ce
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jim,
From a quick review of this chain, it appears your concern is for the
transmit direction (hence, Underruns). Although I have never tried to run
for extended periods such as you are requiring, I am reasonably confident
that the issue is on the host side and not the Radio side.  Some remarks:

   - Perhaps you would get more reliable streaming using DPDK. When I last
   tried this a couple of years ago, the performance was great (at much hig=
her
   rates than you, but for shorter periods of time). But, the side effects
   were substantial (PC mis-behaving to the point of becoming unusable) and=
 so
   I abandoned it. The new DPDK is more mature (as is the OS) from when I
   tried it so it may be much better now with regard to side effects.
   - You could add buffering on the N310 (by building a custom FPGA image)
   that could robustly handle short host "hiccups" in streaming.  Originall=
y,
   the DMA-FIFO RFNoC block was put in the Tx path of devices such as the X=
310
   for this express purpose. But, the DMA-FIFO block cannot handle 4 stream=
s
   at full rate on an N310 so it is not part of the stock FPGA. The externa=
l
   RAM is used instead for the "Replay" block.  But at your data rates, the
   external RAM can handle four streams so you could build an FPGA image th=
at
   replaced the Replay block with the DMA-FIFO such that you would have ver=
y
   large buffers on the FPGA to handle host streaming hiccups.  Note that y=
ou
   could also build a new image with larger FPGA fabric buffers, but they
   wouldn't approach the size of the external RAM.  If building your own FP=
GA
   image seems daunting (for some this is a show stopper), I just want to
   mention that what I am suggesting would not require FPGA design talent -
   the necessary blocks already exist  - it would just require purchasing
   Xilinx Vivado and getting past the initial learning curve of building an
   image.
   - How are you generating your Tx samples?  Custom app?  Reading from a
   very large data file?  I ask this because I have had the most streaming
   success when transmitting from a file (or receive to a file) if the file=
 is
   in a "RAM disk".  We generally order Linux PCs with as much RAM as we ca=
n
   afford in order to configure such RAM as a RAM disk for the purpose of f=
ast
   streaming to/from files.
   - Finally, if your data is not dynamic (a repeated fixed length sequence
   such as in a repeated radar transmission), I would highly recommend usin=
g
   the Replay block to send the data rather than streaming from the host. Y=
ou
   will likely never see an underrun in this case.  But, I realize that if =
the
   data is dynamic, this is not possible.

Rob


On Thu, Apr 13, 2023 at 5:03=E2=80=AFPM Jim Schatzman <
james.schatzman@futurelabusa.com> wrote:

> Even with all the recommended settings, and a very fast computer that is
> doing nothing except sending the data, it is maybe 50/50 that a 2 hour
> simulation can be conducted without an underrun. The longest run I have
> been able to do without an underrun is about 2.5 hours.
>
> The sample rate is 12.5 Msamp/sec at 16 bit I + 16 bit Q or 400 Mbit/sec.
>
> For our application, that is unacceptable. I need to be able to run for
> days without data loss.
>
> It is a mystery to me why a 10 Gbit connection cannot support 400 Mbit/se=
c
> UDP reliably.
>
> Any ideas about how we can completely eliminate underruns?
>
> At the moment, I am uncertain whether the problem is occurring on the hos=
t
> or on the radio. I suspect the radio, but I will do some testing of the
> host to see what UDP data rate it can support without loss.
>
> Thanks!
>
>
>
>
>
> At 10:53 PM 4/10/2023, Marcus D. Leech wrote:
> >On 10/04/2023 21:12, Jim Schatzman wrote:
> >>The following steps had no impact:
> >>
> >>a) Don't use a switch but do a point-to-point connection between the
> comptuer's NIC and the N310.
> >>b) Adjust network buffers and ring buffer per recommendations (actually=
,
> the network buffers setting was always being done).
> >>
> >>Increasing the MTU to 9000 had a significant impact. An occasionaly
> underrun is still experienced, but an hour or two of continuous
> transmission is possible.
> >>
> >>I am wondering if this is not an issue on the computer side but on the
> radio side. Is the N310 incapable of supporting 1x 10 Gbps streams with a
> MTU of 1500?  Perhaps.
> >>
> >>I will do some computer-to-computer testing to see if the problem can b=
e
> reproduced there.
> >>
> >>Jim
> >Even non-SDR applications tend to use jumbo-frames for continuous traffi=
c
> at 10Gbit.=C3=82  I'm sorry that I didn't clue in to that
> >=C3=82  in the first round.
> >
> >
> >>
> >>
> >>
> >>
> >>At 08:39 PM 4/7/2023, Marcus D. Leech wrote:
> >>>On 07/04/2023 22:13, Jim Schatzman wrote:
> >>>>We have been unable to estable 100% reliable connections to an N310
> USRP radio through its 10 Gbit ethernet from Linux. What happens is that =
it
> works fine for a period of time - 30 to 60 minutes, typically. Then we se=
e
> a couple of U's in the output. Unfortunately, that is fatal for our
> application.
> >>>>
> >>>>Using the unmodified tx_samples_from_file or one modified to use
> separate threads to read data from the file and to sent it over the socke=
t
> to the radio, the symptoms are the same.
> >>>>
> >>>>All the evidence is that the application is sending data continuously
> without any delays. Also, the "network" has no devices on it except for t=
he
> host computer, a high performance 10G switch, and the N310 radio.
> >>>>
> >>>>We are wondering if this could be a Linux "feature". We would like to
> try increasing the socket priority with SO_PRIORITY. However, we are not
> finding any hooks in the UHD software for this.
> >>>>
> >>>>Suggestions?
> >>>>
> >>>>Thanks!
> >>>>Jim
> >>>>_______________________________________________
> >>>Have you increased the ring buffers on your card?
> >>>
> >>>
> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#Increas=
ing_Ring_Buffers
> >>>
> >>>Also, adjust the network buffers:
> >>>
> >>>
> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#Adjust_=
Network_Buffers
> >>>
> >>>Have you tried a direct connection--without the switch?=C3=83=E2=80=9A=
 =C3=83=E2=80=9A =C3=83=E2=80=9A  Just
> to eliminate it.=C3=83=E2=80=9A  Before you say "oh, it's not the switch"=
,
> >>>=C3=83=E2=80=9A  many "high performance" 10G switches have a less-than=
-ideal
> switching fabric.
> >>>
> >>>_______________________________________________ USRP-users mailing lis=
t
> -- usrp-users@lists.ettus.com To unsubscribe send an email to
> usrp-users-leave@lists.ettus.com </x-flowed>
> >>_______________________________________________
> >>USRP-users mailing list -- usrp-users@lists.ettus.com
> >>To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >_______________________________________________ USRP-users mailing list
> -- usrp-users@lists.ettus.com To unsubscribe send an email to
> usrp-users-leave@lists.ettus.com </x-flowed>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000391cbc05f93e87ce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jim,</div><div>From a quick review of this chain, =
it appears your concern is for the transmit direction (hence, Underruns). A=
lthough I have never tried to run for extended periods such as you are requ=
iring, I am reasonably confident that the issue is on the host side and not=
 the Radio side.=C2=A0 Some remarks:</div><div><ul><li>Perhaps you would ge=
t more reliable streaming using DPDK. When I last tried this a couple of ye=
ars ago, the performance was great=C2=A0(at much higher rates than you, but=
 for shorter periods of time). But, the side effects were substantial (PC m=
is-behaving to the point of becoming unusable) and so I abandoned it. The n=
ew DPDK is more mature (as is the OS) from when I tried it so it may be muc=
h better now with regard to side effects.</li><li>You could add buffering o=
n the N310 (by building a custom FPGA image) that could robustly handle sho=
rt host &quot;hiccups&quot; in streaming.=C2=A0 Originally, the DMA-FIFO RF=
NoC block was put in the Tx path of devices such as the X310 for this expre=
ss purpose. But, the DMA-FIFO block cannot handle 4 streams at full rate on=
 an N310 so it is not part of the stock FPGA. The external RAM is used inst=
ead for the &quot;Replay&quot; block.=C2=A0 But at your data rates, the ext=
ernal RAM can handle four streams so you could build an FPGA image that rep=
laced the Replay block with the DMA-FIFO such that you would have very larg=
e buffers on the FPGA to handle host streaming hiccups.=C2=A0 Note that you=
 could also build a new image with larger FPGA fabric buffers, but they wou=
ldn&#39;t approach the size of the external RAM.=C2=A0 If building your own=
 FPGA image seems daunting (for some this is a show stopper), I just want t=
o mention that what I am suggesting would not require FPGA design talent - =
the necessary blocks already exist=C2=A0 - it would just require purchasing=
 Xilinx Vivado and getting past the initial learning curve of building an i=
mage.</li><li>How are you generating your Tx samples?=C2=A0 Custom app?=C2=
=A0 Reading from a very large data file?=C2=A0 I ask this because I have ha=
d the most streaming success when transmitting from a file (or receive to a=
 file) if the file is in a &quot;RAM disk&quot;.=C2=A0 We generally order L=
inux PCs with as much RAM as we can afford in order to configure such RAM a=
s a RAM disk for the purpose of fast streaming to/from files.</li><li>Final=
ly, if your data is not dynamic (a repeated fixed length sequence such as i=
n a repeated radar transmission), I would highly recommend using the Replay=
 block to send the data rather than streaming from the host. You will likel=
y never see an underrun in this case.=C2=A0 But, I realize that if the data=
 is dynamic, this is not possible.</li></ul></div>Rob<div><br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu,=
 Apr 13, 2023 at 5:03=E2=80=AFPM Jim Schatzman &lt;<a href=3D"mailto:james.=
schatzman@futurelabusa.com">james.schatzman@futurelabusa.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Even with all t=
he recommended settings, and a very fast computer that is doing nothing exc=
ept sending the data, it is maybe 50/50 that a 2 hour simulation can be con=
ducted without an underrun. The longest run I have been able to do without =
an underrun is about 2.5 hours.<br>
<br>
The sample rate is 12.5 Msamp/sec at 16 bit I + 16 bit Q or 400 Mbit/sec.<b=
r>
<br>
For our application, that is unacceptable. I need to be able to run for day=
s without data loss.<br>
<br>
It is a mystery to me why a 10 Gbit connection cannot support 400 Mbit/sec =
UDP reliably.<br>
<br>
Any ideas about how we can completely eliminate underruns?<br>
<br>
At the moment, I am uncertain whether the problem is occurring on the host =
or on the radio. I suspect the radio, but I will do some testing of the hos=
t to see what UDP data rate it can support without loss.<br>
<br>
Thanks!<br>
<br>
<br>
<br>
<br>
<br>
At 10:53 PM 4/10/2023, Marcus D. Leech wrote:<br>
&gt;On 10/04/2023 21:12, Jim Schatzman wrote:<br>
&gt;&gt;The following steps had no impact:<br>
&gt;&gt;<br>
&gt;&gt;a) Don&#39;t use a switch but do a point-to-point connection betwee=
n the comptuer&#39;s NIC and the N310.<br>
&gt;&gt;b) Adjust network buffers and ring buffer per recommendations (actu=
ally, the network buffers setting was always being done).<br>
&gt;&gt;<br>
&gt;&gt;Increasing the MTU to 9000 had a significant impact. An occasionaly=
 underrun is still experienced, but an hour or two of continuous transmissi=
on is possible.<br>
&gt;&gt;<br>
&gt;&gt;I am wondering if this is not an issue on the computer side but on =
the radio side. Is the N310 incapable of supporting 1x 10 Gbps streams with=
 a MTU of 1500?=C2=A0 Perhaps.<br>
&gt;&gt;<br>
&gt;&gt;I will do some computer-to-computer testing to see if the problem c=
an be reproduced there.<br>
&gt;&gt;<br>
&gt;&gt;Jim<br>
&gt;Even non-SDR applications tend to use jumbo-frames for continuous traff=
ic at 10Gbit.=C3=82=C2=A0 I&#39;m sorry that I didn&#39;t clue in to that<b=
r>
&gt;=C3=82=C2=A0 in the first round.<br>
&gt;<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;At 08:39 PM 4/7/2023, Marcus D. Leech wrote:<br>
&gt;&gt;&gt;On 07/04/2023 22:13, Jim Schatzman wrote:<br>
&gt;&gt;&gt;&gt;We have been unable to estable 100% reliable connections to=
 an N310 USRP radio through its 10 Gbit ethernet from Linux. What happens i=
s that it works fine for a period of time - 30 to 60 minutes, typically. Th=
en we see a couple of U&#39;s in the output. Unfortunately, that is fatal f=
or our application.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;Using the unmodified tx_samples_from_file or one modified t=
o use separate threads to read data from the file and to sent it over the s=
ocket to the radio, the symptoms are the same.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;All the evidence is that the application is sending data co=
ntinuously without any delays. Also, the &quot;network&quot; has no devices=
 on it except for the host computer, a high performance 10G switch, and the=
 N310 radio.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;We are wondering if this could be a Linux &quot;feature&quo=
t;. We would like to try increasing the socket priority with SO_PRIORITY. H=
owever, we are not finding any hooks in the UHD software for this.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;Suggestions?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;Thanks!<br>
&gt;&gt;&gt;&gt;Jim<br>
&gt;&gt;&gt;&gt;_______________________________________________<br>
&gt;&gt;&gt;Have you increased the ring buffers on your card?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<a href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Ti=
ps_and_Tricks#Increasing_Ring_Buffers" rel=3D"noreferrer" target=3D"_blank"=
>https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#Increasi=
ng_Ring_Buffers</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;Also, adjust the network buffers:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<a href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Ti=
ps_and_Tricks#Adjust_Network_Buffers" rel=3D"noreferrer" target=3D"_blank">=
https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#Adjust_Ne=
twork_Buffers</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;Have you tried a direct connection--without the switch?=C3=83=
=E2=80=9A =C3=83=E2=80=9A =C3=83=E2=80=9A=C2=A0 Just to eliminate it.=C3=83=
=E2=80=9A=C2=A0 Before you say &quot;oh, it&#39;s not the switch&quot;,<br>
&gt;&gt;&gt;=C3=83=E2=80=9A=C2=A0 many &quot;high performance&quot; 10G swi=
tches have a less-than-ideal switching fabric.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;_______________________________________________ USRP-users mail=
ing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
>usrp-users@lists.ettus.com</a> To unsubscribe send an email to <a href=3D"=
mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave=
@lists.ettus.com</a> &lt;/x-flowed&gt;<br>
&gt;&gt;_______________________________________________<br>
&gt;&gt;USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt;To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@=
lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
&gt;_______________________________________________ USRP-users mailing list=
 -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a> To unsubscribe send an email to <a href=3D"mailto:u=
srp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.e=
ttus.com</a> &lt;/x-flowed&gt;<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000391cbc05f93e87ce--

--===============4212126003984265206==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4212126003984265206==--
