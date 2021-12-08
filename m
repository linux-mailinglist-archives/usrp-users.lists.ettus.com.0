Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAE346DF23
	for <lists+usrp-users@lfdr.de>; Thu,  9 Dec 2021 00:58:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 11C573844B8
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 18:58:32 -0500 (EST)
Received: from mail.egr.msu.edu (hill.egr.msu.edu [35.9.37.163])
	by mm2.emwd.com (Postfix) with ESMTPS id 1B311384712
	for <usrp-users@lists.ettus.com>; Wed,  8 Dec 2021 18:57:37 -0500 (EST)
Received: from hill (localhost [127.0.0.1])
	by mail.egr.msu.edu (Postfix) with ESMTP id 7D76DCFB14;
	Wed,  8 Dec 2021 18:57:37 -0500 (EST)
X-Virus-Scanned: amavisd-new at egr.msu.edu
Received: from mail.egr.msu.edu ([127.0.0.1])
	by hill (hill.egr.msu.edu [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qbJx_eBRHX2A; Wed,  8 Dec 2021 18:57:37 -0500 (EST)
Received: from EGR authenticated sender merlojas
From: EGR Email <merlojas@egr.msu.edu>
Message-Id: <56824AED-B725-49AB-9719-2AE5E82699E5@egr.msu.edu>
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.20.0.1.32\))
Date: Wed, 8 Dec 2021 18:57:36 -0500
In-Reply-To: <CAB__hTRj7gNxyZTgnknG9e0YCUjcEGr-py2b-zhjOPPDymHEbA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
References: <B67BC271-3FD1-4728-ACFC-B1F0B655662C@egr.msu.edu>
 <CAB__hTQ1bfM1Nzu+Fmd8J7AMSDK-bFAkDOg+QwtSn9r3jHTFZg@mail.gmail.com>
 <57189909-1FD3-49D8-9AB7-4A8D9E64A737@egr.msu.edu>
 <CAB__hTRj7gNxyZTgnknG9e0YCUjcEGr-py2b-zhjOPPDymHEbA@mail.gmail.com>
X-Mailer: Apple Mail (2.3693.20.0.1.32)
Message-ID-Hash: YTEE6WAN2VMQJZUKT7KJZD6DUY3DRJXW
X-Message-ID-Hash: YTEE6WAN2VMQJZUKT7KJZD6DUY3DRJXW
X-MailFrom: merlojas@egr.msu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: In-place Local Clock Update
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YTEE6WAN2VMQJZUKT7KJZD6DUY3DRJXW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1439150071556034328=="


--===============1439150071556034328==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_0E139C13-8B24-4F32-85B5-1666D041C777"


--Apple-Mail=_0E139C13-8B24-4F32-85B5-1666D041C777
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

The offset is computed based on the assumption that the radios can =
properly timestamp received messages and transmit messages accurate to =
the clock tick using schedule transmissions.  This is done using by =
performing scheduled RX bursts by filling the stream_cmd_t struct with a =
receive time spec before issuing the rx_streamer::issue_stream_cmd() to =
the rx_streamer, and similarly by filling the tx_metadata struct with a =
time spec before using the tx_streamer::send() command. =46rom my =
testing this appears to properly schedule TX and RX bursts within one =
clock tick (which I believe is the intended function of these commands).

Because the synchronization bursts are happening via scheduled/timed =
commands from the FPGA, the latencies of the network layer and OS will =
have no effect on synchronization as the timing of the critical section =
is happening entirely within the FPGAs.  The host PC is only scheduling =
the synchronization bursts at some time in the future and performing the =
processing on the bursts after they=E2=80=99ve occurred.

I am fairly confident this technique is working and the time bias offset =
is being computed correctly and with sufficient accuracy to align the =
clocks to a fraction of a clock cycle. Thus, the issue remains adding a =
delta to the local clock of the device with a deterministic latency to =
correct for the computed bias; This seems reasonable to achieve if it =
can be done on the FPGA, even if the implementation may be somewhat =
involved.  Fundamentally it=E2=80=99s a fetch, add, and write back.

Primarily, I=E2=80=99m concerned with if it is possible to instruct the =
FPGA to do this via pre-existing API calls, or if I will need to =
implement my own RFNoC block to perform it (again I=E2=80=99m not too =
familiar with RFNoC, but this seems like it should be possible, if the =
time register can be accessed directly).

Unfortunately, our desired applications wouldn=E2=80=99t allow for a =
White Rabbit implementation, this would be an alternative to White =
Rabbit as it will be infeasible to run fiber between the devices.

Thanks,
Jason

> On Dec 8, 2021, at 4:52 PM, Rob Kossler <rkossler@nd.edu> wrote:
>=20
>> - why do you want to avoid using PPS?
>>=20
>> I=E2=80=99m working on techniques for aligning the clocks on the =
X310's in environments where a shared frequency reference and PPS =
distribution by conventional means (cabled, or via GNSS) is not =
feasible.
>>=20
>> - are you using a common 10 MHz ref?
>>=20
>> For testing purposes I have a shared 10 MHz reference to keep the =
clocks from drifting, so I only need to remove the initial timing bias.
>>=20
>> - what is the level of "synchronous" you are looking for?  Are you =
hoping to have simultaneous sampling across all channels?
>>=20
>> The goal is for the sampling to occur within +/-0.5 clock cycles =
between two X310s while the shared frequency reference is present; the =
time bias estimator has been verified to have sufficient accuracy to =
support this, thus I=E2=80=99m limited by the accuracy with which I can =
set the clock. To achieve the goal, the the clock set operation would =
need to be accurate to within one clock cycle which I believe requires a =
method of setting the local time offset (fetch, add, write-back) that =
occurs with a deterministic latency that can be calibrated for.
>> In theory, this should be possible on the FPGA, but I=E2=80=99m =
wondering if this is possible via existing means in the UHD API, or if =
it may be implemented using custom RFNoC blocks somehow.
>=20
> I don't see how it could work even on the FPGA.  The FPGAs from USRPs
> 1 and 2 start off with different clocks. How is it helpful to have
> each FPGA read its own clock and add an offset?  The problem is you
> have no way to know the delta between the clocks unless you could
> guarantee that each device reads its clock at the same time. Doesn't
> seem possible if the 'common denominator' is the PC sending get()
> commands over Linux/Ethernet. And, if the PC is not the common
> denominator, what is?
>=20
> Does your problem allow for the devices to be linked by fiber in a
> White Rabbit timing scenario?  If so, this could be used to sync the
> devices.
>=20


--Apple-Mail=_0E139C13-8B24-4F32-85B5-1666D041C777
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><div =
class=3D"">The offset is computed based on the assumption that the =
radios can properly timestamp received messages and transmit messages =
accurate to the clock tick using schedule transmissions. &nbsp;This is =
done using by performing scheduled RX bursts by filling the&nbsp;<font =
face=3D"Menlo" class=3D"">stream_cmd_t</font>&nbsp;struct with a receive =
time spec before issuing the <font face=3D"Menlo" =
class=3D"">rx_streamer::issue_stream_cmd()&nbsp;</font>to the <font =
face=3D"Menlo" class=3D"">rx_streamer</font>, and similarly by filling =
the <font face=3D"Menlo" class=3D"">tx_metadata</font> struct with a =
time spec before using the <font face=3D"Menlo" =
class=3D"">tx_streamer::send()</font> command. =46rom my testing this =
appears to properly schedule TX and RX bursts within one clock tick =
(which I believe is the intended function of these commands).</div><div =
class=3D""><br class=3D""></div><div class=3D"">Because the =
synchronization bursts are happening via scheduled/timed commands from =
the FPGA, the latencies of the network layer and OS will have no effect =
on synchronization as the timing of the critical section is happening =
entirely within the FPGAs.<font color=3D"#000000" class=3D"">&nbsp; The =
host PC is only scheduling the synchronization bursts at some time in =
the future and performing the processing on the bursts after they=E2=80=99=
ve occurred.</font></div><div class=3D""><br class=3D""></div><div =
class=3D"">I am fairly confident this technique is working and the time =
bias offset is being computed correctly and with sufficient accuracy to =
align the clocks to a fraction of a clock cycle. Thus, the issue remains =
adding a delta to the local clock of the device with a deterministic =
latency to correct for the computed bias; This seems reasonable to =
achieve if it can be done on the FPGA, even if the implementation may be =
somewhat involved. &nbsp;Fundamentally it=E2=80=99s a fetch, add, and =
write back.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Primarily, I=E2=80=99m concerned with if it is possible to =
instruct the FPGA to do this via pre-existing API calls, or if I will =
need to implement my own RFNoC block to perform it (again I=E2=80=99m =
not too familiar with RFNoC, but this seems like it should be possible, =
if the time register can be accessed directly).</div><div class=3D""><br =
class=3D""></div><div class=3D"">Unfortunately, our desired applications =
wouldn=E2=80=99t allow for a White Rabbit implementation, this would be =
an alternative to White Rabbit as it will be infeasible to run fiber =
between the devices.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Thanks,</div><div class=3D"">Jason</div><div =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Dec 8, 2021, at 4:52 PM, Rob Kossler &lt;<a =
href=3D"mailto:rkossler@nd.edu" class=3D"">rkossler@nd.edu</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D""><blockquote type=3D"cite" class=3D"">- why do you want to =
avoid using PPS?<br class=3D""><br class=3D"">I=E2=80=99m working on =
techniques for aligning the clocks on the X310's in environments where a =
shared frequency reference and PPS distribution by conventional means =
(cabled, or via GNSS) is not feasible.<br class=3D""><br class=3D"">- =
are you using a common 10 MHz ref?<br class=3D""><br class=3D"">For =
testing purposes I have a shared 10 MHz reference to keep the clocks =
from drifting, so I only need to remove the initial timing bias.<br =
class=3D""><br class=3D"">- what is the level of "synchronous" you are =
looking for? &nbsp;Are you hoping to have simultaneous sampling across =
all channels?<br class=3D""><br class=3D"">The goal is for the sampling =
to occur within +/-0.5 clock cycles between two X310s while the shared =
frequency reference is present; the time bias estimator has been =
verified to have sufficient accuracy to support this, thus I=E2=80=99m =
limited by the accuracy with which I can set the clock. To achieve the =
goal, the the clock set operation would need to be accurate to within =
one clock cycle which I believe requires a method of setting the local =
time offset (fetch, add, write-back) that occurs with a deterministic =
latency that can be calibrated for.<br class=3D"">In theory, this should =
be possible on the FPGA, but I=E2=80=99m wondering if this is possible =
via existing means in the UHD API, or if it may be implemented using =
custom RFNoC blocks somehow.<br class=3D""></blockquote><br class=3D"">I =
don't see how it could work even on the FPGA. &nbsp;The FPGAs from =
USRPs<br class=3D"">1 and 2 start off with different clocks. How is it =
helpful to have<br class=3D"">each FPGA read its own clock and add an =
offset? &nbsp;The problem is you<br class=3D"">have no way to know the =
delta between the clocks unless you could<br class=3D"">guarantee that =
each device reads its clock at the same time. Doesn't<br class=3D"">seem =
possible if the 'common denominator' is the PC sending get()<br =
class=3D"">commands over Linux/Ethernet. And, if the PC is not the =
common<br class=3D"">denominator, what is?<br class=3D""><br =
class=3D"">Does your problem allow for the devices to be linked by fiber =
in a<br class=3D"">White Rabbit timing scenario? &nbsp;If so, this could =
be used to sync the<br class=3D"">devices.<br class=3D""><br =
class=3D""></div></div></blockquote></div><br =
class=3D""></div></body></html>=

--Apple-Mail=_0E139C13-8B24-4F32-85B5-1666D041C777--

--===============1439150071556034328==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1439150071556034328==--
