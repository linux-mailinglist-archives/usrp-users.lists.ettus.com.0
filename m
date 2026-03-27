Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNPHIaR4xmnwKgUAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 27 Mar 2026 13:31:32 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDF1344385
	for <lists+usrp-users@lfdr.de>; Fri, 27 Mar 2026 13:31:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3DCDE3867BC
	for <lists+usrp-users@lfdr.de>; Fri, 27 Mar 2026 08:31:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1774614690; bh=YI9iiNsV4Vl8UwziSXE+sq7GiPQDb2+a2lcVbhfQ5cU=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=AFBgbMQLeLXocj9KyC9/xa1J2fwim0JKZmJZh3twPaEuSuOoPDr1DFxcVHDkIqdry
	 EgT/QrWUzvhFjDdBWo2DKzsyq9/ePZVeZgOW3YOeHDjuKa4QxKRUP9pL9hCUa7jx8X
	 Mmb3nKDli5X9mWVY7j6XAMpfopLVAsQPFLr3EQcpH++SAEjp+8G2NGvw62zsQUjhdd
	 dVktcq0hOOxZhElcLlKm6kiNQJS3CdMcP0B41E8LqSDKq+HhjVcsur5YgoIP+L8uOx
	 G3t5r4QIYd4xy+dhi/p0CUNqv9aZCUD7Qew5Kugl5p2FiDxeLqmaiqDKz50jgN3dAj
	 WXoorL6WtxVmA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5525F38661C
	for <usrp-users@lists.ettus.com>; Fri, 27 Mar 2026 08:30:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1774614649; bh=voDUIukqezsl11z+SamCieTUY7jmXdo3Qi/2o8FlOFU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=QnIaLGt11VnSNGwHy/LkNzsgHqpSna/BbMPlDHQzn0Ahte1ATwfKo/Fg5ar0EKQ+n
	 bNzvo9Is9tZ7v7Zd3jbKIf/waaGp8PGwJVZzrMxRDoh5rOWhscLLzCmHdcwG/WtcNa
	 TWZSwpUAWnBiFunFViRxg4XFR4h5yE3ftOkj0gTRzEXQcGWkJNZm1AEdYwl+fDVi76
	 CutxF6VTjHhGcrK2bSk+sZYRgaOxwDetkp8s2yd4Ze0HU1IlmGlvfVVL8S63+wPO0R
	 q94D93ZU5ms4SssV8u9We1F/DxWDf0y/QHNlirPdnm5BhCmOf48p3NujP8y8iMhHCN
	 OpfXzo5ZPtlLg==
Date: Fri, 27 Mar 2026 12:30:49 +0000
To: usrp-users@lists.ettus.com
Message-ID: <L1S2fdxYLRks4vqNMkNlaav8DDV59DD6TzPnhYJM8ao@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A4hpBPBZszUf+-AG+o=_H8nrqSQCE4-GGy9fWPJeG+y8Q@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: QLVMXIWDPKVMZ3T4J7XTCJKM7UJNW52Y
X-Message-ID-Hash: QLVMXIWDPKVMZ3T4J7XTCJKM7UJNW52Y
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Precise Transmit Control
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QLVMXIWDPKVMZ3T4J7XTCJKM7UJNW52Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============8481768741659102632=="
X-Spamd-Result: default: False [-0.51 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_PHPMAILER_SIG(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	DKIM_MIXED(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	TO_EQ_FROM(0.00)[];
	R_DKIM_REJECT(0.00)[emwd.com:s=harmony];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,emwd.com:-];
	HAS_REPLYTO(0.00)[niels.steffen.garibaldi@emerson.com];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,urldefense.us:url,mm2.emwd.com:helo,mm2.emwd.com:rdns,uhd.readthedocs.io:url]
X-Rspamd-Queue-Id: 8DDF1344385
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is a multi-part message in MIME format.

--===============8481768741659102632==
Content-Type: multipart/alternative;
 boundary="b1_L1S2fdxYLRks4vqNMkNlaav8DDV59DD6TzPnhYJM8ao"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_L1S2fdxYLRks4vqNMkNlaav8DDV59DD6TzPnhYJM8ao
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hey Michael,\
\
Just to give some context:\
\
**Regarding EoB and EoV**:\
[In RFNoC, a burst denotes a  series of contiguous samples.](https://uhd.=
readthedocs.io/en/latest/page_rfnoc_fpga.html#autotoc_md212)\
In practice, and specifically in the context of samples and the radio blo=
ck, this means that if you are sending data packets to the radio, the rad=
io expects you to provide it with enough data such that for each clock cy=
cle of the radio clock, the radio has a new sample that it can transmit.\
If you do not tell the radio block that you want to stop transmitting dat=
a, and just stop providing new samples, the the radio will run out of sam=
ples and generate an Underflow warning, that it sends to the host(usually=
 a =E2=80=9CU=E2=80=9D in the terminal output).

The radio block internally has some space to buffer samples ahead of time=
 and also support flow control/backpressure via the AXI-Stream Handshakin=
g interface(tvalid/tready) so usually you can just send data as fast as y=
ou can, and let the back-pressure mechanism worry about ensuring that the=
 radio always has data to send.=20

In this context, the EoB flag is meant as a signal to the Radio block tha=
t you will not be providing further samples and that the radio block shou=
ld therefore not expect additional samples coming in after the current pa=
cket with the EoB flag.

This means that implicitly, every time the you are sending data to the ra=
dio, the radio assumes that this is the start of a new burst, and the rad=
io will therefore assume that more data is coming unless you set the EoB =
flag in the packet that contains the end of the samples you want to trans=
mit. \
When streaming from the host, the UHD driver will take care of this for y=
ou and automatically set the EoB flag, unless you manually override this.

The EoV flag on the other hand, as others have already mentioned, is mean=
t to logically distinguish different units of your contiguous stream of s=
amples. How each Block interprets the EoV is implementation dependent and=
 actually most blocks do not even check it.\
It is mostly meant as a tool for users to compartmentalize samples in ord=
er to do some sort of batch processing in a custom block on the FPGA.\
Some examples here are 5G radio frames, that are comprised of contiguous =
samples that cover the full frame, but depending on your configuration, t=
he frame can be subdivided into different slots, that a custom block migh=
t want to process individually. If one of these slots is too big to encap=
sulate into a single packet, it can make sense to use the EoV flag to ind=
icate slot boundaries.\
Another example could be the FFT-size, as was already mentioned in this t=
hread.\
\
**Regarding Timestamps**:\
I am making the assumption that you are only talking about timestamps as =
they relate to IQ data, and are not talking about timed (control) command=
s here.

RFNoC provides the option to do timed and untimed data streaming. Again, =
technically how a block processes the timestamps depends on the type of b=
lock. I will only talk about how the radio block interprets the timestamp=
 as the radio block is an integral part of almost every design.

When you are requesting samples from the radio block starting at a specif=
ic point in time,  this is what we usually call timed RX streaming. The r=
adio block will start sending packets as soon as the time start time that=
 was specified arrives and will start sending out a new burst of samples =
until either the specified number of samples have been sent, or the radio=
 receives a stop command to stop sending RX samples(EoB is set for the la=
st packet).\
\
Timed streaming means that the [RFNoC CHDR packet type](https://uhd.readt=
hedocs.io/en/latest/page_rfnoc_fpga.html#autotoc_md210) used to transmit =
these samples has additional timestamp information included in the header=
(CHDR packet type 0x7 =3D> =E2=80=9Cdata with timestamp=E2=80=9D)

For the first packet of the timed streaming burst the timestamp is mandat=
ory, and the timestamp always refers to the first sample contained in the=
 payload of a CHDR data packet.

E.g. if your packet has a timestamp of 0x1000, that means that the radio =
received sample_0 at time 0x1000, sample_1 at 0x1001, sample_2 at 0x1002,=
 etc. for all samples of the CHDR packet.\*

Since we already know that a burst always contains contiguous samples wit=
hout any gaps as it relates to the radio sampling clock\*, subsequent pac=
kets of the same burst technically do not need to include a timestamp, as=
 we have all information available to calculate the time for each sample =
just with the timestamp of the first packet and the number of samples tha=
t have been received already, but for convenience subsequent packets can =
still include timestamps, as long as they match the correct time at which=
 the first sample of each packet is received/transmitted by the radio.\
\
If you are incorrectly setting the timestamp manually in your custom bloc=
k and then are forwarding the packets to the radio, if there are any gaps=
 between the calculated timestamp of the last sample of the previous pack=
et and the timestamp corresponding to the first sample of the current pac=
ket, the radio will notice the missmatch and in the case that this leads =
to timestamps where the radio does not have any valid samples to send wil=
l generate an Underflow (=E2=80=9CU=E2=80=9D).

\
This is probably what you were seeing in your implementation, if your are=
 pausing between sending packets to the Radio as you stated in your initi=
al question.\
As stated above, you do not have to worry that you will fill up the buffe=
rs as there should be backpressure mechanisms in place that will prevent =
overflowing the radio transmit buffers.\
Of course it is your own responsibility to ensure that your custom IP als=
o correctly adheres to the AXI-Stream handshaking rules internally.

If you want to get access to the internal device time there are multiple =
ways this can be done, but I will only mention the two most common ones h=
ere:

* From Host: There are API functions to get the current device time from =
the USRP device timerkeeper. Usually the main device timer is accessible =
via the Motherboard interface, and there are functions like [get_tick_rat=
e()](https://uhd.readthedocs.io/en/latest/classuhd_1_1rfnoc_1_1mb__contro=
ller_1_1timekeeper.html#ac578c97f308f7ab99ece620cae6c3368) to get the cur=
rent device tick rate, as well as [get_ticks_now()](https://uhd.readthedo=
cs.io/en/latest/classuhd_1_1rfnoc_1_1mb__controller_1_1timekeeper.html#a1=
7738f2ce94478654151c265df75cff1) and [get_ticks_last_pps()](https://uhd.r=
eadthedocs.io/en/latest/classuhd_1_1rfnoc_1_1mb__controller_1_1timekeeper=
.html#aff03009ee9343e9e36669072a68eb769). \
  You could use the host TX/RX streamers to do timed streaming from the h=
ost via your custom block and just route the packets through your process=
ing block and do not touch the timestamps at all. If you send th edata do=
wn far enough ahead of time for your processing to be finished by the tim=
e the packets reach the radio block, you probably will not have to touch =
the timestamps at all in your custom block on the FPGA.\
  If you do want to manually set the timestamps, you could query the time=
 from the host, calculate a relative time in advance for your processing =
and then send this time down to your custom block via the register interf=
ace and use this timestamp to set the correct header fields in the packet=
 your custom block is processing. [Have a look at the different Data inte=
rface types you can configure for your custom blocks CHDR data interface =
here.](https://uhd.readthedocs.io/en/latest/page_rfnoc_fpga.html#autotoc_=
md236)

* From the FPGA: You can configure your custom block to have direct acces=
s to the Motherboard timekeeper by adding the timekeeper port to your blo=
ck description when you generate your block template. [See the radio bloc=
k block description for an example.](https://github.com/EttusResearch/uhd=
/blob/master/host/include/uhd/rfnoc/blocks/radio.yml#L77C3-L82C54) If thi=
s port is available for your custom block, you can connect it to the glob=
al timekeeper by adding the connection in your rfnoc_image_core.yml file =
when you instantiate your block, again [see the radio block as an example=
](https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/ya=
ml_include/x410_radio_base.yml#L49) of how to add this in your connection=
s section.

\
Sorry for the wall of text, I just had the impression that some more back=
ground might be helpful to better understand how to integrate your own bl=
ock into the existing RFNoC infrastructure.\
\
Hope this helps put everything into the proper context.\
\
Regards, \
Niels

\
\
\* Unless of course the samples were previously decimated and therefore d=
o not have the same sampling rate as the radio.

---

Martin Braun wrote:

> Even if the processing does not touch the host, then unless you're doin=
g
> something crazy, you are still running UHD to set up the session, confi=
gure
> the radio, etc. That's where you can get your timestamp from. Typically=
,
> you would know when to send based on what your algorithm is.
>
> \--M
>
> On Thu, Mar 26, 2026 at 6:55=E2=80=AFPM Barnard, Michael T <
> Michael.Barnard@udri.udayton.edu> wrote:
>
> > Thanks for the insight; I've got a better handle on things now. I'm s=
till
> > not sure where to get the timestamp value from. The processing doesn'=
t
> > touch the host PC at all everything is contained in the FPGA. Is the
> > timestamp distributed to the cores or do I need to request the value =
from
> > somewhere else in the FPGA?
> >
> > *Michael Barnard*
> >
> > TL Computer Engineer, Scalable Computing Group
> >
> > Applied Sensing Division
> >
> > 300 College Park, Dayton, OH 45469-0031
> >
> > O:(937) 713-4271 | C:(440) 622-6486 | udri.udayton.edu
> >
> > \[image: 1621527942842\]
> >
> > ## UDRI Proprietary - Unprotected
> >
> > *From:* Martin Braun [martin.braun@ettus.com](mailto:martin.braun@ett=
us.com)
> > *Sent:* Thursday, March 26, 2026 9:30 AM
> > *Cc:* usrp-users@lists.ettus.com [usrp-users@lists.ettus.com](mailto:=
usrp-users@lists.ettus.com)
> > *Subject:* \[USRP-users\] Re: X310 Precise Transmit Control
> >
> > CAUTION: This email originated from outside of the organization. Do n=
ot
> > click links or open attachments unless you recognize the sender and k=
now
> > the content is safe.
> >
> > Some additional comments:
> >
> > * You can probably ignore EOV
> > * If you do use EOV, note that it is treated differently than EOB in =
some
> >   places. For example, the recv() call (in software) will terminate
> >   immediately when it sees an EOB, but you can have multiple EOVs in =
a single
> >   burst (so from that recv() call, you can never have more than one E=
OB, but
> >   any number of EOVs).
> > * If you come from a strict FPGA background, it's important to get be=
hind
> >   the "network on chip" part of RFNoC. Your clocks don't really matte=
r here.
> >   What matters is, when the radio gets a CHDR packet, it will read th=
e
> >   timestamp and compare it against the corresponding timer. When a CH=
DR
> >   packet leaves one block, you shouldn't care (at design time) if the=
 next
> >   block is right next to it, or 100 km away over an Ethernet line. I'=
m
> >   exaggerating, but I hope this helps understand this concept.
> >
> > \--M
> >
> > On Wed, Mar 25, 2026 at 9:56=E2=80=AFPM Brian Padalino [bpadalino@gma=
il.com](mailto:bpadalino@gmail.com)
> > wrote:
> >
> > On Wed, Mar 25, 2026 at 4:41=E2=80=AFPM Barnard, Michael T <
> > Michael.Barnard@udri.udayton.edu> wrote:
> >
> > I am a FPGA developer working in Verilog with an X310 writing code in=
 a
> > custom RFNoC block. I recently got independent streaming control work=
ing to
> > output samples at my discretion to a streaming endpoint then through =
the
> > cross bar but I do have some questions on parts of the control behavi=
or.
> > It=E2=80=99s not clear to me what the difference between End of Burst=
 (EOB) and
> > End of Vector (EOV) is or when I need to use one or the other. My cur=
rent
> > design only uses EOB on the last data packet while EOV is always set =
to 0.
> > I=E2=80=99m getting underflow errors occasionally but I can=E2=80=99t=
 confidently say which
> > packets they=E2=80=99re associated with. I also need to send a second=
 packet with
> > EOB high to flush the first packet out of the buffer; my guess would =
be
> > that the first EOB would force a buffer flush. Is there any
> >
> > EOV was added for when your data might be too large for a single CHDR
> > packet. Think like a 16384 sample FFT frame - it can't fit inside a s=
ingle
> > CHDR packet, so EOV is used.
> >
> > I=E2=80=99m also wondering if there is a way to precisely schedule sa=
mples or
> > packets for transmit out of the radio. I=E2=80=99ve observed that bec=
ause the data
> > is processed at \~215 MHz in the RFNoC block and fed into the DAC at =
200 MHz
> > pauses have to be included between each packet to prevent overfilling=
 the
> > transmit buffer but this also means that a timing in the 215 MHz doma=
in may
> > not be reflected in the 200 MHz domain. Is there a way to tell the tr=
ansmit
> > logic/front end to start transmitting at a particular time either in =
the
> > CHDR header or using the timestamp? Or am I at the mercy of the front=
 end
> > components without any fine control of transmit timing?
> >
> > The CHDR with Timestamp is used there. When it's the first packet in =
a
> > burst, that time is compared against the timestamp of the radio. If i=
t's
> > late, then the radio sets an error condition that is sent back to the=
 host
> > and the radio block will consume the packets as fast as possible unti=
l it
> > sees the EOB. There are other modes of operation depending on how you=
 set
> > up your RFNoC graph as to what to do during these error conditions. C=
heck
> > the state machine here:
> >
> > https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc=
/blocks/rfnoc_block_radio/radio_tx_core.v#L299
> > \[github.com\]
> > <https://urldefense.us/v2/url?u=3Dhttps-3A__github.com_EttusResearch_=
uhd_blob_master_fpga_usrp3_lib_rfnoc_blocks_rfnoc-5Fblock-5Fradio_radio-5=
Ftx-5Fcore.v-23L299&d=3DDwMFaQ&c=3DpftDoUyzvDgNGToC1TC2fAYTjbKPSqv0CTWoNd=
ikfI0&r=3D_YNw12ReY4H38tz6L9d14UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-AT-259kfxeZs=
h&m=3DbVvtqauPQKkwOFyp6pIaqyonQasy1o456UpJAuwvY8AZOSrv24SufW7pJZTEFIdS&s=3D=
svYWjmrncxL4sI1kllS9riUDzvO1tNla7wsRZ66__Lc&e=3D>
> >
> > As for the processing clock versus radio clock, you should be adherin=
g to
> > the AXI streaming tready signal for back pressure. You can fill up th=
at
> > pipeline and things should be fine.
> >
> > Good luck.
> >
> > Brian
> >
> > ---
> >
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >
> > ---
> >
> > The information contained in this e-mail and any attachments from UDR=
I may
> > contain confidential and/or proprietary information, and is intended =
only
> > for the named recipient to whom it was originally addressed. If you a=
re not
> > the intended recipient, any disclosure, distribution, or copying of t=
his
> > e-mail or its attachments is strictly prohibited. If you have receive=
d this
> > e-mail in error, please notify the sender immediately by return e-mai=
l and
> > permanently delete the e-mail and any attachments.
> >
> > ---
> >
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--b1_L1S2fdxYLRks4vqNMkNlaav8DDV59DD6TzPnhYJM8ao
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hey Michael,<br><br>Just to give some context:<br><br><strong>Regarding =
EoB and EoV</strong>:<br><a href=3D"https://uhd.readthedocs.io/en/latest/pa=
ge_rfnoc_fpga.html#autotoc_md212" title=3D"">In RFNoC, a burst denotes a  s=
eries of contiguous samples.</a><br>In practice, and specifically in the co=
ntext of samples and the radio block, this means that if you are sending da=
ta packets to the radio, the radio expects you to provide it with enough da=
ta such that for each clock cycle of the radio clock, the radio has a new s=
ample that it can transmit.<br>If you do not tell the radio block that you =
want to stop transmitting data, and just stop providing new samples, the th=
e radio will run out of samples and generate an Underflow warning, that it =
sends to the host(usually a =E2=80=9CU=E2=80=9D in the terminal output).</p=
><p>The radio block internally has some space to buffer samples ahead of ti=
me and also support flow control/backpressure via the AXI-Stream Handshakin=
g interface(tvalid/tready) so usually you can just send data as fast as you=
 can, and let the back-pressure mechanism worry about ensuring that the rad=
io always has data to send. </p><p>In this context, the EoB flag is meant a=
s a signal to the Radio block that you will not be providing further sample=
s and that the radio block should therefore not expect additional samples c=
oming in after the current packet with the EoB flag.</p><p>This means that =
implicitly, every time the you are sending data to the radio, the radio ass=
umes that this is the start of a new burst, and the radio will therefore as=
sume that more data is coming unless you set the EoB flag in the packet tha=
t contains the end of the samples you want to transmit. <br>When streaming =
from the host, the UHD driver will take care of this for you and automatica=
lly set the EoB flag, unless you manually override this.</p><p>The EoV flag=
 on the other hand, as others have already mentioned, is meant to logically=
 distinguish different units of your contiguous stream of samples. How each=
 Block interprets the EoV is implementation dependent and actually most blo=
cks do not even check it.<br>It is mostly meant as a tool for users to comp=
artmentalize samples in order to do some sort of batch processing in a cust=
om block on the FPGA.<br>Some examples here are 5G radio frames, that are c=
omprised of contiguous samples that cover the full frame, but depending on =
your configuration, the frame can be subdivided into different slots, that =
a custom block might want to process individually. If one of these slots is=
 too big to encapsulate into a single packet, it can make sense to use the =
EoV flag to indicate slot boundaries.<br>Another example could be the FFT-s=
ize, as was already mentioned in this thread.<br><br><strong>Regarding Time=
stamps</strong>:<br>I am making the assumption that you are only talking ab=
out timestamps as they relate to IQ data, and are not talking about timed (=
control) commands here.</p><p>RFNoC provides the option to do timed and unt=
imed data streaming. Again, technically how a block processes the timestamp=
s depends on the type of block. I will only talk about how the radio block =
interprets the timestamp as the radio block is an integral part of almost e=
very design.</p><p>When you are requesting samples from the radio block sta=
rting at a specific point in time,  this is what we usually call timed RX s=
treaming. The radio block will start sending packets as soon as the time st=
art time that was specified arrives and will start sending out a new burst =
of samples until either the specified number of samples have been sent, or =
the radio receives a stop command to stop sending RX samples(EoB is set for=
 the last packet).<br><br>Timed streaming means that the <a href=3D"https:/=
/uhd.readthedocs.io/en/latest/page_rfnoc_fpga.html#autotoc_md210" title=3D"=
">RFNoC CHDR packet type</a> used to transmit these samples has additional =
timestamp information included in the header(CHDR packet type 0x7 =3D&gt; =
=E2=80=9Cdata with timestamp=E2=80=9D)</p><p>For the first packet of the ti=
med streaming burst the timestamp is mandatory, and the timestamp always re=
fers to the first sample contained in the payload of a CHDR data packet.</p=
><p>E.g. if your packet has a timestamp of 0x1000, that means that the radi=
o received sample_0 at time 0x1000, sample_1 at 0x1001, sample_2 at 0x1002,=
 etc. for all samples of the CHDR packet.*</p><p>Since we already know that=
 a burst always contains contiguous samples without any gaps as it relates =
to the radio sampling clock*, subsequent packets of the same burst technica=
lly do not need to include a timestamp, as we have all information availabl=
e to calculate the time for each sample just with the timestamp of the firs=
t packet and the number of samples that have been received already, but for=
 convenience subsequent packets can still include timestamps, as long as th=
ey match the correct time at which the first sample of each packet is recei=
ved/transmitted by the radio.<br><br>If you are incorrectly setting the tim=
estamp manually in your custom block and then are forwarding the packets to=
 the radio, if there are any gaps between the calculated timestamp of the l=
ast sample of the previous packet and the timestamp corresponding to the fi=
rst sample of the current packet, the radio will notice the missmatch and i=
n the case that this leads to timestamps where the radio does not have any =
valid samples to send will generate an Underflow (=E2=80=9CU=E2=80=9D).</p>=
<p><br>This is probably what you were seeing in your implementation, if you=
r are pausing between sending packets to the Radio as you stated in your in=
itial question.<br>As stated above, you do not have to worry that you will =
fill up the buffers as there should be backpressure mechanisms in place tha=
t will prevent overflowing the radio transmit buffers.<br>Of course it is y=
our own responsibility to ensure that your custom IP also correctly adheres=
 to the AXI-Stream handshaking rules internally.</p><p>If you want to get a=
ccess to the internal device time there are multiple ways this can be done,=
 but I will only mention the two most common ones here:</p><ul><li><p>From =
Host: There are API functions to get the current device time from the USRP =
device timerkeeper. Usually the main device timer is accessible via the Mot=
herboard interface, and there are functions like <a href=3D"https://uhd.rea=
dthedocs.io/en/latest/classuhd_1_1rfnoc_1_1mb__controller_1_1timekeeper.htm=
l#ac578c97f308f7ab99ece620cae6c3368" title=3D"">get_tick_rate()</a> to get =
the current device tick rate, as well as <a href=3D"https://uhd.readthedocs=
.io/en/latest/classuhd_1_1rfnoc_1_1mb__controller_1_1timekeeper.html#a17738=
f2ce94478654151c265df75cff1" title=3D"">get_ticks_now()</a> and <a href=3D"=
https://uhd.readthedocs.io/en/latest/classuhd_1_1rfnoc_1_1mb__controller_1_=
1timekeeper.html#aff03009ee9343e9e36669072a68eb769" title=3D"">get_ticks_la=
st_pps()</a>. <br>You could use the host TX/RX streamers to do timed stream=
ing from the host via your custom block and just route the packets through =
your processing block and do not touch the timestamps at all. If you send t=
h edata down far enough ahead of time for your processing to be finished by=
 the time the packets reach the radio block, you probably will not have to =
touch the timestamps at all in your custom block on the FPGA.<br>If you do =
want to manually set the timestamps, you could query the time from the host=
, calculate a relative time in advance for your processing and then send th=
is time down to your custom block via the register interface and use this t=
imestamp to set the correct header fields in the packet your custom block i=
s processing. <a href=3D"https://uhd.readthedocs.io/en/latest/page_rfnoc_fp=
ga.html#autotoc_md236" title=3D"">Have a look at the different Data interfa=
ce types you can configure for your custom blocks CHDR data interface here.=
</a></p></li><li><p>From the FPGA: You can configure your custom block to h=
ave direct access to the Motherboard timekeeper by adding the timekeeper po=
rt to your block description when you generate your block template. <a href=
=3D"https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/rfnoc=
/blocks/radio.yml#L77C3-L82C54" title=3D"">See the radio block block descri=
ption for an example.</a> If this port is available for your custom block, =
you can connect it to the global timekeeper by adding the connection in you=
r rfnoc_image_core.yml file when you instantiate your block, again <a href=
=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/ya=
ml_include/x410_radio_base.yml#L49" title=3D"">see the radio block as an ex=
ample</a> of how to add this in your connections section.</p></li></ul><p><=
br></p><p><br>Sorry for the wall of text, I just had the impression that so=
me more background might be helpful to better understand how to integrate y=
our own block into the existing RFNoC infrastructure.<br><br>Hope this help=
s put everything into the proper context.<br><br>Regards, <br>Niels</p><p><=
br><br>* Unless of course the samples were previously decimated and therefo=
re do not have the same sampling rate as the radio.</p><div contenteditable=
=3D"false" class=3D""><hr></div><p>Martin Braun wrote:</p><blockquote><p>Ev=
en if the processing does not touch the host, then unless you're doing
something crazy, you are still running UHD to set up the session, configure
the radio, etc. That's where you can get your timestamp from. Typically,
you would know when to send based on what your algorithm is.</p><p>--M</p><=
p>On Thu, Mar 26, 2026 at 6:55=E2=80=AFPM Barnard, Michael T &lt;
Michael.Barnard@udri.udayton.edu&gt; wrote:</p><blockquote><p>Thanks for th=
e insight; I've got a better handle on things now. I'm still
not sure where to get the timestamp value from. The processing doesn't
touch the host PC at all everything is contained in the FPGA. Is the
timestamp distributed to the cores or do I need to request the value from
somewhere else in the FPGA?</p><p><em>Michael Barnard</em></p><p>TL Compute=
r Engineer, Scalable Computing Group</p><p>Applied Sensing Division</p><p>3=
00 College Park, Dayton, OH 45469-0031</p><p>O:(937) 713-4271 | C:(440) 622=
-6486 | udri.udayton.edu</p><p>[image: 1621527942842]</p><h2>UDRI Proprieta=
ry - Unprotected</h2><p><em>From:</em> Martin Braun <a href=3D"mailto:marti=
n.braun@ettus.com">martin.braun@ettus.com</a>
<em>Sent:</em> Thursday, March 26, 2026 9:30 AM
<em>Cc:</em> usrp-users@lists.ettus.com <a href=3D"mailto:usrp-users@lists.=
ettus.com">usrp-users@lists.ettus.com</a>
<em>Subject:</em> [USRP-users] Re: X310 Precise Transmit Control</p><p>CAUT=
ION: This email originated from outside of the organization. Do not
click links or open attachments unless you recognize the sender and know
the content is safe.</p><p>Some additional comments:</p><ul data-tight=3D"t=
rue"><li><p>You can probably ignore EOV</p></li><li><p>If you do use EOV, n=
ote that it is treated differently than EOB in some
places. For example, the recv() call (in software) will terminate
immediately when it sees an EOB, but you can have multiple EOVs in a single
burst (so from that recv() call, you can never have more than one EOB, but
any number of EOVs).</p></li><li><p>If you come from a strict FPGA backgrou=
nd, it's important to get behind
the "network on chip" part of RFNoC. Your clocks don't really matter here.
What matters is, when the radio gets a CHDR packet, it will read the
timestamp and compare it against the corresponding timer. When a CHDR
packet leaves one block, you shouldn't care (at design time) if the next
block is right next to it, or 100 km away over an Ethernet line. I'm
exaggerating, but I hope this helps understand this concept.</p></li></ul><=
p>--M</p><p>On Wed, Mar 25, 2026 at 9:56=E2=80=AFPM Brian Padalino <a href=
=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>
wrote:</p><p>On Wed, Mar 25, 2026 at 4:41=E2=80=AFPM Barnard, Michael T &lt=
;
Michael.Barnard@udri.udayton.edu&gt; wrote:</p><p>I am a FPGA developer wor=
king in Verilog with an X310 writing code in a
custom RFNoC block. I recently got independent streaming control working to
output samples at my discretion to a streaming endpoint then through the
cross bar but I do have some questions on parts of the control behavior.
It=E2=80=99s not clear to me what the difference between End of Burst (EOB)=
 and
End of Vector (EOV) is or when I need to use one or the other. My current
design only uses EOB on the last data packet while EOV is always set to 0.
I=E2=80=99m getting underflow errors occasionally but I can=E2=80=99t confi=
dently say which
packets they=E2=80=99re associated with. I also need to send a second packe=
t with
EOB high to flush the first packet out of the buffer; my guess would be
that the first EOB would force a buffer flush. Is there any</p><p>EOV was a=
dded for when your data might be too large for a single CHDR
packet. Think like a 16384 sample FFT frame - it can't fit inside a single
CHDR packet, so EOV is used.</p><p>I=E2=80=99m also wondering if there is a=
 way to precisely schedule samples or
packets for transmit out of the radio. I=E2=80=99ve observed that because t=
he data
is processed at ~215 MHz in the RFNoC block and fed into the DAC at 200 MHz
pauses have to be included between each packet to prevent overfilling the
transmit buffer but this also means that a timing in the 215 MHz domain may
not be reflected in the 200 MHz domain. Is there a way to tell the transmit
logic/front end to start transmitting at a particular time either in the
CHDR header or using the timestamp? Or am I at the mercy of the front end
components without any fine control of transmit timing?</p><p>The CHDR with=
 Timestamp is used there. When it's the first packet in a
burst, that time is compared against the timestamp of the radio. If it's
late, then the radio sets an error condition that is sent back to the host
and the radio block will consume the packets as fast as possible until it
sees the EOB. There are other modes of operation depending on how you set
up your RFNoC graph as to what to do during these error conditions. Check
the state machine here:</p><p>https://github.com/EttusResearch/uhd/blob/mas=
ter/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/radio_tx_core.v#L299
[github.com]
<a href=3D"https://urldefense.us/v2/url?u=3Dhttps-3A__github.com_EttusResea=
rch_uhd_blob_master_fpga_usrp3_lib_rfnoc_blocks_rfnoc-5Fblock-5Fradio_radio=
-5Ftx-5Fcore.v-23L299&amp;d=3DDwMFaQ&amp;c=3DpftDoUyzvDgNGToC1TC2fAYTjbKPSq=
v0CTWoNdikfI0&amp;r=3D_YNw12ReY4H38tz6L9d14UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-AT=
-259kfxeZsh&amp;m=3DbVvtqauPQKkwOFyp6pIaqyonQasy1o456UpJAuwvY8AZOSrv24SufW7=
pJZTEFIdS&amp;s=3DsvYWjmrncxL4sI1kllS9riUDzvO1tNla7wsRZ66__Lc&amp;e=3D">htt=
ps://urldefense.us/v2/url?u=3Dhttps-3A__github.com_EttusResearch_uhd_blob_m=
aster_fpga_usrp3_lib_rfnoc_blocks_rfnoc-5Fblock-5Fradio_radio-5Ftx-5Fcore.v=
-23L299&amp;d=3DDwMFaQ&amp;c=3DpftDoUyzvDgNGToC1TC2fAYTjbKPSqv0CTWoNdikfI0&=
amp;r=3D_YNw12ReY4H38tz6L9d14UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-AT-259kfxeZsh&am=
p;m=3DbVvtqauPQKkwOFyp6pIaqyonQasy1o456UpJAuwvY8AZOSrv24SufW7pJZTEFIdS&amp;=
s=3DsvYWjmrncxL4sI1kllS9riUDzvO1tNla7wsRZ66__Lc&amp;e=3D</a></p><p>As for t=
he processing clock versus radio clock, you should be adhering to
the AXI streaming tready signal for back pressure. You can fill up that
pipeline and things should be fine.</p><p>Good luck.</p><p>Brian</p><div co=
ntenteditable=3D"false"><hr></div><p>USRP-users mailing list -- usrp-users@=
lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com</p><div co=
ntenteditable=3D"false"><hr></div><p>The information contained in this e-ma=
il and any attachments from UDRI may
contain confidential and/or proprietary information, and is intended only
for the named recipient to whom it was originally addressed. If you are not
the intended recipient, any disclosure, distribution, or copying of this
e-mail or its attachments is strictly prohibited. If you have received this
e-mail in error, please notify the sender immediately by return e-mail and
permanently delete the e-mail and any attachments.</p><div contenteditable=
=3D"false"><hr></div><p>USRP-users mailing list -- usrp-users@lists.ettus.c=
om
To unsubscribe send an email to usrp-users-leave@lists.ettus.com</p></block=
quote></blockquote><p><br></p><p><br></p><p><br></p>

--b1_L1S2fdxYLRks4vqNMkNlaav8DDV59DD6TzPnhYJM8ao--

--===============8481768741659102632==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8481768741659102632==--
