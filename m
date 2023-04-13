Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D67C46E16C6
	for <lists+usrp-users@lfdr.de>; Thu, 13 Apr 2023 23:55:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3C3ED38413B
	for <lists+usrp-users@lfdr.de>; Thu, 13 Apr 2023 17:55:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681422936; bh=ekWJFdleBZjd4/QkJmuyBwvD9/gNvKdoEAde3ktUap0=;
	h=Date:To:From:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=FkmWWwnWOSQZlvX6SPAe7kY/gdajVg+9jiiOYWFmjLXMVrO+lmvnOAB0a2eUqCUZe
	 aR8I8sYjg/2mOHUIEhCbyMOkXreDhlj38STqydks7wEJVI8QPPksRw1I+nZrzY0gGN
	 lkWv0IhO3eh5FXQiOY8NuSS/u1a/PtQYwOeH3RwfA7lHfH1YVbHClqpctg1OAVs3lS
	 iojDm9WrM6Zms8aBYtoXyvraWoCdz1I+WouqS7omvIQEoovdjjX4EswZJRLKblWjdk
	 xEERZ2nonbYutKyLJuO99mtyvA5hqxiOWMf7ObarNcMZpWA9EDH5ACLyMBbypk7TsE
	 mHJLV4rtQTZDA==
Received: from smtp1.dnsmadeeasy.com (smtp1.dnsmadeeasy.com [208.94.147.128])
	by mm2.emwd.com (Postfix) with ESMTPS id A7E2D384035
	for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 17:55:01 -0400 (EDT)
Received: from smtp1.dnsmadeeasy.com (localhost [127.0.0.1])
	by smtp1.dnsmadeeasy.com (Postfix) with ESMTP id 49F662F804A0
	for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 21:55:01 +0000 (UTC)
X-Authenticated-Name: James.Schatzman
Received: from mail.futurelabusa.com (c-67-174-176-3.hsd1.co.comcast.net [67.174.176.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp1.dnsmadeeasy.com (Postfix) with ESMTPSA
	for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 21:55:01 +0000 (UTC)
Received: by mail.futurelabusa.com (Postfix, from userid 1001)
	id 746BB4D94B; Thu, 13 Apr 2023 15:55:00 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on l1.fu-lab.com
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	HTML_MESSAGE,MISSING_MID autolearn=no autolearn_force=no version=3.4.6
Received: from I0.futurelabusa.com (unknown [192.168.1.101])
	by mail.futurelabusa.com (Postfix) with ESMTPA id AA1034D905;
	Thu, 13 Apr 2023 15:54:59 -0600 (MDT)
X-Mailer: QUALCOMM Windows Eudora Version 7.1.0.9
Date: Thu, 13 Apr 2023 15:54:58 -0600
To: Rob Kossler <rkossler@nd.edu>
From: Jim Schatzman <james.schatzman@futurelabusa.com>
In-Reply-To: <CAB__hTR+N0tZ=B8s9urCWK9U2uGT96g=x8w7rS5WkHQLW_H_gw@mail.g
 mail.com>
References: <20230408021338.994254D94B@mail.futurelabusa.com>
 <d5460510-c3e2-9f3f-31ea-2bf55fedcf7e@gmail.com>
 <20230411011218.5513E4D94B@mail.futurelabusa.com>
 <ec810fb7-3220-4fbb-3ce5-31385a878931@gmail.com>
 <20230413210221.4BED44D905@mail.futurelabusa.com>
 <CAB__hTR+N0tZ=B8s9urCWK9U2uGT96g=x8w7rS5WkHQLW_H_gw@mail.gmail.com>
Mime-Version: 1.0
Message-Id: <20230413215500.746BB4D94B@mail.futurelabusa.com>
Message-ID-Hash: 7OZG3K4QYX6CI3LAVXQEMYQLBQ5ADFX4
X-Message-ID-Hash: 7OZG3K4QYX6CI3LAVXQEMYQLBQ5ADFX4
X-MailFrom: james.schatzman@futurelabusa.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Halting issue with USRP socket connection  - how to set SO_PRIORITY?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7OZG3K4QYX6CI3LAVXQEMYQLBQ5ADFX4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4135639082116650868=="

--===============4135639082116650868==
Content-Type: multipart/alternative;
	boundary="=====================_1019851875==.ALT"

--=====================_1019851875==.ALT
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks for the suggestions. We are transmitting from a file. It is on a fast=
 SSD and retrieval rate is not an issue (it easily supports > 15 Gbps=
 sustained average read rates). The data is dynamic and repeating is not an=
 option.=20

We also produced a threaded version of tx_samples_from_file to see if that=
 would help. It did not fix the problem, although it did seem to help. We=
 have confirmed that the new code version is NEVER in a state of not having=
 data to send across on the socket, although there are periods=
 (microseconds? nanoseconds?) between consecutive USRP send calls - which=
 cannot be avoided, as far as I can see.

We have used RFNoC tools and generally have had fewer performance issues=
 with them as compared to the stock UHD/USRP tools. However, there isn't one=
 that supports continuous data streaming forever without repeats from a=
 file.

Your suggestion of modifying the FPGA  to add buffering makes sense to me=
 and we do have some FPGA talent, although that is not my skill. I will look=
 into  it..

Thanks!
Jim



At 03:37 PM 4/13/2023, Rob Kossler via USRP-users wrote:
>Hi Jim,
> From a quick review of this chain, it appears your concern is for the=
 transmit direction (hence, Underruns). Although I have never tried to run=
 for extended periods such as you are requiring, I am reasonably confident=
 that the issue is on the host side and not the Radio side.=C2  Some=
 remarks:=20
>    * Perhaps you would get more reliable streaming using DPDK. When I last=
 tried this a couple of years ago, the performance was great=C2 (at much=
 higher rates than you, but for shorter periods of time). But, the side=
 effects were substantial (PC mis-behaving to the point of becoming=
 unusable) and so I abandoned it. The new DPDK is more mature (as is the OS)=
 from when I tried it so it may be much better now with regard to side=
 effects.=20
>    * You could add buffering on the N310 (by building a custom FPGA image)=
 that could robustly handle short host "hiccups" in streaming.=C2 =
 Originally, the DMA-FIFO RFNoC block was put in the Tx path of devices such=
 as the X310 for this express purpose. But, the DMA-FIFO block cannot handle=
 4 streams at full rate on an N310 so it is not part of the stock FPGA. The=
 external RAM is used instead for the "Replay" block.=C2  But at your data=
 rates, the external RAM can handle four streams so you could build an FPGA=
 image that replaced the Replay block with the DMA-FIFO such that you would=
 have very large buffers on the FPGA to handle host streaming hiccups.=C2 =
 Note that you could also build a new image with larger FPGA fabric buffers,=
 but they wouldn't approach the size of the external RAM.=C2  If building=
 your own FPGA image seems daunting (for some this is a show stopper), I=
 just want to mention that what I am suggesting would not require FPGA=
 design talent - the necessary blocks already exist=C2  - it would just=
 require purchasing Xilinx Vivado and getting past the initial learning=
 curve of building an image.=20
>    * How are you generating your Tx samples?=C2  Custom app?=C2  Reading=
 from a very large data file?=C2  I ask this because I have had the most=
 streaming success when transmitting from a file (or receive to a file) if=
 the file is in a "RAM disk".=C2  We generally order Linux PCs with as much=
 RAM as we can afford in order to configure such RAM as a RAM disk for the=
 purpose of fast streaming to/from files.=20
>    * Finally, if your data is not dynamic (a repeated fixed length=
 sequence such as in a repeated radar transmission), I would highly=
 recommend using the Replay block to send the data rather than streaming=
 from the host. You will likely never see an underrun in this case.=C2  But,=
 I realize that if the data is dynamic, this is not possible.=20
>Rob
>
>
>On Thu, Apr 13, 2023 at 5:03=E2=80=AFPM Jim Schatzman=
 <<mailto:james.schatzman@futurelabusa.com>james.schatzman@futurelabusa.com>=
 wrote:
>Even with all the recommended settings, and a very fast computer that is=
 doing nothing except sending the data, it is maybe 50/50 that a 2 hour=
 simulation can be conducted without an underrun. The longest run I have=
 been able to do without an underrun is about 2.5 hours.
>
>The sample rate is 12.5 Msamp/sec at 16 bit I + 16 bit Q or 400 Mbit/sec.
>
>For our application, that is unacceptable. I need to be able to run for=
 days without data loss.
>
>It is a mystery to me why a 10 Gbit connection cannot support 400 Mbit/sec=
 UDP reliably.
>
>Any ideas about how we can completely eliminate underruns?
>
>At the moment, I am uncertain whether the problem is occurring on the host=
 or on the radio. I suspect the radio, but I will do some testing of the=
 host to see what UDP data rate it can support without loss.
>
>Thanks!
>
>
>
>
>
>At 10:53 PM 4/10/2023, Marcus D. Leech wrote:
>>On 10/04/2023 21:12, Jim Schatzman wrote:
>>>The following steps had no impact:
>>>
>>>a) Don't use a switch but do a point-to-point connection between the=
 comptuer's NIC and the N310.
>>>b) Adjust network buffers and ring buffer per recommendations (actually,=
 the network buffers setting was always being done).
>>>
>>>Increasing the MTU to 9000 had a significant impact. An occasionaly=
 underrun is still experienced, but an hour or two of continuous=
 transmission is possible.
>>>
>>>I am wondering if this is not an issue on the computer side but on the=
 radio side. Is the N310 incapable of supporting 1x 10 Gbps streams with a=
 MTU of 1500?=C2  Perhaps.
>>>
>>>I will do some computer-to-computer testing to see if the problem can be=
 reproduced there.
>>>
>>>Jim
>>Even non-SDR applications tend to use jumbo-frames for continuous traffic=
 at 10Gbit.=C3=82=C2  I'm sorry that I didn't clue in to that
>>=C3=82=C2  in the first round.
>>
>>
>>>
>>>
>>>
>>>
>>>At 08:39 PM 4/7/2023, Marcus D. Leech wrote:
>>>>On 07/04/2023 22:13, Jim Schatzman wrote:
>>>>>We have been unable to estable 100% reliable connections to an N310=
 USRP radio through its 10 Gbit ethernet from Linux. What happens is that it=
 works fine for a period of time - 30 to 60 minutes, typically. Then we see=
 a couple of U's in the output. Unfortunately, that is fatal for our=
 application.
>>>>>
>>>>>Using the unmodified tx_samples_from_file or one modified to use=
 separate threads to read data from the file and to sent it over the socket=
 to the radio, the symptoms are the same.
>>>>>
>>>>>All the evidence is that the application is sending data continuously=
 without any delays. Also, the "network" has no devices on it except for the=
 host computer, a high performance 10G switch, and the N310 radio.
>>>>>
>>>>>We are wondering if this could be a Linux "feature". We would like to=
 try increasing the socket priority with SO_PRIORITY. However, we are not=
 finding any hooks in the UHD software for this.
>>>>>
>>>>>Suggestions?
>>>>>
>>>>>Thanks!
>>>>>Jim
>>>>>_______________________________________________
>>>>Have you increased the ring buffers on your card?
>>>>
>>>><https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#Incre=
asing_Ring_Buffers>https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_an=
d_Tricks#Increasing_Ring_Buffers
>>>>
>>>>Also, adjust the network buffers:
>>>>
>>>><https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#Adjus=
t_Network_Buffers>https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and=
_Tricks#Adjust_Network_Buffers
>>>>
>>>>Have you tried a direct connection--without the switch?=C3=83=82 =C3=83=
=82 =C3=83=82=C2  Just to eliminate it.=C3=83it.=C3=83=82=C2  Before you say=
 "oh, it's not the switch",
>>>>=C3=83=82=C2  many "high performance" 10G swiitches have a=
 less-than-ideal switching fabric.
>>>>
>>>>_______________________________________________ USRP-users mailing list=
 -- <mailto:usrp-users@lists.ettus.com>usrp-users@lists.ettus.com To=
 unsubscribe send an email to=
 <mailto:usrp-users-leave@lists.ettus.com>usrp-users-leave@lists.ettus.com=
 </x-flowed>
>>>_______________________________________________
>>>USRP-users mailing list --=
 <mailto:usrp-users@lists.ettus.com>usrp-users@lists.ettus.com
>>>To unsubscribe send an email to=
 <mailto:usrp-users-leave@lists.ettus.com>usrp-users-leave@lists.ettus.com
>>_______________________________________________ USRP-users mailing list --=
 <mailto:usrp-users@lists.ettus.com>usrp-users@lists.ettus.com To=
 unsubscribe send an email to=
 <mailto:usrp-users-leave@lists.ettus.com>usrp-users-leave@lists.ettus.com=
 </x-flowed>
>_______________________________________________
>USRP-users mailing list --=
 <mailto:usrp-users@lists.ettus.com>usrp-users@lists.ettus.com
>To unsubscribe send an email to=
 <mailto:usrp-users-leave@lists.ettus.com>usrp-users-leave@lists.ettus.com
>
>_______________________________________________
>USRP-users mailing list -- usrp-users@lists.ettus.com
>To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--=====================_1019851875==.ALT
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<body>
Thanks for the suggestions. We are transmitting from a file. It is on a
fast SSD and retrieval rate is not an issue (it easily supports &gt; 15
Gbps sustained average read rates). The data is dynamic and repeating is
not an option. <br><br>
We also produced a threaded version of tx_samples_from_file to see if
that would help. It did not fix the problem, although it did seem to
help. We have confirmed that the new code version is NEVER in a state of
not having data to send across on the socket, although there are periods
(microseconds? nanoseconds?) between consecutive USRP send calls - which
cannot be avoided, as far as I can see.<br><br>
We have used RFNoC tools and generally have had fewer performance issues
with them as compared to the stock UHD/USRP tools. However, there isn't
one that supports continuous data streaming forever without repeats from
a file.<br><br>
Your suggestion of modifying the FPGA&nbsp; to add buffering makes sense
to me and we do have some FPGA talent, although that is not my skill. I
will look into&nbsp; it..<br><br>
Thanks!<br>
Jim<br><br>
<br><br>
At 03:37 PM 4/13/2023, Rob Kossler via USRP-users wrote:<br>
<blockquote type=3Dcite class=3Dcite cite=3D"">Hi Jim,<br>
 From a quick review of this chain, it appears your concern is for the
transmit direction (hence, Underruns). Although I have never tried to run
for extended periods such as you are requiring, I am reasonably confident
that the issue is on the host side and not the Radio side.=C2&nbsp; Some
remarks:
<ul>
<li>Perhaps you would get more reliable streaming using DPDK. When I last
tried this a couple of years ago, the performance was great=C2 (at much
higher rates than you, but for shorter periods of time). But, the side
effects were substantial (PC mis-behaving to the point of becoming
unusable) and so I abandoned it. The new DPDK is more mature (as is the
OS) from when I tried it so it may be much better now with regard to side
effects.
<li>You could add buffering on the N310 (by building a custom FPGA image)
that could robustly handle short host &quot;hiccups&quot; in
streaming.=C2&nbsp; Originally, the DMA-FIFO RFNoC block was put in the Tx
path of devices such as the X310 for this express purpose. But, the
DMA-FIFO block cannot handle 4 streams at full rate on an N310 so it is
not part of the stock FPGA. The external RAM is used instead for the
&quot;Replay&quot; block.=C2&nbsp; But at your data rates, the external RAM
can handle four streams so you could build an FPGA image that replaced
the Replay block with the DMA-FIFO such that you would have very large
buffers on the FPGA to handle host streaming hiccups.=C2&nbsp; Note that
you could also build a new image with larger FPGA fabric buffers, but
they wouldn't approach the size of the external RAM.=C2&nbsp; If building
your own FPGA image seems daunting (for some this is a show stopper), I
just want to mention that what I am suggesting would not require FPGA
design talent - the necessary blocks already exist=C2&nbsp; - it would just
require purchasing Xilinx Vivado and getting past the initial learning
curve of building an image.
<li>How are you generating your Tx samples?=C2&nbsp; Custom app?=C2&nbsp;
Reading from a very large data file?=C2&nbsp; I ask this because I have had
the most streaming success when transmitting from a file (or receive to a
file) if the file is in a &quot;RAM disk&quot;.=C2&nbsp; We generally order
Linux PCs with as much RAM as we can afford in order to configure such
RAM as a RAM disk for the purpose of fast streaming to/from files.
<li>Finally, if your data is not dynamic (a repeated fixed length
sequence such as in a repeated radar transmission), I would highly
recommend using the Replay block to send the data rather than streaming
from the host. You will likely never see an underrun in this case.=C2&nbsp;
But, I realize that if the data is dynamic, this is not possible.
</ul>Rob<br><br>
<br>
On Thu, Apr 13, 2023 at 5:03=E2=80=AFPM Jim Schatzman
&lt;<a href=3D"mailto:james.schatzman@futurelabusa.com">
james.schatzman@futurelabusa.com</a>&gt; wrote:<br>

<dl>
<dd>Even with all the recommended settings, and a very fast computer that
is doing nothing except sending the data, it is maybe 50/50 that a 2 hour
simulation can be conducted without an underrun. The longest run I have
been able to do without an underrun is about 2.5 hours.<br><br>

<dd>The sample rate is 12.5 Msamp/sec at 16 bit I + 16 bit Q or 400
Mbit/sec.<br><br>

<dd>For our application, that is unacceptable. I need to be able to run
for days without data loss.<br><br>

<dd>It is a mystery to me why a 10 Gbit connection cannot support 400
Mbit/sec UDP reliably.<br><br>

<dd>Any ideas about how we can completely eliminate underruns?<br><br>

<dd>At the moment, I am uncertain whether the problem is occurring on the
host or on the radio. I suspect the radio, but I will do some testing of
the host to see what UDP data rate it can support without loss.<br><br>

<dd>Thanks!<br><br>
<br><br>
<br><br>

<dd>At 10:53 PM 4/10/2023, Marcus D. Leech wrote:<br>

<dd>&gt;On 10/04/2023 21:12, Jim Schatzman wrote:<br>

<dd>&gt;&gt;The following steps had no impact:<br>

<dd>&gt;&gt;<br>

<dd>&gt;&gt;a) Don't use a switch but do a point-to-point connection
between the comptuer's NIC and the N310.<br>

<dd>&gt;&gt;b) Adjust network buffers and ring buffer per recommendations
(actually, the network buffers setting was always being done).<br>

<dd>&gt;&gt;<br>

<dd>&gt;&gt;Increasing the MTU to 9000 had a significant impact. An
occasionaly underrun is still experienced, but an hour or two of
continuous transmission is possible.<br>

<dd>&gt;&gt;<br>

<dd>&gt;&gt;I am wondering if this is not an issue on the computer side
but on the radio side. Is the N310 incapable of supporting 1x 10 Gbps
streams with a MTU of 1500?=C2&nbsp; Perhaps.<br>

<dd>&gt;&gt;<br>

<dd>&gt;&gt;I will do some computer-to-computer testing to see if the
problem can be reproduced there.<br>

<dd>&gt;&gt;<br>

<dd>&gt;&gt;Jim<br>

<dd>&gt;Even non-SDR applications tend to use jumbo-frames for continuous
traffic at 10Gbit.=C3=82=C2&nbsp; I'm sorry that I didn't clue in to=
 that<br>

<dd>&gt;=C3=82=C2&nbsp; in the first round.<br>

<dd>&gt;<br>

<dd>&gt;<br>

<dd>&gt;&gt;<br>

<dd>&gt;&gt;<br>

<dd>&gt;&gt;<br>

<dd>&gt;&gt;<br>

<dd>&gt;&gt;At 08:39 PM 4/7/2023, Marcus D. Leech wrote:<br>

<dd>&gt;&gt;&gt;On 07/04/2023 22:13, Jim Schatzman wrote:<br>

<dd>&gt;&gt;&gt;&gt;We have been unable to estable 100% reliable
connections to an N310 USRP radio through its 10 Gbit ethernet from
Linux. What happens is that it works fine for a period of time - 30 to 60
minutes, typically. Then we see a couple of U's in the output.
Unfortunately, that is fatal for our application.<br>

<dd>&gt;&gt;&gt;&gt;<br>

<dd>&gt;&gt;&gt;&gt;Using the unmodified tx_samples_from_file or one
modified to use separate threads to read data from the file and to sent
it over the socket to the radio, the symptoms are the same.<br>

<dd>&gt;&gt;&gt;&gt;<br>

<dd>&gt;&gt;&gt;&gt;All the evidence is that the application is sending
data continuously without any delays. Also, the &quot;network&quot; has
no devices on it except for the host computer, a high performance 10G
switch, and the N310 radio.<br>

<dd>&gt;&gt;&gt;&gt;<br>

<dd>&gt;&gt;&gt;&gt;We are wondering if this could be a Linux
&quot;feature&quot;. We would like to try increasing the socket priority
with SO_PRIORITY. However, we are not finding any hooks in the UHD
software for this.<br>

<dd>&gt;&gt;&gt;&gt;<br>

<dd>&gt;&gt;&gt;&gt;Suggestions?<br>

<dd>&gt;&gt;&gt;&gt;<br>

<dd>&gt;&gt;&gt;&gt;Thanks!<br>

<dd>&gt;&gt;&gt;&gt;Jim<br>

<dd>&gt;&gt;&gt;&gt;_______________________________________________<br>

<dd>&gt;&gt;&gt;Have you increased the ring buffers on your card?<br>

<dd>&gt;&gt;&gt;<br>

<dd>
&gt;&gt;&gt;<a href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tip=
s_and_Tricks#Increasing_Ring_Buffers">
https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#Increasing=
_Ring_Buffers</a>
<br>

<dd>&gt;&gt;&gt;<br>

<dd>&gt;&gt;&gt;Also, adjust the network buffers:<br>

<dd>&gt;&gt;&gt;<br>

<dd>
&gt;&gt;&gt;<a href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tip=
s_and_Tricks#Adjust_Network_Buffers">
https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#Adjust_Net=
work_Buffers</a>
<br>

<dd>&gt;&gt;&gt;<br>

<dd>&gt;&gt;&gt;Have you tried a direct connection--without the
switch?=C3=83=82 =C3=83=82 =C3=83=82=C2&nbsp; Just to eliminate=
 it.=C3=83it.=C3=83=82=C2&nbsp; Before you
say &quot;oh, it's not the switch&quot;,<br>

<dd>&gt;&gt;&gt;=C3=83=82=C2&nbsp; many &quot;high performance&quot; 10G
swiitches have a less-than-ideal switching fabric.<br>

<dd>&gt;&gt;&gt;<br>

<dd>&gt;&gt;&gt;_______________________________________________
USRP-users mailing list --
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
 To unsubscribe send an email to
<a href=3D"mailto:usrp-users-leave@lists.ettus.com">
usrp-users-leave@lists.ettus.com</a> &lt;/x-flowed&gt;<br>

<dd>&gt;&gt;_______________________________________________<br>

<dd>&gt;&gt;USRP-users mailing list --
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
<br>

<dd>&gt;&gt;To unsubscribe send an email to
<a href=3D"mailto:usrp-users-leave@lists.ettus.com">
usrp-users-leave@lists.ettus.com</a><br>

<dd>&gt;_______________________________________________ USRP-users
mailing list --
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
 To unsubscribe send an email to
<a href=3D"mailto:usrp-users-leave@lists.ettus.com">
usrp-users-leave@lists.ettus.com</a> &lt;/x-flowed&gt;<br>

<dd>_______________________________________________<br>

<dd>USRP-users mailing list --
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
<br>

<dd>To unsubscribe send an email to
<a href=3D"mailto:usrp-users-leave@lists.ettus.com">
usrp-users-leave@lists.ettus.com</a><br><br>

</dl>_______________________________________________<br>
USRP-users mailing list -- usrp-users@lists.ettus.com<br>
To unsubscribe send an email to
usrp-users-leave@lists.ettus.com</blockquote></body>
</html>

--=====================_1019851875==.ALT--

--===============4135639082116650868==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4135639082116650868==--
