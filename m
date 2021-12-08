Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE38D46DDA2
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 22:30:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AAFB53847BD
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 16:30:09 -0500 (EST)
Received: from mail.egr.msu.edu (boomhauer.egr.msu.edu [35.9.37.164])
	by mm2.emwd.com (Postfix) with ESMTPS id 909B5384123
	for <usrp-users@lists.ettus.com>; Wed,  8 Dec 2021 16:29:16 -0500 (EST)
Received: from boomhauer (localhost [127.0.0.1])
	by mail.egr.msu.edu (Postfix) with ESMTP id DE904E7991;
	Wed,  8 Dec 2021 16:29:15 -0500 (EST)
X-Virus-Scanned: amavisd-new at egr.msu.edu
Received: from mail.egr.msu.edu ([127.0.0.1])
	by boomhauer (boomhauer.egr.msu.edu [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BStwZhGxhXz6; Wed,  8 Dec 2021 16:29:15 -0500 (EST)
Received: from EGR authenticated sender merlojas
From: Jason Merlo <merlojas@egr.msu.edu>
Message-Id: <57189909-1FD3-49D8-9AB7-4A8D9E64A737@egr.msu.edu>
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.20.0.1.32\))
Date: Wed, 8 Dec 2021 16:29:14 -0500
In-Reply-To: <CAB__hTQ1bfM1Nzu+Fmd8J7AMSDK-bFAkDOg+QwtSn9r3jHTFZg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
References: <B67BC271-3FD1-4728-ACFC-B1F0B655662C@egr.msu.edu>
 <CAB__hTQ1bfM1Nzu+Fmd8J7AMSDK-bFAkDOg+QwtSn9r3jHTFZg@mail.gmail.com>
X-Mailer: Apple Mail (2.3693.20.0.1.32)
Message-ID-Hash: BPIR6LAPA6PN6MDHWR7YPLXIVMMNOFGC
X-Message-ID-Hash: BPIR6LAPA6PN6MDHWR7YPLXIVMMNOFGC
X-MailFrom: merlojas@egr.msu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: In-place Local Clock Update
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BPIR6LAPA6PN6MDHWR7YPLXIVMMNOFGC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6029793906083141441=="


--===============6029793906083141441==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_77B5B445-D09B-4D8A-84CB-0BE0962C1666"


--Apple-Mail=_77B5B445-D09B-4D8A-84CB-0BE0962C1666
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Rob,

Thanks for the quick response.=20

> - why do you want to avoid using PPS?

I=E2=80=99m working on techniques for aligning the clocks on the X310's =
in environments where a shared frequency reference and PPS distribution =
by conventional means (cabled, or via GNSS) is not feasible.

> - are you using a common 10 MHz ref?

For testing purposes I have a shared 10 MHz reference to keep the clocks =
from drifting, so I only need to remove the initial timing bias.

> - what is the level of "synchronous" you are looking for?  Are you =
hoping to have simultaneous sampling across all channels?
The goal is for the sampling to occur within +/-0.5 clock cycles between =
two X310s while the shared frequency reference is present; the time bias =
estimator has been verified to have sufficient accuracy to support this, =
thus I=E2=80=99m limited by the accuracy with which I can set the clock. =
To achieve the goal, the the clock set operation would need to be =
accurate to within one clock cycle which I believe requires a method of =
setting the local time offset (fetch, add, write-back) that occurs with =
a deterministic latency that can be calibrated for.

In theory, this should be possible on the FPGA, but I=E2=80=99m =
wondering if this is possible via existing means in the UHD API, or if =
it may be implemented using custom RFNoC blocks somehow.

Thanks again,
Jason

> On Dec 8, 2021, at 3:29 PM, Rob Kossler <rkossler@nd.edu> wrote:
>=20
> Hi Jason,
> A few questions:
> - why do you want to avoid using PPS?
> - are you using a common 10 MHz ref?
> - what is the level of "synchronous" you are looking for?  Are you =
hoping to have simultaneous sampling across all channels?
> Rob
>=20
> On Wed, Dec 8, 2021 at 3:15 PM Jason Merlo <merlojas@egr.msu.edu =
<mailto:merlojas@egr.msu.edu>> wrote:
> Hi All,
>=20
> I=E2=80=99m currently working to synchronize multiple X310=E2=80=99s =
clocks without a PPS input, however right now the best method I can find =
to update the clock from a host PC (using the C++ API) is to query the =
current time from the USRP device (using =
usrp::multi_usrp::get_time_now), add a time delta to the current time, =
then send back the new clock time to the USRP device (using =
usrp::multi_usrp::set_time_now).  Unfortunately, this method introduces =
large timing errors due to the nondeterministic nature of packet =
processing on both he CPU and network stack.
>=20
> I=E2=80=99m wondering if anyone knows of any other techniques for an =
"in-place" time update. I.e., is there a method for the host PC to send =
a time delta to the USRP which would be added to the clock register in a =
single operation?
>=20
> I see there are other get/set_time_now functions in the =
rfnoc::mb_control and rfnoc::radio_control  classes, but I=E2=80=99m not =
sure if these would allow me to accomplish this using only the C++ API. =
I can=E2=80=99t seem to find much documentation on this aside from the =
examples in the =E2=80=9Cuhd/host/examples/rfnoc*=E2=80=9D folder.
>=20
> If it=E2=80=99s not possible to accomplish this using a purely C++ =
approach, is it possible to do this through a custom RFNoC block?  I =
don=E2=80=99t have experience with RFNoC at the moment and I=E2=80=99m =
not sure if that register is exposed to user blocks, or if so, if the =
register update would be deterministic in time, but if there=E2=80=99s =
motivation I would be willing go down the RFNoC path.
>=20
> Thanks in advance,
> Jason
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com =
<mailto:usrp-users-leave@lists.ettus.com>


--Apple-Mail=_77B5B445-D09B-4D8A-84CB-0BE0962C1666
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">Hi =
Rob,<div class=3D""><br class=3D""></div><div class=3D"">Thanks for the =
quick response.&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D""><blockquote type=3D"cite" class=3D""><div dir=3D"ltr" =
class=3D""><div dir=3D"ltr" class=3D""><div class=3D"">- why do you want =
to avoid using PPS?</div></div></div></blockquote></div><div =
class=3D"">I=E2=80=99m working on techniques for aligning the clocks on =
the X310's in environments where a shared frequency reference and PPS =
distribution by conventional means (cabled, or via GNSS) is not =
feasible.</div><div class=3D""><br class=3D""></div><div =
class=3D""><blockquote type=3D"cite" class=3D""><div dir=3D"ltr" =
class=3D""><div dir=3D"ltr" class=3D""><div class=3D"">- are you using a =
common 10 MHz ref?</div></div></div></blockquote></div><div class=3D"">For=
 testing purposes I have a shared 10 MHz reference to keep the clocks =
from drifting, so I only need to remove the initial timing =
bias.</div><div class=3D""><br class=3D""></div><div =
class=3D""><blockquote type=3D"cite" class=3D""><div dir=3D"ltr" =
class=3D""><div dir=3D"ltr" class=3D""><div class=3D"">- what is the =
level of "synchronous" you are looking for?&nbsp; Are you hoping to have =
simultaneous sampling across all =
channels?</div></div></div></blockquote><div class=3D""><div dir=3D"ltr" =
class=3D""><div dir=3D"ltr" class=3D""><div class=3D"">The goal is for =
the sampling to occur within +/-0.5 clock cycles between two X310s while =
the shared frequency reference is present; the time bias estimator has =
been verified to have sufficient accuracy to support this, thus I=E2=80=99=
m limited by the accuracy with which I can set the clock. To achieve the =
goal, the the clock set operation would need to be accurate to within =
one clock cycle which I believe requires a method of setting the local =
time offset (fetch, add, write-back) that occurs with a deterministic =
latency that can be calibrated for.</div><div class=3D""><br =
class=3D""></div><div class=3D"">In theory, this should be possible on =
the FPGA, but I=E2=80=99m wondering if this is possible via existing =
means in the UHD API, or if it may be implemented using custom RFNoC =
blocks somehow.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Thanks again,</div><div =
class=3D"">Jason</div></div></div></div><div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D"">On Dec 8, 2021, at 3:29 PM, Rob =
Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" =
class=3D"">rkossler@nd.edu</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><meta =
http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8" =
class=3D""><div dir=3D"ltr" class=3D""><div dir=3D"ltr" class=3D"">Hi =
Jason,</div><div dir=3D"ltr" class=3D"">A few questions:<div class=3D"">- =
why do you want to avoid using PPS?</div><div class=3D"">- are you using =
a common 10 MHz ref?</div><div class=3D"">- what is the level of =
"synchronous" you are looking for?&nbsp; Are you hoping to have =
simultaneous sampling across all channels?</div><div =
class=3D"">Rob</div></div><br class=3D""><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 8, 2021 at 3:15 PM Jason =
Merlo &lt;<a href=3D"mailto:merlojas@egr.msu.edu" =
class=3D"">merlojas@egr.msu.edu</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div style=3D"overflow-wrap: =
break-word;" class=3D"">Hi All,<div class=3D""><br class=3D""></div><div =
class=3D"">I=E2=80=99m currently working to synchronize multiple =
X310=E2=80=99s clocks without a PPS input, however right now the best =
method I can find to update the clock from a host PC (using the C++ API) =
is to query the current time from the USRP device (using <font =
face=3D"Menlo" class=3D"">usrp::multi_usrp::get_time_now</font>), add a =
time delta to the current time, then send back the new clock time to the =
USRP device (using&nbsp;<span style=3D"font-family:Menlo" =
class=3D"">usrp::multi_usrp::set_time_now</span>).&nbsp; Unfortunately, =
this method introduces large timing errors due to the nondeterministic =
nature of packet processing on both he CPU and network stack.</div><div =
class=3D""><br class=3D""></div><div class=3D"">I=E2=80=99m wondering if =
anyone knows of any other techniques for an "in-place" time update. =
I.e., is there a method for the host PC to send a time delta to the USRP =
which would be added to the clock register in a single =
operation?</div><div class=3D""><br class=3D""></div><div class=3D"">I =
see there are other&nbsp;<span style=3D"font-family:Menlo" =
class=3D"">get/set_time_now</span>&nbsp;functions in the <font =
face=3D"Menlo" class=3D"">rfnoc::mb_control</font> and <font =
face=3D"Menlo" class=3D"">rfnoc::radio_control</font>&nbsp; classes, but =
I=E2=80=99m not sure if these would allow me to accomplish this using =
only the C++ API. I can=E2=80=99t seem to find much documentation on =
this&nbsp;aside from the examples in the =E2=80=9Cuhd/host/examples/rfnoc*=
=E2=80=9D folder.</div><div class=3D""><br class=3D""></div><div =
class=3D"">If it=E2=80=99s not possible to accomplish this using a =
purely C++ approach, is it possible to do this through a custom RFNoC =
block?&nbsp; I don=E2=80=99t have experience with RFNoC at the moment =
and I=E2=80=99m not sure if that register is exposed to user blocks, or =
if so, if the register update would be deterministic in time, but if =
there=E2=80=99s motivation I would be willing go down the RFNoC =
path.</div><div class=3D""><br class=3D""></div><div class=3D"">Thanks =
in advance,</div><div =
class=3D"">Jason</div></div>______________________________________________=
_<br class=3D"">
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" class=3D"">usrp-users@lists.ettus.com</a><br class=3D"">=

To unsubscribe send an email to <a =
href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank" =
class=3D"">usrp-users-leave@lists.ettus.com</a><br class=3D"">
</blockquote></div></div>
</div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_77B5B445-D09B-4D8A-84CB-0BE0962C1666--

--===============6029793906083141441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6029793906083141441==--
