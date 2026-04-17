Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gKTLBQNa4mn65AAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 17 Apr 2026 18:04:19 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CB841CE30
	for <lists+usrp-users@lfdr.de>; Fri, 17 Apr 2026 18:04:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B07CB385F99
	for <lists+usrp-users@lfdr.de>; Fri, 17 Apr 2026 12:04:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1776441852; bh=17xKOK2mXt2XyLb02S5BzSP5bjbjZMa/qKkH/o+KDx4=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=NKos+L90qeyiTzYAKqAJP1QPF5+WrtGrufbuvq7KywpczbhQaYrpWCGABnj7Wr2O2
	 zCvIUmiRrRPJKumituz9h1Qe9s3hxB3DNxdZ1ZBMvKEHvYFTSoVN5AVWaJmoqSyM1r
	 CeixVzYCukENM9vwBEW9zaEstlR+9L146QnxlMVh7Ev23SAtMsC3wPzoIp0l7ikkCC
	 mxwAQTb6DpvVRgXbPP5+wLBwWY8AA0IdxreuLj1478G0XFgLITpSgE4UDgzaTQlHYT
	 QJQHgdLTARSwjtjwGdeDOFDTIC1OG5n7YOTDpcOY6jyZRU6B3oEttkC2nLRDDerNj7
	 hdMQVd3XFGjlA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 230DC383769
	for <usrp-users@lists.ettus.com>; Fri, 17 Apr 2026 12:03:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1776441805; bh=pQIqMGiVzs/4/b1JE2bcxUzBrsy32HbUxZ4b6/Efn4A=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=0i4c9oeFX1+JjoOIRyNppIJ36KdSDVgk5PbONVtc8ilG5wHsyFBLnAPO4ng9hOGoE
	 BRsMhnCjNAFlF+DoM4dcjP4Wy+aIPoVDgOEWgOj1znYPvMJj2KapMd5FqAuz4spwRH
	 6hXwkM8KD4t+At9VJHknJbZBZPUG2cJQp6DP3laIGNP3ZlFwAFhfjRCklmfpyA7vB4
	 8qowscmxdyAWkoJY0LB2bUkSsTVH441rcypqiqz54iS1witsZ50PbWLtf1u0hrwP8p
	 V1nESFIUkWAcAUPWa+gR3DJkSd6fi1+bDZ3zXJNLOWfQ+p3w64cp06+vVYjtd8TrGr
	 tDhfWjGKDNVdA==
Date: Fri, 17 Apr 2026 16:03:25 +0000
To: usrp-users@lists.ettus.com
Message-ID: <aP5RrSdcSVhlr1zZ2NMztjy61xGXkzr7bBjEQ9tKuk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: PH1P110MB1617B8FEC767D413B72765AFD923A@PH1P110MB1617.NAMP110.PROD.OUTLOOK.COM
MIME-Version: 1.0
Message-ID-Hash: W3ZTG5TBFELX2LS4FKEMY2GHLV2T73BY
X-Message-ID-Hash: W3ZTG5TBFELX2LS4FKEMY2GHLV2T73BY
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Precise Transmit Control
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W3ZTG5TBFELX2LS4FKEMY2GHLV2T73BY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============9160242923868060392=="
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,ettus.com:email,emerson.com:replyto,udayton.edu:url,udayton.edu:email,lists.ettus.com:mid]
X-Rspamd-Queue-Id: 76CB841CE30
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is a multi-part message in MIME format.

--===============9160242923868060392==
Content-Type: multipart/alternative;
 boundary="b1_aP5RrSdcSVhlr1zZ2NMztjy61xGXkzr7bBjEQ9tKuk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_aP5RrSdcSVhlr1zZ2NMztjy61xGXkzr7bBjEQ9tKuk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hey Michael,

Not sure I 100% understand what you are trying to do in your custom block b=
ut it seems like you are generating full packets on the FPGA without any in=
volvement from the host.\
\
You should not have to send a second packet with only 2 samples just to hav=
e set the EOB flag, and the fact that you are doing that could be the cause=
 of the underflow issues that you are seeing at the start of each subsequen=
t burst after the first one.

Maybe taking a step back, if you are generating the full packet inside of a=
 custom RFNoC block, my first question would be which data plane interface =
type your custom block is using, because that affects which of the CHDR hea=
der fields you are responsible for directly, and which are automatically fi=
lled for you by the NoC shell.\
\
Maybe you could start with one of the simpler interface types like [AXI-Str=
eam Data](https://uhd.readthedocs.io/en/latest/page_rfnoc_fpga.html#autotoc=
_md236) , as that handles things like the sequence number for you automatic=
ally, and then once that works you can check the packets that the NoC shell=
 generates to get an idea how the headers of the packets you are trying to =
generate should look like. You still have access to set the EoB and Timesta=
mp with this interface time so depending on what you want to do this could =
be sufficient.\
\
If you need access to the full CHDR header with all of its fields, the [AXI=
-Stream CHDR](https://uhd.readthedocs.io/en/latest/page_rfnoc_fpga.html#aut=
otoc_md234) interface is where you are responsible for generating the full =
CHDR packets including all headerfields and timestamps.\
\
It might also be helpful to look at other blocks that might be doing simila=
r things to what you are trying to achieve.\
For example, while the Replay block is triggered from the host, it also gen=
erates full CHDR packets on the FPGA and builds the header. It supports EoB=
 and timestamps so maybe having a look how that block creates the packet fo=
r playback could help you get some pointers on what you might be doing diff=
erently.\
The \`axis_replay\` module [tlast and sideband generation](https://github.c=
om/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_re=
play/axis_replay.v#L1058) section might be a good starting point for seeing=
 how the sideband information that goes into the header is generated in tha=
t block.\
\
Hope this helps.\
\
Regards,\
Niels

---

Barnard, Michael T wrote:

> I've got a handle on the backpressure behavior but I'm still having some =
issues with the EOB flag and underflows. To ensure that all of the samples =
are played contiguously I have to send a second packet with the EOB flag af=
ter the first; if I just send one that packet isn't output with the rest of=
 the burst. The second EOB packet is 2 samples long to force the radio to f=
lush the buffer and play out the entire burst at the same time. This feels =
like it should be unnecessary but is the only way to force the full burst t=
o be played together.
>
> I'm also running into a weird underflow situation where I get an underflo=
w on the console at the beginning of every burst after the first. I transmi=
t \~2600 packets from my component to the radio without any issues but then=
 the next time I send data an underflow appears early in the run and after =
an indeterminate number of bursts the radio locks up with both payload and =
context ready staying low; this is also the first time payload ready goes l=
ow.
>
> From my understanding the only changes I need to make to the CHDR header =
are increasing the sequence number, adjusting the packet size when needed, =
and setting the EOB flag high in the last packet of a burst. Are there any =
other signals/fields I need to control that would prevent the errors I'm se=
eing?
>
> Michael Barnard
>
> TL Computer Engineer, Scalable Computing Group
>
> Applied Sensing Division
>
> 300 College Park, Dayton, OH 45469-0031
>
> O:(937) 713-4271 | C:(440) 622-6486 | udri.udayton.edu<http://udri.udayto=
n.edu/>
>
> \[1621527942842\]
>
> UDRI Proprietary - Unprotected
>
> ---
>
> From: niels.steffen.garibaldi--- via USRP-users [usrp-users@lists.ettus.c=
om](mailto:usrp-users@lists.ettus.com)
> Sent: Friday, March 27, 2026 8:30 AM
> To: usrp-users@lists.ettus.com [usrp-users@lists.ettus.com](mailto:usrp-u=
sers@lists.ettus.com)
> Subject: \[USRP-users\] Re: X310 Precise Transmit Control
>
> CAUTION: This email originated from outside of the organization. Do not c=
lick links or open attachments unless you recognize the sender and know the=
 content is safe.
>
> Hey Michael,
>
> Just to give some context:
>
> Regarding EoB and EoV:
> In RFNoC, a burst denotes a series of contiguous samples. \[uhd.readthedo=
cs.io\]<https://urldefense.us/v2/url?u=3Dhttps-3A__uhd.readthedocs.io_en_la=
test_page-5Frfnoc-5Ffpga.html-23autotoc-5Fmd212&d=3DDwMFaQ&c=3DpftDoUyzvDgN=
GToC1TC2fAYTjbKPSqv0CTWoNdikfI0&r=3D_YNw12ReY4H38tz6L9d14UI9KmDH4TWmWo4TzJS=
bxw9SuCqdtK-AT-259kfxeZsh&m=3DyVdZgRIC6tTa18aqtNavxxFbbxmcUu3JS0tYfjjJyra_t=
ZNoHgHwWvgX3gwSypsy&s=3DmARg37IL2eznz5C7p_US8d9Yx--gtxoesf_OaMQYqME&e=3D>
> In practice, and specifically in the context of samples and the radio blo=
ck, this means that if you are sending data packets to the radio, the radio=
 expects you to provide it with enough data such that for each clock cycle =
of the radio clock, the radio has a new sample that it can transmit.
> If you do not tell the radio block that you want to stop transmitting dat=
a, and just stop providing new samples, the the radio will run out of sampl=
es and generate an Underflow warning, that it sends to the host(usually a =
=E2=80=9CU=E2=80=9D in the terminal output).
>
> The radio block internally has some space to buffer samples ahead of time=
 and also support flow control/backpressure via the AXI-Stream Handshaking =
interface(tvalid/tready) so usually you can just send data as fast as you c=
an, and let the back-pressure mechanism worry about ensuring that the radio=
 always has data to send.
>
> In this context, the EoB flag is meant as a signal to the Radio block tha=
t you will not be providing further samples and that the radio block should=
 therefore not expect additional samples coming in after the current packet=
 with the EoB flag.
>
> This means that implicitly, every time the you are sending data to the ra=
dio, the radio assumes that this is the start of a new burst, and the radio=
 will therefore assume that more data is coming unless you set the EoB flag=
 in the packet that contains the end of the samples you want to transmit.
> When streaming from the host, the UHD driver will take care of this for y=
ou and automatically set the EoB flag, unless you manually override this.
>
> The EoV flag on the other hand, as others have already mentioned, is mean=
t to logically distinguish different units of your contiguous stream of sam=
ples. How each Block interprets the EoV is implementation dependent and act=
ually most blocks do not even check it.
> It is mostly meant as a tool for users to compartmentalize samples in ord=
er to do some sort of batch processing in a custom block on the FPGA.
> Some examples here are 5G radio frames, that are comprised of contiguous =
samples that cover the full frame, but depending on your configuration, the=
 frame can be subdivided into different slots, that a custom block might wa=
nt to process individually. If one of these slots is too big to encapsulate=
 into a single packet, it can make sense to use the EoV flag to indicate sl=
ot boundaries.
> Another example could be the FFT-size, as was already mentioned in this t=
hread.
>
> Regarding Timestamps:
> I am making the assumption that you are only talking about timestamps as =
they relate to IQ data, and are not talking about timed (control) commands =
here.
>
> RFNoC provides the option to do timed and untimed data streaming. Again, =
technically how a block processes the timestamps depends on the type of blo=
ck. I will only talk about how the radio block interprets the timestamp as =
the radio block is an integral part of almost every design.
>
> When you are requesting samples from the radio block starting at a specif=
ic point in time, this is what we usually call timed RX streaming. The radi=
o block will start sending packets as soon as the time start time that was =
specified arrives and will start sending out a new burst of samples until e=
ither the specified number of samples have been sent, or the radio receives=
 a stop command to stop sending RX samples(EoB is set for the last packet).
>
> Timed streaming means that the RFNoC CHDR packet type \[uhd.readthedocs.i=
o\]<https://urldefense.us/v2/url?u=3Dhttps-3A__uhd.readthedocs.io_en_latest=
_page-5Frfnoc-5Ffpga.html-23autotoc-5Fmd210&d=3DDwMFaQ&c=3DpftDoUyzvDgNGToC=
1TC2fAYTjbKPSqv0CTWoNdikfI0&r=3D_YNw12ReY4H38tz6L9d14UI9KmDH4TWmWo4TzJSbxw9=
SuCqdtK-AT-259kfxeZsh&m=3DyVdZgRIC6tTa18aqtNavxxFbbxmcUu3JS0tYfjjJyra_tZNoH=
gHwWvgX3gwSypsy&s=3D_V4WKXW76FhJWAhmoJt3_dE1UEMappfMxDPxlupULwA&e=3D> used =
to transmit these samples has additional timestamp information included in =
the header(CHDR packet type 0x7 =3D> =E2=80=9Cdata with timestamp=E2=80=
=9D)
>
> For the first packet of the timed streaming burst the timestamp is mandat=
ory, and the timestamp always refers to the first sample contained in the p=
ayload of a CHDR data packet.
>
> E.g. if your packet has a timestamp of 0x1000, that means that the radio =
received sample_0 at time 0x1000, sample_1 at 0x1001, sample_2 at 0x1002, e=
tc. for all samples of the CHDR packet.\*
>
> Since we already know that a burst always contains contiguous samples wit=
hout any gaps as it relates to the radio sampling clock\*, subsequent packe=
ts of the same burst technically do not need to include a timestamp, as we =
have all information available to calculate the time for each sample just w=
ith the timestamp of the first packet and the number of samples that have b=
een received already, but for convenience subsequent packets can still incl=
ude timestamps, as long as they match the correct time at which the first s=
ample of each packet is received/transmitted by the radio.
>
> If you are incorrectly setting the timestamp manually in your custom bloc=
k and then are forwarding the packets to the radio, if there are any gaps b=
etween the calculated timestamp of the last sample of the previous packet a=
nd the timestamp corresponding to the first sample of the current packet, t=
he radio will notice the missmatch and in the case that this leads to times=
tamps where the radio does not have any valid samples to send will generate=
 an Underflow (=E2=80=9CU=E2=80=9D).
>
> This is probably what you were seeing in your implementation, if your are=
 pausing between sending packets to the Radio as you stated in your initial=
 question.
> As stated above, you do not have to worry that you will fill up the buffe=
rs as there should be backpressure mechanisms in place that will prevent ov=
erflowing the radio transmit buffers.
> Of course it is your own responsibility to ensure that your custom IP als=
o correctly adheres to the AXI-Stream handshaking rules internally.
>
> If you want to get access to the internal device time there are multiple =
ways this can be done, but I will only mention the two most common ones her=
e:
>
> * From Host: There are API functions to get the current device time from =
the USRP device timerkeeper. Usually the main device timer is accessible vi=
a the Motherboard interface, and there are functions like get_tick_rate() \=
[uhd.readthedocs.io\]<https://urldefense.us/v2/url?u=3Dhttps-3A__uhd.readth=
edocs.io_en_latest_classuhd-5F1-5F1rfnoc-5F1-5F1mb-5F-5Fcontroller-5F1-5F1t=
imekeeper.html-23ac578c97f308f7ab99ece620cae6c3368&d=3DDwMFaQ&c=3DpftDoUyzv=
DgNGToC1TC2fAYTjbKPSqv0CTWoNdikfI0&r=3D_YNw12ReY4H38tz6L9d14UI9KmDH4TWmWo4T=
zJSbxw9SuCqdtK-AT-259kfxeZsh&m=3DyVdZgRIC6tTa18aqtNavxxFbbxmcUu3JS0tYfjjJyr=
a_tZNoHgHwWvgX3gwSypsy&s=3DJMjdMK5bahscwm0jq4xH8lADJ1F2mwTCu18-73qFLng&e=3D=
> to get the current device tick rate, as well as get_ticks_now() \[uhd.rea=
dthedocs.io\]<https://urldefense.us/v2/url?u=3Dhttps-3A__uhd.readthedocs.io=
_en_latest_classuhd-5F1-5F1rfnoc-5F1-5F1mb-5F-5Fcontroller-5F1-5F1timekeepe=
r.html-23a17738f2ce94478654151c265df75cff1&d=3DDwMFaQ&c=3DpftDoUyzvDgNGToC1=
TC2fAYTjbKPSqv0CTWoNdikfI0&r=3D_YNw12ReY4H38tz6L9d14UI9KmDH4TWmWo4TzJSbxw9S=
uCqdtK-AT-259kfxeZsh&m=3DyVdZgRIC6tTa18aqtNavxxFbbxmcUu3JS0tYfjjJyra_tZNoHg=
HwWvgX3gwSypsy&s=3DzKrfOY-DMQzEpD4vIneubI4toOflwZD3mt2IskFDuoY&e=3D> and ge=
t_ticks_last_pps() \[uhd.readthedocs.io\]<https://urldefense.us/v2/url?u=3D=
https-3A__uhd.readthedocs.io_en_latest_classuhd-5F1-5F1rfnoc-5F1-5F1mb-5F-5=
Fcontroller-5F1-5F1timekeeper.html-23aff03009ee9343e9e36669072a68eb769&d=3D=
DwMFaQ&c=3DpftDoUyzvDgNGToC1TC2fAYTjbKPSqv0CTWoNdikfI0&r=3D_YNw12ReY4H38tz6=
L9d14UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-AT-259kfxeZsh&m=3DyVdZgRIC6tTa18aqtNavxx=
FbbxmcUu3JS0tYfjjJyra_tZNoHgHwWvgX3gwSypsy&s=3Dkku6tTQhDHCe3IAzYdXOiG_nEpCA=
ACQQSLURTZwDUcQ&e=3D>.
>   You could use the host TX/RX streamers to do timed streaming from the h=
ost via your custom block and just route the packets through your processin=
g block and do not touch the timestamps at all. If you send th edata down f=
ar enough ahead of time for your processing to be finished by the time the =
packets reach the radio block, you probably will not have to touch the time=
stamps at all in your custom block on the FPGA.
>   If you do want to manually set the timestamps, you could query the time=
 from the host, calculate a relative time in advance for your processing an=
d then send this time down to your custom block via the register interface =
and use this timestamp to set the correct header fields in the packet your =
custom block is processing. Have a look at the different Data interface typ=
es you can configure for your custom blocks CHDR data interface here. \[uhd=
.readthedocs.io\]<https://urldefense.us/v2/url?u=3Dhttps-3A__uhd.readthedoc=
s.io_en_latest_page-5Frfnoc-5Ffpga.html-23autotoc-5Fmd236&d=3DDwMFaQ&c=3Dpf=
tDoUyzvDgNGToC1TC2fAYTjbKPSqv0CTWoNdikfI0&r=3D_YNw12ReY4H38tz6L9d14UI9KmDH4=
TWmWo4TzJSbxw9SuCqdtK-AT-259kfxeZsh&m=3DyVdZgRIC6tTa18aqtNavxxFbbxmcUu3JS0t=
YfjjJyra_tZNoHgHwWvgX3gwSypsy&s=3DP2xPCxVAWMBGS-GlrBBDIDkjQ_YiGgagmWPJ8ivm0=
D4&e=3D>
>
> * From the FPGA: You can configure your custom block to have direct acces=
s to the Motherboard timekeeper by adding the timekeeper port to your block=
 description when you generate your block template. See the radio block blo=
ck description for an example. \[github.com\]<https://urldefense.us/v2/url?=
u=3Dhttps-3A__github.com_EttusResearch_uhd_blob_master_host_include_uhd_rfn=
oc_blocks_radio.yml-23L77C3-2DL82C54&d=3DDwMFaQ&c=3DpftDoUyzvDgNGToC1TC2fAY=
TjbKPSqv0CTWoNdikfI0&r=3D_YNw12ReY4H38tz6L9d14UI9KmDH4TWmWo4TzJSbxw9SuCqdtK=
-AT-259kfxeZsh&m=3DyVdZgRIC6tTa18aqtNavxxFbbxmcUu3JS0tYfjjJyra_tZNoHgHwWvgX=
3gwSypsy&s=3DDC7XLQqJRPl9UTxXVgJvkNfm6G5yghFwWkatgwj4rXo&e=3D> If this port=
 is available for your custom block, you can connect it to the global timek=
eeper by adding the connection in your rfnoc_image_core.yml file when you i=
nstantiate your block, again see the radio block as an example \[github.com=
\]<https://urldefense.us/v2/url?u=3Dhttps-3A__github.com_EttusResearch_uhd_=
blob_master_fpga_usrp3_top_x400_yaml-5Finclude_x410-5Fradio-5Fbase.yml-23L4=
9&d=3DDwMFaQ&c=3DpftDoUyzvDgNGToC1TC2fAYTjbKPSqv0CTWoNdikfI0&r=3D_YNw12ReY4=
H38tz6L9d14UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-AT-259kfxeZsh&m=3DyVdZgRIC6tTa18aq=
tNavxxFbbxmcUu3JS0tYfjjJyra_tZNoHgHwWvgX3gwSypsy&s=3D0jkjudoMVSsshmOBwR1XrE=
NrXpJ7vZ8I53KOTRY5p00&e=3D> of how to add this in your connections section.
>
> Sorry for the wall of text, I just had the impression that some more back=
ground might be helpful to better understand how to integrate your own bloc=
k into the existing RFNoC infrastructure.
>
> Hope this helps put everything into the proper context.
>
> Regards,
> Niels
>
> * Unless of course the samples were previously decimated and therefore do=
 not have the same sampling rate as the radio.
>
> ---
>
> Martin Braun wrote:
>
> Even if the processing does not touch the host, then unless you're doing =
something crazy, you are still running UHD to set up the session, configure=
 the radio, etc. That's where you can get your timestamp from. Typically, y=
ou would know when to send based on what your algorithm is.
>
> \--M
>
> On Thu, Mar 26, 2026 at 6:55=E2=80=AFPM Barnard, Michael T < Michael.Barn=
ard@udri.udayton.edu> wrote:
>
> Thanks for the insight; I've got a better handle on things now. I'm still=
 not sure where to get the timestamp value from. The processing doesn't tou=
ch the host PC at all everything is contained in the FPGA. Is the timestamp=
 distributed to the cores or do I need to request the value from somewhere =
else in the FPGA?
>
> Michael Barnard
>
> TL Computer Engineer, Scalable Computing Group
>
> Applied Sensing Division
>
> 300 College Park, Dayton, OH 45469-0031
>
> O:(937) 713-4271 | C:(440) 622-6486 | udri.udayton.edu
>
> \[image: 1621527942842\]
>
> UDRI Proprietary - Unprotected
>
> From: Martin Braun martin.braun@ettus.com<mailto:martin.braun@ettus.com> =
Sent: Thursday, March 26, 2026 9:30 AM Cc: usrp-users@lists.ettus.com usrp-=
users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> Subject: \[USRP-us=
ers\] Re: X310 Precise Transmit Control
>
> CAUTION: This email originated from outside of the organization. Do not c=
lick links or open attachments unless you recognize the sender and know the=
 content is safe.
>
> Some additional comments:
>
> * You can probably ignore EOV
>
> * If you do use EOV, note that it is treated differently than EOB in some=
 places. For example, the recv() call (in software) will terminate immediat=
ely when it sees an EOB, but you can have multiple EOVs in a single burst (=
so from that recv() call, you can never have more than one EOB, but any num=
ber of EOVs).
>
> * If you come from a strict FPGA background, it's important to get behind=
 the "network on chip" part of RFNoC. Your clocks don't really matter here.=
 What matters is, when the radio gets a CHDR packet, it will read the times=
tamp and compare it against the corresponding timer. When a CHDR packet lea=
ves one block, you shouldn't care (at design time) if the next block is rig=
ht next to it, or 100 km away over an Ethernet line. I'm exaggerating, but =
I hope this helps understand this concept.
>
> \--M
>
> On Wed, Mar 25, 2026 at 9:56=E2=80=AFPM Brian Padalino bpadalino@gmail.co=
m<mailto:bpadalino@gmail.com> wrote:
>
> On Wed, Mar 25, 2026 at 4:41=E2=80=AFPM Barnard, Michael T < Michael.Barn=
ard@udri.udayton.edu> wrote:
>
> I am a FPGA developer working in Verilog with an X310 writing code in a c=
ustom RFNoC block. I recently got independent streaming control working to =
output samples at my discretion to a streaming endpoint then through the cr=
oss bar but I do have some questions on parts of the control behavior. It=
=E2=80=99s not clear to me what the difference between End of Burst (EOB) a=
nd End of Vector (EOV) is or when I need to use one or the other. My curren=
t design only uses EOB on the last data packet while EOV is always set to 0=
. I=E2=80=99m getting underflow errors occasionally but I can=E2=80=99t con=
fidently say which packets they=E2=80=99re associated with. I also need to =
send a second packet with EOB high to flush the first packet out of the buf=
fer; my guess would be that the first EOB would force a buffer flush. Is th=
ere any
>
> EOV was added for when your data might be too large for a single CHDR pac=
ket. Think like a 16384 sample FFT frame - it can't fit inside a single CHD=
R packet, so EOV is used.
>
> I=E2=80=99m also wondering if there is a way to precisely schedule sample=
s or packets for transmit out of the radio. I=E2=80=99ve observed that beca=
use the data is processed at \~215 MHz in the RFNoC block and fed into the =
DAC at 200 MHz pauses have to be included between each packet to prevent ov=
erfilling the transmit buffer but this also means that a timing in the 215 =
MHz domain may not be reflected in the 200 MHz domain. Is there a way to te=
ll the transmit logic/front end to start transmitting at a particular time =
either in the CHDR header or using the timestamp? Or am I at the mercy of t=
he front end components without any fine control of transmit timing?
>
> The CHDR with Timestamp is used there. When it's the first packet in a bu=
rst, that time is compared against the timestamp of the radio. If it's late=
, then the radio sets an error condition that is sent back to the host and =
the radio block will consume the packets as fast as possible until it sees =
the EOB. There are other modes of operation depending on how you set up you=
r RFNoC graph as to what to do during these error conditions. Check the sta=
te machine here:
>
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blo=
cks/rfnoc_block_radio/radio_tx_core.v#L299 \[github.com\]<https://urldefens=
e.us/v2/url?u=3Dhttps-3A__github.com_EttusResearch_uhd_blob_master_fpga_usr=
p3_lib_rfnoc_blocks_rfnoc-5Fblock-5Fradio_radio-5Ftx-5Fcore.v-23L299&d=3DDw=
QFaQ&c=3DpftDoUyzvDgNGToC1TC2fAYTjbKPSqv0CTWoNdikfI0&r=3D_YNw12ReY4H38tz6L9=
d14UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-AT-259kfxeZsh&m=3DyVdZgRIC6tTa18aqtNavxxFb=
bxmcUu3JS0tYfjjJyra_tZNoHgHwWvgX3gwSypsy&s=3DFGFME_lGlS-wizK25u5BHAHZNfi4QA=
xOuD0NpDvbdS8&e=3D> \[github.com\] https://urldefense.us/v2/url?u=3Dhttps-3=
A__github.com_EttusResearch_uhd_blob_master_fpga_usrp3_lib_rfnoc_blocks_rfn=
oc-5Fblock-5Fradio_radio-5Ftx-5Fcore.v-23L299&d=3DDwMFaQ&c=3DpftDoUyzvDgNGT=
oC1TC2fAYTjbKPSqv0CTWoNdikfI0&r=3D_YNw12ReY4H38tz6L9d14UI9KmDH4TWmWo4TzJSbx=
w9SuCqdtK-AT-259kfxeZsh&m=3DbVvtqauPQKkwOFyp6pIaqyonQasy1o456UpJAuwvY8AZOSr=
v24SufW7pJZTEFIdS&s=3DsvYWjmrncxL4sI1kllS9riUDzvO1tNla7wsRZ66__Lc&e=3D
>
> As for the processing clock versus radio clock, you should be adhering to=
 the AXI streaming tready signal for back pressure. You can fill up that pi=
peline and things should be fine.
>
> Good luck.
>
> Brian
>
> ---
>
> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send=
 an email to usrp-users-leave@lists.ettus.com
>
> ---
>
> The information contained in this e-mail and any attachments from UDRI ma=
y contain confidential and/or proprietary information, and is intended only=
 for the named recipient to whom it was originally addressed. If you are no=
t the intended recipient, any disclosure, distribution, or copying of this =
e-mail or its attachments is strictly prohibited. If you have received this=
 e-mail in error, please notify the sender immediately by return e-mail and=
 permanently delete the e-mail and any attachments.
>
> ---
>
> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send=
 an email to usrp-users-leave@lists.ettus.com
--b1_aP5RrSdcSVhlr1zZ2NMztjy61xGXkzr7bBjEQ9tKuk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hey Michael,<br><br></p><p>Not sure I 100% understand what you are tryin=
g to do in your custom block but it seems like you are generating full pack=
ets on the FPGA without any involvement from the host.<br><br>You should no=
t have to send a second packet with only 2 samples just to have set the EOB=
 flag, and the fact that you are doing that could be the cause of the under=
flow issues that you are seeing at the start of each subsequent burst after=
 the first one.</p><p>Maybe taking a step back, if you are generating the f=
ull packet inside of a custom RFNoC block, my first question would be which=
 data plane interface type your custom block is using, because that affects=
 which of the CHDR header fields you are responsible for directly, and whic=
h are automatically filled for you by the NoC shell.<br><br>Maybe you could=
 start with one of the simpler interface types like <a href=3D"https://uhd.=
readthedocs.io/en/latest/page_rfnoc_fpga.html#autotoc_md236" title=3D"">AXI=
-Stream Data</a> , as that handles things like the sequence number for you =
automatically, and then once that works you can check the packets that the =
NoC shell generates to get an idea how the headers of the packets you are t=
rying to generate should look like. You still have access to set the EoB an=
d Timestamp with this interface time so depending on what you want to do th=
is could be sufficient.<br><br>If you need access to the full CHDR header w=
ith all of its fields, the <a href=3D"https://uhd.readthedocs.io/en/latest/=
page_rfnoc_fpga.html#autotoc_md234" title=3D"">AXI-Stream CHDR</a> interfac=
e is where you are responsible for generating the full CHDR packets includi=
ng all headerfields and timestamps.<br><br>It might also be helpful to look=
 at other blocks that might be doing similar things to what you are trying =
to achieve.<br>For example, while the Replay block is triggered from the ho=
st, it also generates full CHDR packets on the FPGA and builds the header. =
It supports EoB and timestamps so maybe having a look how that block create=
s the packet for playback could help you get some pointers on what you migh=
t be doing differently.<br>The `axis_replay` module <a href=3D"https://gith=
ub.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_bloc=
k_replay/axis_replay.v#L1058" title=3D"">tlast and sideband generation</a> =
section might be a good starting point for seeing how the sideband informat=
ion that goes into the header is generated in that block.<br><br>Hope this =
helps.<br><br>Regards,<br>Niels<br><br></p><div contenteditable=3D"false"><=
hr></div><p>Barnard, Michael T wrote:</p><blockquote><p>I've got a handle o=
n the backpressure behavior but I'm still having some issues with the EOB f=
lag and underflows. To ensure that all of the samples are played contiguous=
ly I have to send a second packet with the EOB flag after the first; if I j=
ust send one that packet isn't output with the rest of the burst. The secon=
d EOB packet is 2 samples long to force the radio to flush the buffer and p=
lay out the entire burst at the same time. This feels like it should be unn=
ecessary but is the only way to force the full burst to be played together.=
</p><p>I'm also running into a weird underflow situation where I get an und=
erflow on the console at the beginning of every burst after the first. I tr=
ansmit ~2600 packets from my component to the radio without any issues but =
then the next time I send data an underflow appears early in the run and af=
ter an indeterminate number of bursts the radio locks up with both payload =
and context ready staying low; this is also the first time payload ready go=
es low.</p><p>From my understanding the only changes I need to make to the =
CHDR header are increasing the sequence number, adjusting the packet size w=
hen needed, and setting the EOB flag high in the last packet of a burst. Ar=
e there any other signals/fields I need to control that would prevent the e=
rrors I'm seeing?</p><p>Michael Barnard</p><p>TL Computer Engineer, Scalabl=
e Computing Group</p><p>Applied Sensing Division</p><p>300 College Park, Da=
yton, OH 45469-0031</p><p>O:(937) 713-4271 | C:(440) 622-6486 | udri.udayto=
n.edu<a href=3D"http://udri.udayton.edu/">http://udri.udayton.edu/</a></p><=
p>[1621527942842]</p><p>UDRI Proprietary - Unprotected</p><div contentedita=
ble=3D"false"><hr></div><p>From: niels.steffen.garibaldi--- via USRP-users =
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
>
Sent: Friday, March 27, 2026 8:30 AM
To: usrp-users@lists.ettus.com <a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a>
Subject: [USRP-users] Re: X310 Precise Transmit Control</p><p>CAUTION: This=
 email originated from outside of the organization. Do not click links or o=
pen attachments unless you recognize the sender and know the content is saf=
e.</p><p>Hey Michael,</p><p>Just to give some context:</p><p>Regarding EoB =
and EoV:
In RFNoC, a burst denotes a series of contiguous samples. [uhd.readthedocs.=
io]<a href=3D"https://urldefense.us/v2/url?u=3Dhttps-3A__uhd.readthedocs.io=
_en_latest_page-5Frfnoc-5Ffpga.html-23autotoc-5Fmd212&amp;d=3DDwMFaQ&amp;c=
=3DpftDoUyzvDgNGToC1TC2fAYTjbKPSqv0CTWoNdikfI0&amp;r=3D_YNw12ReY4H38tz6L9d1=
4UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-AT-259kfxeZsh&amp;m=3DyVdZgRIC6tTa18aqtNavxx=
FbbxmcUu3JS0tYfjjJyra_tZNoHgHwWvgX3gwSypsy&amp;s=3DmARg37IL2eznz5C7p_US8d9Y=
x--gtxoesf_OaMQYqME&amp;e=3D">https://urldefense.us/v2/url?u=3Dhttps-3A__uh=
d.readthedocs.io_en_latest_page-5Frfnoc-5Ffpga.html-23autotoc-5Fmd212&amp;d=
=3DDwMFaQ&amp;c=3DpftDoUyzvDgNGToC1TC2fAYTjbKPSqv0CTWoNdikfI0&amp;r=3D_YNw1=
2ReY4H38tz6L9d14UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-AT-259kfxeZsh&amp;m=3DyVdZgRI=
C6tTa18aqtNavxxFbbxmcUu3JS0tYfjjJyra_tZNoHgHwWvgX3gwSypsy&amp;s=3DmARg37IL2=
eznz5C7p_US8d9Yx--gtxoesf_OaMQYqME&amp;e=3D</a>
In practice, and specifically in the context of samples and the radio block=
, this means that if you are sending data packets to the radio, the radio e=
xpects you to provide it with enough data such that for each clock cycle of=
 the radio clock, the radio has a new sample that it can transmit.
If you do not tell the radio block that you want to stop transmitting data,=
 and just stop providing new samples, the the radio will run out of samples=
 and generate an Underflow warning, that it sends to the host(usually a =
=E2=80=9CU=E2=80=9D in the terminal output).</p><p>The radio block internal=
ly has some space to buffer samples ahead of time and also support flow con=
trol/backpressure via the AXI-Stream Handshaking interface(tvalid/tready) s=
o usually you can just send data as fast as you can, and let the back-press=
ure mechanism worry about ensuring that the radio always has data to send.<=
/p><p>In this context, the EoB flag is meant as a signal to the Radio block=
 that you will not be providing further samples and that the radio block sh=
ould therefore not expect additional samples coming in after the current pa=
cket with the EoB flag.</p><p>This means that implicitly, every time the yo=
u are sending data to the radio, the radio assumes that this is the start o=
f a new burst, and the radio will therefore assume that more data is coming=
 unless you set the EoB flag in the packet that contains the end of the sam=
ples you want to transmit.
When streaming from the host, the UHD driver will take care of this for you=
 and automatically set the EoB flag, unless you manually override this.</p>=
<p>The EoV flag on the other hand, as others have already mentioned, is mea=
nt to logically distinguish different units of your contiguous stream of sa=
mples. How each Block interprets the EoV is implementation dependent and ac=
tually most blocks do not even check it.
It is mostly meant as a tool for users to compartmentalize samples in order=
 to do some sort of batch processing in a custom block on the FPGA.
Some examples here are 5G radio frames, that are comprised of contiguous sa=
mples that cover the full frame, but depending on your configuration, the f=
rame can be subdivided into different slots, that a custom block might want=
 to process individually. If one of these slots is too big to encapsulate i=
nto a single packet, it can make sense to use the EoV flag to indicate slot=
 boundaries.
Another example could be the FFT-size, as was already mentioned in this thr=
ead.</p><p>Regarding Timestamps:
I am making the assumption that you are only talking about timestamps as th=
ey relate to IQ data, and are not talking about timed (control) commands he=
re.</p><p>RFNoC provides the option to do timed and untimed data streaming.=
 Again, technically how a block processes the timestamps depends on the typ=
e of block. I will only talk about how the radio block interprets the times=
tamp as the radio block is an integral part of almost every design.</p><p>W=
hen you are requesting samples from the radio block starting at a specific =
point in time, this is what we usually call timed RX streaming. The radio b=
lock will start sending packets as soon as the time start time that was spe=
cified arrives and will start sending out a new burst of samples until eith=
er the specified number of samples have been sent, or the radio receives a =
stop command to stop sending RX samples(EoB is set for the last packet).</p=
><p>Timed streaming means that the RFNoC CHDR packet type [uhd.readthedocs.=
io]<a href=3D"https://urldefense.us/v2/url?u=3Dhttps-3A__uhd.readthedocs.io=
_en_latest_page-5Frfnoc-5Ffpga.html-23autotoc-5Fmd210&amp;d=3DDwMFaQ&amp;c=
=3DpftDoUyzvDgNGToC1TC2fAYTjbKPSqv0CTWoNdikfI0&amp;r=3D_YNw12ReY4H38tz6L9d1=
4UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-AT-259kfxeZsh&amp;m=3DyVdZgRIC6tTa18aqtNavxx=
FbbxmcUu3JS0tYfjjJyra_tZNoHgHwWvgX3gwSypsy&amp;s=3D_V4WKXW76FhJWAhmoJt3_dE1=
UEMappfMxDPxlupULwA&amp;e=3D">https://urldefense.us/v2/url?u=3Dhttps-3A__uh=
d.readthedocs.io_en_latest_page-5Frfnoc-5Ffpga.html-23autotoc-5Fmd210&amp;d=
=3DDwMFaQ&amp;c=3DpftDoUyzvDgNGToC1TC2fAYTjbKPSqv0CTWoNdikfI0&amp;r=3D_YNw1=
2ReY4H38tz6L9d14UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-AT-259kfxeZsh&amp;m=3DyVdZgRI=
C6tTa18aqtNavxxFbbxmcUu3JS0tYfjjJyra_tZNoHgHwWvgX3gwSypsy&amp;s=3D_V4WKXW76=
FhJWAhmoJt3_dE1UEMappfMxDPxlupULwA&amp;e=3D</a> used to transmit these samp=
les has additional timestamp information included in the header(CHDR packet=
 type 0x7 =3D&gt; =E2=80=9Cdata with timestamp=E2=80=9D)</p><p>For the firs=
t packet of the timed streaming burst the timestamp is mandatory, and the t=
imestamp always refers to the first sample contained in the payload of a CH=
DR data packet.</p><p>E.g. if your packet has a timestamp of 0x1000, that m=
eans that the radio received sample_0 at time 0x1000, sample_1 at 0x1001, s=
ample_2 at 0x1002, etc. for all samples of the CHDR packet.*</p><p>Since we=
 already know that a burst always contains contiguous samples without any g=
aps as it relates to the radio sampling clock*, subsequent packets of the s=
ame burst technically do not need to include a timestamp, as we have all in=
formation available to calculate the time for each sample just with the tim=
estamp of the first packet and the number of samples that have been receive=
d already, but for convenience subsequent packets can still include timesta=
mps, as long as they match the correct time at which the first sample of ea=
ch packet is received/transmitted by the radio.</p><p>If you are incorrectl=
y setting the timestamp manually in your custom block and then are forwardi=
ng the packets to the radio, if there are any gaps between the calculated t=
imestamp of the last sample of the previous packet and the timestamp corres=
ponding to the first sample of the current packet, the radio will notice th=
e missmatch and in the case that this leads to timestamps where the radio d=
oes not have any valid samples to send will generate an Underflow (=
=E2=80=9CU=E2=80=9D).</p><p>This is probably what you were seeing in your i=
mplementation, if your are pausing between sending packets to the Radio as =
you stated in your initial question.
As stated above, you do not have to worry that you will fill up the buffers=
 as there should be backpressure mechanisms in place that will prevent over=
flowing the radio transmit buffers.
Of course it is your own responsibility to ensure that your custom IP also =
correctly adheres to the AXI-Stream handshaking rules internally.</p><p>If =
you want to get access to the internal device time there are multiple ways =
this can be done, but I will only mention the two most common ones here:</p=
><ul><li><p>From Host: There are API functions to get the current device ti=
me from the USRP device timerkeeper. Usually the main device timer is acces=
sible via the Motherboard interface, and there are functions like get_tick_=
rate() [uhd.readthedocs.io]<a href=3D"https://urldefense.us/v2/url?u=3Dhttp=
s-3A__uhd.readthedocs.io_en_latest_classuhd-5F1-5F1rfnoc-5F1-5F1mb-5F-5Fcon=
troller-5F1-5F1timekeeper.html-23ac578c97f308f7ab99ece620cae6c3368&amp;d=3D=
DwMFaQ&amp;c=3DpftDoUyzvDgNGToC1TC2fAYTjbKPSqv0CTWoNdikfI0&amp;r=3D_YNw12Re=
Y4H38tz6L9d14UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-AT-259kfxeZsh&amp;m=3DyVdZgRIC6t=
Ta18aqtNavxxFbbxmcUu3JS0tYfjjJyra_tZNoHgHwWvgX3gwSypsy&amp;s=3DJMjdMK5bahsc=
wm0jq4xH8lADJ1F2mwTCu18-73qFLng&amp;e=3D">https://urldefense.us/v2/url?u=3D=
https-3A__uhd.readthedocs.io_en_latest_classuhd-5F1-5F1rfnoc-5F1-5F1mb-5F-5=
Fcontroller-5F1-5F1timekeeper.html-23ac578c97f308f7ab99ece620cae6c3368&amp;=
d=3DDwMFaQ&amp;c=3DpftDoUyzvDgNGToC1TC2fAYTjbKPSqv0CTWoNdikfI0&amp;r=3D_YNw=
12ReY4H38tz6L9d14UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-AT-259kfxeZsh&amp;m=3DyVdZgR=
IC6tTa18aqtNavxxFbbxmcUu3JS0tYfjjJyra_tZNoHgHwWvgX3gwSypsy&amp;s=3DJMjdMK5b=
ahscwm0jq4xH8lADJ1F2mwTCu18-73qFLng&amp;e=3D</a> to get the current device =
tick rate, as well as get_ticks_now() [uhd.readthedocs.io]<a href=3D"https:=
//urldefense.us/v2/url?u=3Dhttps-3A__uhd.readthedocs.io_en_latest_classuhd-=
5F1-5F1rfnoc-5F1-5F1mb-5F-5Fcontroller-5F1-5F1timekeeper.html-23a17738f2ce9=
4478654151c265df75cff1&amp;d=3DDwMFaQ&amp;c=3DpftDoUyzvDgNGToC1TC2fAYTjbKPS=
qv0CTWoNdikfI0&amp;r=3D_YNw12ReY4H38tz6L9d14UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-A=
T-259kfxeZsh&amp;m=3DyVdZgRIC6tTa18aqtNavxxFbbxmcUu3JS0tYfjjJyra_tZNoHgHwWv=
gX3gwSypsy&amp;s=3DzKrfOY-DMQzEpD4vIneubI4toOflwZD3mt2IskFDuoY&amp;e=3D">ht=
tps://urldefense.us/v2/url?u=3Dhttps-3A__uhd.readthedocs.io_en_latest_class=
uhd-5F1-5F1rfnoc-5F1-5F1mb-5F-5Fcontroller-5F1-5F1timekeeper.html-23a17738f=
2ce94478654151c265df75cff1&amp;d=3DDwMFaQ&amp;c=3DpftDoUyzvDgNGToC1TC2fAYTj=
bKPSqv0CTWoNdikfI0&amp;r=3D_YNw12ReY4H38tz6L9d14UI9KmDH4TWmWo4TzJSbxw9SuCqd=
tK-AT-259kfxeZsh&amp;m=3DyVdZgRIC6tTa18aqtNavxxFbbxmcUu3JS0tYfjjJyra_tZNoHg=
HwWvgX3gwSypsy&amp;s=3DzKrfOY-DMQzEpD4vIneubI4toOflwZD3mt2IskFDuoY&amp;e=3D=
</a> and get_ticks_last_pps() [uhd.readthedocs.io]<a href=3D"https://urldef=
ense.us/v2/url?u=3Dhttps-3A__uhd.readthedocs.io_en_latest_classuhd-5F1-5F1r=
fnoc-5F1-5F1mb-5F-5Fcontroller-5F1-5F1timekeeper.html-23aff03009ee9343e9e36=
669072a68eb769&amp;d=3DDwMFaQ&amp;c=3DpftDoUyzvDgNGToC1TC2fAYTjbKPSqv0CTWoN=
dikfI0&amp;r=3D_YNw12ReY4H38tz6L9d14UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-AT-259kfx=
eZsh&amp;m=3DyVdZgRIC6tTa18aqtNavxxFbbxmcUu3JS0tYfjjJyra_tZNoHgHwWvgX3gwSyp=
sy&amp;s=3Dkku6tTQhDHCe3IAzYdXOiG_nEpCAACQQSLURTZwDUcQ&amp;e=3D">https://ur=
ldefense.us/v2/url?u=3Dhttps-3A__uhd.readthedocs.io_en_latest_classuhd-5F1-=
5F1rfnoc-5F1-5F1mb-5F-5Fcontroller-5F1-5F1timekeeper.html-23aff03009ee9343e=
9e36669072a68eb769&amp;d=3DDwMFaQ&amp;c=3DpftDoUyzvDgNGToC1TC2fAYTjbKPSqv0C=
TWoNdikfI0&amp;r=3D_YNw12ReY4H38tz6L9d14UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-AT-25=
9kfxeZsh&amp;m=3DyVdZgRIC6tTa18aqtNavxxFbbxmcUu3JS0tYfjjJyra_tZNoHgHwWvgX3g=
wSypsy&amp;s=3Dkku6tTQhDHCe3IAzYdXOiG_nEpCAACQQSLURTZwDUcQ&amp;e=3D</a>.
You could use the host TX/RX streamers to do timed streaming from the host =
via your custom block and just route the packets through your processing bl=
ock and do not touch the timestamps at all. If you send th edata down far e=
nough ahead of time for your processing to be finished by the time the pack=
ets reach the radio block, you probably will not have to touch the timestam=
ps at all in your custom block on the FPGA.
If you do want to manually set the timestamps, you could query the time fro=
m the host, calculate a relative time in advance for your processing and th=
en send this time down to your custom block via the register interface and =
use this timestamp to set the correct header fields in the packet your cust=
om block is processing. Have a look at the different Data interface types y=
ou can configure for your custom blocks CHDR data interface here. [uhd.read=
thedocs.io]<a href=3D"https://urldefense.us/v2/url?u=3Dhttps-3A__uhd.readth=
edocs.io_en_latest_page-5Frfnoc-5Ffpga.html-23autotoc-5Fmd236&amp;d=3DDwMFa=
Q&amp;c=3DpftDoUyzvDgNGToC1TC2fAYTjbKPSqv0CTWoNdikfI0&amp;r=3D_YNw12ReY4H38=
tz6L9d14UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-AT-259kfxeZsh&amp;m=3DyVdZgRIC6tTa18a=
qtNavxxFbbxmcUu3JS0tYfjjJyra_tZNoHgHwWvgX3gwSypsy&amp;s=3DP2xPCxVAWMBGS-Glr=
BBDIDkjQ_YiGgagmWPJ8ivm0D4&amp;e=3D">https://urldefense.us/v2/url?u=3Dhttps=
-3A__uhd.readthedocs.io_en_latest_page-5Frfnoc-5Ffpga.html-23autotoc-5Fmd23=
6&amp;d=3DDwMFaQ&amp;c=3DpftDoUyzvDgNGToC1TC2fAYTjbKPSqv0CTWoNdikfI0&amp;r=
=3D_YNw12ReY4H38tz6L9d14UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-AT-259kfxeZsh&amp;m=
=3DyVdZgRIC6tTa18aqtNavxxFbbxmcUu3JS0tYfjjJyra_tZNoHgHwWvgX3gwSypsy&amp;s=
=3DP2xPCxVAWMBGS-GlrBBDIDkjQ_YiGgagmWPJ8ivm0D4&amp;e=3D</a></p></li><li><p>=
From the FPGA: You can configure your custom block to have direct access to=
 the Motherboard timekeeper by adding the timekeeper port to your block des=
cription when you generate your block template. See the radio block block d=
escription for an example. [github.com]<a href=3D"https://urldefense.us/v2/=
url?u=3Dhttps-3A__github.com_EttusResearch_uhd_blob_master_host_include_uhd=
_rfnoc_blocks_radio.yml-23L77C3-2DL82C54&amp;d=3DDwMFaQ&amp;c=3DpftDoUyzvDg=
NGToC1TC2fAYTjbKPSqv0CTWoNdikfI0&amp;r=3D_YNw12ReY4H38tz6L9d14UI9KmDH4TWmWo=
4TzJSbxw9SuCqdtK-AT-259kfxeZsh&amp;m=3DyVdZgRIC6tTa18aqtNavxxFbbxmcUu3JS0tY=
fjjJyra_tZNoHgHwWvgX3gwSypsy&amp;s=3DDC7XLQqJRPl9UTxXVgJvkNfm6G5yghFwWkatgw=
j4rXo&amp;e=3D">https://urldefense.us/v2/url?u=3Dhttps-3A__github.com_Ettus=
Research_uhd_blob_master_host_include_uhd_rfnoc_blocks_radio.yml-23L77C3-2D=
L82C54&amp;d=3DDwMFaQ&amp;c=3DpftDoUyzvDgNGToC1TC2fAYTjbKPSqv0CTWoNdikfI0&a=
mp;r=3D_YNw12ReY4H38tz6L9d14UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-AT-259kfxeZsh&amp=
;m=3DyVdZgRIC6tTa18aqtNavxxFbbxmcUu3JS0tYfjjJyra_tZNoHgHwWvgX3gwSypsy&amp;s=
=3DDC7XLQqJRPl9UTxXVgJvkNfm6G5yghFwWkatgwj4rXo&amp;e=3D</a> If this port is=
 available for your custom block, you can connect it to the global timekeep=
er by adding the connection in your rfnoc_image_core.yml file when you inst=
antiate your block, again see the radio block as an example [github.com]<a =
href=3D"https://urldefense.us/v2/url?u=3Dhttps-3A__github.com_EttusResearch=
_uhd_blob_master_fpga_usrp3_top_x400_yaml-5Finclude_x410-5Fradio-5Fbase.yml=
-23L49&amp;d=3DDwMFaQ&amp;c=3DpftDoUyzvDgNGToC1TC2fAYTjbKPSqv0CTWoNdikfI0&a=
mp;r=3D_YNw12ReY4H38tz6L9d14UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-AT-259kfxeZsh&amp=
;m=3DyVdZgRIC6tTa18aqtNavxxFbbxmcUu3JS0tYfjjJyra_tZNoHgHwWvgX3gwSypsy&amp;s=
=3D0jkjudoMVSsshmOBwR1XrENrXpJ7vZ8I53KOTRY5p00&amp;e=3D">https://urldefense=
.us/v2/url?u=3Dhttps-3A__github.com_EttusResearch_uhd_blob_master_fpga_usrp=
3_top_x400_yaml-5Finclude_x410-5Fradio-5Fbase.yml-23L49&amp;d=3DDwMFaQ&amp;=
c=3DpftDoUyzvDgNGToC1TC2fAYTjbKPSqv0CTWoNdikfI0&amp;r=3D_YNw12ReY4H38tz6L9d=
14UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-AT-259kfxeZsh&amp;m=3DyVdZgRIC6tTa18aqtNavx=
xFbbxmcUu3JS0tYfjjJyra_tZNoHgHwWvgX3gwSypsy&amp;s=3D0jkjudoMVSsshmOBwR1XrEN=
rXpJ7vZ8I53KOTRY5p00&amp;e=3D</a> of how to add this in your connections se=
ction.</p></li></ul><p>Sorry for the wall of text, I just had the impressio=
n that some more background might be helpful to better understand how to in=
tegrate your own block into the existing RFNoC infrastructure.</p><p>Hope t=
his helps put everything into the proper context.</p><p>Regards,
Niels</p><ul data-tight=3D"true"><li><p>Unless of course the samples were p=
reviously decimated and therefore do not have the same sampling rate as the=
 radio.</p></li></ul><div contenteditable=3D"false"><hr></div><p>Martin Bra=
un wrote:</p><p>Even if the processing does not touch the host, then unless=
 you're doing something crazy, you are still running UHD to set up the sess=
ion, configure the radio, etc. That's where you can get your timestamp from=
. Typically, you would know when to send based on what your algorithm is.</=
p><p>--M</p><p>On Thu, Mar 26, 2026 at 6:55=E2=80=AFPM Barnard, Michael T &=
lt; Michael.Barnard@udri.udayton.edu&gt; wrote:</p><p>Thanks for the insigh=
t; I've got a better handle on things now. I'm still not sure where to get =
the timestamp value from. The processing doesn't touch the host PC at all e=
verything is contained in the FPGA. Is the timestamp distributed to the cor=
es or do I need to request the value from somewhere else in the FPGA?</p><p=
>Michael Barnard</p><p>TL Computer Engineer, Scalable Computing Group</p><p=
>Applied Sensing Division</p><p>300 College Park, Dayton, OH 45469-0031</p>=
<p>O:(937) 713-4271 | C:(440) 622-6486 | udri.udayton.edu</p><p>[image: 162=
1527942842]</p><p>UDRI Proprietary - Unprotected</p><p>From: Martin Braun m=
artin.braun@ettus.com<a href=3D"mailto:martin.braun@ettus.com">mailto:marti=
n.braun@ettus.com</a> Sent: Thursday, March 26, 2026 9:30 AM Cc: usrp-users=
@lists.ettus.com usrp-users@lists.ettus.com<a href=3D"mailto:usrp-users@lis=
ts.ettus.com">mailto:usrp-users@lists.ettus.com</a> Subject: [USRP-users] R=
e: X310 Precise Transmit Control</p><p>CAUTION: This email originated from =
outside of the organization. Do not click links or open attachments unless =
you recognize the sender and know the content is safe.</p><p>Some additiona=
l comments:</p><ul><li><p>You can probably ignore EOV</p></li><li><p>If you=
 do use EOV, note that it is treated differently than EOB in some places. F=
or example, the recv() call (in software) will terminate immediately when i=
t sees an EOB, but you can have multiple EOVs in a single burst (so from th=
at recv() call, you can never have more than one EOB, but any number of EOV=
s).</p></li><li><p>If you come from a strict FPGA background, it's importan=
t to get behind the "network on chip" part of RFNoC. Your clocks don't real=
ly matter here. What matters is, when the radio gets a CHDR packet, it will=
 read the timestamp and compare it against the corresponding timer. When a =
CHDR packet leaves one block, you shouldn't care (at design time) if the ne=
xt block is right next to it, or 100 km away over an Ethernet line. I'm exa=
ggerating, but I hope this helps understand this concept.</p></li></ul><p>-=
-M</p><p>On Wed, Mar 25, 2026 at 9:56=E2=80=AFPM Brian Padalino bpadalino@g=
mail.com<a href=3D"mailto:bpadalino@gmail.com">mailto:bpadalino@gmail.com</=
a> wrote:</p><p>On Wed, Mar 25, 2026 at 4:41=E2=80=AFPM Barnard, Michael T =
&lt; Michael.Barnard@udri.udayton.edu&gt; wrote:</p><p>I am a FPGA develope=
r working in Verilog with an X310 writing code in a custom RFNoC block. I r=
ecently got independent streaming control working to output samples at my d=
iscretion to a streaming endpoint then through the cross bar but I do have =
some questions on parts of the control behavior. It=E2=80=99s not clear to =
me what the difference between End of Burst (EOB) and End of Vector (EOV) i=
s or when I need to use one or the other. My current design only uses EOB o=
n the last data packet while EOV is always set to 0. I=E2=80=99m getting un=
derflow errors occasionally but I can=E2=80=99t confidently say which packe=
ts they=E2=80=99re associated with. I also need to send a second packet wit=
h EOB high to flush the first packet out of the buffer; my guess would be t=
hat the first EOB would force a buffer flush. Is there any</p><p>EOV was ad=
ded for when your data might be too large for a single CHDR packet. Think l=
ike a 16384 sample FFT frame - it can't fit inside a single CHDR packet, so=
 EOV is used.</p><p>I=E2=80=99m also wondering if there is a way to precise=
ly schedule samples or packets for transmit out of the radio. I=E2=80=99ve =
observed that because the data is processed at ~215 MHz in the RFNoC block =
and fed into the DAC at 200 MHz pauses have to be included between each pac=
ket to prevent overfilling the transmit buffer but this also means that a t=
iming in the 215 MHz domain may not be reflected in the 200 MHz domain. Is =
there a way to tell the transmit logic/front end to start transmitting at a=
 particular time either in the CHDR header or using the timestamp? Or am I =
at the mercy of the front end components without any fine control of transm=
it timing?</p><p>The CHDR with Timestamp is used there. When it's the first=
 packet in a burst, that time is compared against the timestamp of the radi=
o. If it's late, then the radio sets an error condition that is sent back t=
o the host and the radio block will consume the packets as fast as possible=
 until it sees the EOB. There are other modes of operation depending on how=
 you set up your RFNoC graph as to what to do during these error conditions=
. Check the state machine here:</p><p>https://github.com/EttusResearch/uhd/=
blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/radio_tx_core.v#L=
299 [github.com]<a href=3D"https://urldefense.us/v2/url?u=3Dhttps-3A__githu=
b.com_EttusResearch_uhd_blob_master_fpga_usrp3_lib_rfnoc_blocks_rfnoc-5Fblo=
ck-5Fradio_radio-5Ftx-5Fcore.v-23L299&amp;d=3DDwQFaQ&amp;c=3DpftDoUyzvDgNGT=
oC1TC2fAYTjbKPSqv0CTWoNdikfI0&amp;r=3D_YNw12ReY4H38tz6L9d14UI9KmDH4TWmWo4Tz=
JSbxw9SuCqdtK-AT-259kfxeZsh&amp;m=3DyVdZgRIC6tTa18aqtNavxxFbbxmcUu3JS0tYfjj=
Jyra_tZNoHgHwWvgX3gwSypsy&amp;s=3DFGFME_lGlS-wizK25u5BHAHZNfi4QAxOuD0NpDvbd=
S8&amp;e=3D">https://urldefense.us/v2/url?u=3Dhttps-3A__github.com_EttusRes=
earch_uhd_blob_master_fpga_usrp3_lib_rfnoc_blocks_rfnoc-5Fblock-5Fradio_rad=
io-5Ftx-5Fcore.v-23L299&amp;d=3DDwQFaQ&amp;c=3DpftDoUyzvDgNGToC1TC2fAYTjbKP=
Sqv0CTWoNdikfI0&amp;r=3D_YNw12ReY4H38tz6L9d14UI9KmDH4TWmWo4TzJSbxw9SuCqdtK-=
AT-259kfxeZsh&amp;m=3DyVdZgRIC6tTa18aqtNavxxFbbxmcUu3JS0tYfjjJyra_tZNoHgHwW=
vgX3gwSypsy&amp;s=3DFGFME_lGlS-wizK25u5BHAHZNfi4QAxOuD0NpDvbdS8&amp;e=3D</a=
> [github.com] https://urldefense.us/v2/url?u=3Dhttps-3A__github.com_EttusR=
esearch_uhd_blob_master_fpga_usrp3_lib_rfnoc_blocks_rfnoc-5Fblock-5Fradio_r=
adio-5Ftx-5Fcore.v-23L299&amp;d=3DDwMFaQ&amp;c=3DpftDoUyzvDgNGToC1TC2fAYTjb=
KPSqv0CTWoNdikfI0&amp;r=3D_YNw12ReY4H38tz6L9d14UI9KmDH4TWmWo4TzJSbxw9SuCqdt=
K-AT-259kfxeZsh&amp;m=3DbVvtqauPQKkwOFyp6pIaqyonQasy1o456UpJAuwvY8AZOSrv24S=
ufW7pJZTEFIdS&amp;s=3DsvYWjmrncxL4sI1kllS9riUDzvO1tNla7wsRZ66__Lc&amp;e=3D<=
/p><p>As for the processing clock versus radio clock, you should be adherin=
g to the AXI streaming tready signal for back pressure. You can fill up tha=
t pipeline and things should be fine.</p><p>Good luck.</p><p>Brian</p><div =
contenteditable=3D"false"><hr></div><p>USRP-users mailing list -- usrp-user=
s@lists.ettus.com To unsubscribe send an email to usrp-users-leave@lists.et=
tus.com</p><div contenteditable=3D"false"><hr></div><p>The information cont=
ained in this e-mail and any attachments from UDRI may contain confidential=
 and/or proprietary information, and is intended only for the named recipie=
nt to whom it was originally addressed. If you are not the intended recipie=
nt, any disclosure, distribution, or copying of this e-mail or its attachme=
nts is strictly prohibited. If you have received this e-mail in error, plea=
se notify the sender immediately by return e-mail and permanently delete th=
e e-mail and any attachments.</p><div contenteditable=3D"false"><hr></div><=
p>USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send=
 an email to usrp-users-leave@lists.ettus.com</p></blockquote><p><br></p>

--b1_aP5RrSdcSVhlr1zZ2NMztjy61xGXkzr7bBjEQ9tKuk--

--===============9160242923868060392==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9160242923868060392==--
