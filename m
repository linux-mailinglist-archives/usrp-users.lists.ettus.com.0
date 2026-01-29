Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDCdEIRSe2nRDwIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jan 2026 13:28:52 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3FEB00DF
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jan 2026 13:28:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 287F838D9BD
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jan 2026 07:28:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769689730; bh=wP9XwoRXpXt3eSeuzoGk3pyH5/tHWwFk/P9b2lL/Odw=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=kyYh+4o6FGe9lhpzyK4ZcxiG6o8yWEqff4M49YiIQy66pxXpnXPIq0kZyujibuxUP
	 kqPc+qIRrzC9ivKewmAOLenjlFVTa/9+KjO5tTOsmy3OOSLmiE93gSh86dmubof2s/
	 e4Pl5q+LNA+q6sJd61b4AWAqe15N4/tr8ORZPNlGjeu9npLGX41NsSaQcEBk2XnPzZ
	 T7limMVOVZkWQjdCZ5pqzikGHRtdSjhDfbWVbkV8Wp8CaYc97NfjhA1RKAMIqpBawo
	 B2Djtd48oATsY65wcrz8nHX6Y/w3U6H8TksSAQvMMwPH6PgEuPl4iPJ99wiTcMHxMZ
	 /HA+hhCmTI4yA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9916638D94E
	for <usrp-users@lists.ettus.com>; Thu, 29 Jan 2026 07:27:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769689663; bh=1N75T3bdEHb+ePVoRjWnz7IGvelNWJ2v2WCv2CCRPK0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=RS3AmJtBj79I5bqUd7ykFXy5+WOMAdtak3idXrk0IF6M3nrrtKX9/eXyD8GvQu0Go
	 cKAacRuDfPaSAIhR0FtJC0iDkIFIXE/QJplRNzqe7pcDqF0UP+NMS8F7D0O8HFz5vm
	 cxozOxxLSoOXuGrcLxEptp0FSK81pxgchWHB6ojMelyRhEa28fgzHsKgn40lk169eh
	 yo/OVj52EnXROca95gkysXmc1ZF+Hs5ppVypXiw2/r8nWtED2v6X75SVQh65o0PITc
	 PqExm/qnanly/3MZ28TdJYE4/TTQG9Nf9f/tkr5nZZ9r0SVLACIQBS3cCtOvR927w2
	 3tr9tXcgN7mHw==
Date: Thu, 29 Jan 2026 12:27:43 +0000
To: usrp-users@lists.ettus.com
Message-ID: <cQFy1YoXmAJXfGbw8z0UoqZhCkKBbIz95CTCKEDGMSw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAE_Rk56+4FYfmw7Oma+g9mwujsOJXOmKirDWCew092AJOEYuKA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: FPWZYAY3SM2OW62IPXS5NELMMR37BOKC
X-Message-ID-Hash: FPWZYAY3SM2OW62IPXS5NELMMR37BOKC
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?b?UmU6IFg0NDAgWDRfNDAwIHdpdGggRERDIG5vdCB3b3JraW5n4oCP4oCP?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FPWZYAY3SM2OW62IPXS5NELMMR37BOKC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============7841144821912228679=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_PHPMAILER_SIG(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	DKIM_MIXED(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ettus.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:url,ettus.com:email]
X-Rspamd-Queue-Id: 5A3FEB00DF
X-Rspamd-Action: no action

This is a multi-part message in MIME format.

--===============7841144821912228679==
Content-Type: multipart/alternative;
 boundary="b1_cQFy1YoXmAJXfGbw8z0UoqZhCkKBbIz95CTCKEDGMSw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_cQFy1YoXmAJXfGbw8z0UoqZhCkKBbIz95CTCKEDGMSw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

Here a few notes regarding your questions:

> Is it possible in the rfnoc framework? Can I change the ce clock of my =
OOT block to a higher clock than 266e6 ?

As I mentioned in my previous response, it is technically possible but wo=
uld require larger modifications on the FPGA side on your part, so if you=
 are not that familiar with FPGA development I would recommend against it=
.

While changing the clock rate of the CE clock could be done in theory, th=
e FPGA code has only been validated to work when running with the default=
 clock rate of 266MHz, which is already one of the highest clock rates us=
ed in the current FPGA implementation.=20

Increasing this rate further will most likely lead to timing failures whe=
n you try to rebuild the bitfile, which would then require manual optimiz=
ation to meet the tighter timing.=20

I=E2=80=99m assuming you would want to double it, which I think would be =
extremely hard to do with the current implementation, so I would strongly=
 advise against this. You would most likely have to write a new optimized=
 ddc implementation that can run at 500MHz, or you would have to try to p=
arallelize the implementation to enable it to process multiple samples pe=
r clock cycle which is also not trivial, especially since the current DDC=
 implementation has not been updated in quite some time.

> can i change the DDC clock to something lower than 266.66MHz (for sampl=
e rate smaller than 100M)=20

Not sure I understand what you mean here.=20

Decreasing the CE clock would mean that the current DDC block implementat=
ion could only support even lower input sampling rates(for 100MHZ this wo=
uld be somewhere in the range of \~90MSps), so I do not see how this woul=
d help your use case of processing the full 500 MSps of input data coming=
 from a single radio channel.

> or I must upload the samples to the host ?

This would be the easiest option, as it does not require any FPGA modific=
ations, although the downside is that you would need a host setup that ca=
n handle receiving the data at these high rates:=20

491\.52MSps \* 32bit per sample =3D> \~15.72Gbps, requiring a 100GbE conn=
ection or equivalent.=20

This can be a challenge for a lot of non-optimized host setups.

Sorry I couldn=E2=80=99t be of more help.\
\
Regards,\
Niels

---

Daniel Ozer wrote:

> Thank you for the detailed response.
> In the end, I want to take all 491.52e6 band (from 1 Rx) and split it i=
nto
> smaller bands.
> Is it possible in the rfnoc framework? Can I change the ce clock of my =
OOT
> block to a higher clock than 266e6 ?
> or I must upload the samples to the host ?
>
> * can i change the DDC clock to something lower than 266.66MHz (for sam=
ple
>   rate smaller than 100M)
>   thanks in advance
>
> =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=93=
=D7=B3, 14 =D7=91=D7=99=D7=A0=D7=95=D7=B3 2026 =D7=91-18:35 =D7=9E=D7=90=D7=
=AA =E2=80=AAniels.steffen.garibaldi--- via
> USRP-users=E2=80=AC=E2=80=8F <=E2=80=AAusrp-users@lists.ettus.com=E2=80=
=AC=E2=80=8F>:=E2=80=AC
>
> > Hi Daniel,
> >
> > The short answer is that the current DDC/DUC implementations will not=
 work
> > for Sampling rates above 250MHz.
> >
> > The long Answer:
> > The current implementation of the DDC/DUC RFNoC blocks only supports =
a
> > single sample per clock cycle processing of data.
> >
> > Internally the DDC/DUC blocks use the faster CE(Compute Engine) clock=
s to
> > do the Down-/Upconverting, which on your X440 device is running at
> > 266\.66MHz <https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#X44=
0>.
> >
> > Therefore the highest sampling rates supported by the DDC/DUC blocks =
is
> > 250MHz, which corresponds to the 200MHz BW variants of the provided
> > bitfiles.
> >
> > If the radio provides samples at a higher rate, they will still reach=
 the
> > DDC block but the internal serialization buffers will fill up quickly=
 as
> > the block can not process incoming samples fast enough. This will lea=
d to
> > an overflow, which might be related to why your rfnoc session times o=
ut.
> >
> > This is the also the main reason why only the =E2=80=9C\*_200_rfnoc_i=
mage_core.yml=E2=80=9D
> > variants have the DDC/DUC blocks included.
> >
> > You can still capture samples at a faster sampling rate, but you will=
 have
> > to stream them to your host first and then do the downconversion ther=
e.
> > Be aware that this requires a fast connection between USRP and Host, =
which
> > can be challenging in some setups.
> >
> > Another thing you could try is to reduce the MCR closer to your targe=
t
> > sampling rate. The x440 supports a wider variety of flexible sampling=
 rates
> > than the other USRPs, so if you only care about the downsampled wavef=
orm,
> > you could just try to get close to your desired sampling rate that wa=
y. See the
> > appendix of this document for a list of supported sampling rates of t=
he x440
> > <https://kb.ettus.com/About_Sampling_Rates_and_Master_Clock_Rates_for=
_the_USRP_X440#Appendix>
> > .
> >
> > If you still require this feature, you will either have to update the
> > implementation yourself and make the DDC/DUC multisample capable, or =
you
> > could try and contact Ettus/NI/Emerson support and put in a feature
> > request. Depending on your business case the implementation might be
> > prioritized and updated in a future release.
> >
> > Regards,
> > Niels
> >
> > ---
> >
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--b1_cQFy1YoXmAJXfGbw8z0UoqZhCkKBbIz95CTCKEDGMSw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Daniel,</p><p>Here a few notes regarding your questions:</p><p><br></=
p><blockquote><p>Is it possible in the rfnoc framework? Can I change the ce=
 clock of my OOT block to a higher clock than 266e6 ?</p></blockquote><p>As=
 I mentioned in my previous response, it is technically possible but would =
require larger modifications on the FPGA side on your part, so if you are n=
ot that familiar with FPGA development I would recommend against it.</p><p>=
While changing the clock rate of the CE clock could be done in theory, the =
FPGA code has only been validated to work when running with the default clo=
ck rate of 266MHz, which is already one of the highest clock rates used in =
the current FPGA implementation. </p><p>Increasing this rate further will m=
ost likely lead to timing failures when you try to rebuild the bitfile, whi=
ch would then require manual optimization to meet the tighter timing. </p><=
p>I=E2=80=99m assuming you would want to double it, which I think would be =
extremely hard to do with the current implementation, so I would strongly a=
dvise against this. You would most likely have to write a new optimized ddc=
 implementation that can run at 500MHz, or you would have to try to paralle=
lize the implementation to enable it to process multiple samples per clock =
cycle which is also not trivial, especially since the current DDC implement=
ation has not been updated in quite some time.</p><p><br></p><blockquote><p=
>can i change the DDC clock to something lower than 266.66MHz (for sample r=
ate smaller than 100M) </p></blockquote><p>Not sure I understand what you m=
ean here. </p><p>Decreasing the CE clock would mean that the current DDC bl=
ock implementation could only support even lower input sampling rates(for 1=
00MHZ this would be somewhere in the range of ~90MSps), so I do not see how=
 this would help your use case of processing the full 500 MSps of input dat=
a coming from a single radio channel.</p><p><br></p><blockquote><p>or I mus=
t upload the samples to the host ?</p></blockquote><p>This would be the eas=
iest option, as it does not require any FPGA modifications, although the do=
wnside is that you would need a host setup that can handle receiving the da=
ta at these high rates: </p><p>491.52MSps * 32bit per sample =3D&gt; ~15.72=
Gbps, requiring a 100GbE connection or equivalent. </p><p>This can be a cha=
llenge for a lot of non-optimized host setups.</p><p><br></p><p>Sorry I cou=
ldn=E2=80=99t be of more help.<br><br>Regards,<br>Niels</p><p><br></p><div =
contenteditable=3D"false" class=3D""><hr></div><p>Daniel Ozer wrote:</p><bl=
ockquote><p>Thank you for the detailed response.
In the end, I want to take all 491.52e6 band (from 1 Rx) and split it into
smaller bands.
Is it possible in the rfnoc framework? Can I change the ce clock of my OOT
block to a higher clock than 266e6 ?
or I must upload the samples to the host ?</p><ul data-tight=3D"true"><li><=
p>can i change the DDC clock to something lower than 266.66MHz (for sample
rate smaller than 100M)
thanks in advance</p></li></ul><p>=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=
=99=D7=9A =D7=99=D7=95=D7=9D =D7=93=D7=B3, 14 =D7=91=D7=99=D7=A0=D7=95=
=D7=B3 2026 =D7=91-18:35 =D7=9E=D7=90=D7=AA =E2=80=AAniels.steffen.garibald=
i--- via
USRP-users=E2=80=AC=E2=80=8F &lt;=E2=80=AAusrp-users@lists.ettus.com=
=E2=80=AC=E2=80=8F&gt;:=E2=80=AC</p><blockquote><p>Hi Daniel,</p><p>The sho=
rt answer is that the current DDC/DUC implementations will not work
for Sampling rates above 250MHz.</p><p>The long Answer:
The current implementation of the DDC/DUC RFNoC blocks only supports a
single sample per clock cycle processing of data.</p><p>Internally the DDC/=
DUC blocks use the faster CE(Compute Engine) clocks to
do the Down-/Upconverting, which on your X440 device is running at
266.66MHz <a href=3D"https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#=
X440">https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#X440</a>.</p><p=
>Therefore the highest sampling rates supported by the DDC/DUC blocks is
250MHz, which corresponds to the 200MHz BW variants of the provided
bitfiles.</p><p>If the radio provides samples at a higher rate, they will s=
till reach the
DDC block but the internal serialization buffers will fill up quickly as
the block can not process incoming samples fast enough. This will lead to
an overflow, which might be related to why your rfnoc session times out.</p=
><p>This is the also the main reason why only the =E2=80=9C*_200_rfnoc_imag=
e_core.yml=E2=80=9D
variants have the DDC/DUC blocks included.</p><p>You can still capture samp=
les at a faster sampling rate, but you will have
to stream them to your host first and then do the downconversion there.
Be aware that this requires a fast connection between USRP and Host, which
can be challenging in some setups.</p><p>Another thing you could try is to =
reduce the MCR closer to your target
sampling rate. The x440 supports a wider variety of flexible sampling rates
than the other USRPs, so if you only care about the downsampled waveform,
you could just try to get close to your desired sampling rate that way. See=
 the
appendix of this document for a list of supported sampling rates of the x44=
0
<a href=3D"https://kb.ettus.com/About_Sampling_Rates_and_Master_Clock_Rates=
_for_the_USRP_X440#Appendix">https://kb.ettus.com/About_Sampling_Rates_and_=
Master_Clock_Rates_for_the_USRP_X440#Appendix</a>
.</p><p>If you still require this feature, you will either have to update t=
he
implementation yourself and make the DDC/DUC multisample capable, or you
could try and contact Ettus/NI/Emerson support and put in a feature
request. Depending on your business case the implementation might be
prioritized and updated in a future release.</p><p>Regards,
Niels</p><div contenteditable=3D"false"><hr></div><p>USRP-users mailing lis=
t -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com</p></block=
quote></blockquote><p><br></p>

--b1_cQFy1YoXmAJXfGbw8z0UoqZhCkKBbIz95CTCKEDGMSw--

--===============7841144821912228679==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7841144821912228679==--
