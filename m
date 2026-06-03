Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sEK/M5s1IGp5ygAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 03 Jun 2026 16:09:31 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D446F63869F
	for <lists+usrp-users@lfdr.de>; Wed, 03 Jun 2026 16:09:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=Ur4kjKam;
	dkim=fail ("body hash did not verify") header.d=emwd.com header.s=harmony header.b=hMlLlFtP;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=none
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 70682386408
	for <lists+usrp-users@lfdr.de>; Wed,  3 Jun 2026 10:09:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1780495769; bh=vQ+HZC/sCICPgq9BC01jE9iJcd38FwgkLMUKuCXQIH8=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=Ur4kjKamrAwthGT/knt33hONBq8jw4SpprKNhIxLNg+xSw/7hOxGh3mmRV3XGTDEX
	 UxEXiHSp33sX+8LbXAkTLe+0fRb6S+ZV1qfIEwLlb43aHSVhdFVwh7C6rAIxiCubkz
	 Ey7TtX/V6ljmXqlWrwpJysOlrTIbLg2EkTBHF954LTrNQSTzZYr9iD+Q6SsI4DR3ee
	 PKVwD9m6kPNQjCJpvsx20n/lZzY5gC6HtDPzyhoG2rFSvHiXV22uskw3EVfXyskCvr
	 56LNMqL38X+FB0YWAkxWinu6LoJDRWio1giIPoGitGwmmcGlnXIEMdqbORDWlFWMug
	 xMNyzCy/Eop2Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4118C385B6C
	for <usrp-users@lists.ettus.com>; Wed,  3 Jun 2026 10:09:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1780495742; bh=GM+XcNUAAgD1yQDm3/8LbC1mkqrrNiHM18tzTrwwx8U=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=hMlLlFtPd35OcQposlKAWK2qPBU/XA/2QOGYFgewpik4qKQTwaM6fqwz//tC7tUFU
	 lQu3qP4TlrAnb4fyv8G6A1/+fdXA2CCaR7OTioRYCR5twdMLUmN5CPIA5I975ViNPf
	 B+cuHc/LfinsBnwLN+OBYLW3p1IVvGk+3Y+9bf3Vp27ChqBF/oK0ccD6DiaWkkeY+r
	 sDQJ1rl/emzWMel0HtjcsBR70+aLG8iNd5T/xfuKucYv5E8O1vwGMb29fa+I4kc9zI
	 1uca6/rpfJKYgtrlQlODnxtXDQENYbYLT1sDFXBi1p7+G87IQNY6RHReq6M7tx22i/
	 DDmVG38EzCscg==
Date: Wed, 3 Jun 2026 14:09:02 +0000
To: usrp-users@lists.ettus.com
Message-ID: <N6GoYGQDRc3L0AErbPJhTZisiKgIiL8TGhCV4cfJAs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: yvK2xRzqUOVDgXmULoCBr894XJUfhKE1ENTFoVqUe8@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: SKY5J3NQ5NAMI7VMBQGRNLA4SJQ6PVAG
X-Message-ID-Hash: SKY5J3NQ5NAMI7VMBQGRNLA4SJQ6PVAG
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issues configuring DDC/DUC in UHD RFNoC C++
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SKY5J3NQ5NAMI7VMBQGRNLA4SJQ6PVAG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============7928815132651688335=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	HAS_PHPMAILER_SIG(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	TO_EQ_FROM(0.00)[];
	R_DKIM_REJECT(0.00)[emwd.com:s=harmony];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORGED_SENDER(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[niels.steffen.garibaldi@emerson.com];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	DKIM_TRACE(0.00)[emwd.com:+,emwd.com:-];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mm2.emwd.com:helo,mm2.emwd.com:rdns,emwd.com:dkim,ettus.com:url,ettus.com:email,lists.ettus.com:from_smtp,lists.ettus.com:from_mime,lists.ettus.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D446F63869F

This is a multi-part message in MIME format.

--===============7928815132651688335==
Content-Type: multipart/alternative;
 boundary="b1_N6GoYGQDRc3L0AErbPJhTZisiKgIiL8TGhCV4cfJAs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_N6GoYGQDRc3L0AErbPJhTZisiKgIiL8TGhCV4cfJAs
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,\
\
Sorry, I am not an expert on the UHD Host driver, but since no one else h=
as answered I=E2=80=99ll give it a try.\
\
Looking at your Issue I have 2 thoughts.\
\
1) Is there a specific reason/requirement you are using such an old UHD v=
ersion?\
UHD 4.0 was released 5+ years ago and there have definitely been a lot of=
 improvements added since that version. \
The current latest release is UHD 4.10, so the first thing I would probab=
ly try to do is update the UHD version load the new bitfile to your devic=
e and then see if this issue still occurs.\
\
2) So in general you are correct. The UHD host driver has a representatio=
n of the RFNoC graph on the host and when you configure one of the blocks=
, in your case the DDC/DUC block, then the host driver checks if this set=
ting might effect any of the blocks that are connected to the block you a=
re configuring.\
For that it checks the graph and goes through all of the graph edges and =
propagates the property (change) to connected blocks. This is called prop=
erty propagation and it is done during the initialisation of the block du=
ring session establishment and depending on the block it can also happen =
every time you configure something of the block.\
\
In your case, changing the sample rate does effect the adjacent blocks. I=
f it works in Python but not in C++, that sounds like a race condition to=
 me, since a python application is comparably slower to execute than the =
C++ application. Also the way that gnuradio establishes the session might=
 be slightly different.\
\
Also, it seems like your code between gnuradio and C++ is slightly differ=
ent:\
In Python you are skipping the propagation  with \``self.rfnoc_graph.skip=
_propagation`\` but you are not skipping it for the C++ graph connection.=
\
Maybe you can try the other connect [API function called \`connect_throug=
h_blocks\`](https://uhd.readthedocs.io/en/latest/namespaceuhd_1_1rfnoc.ht=
ml#a8db0ee31f7409f7f4999c12b974f4c10) which also has the option to skip p=
ropagation and see if that fixes your C++ issues.\
\
Have you tried enabling debug/trace logs to get some more information abo=
ut what is actually happening inside of the UHD driver?\
If not, I would recommend doing that to get a better idea when and where =
the issue occurs.\
\
See <https://kb.ettus.com/The_UHD_logging_facility> for more information.=
 Depending on whether you are building your UHD host driver from source o=
r getting it via the package, you might only be able to set logging to de=
bug.\
\
Sorry I could not be of more help.\
\
Regards,\
Niels.

---

\
adri96roll@gmail.com wrote:

> Hi everyone,
>
> I'm trying to replicate a GNU Radio flowgraph and run it directly in UH=
D 4.0 using C++, but I'm running into an issue that I can't solve.
>
> The Python/GNU Radio version works perfectly, but the equivalent C++ im=
plementation fails at runtime with the following error:
>
> RuntimeError: AccessError: Attempting to read property \`samp_rate@INPU=
T_EDGE:0' before it was initialized!
>
> I already tried configuring the DDC and DUC after the commit, but the p=
roblem still persists and I don't understand why this property is not bei=
ng initialized correctly.
>
> The RFNoC graph topology is the following:
>
> 0/SEP#0:0=3D=3D>0/DUC#0:0
>
> |=C2=A0=C2=A0 |=C2=A0=C2=A0 \* 0/DUC#0:0=3D=3D>0/Radio#0:0
>
> |=C2=A0=C2=A0 |=C2=A0=C2=A0 \* 0/Radio#0:0=3D=3D>0/DDC#0:0
>
> |=C2=A0=C2=A0 |=C2=A0=C2=A0 \* 0/DDC#0:0=3D=3D>0/SEP#0:0
>
> |=C2=A0=C2=A0 |=C2=A0=C2=A0 \* 0/SEP#1:0=3D=3D>0/DUC#0:1
>
> |=C2=A0=C2=A0 |=C2=A0=C2=A0 \* 0/SEP#4:0=3D=3D>0/Block#0:0
>
> |=C2=A0=C2=A0 |=C2=A0=C2=A0 \* 0/Block#0:0=3D=3D>0/SEP#4:0
>
> From what I understand, the issue seems related to the propagation or i=
nitialization order of the samp_rate property across the graph edges, but=
 I=E2=80=99m not sure which block is responsible or how GNU Radio handles=
 this internally compared to UHD C++.
>
> Below are the working GNU Radio/Python implementation and the failing U=
HD C++ implementation:
>
> **Python / GNU Radio code (working)**
>
> `# Blocks`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ###########################=
#######################`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_tx_radio_0=
 =3D ettus.rfnoc_tx_radio(self.rfnoc_graph,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd.device_addr(''),`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1,=
`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1)=
`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_tx_radio_0=
.set_rate(samp_rate)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_tx_radio_0=
.set_antenna('TX/RX', 0)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_tx_radio_0=
.set_frequency(uhd.tune_request(center_freq_out, ((samp_rate*0.5) + 2e6))=
, 0)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_tx_radio_0=
.set_gain(0, 0)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_tx_radio_0=
.set_bandwidth(samp_rate, 0)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0=
 =3D ettus.rfnoc_rx_radio(`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sel=
f.rfnoc_graph,`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd=
.device_addr("spp=3D16"),`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1,=
`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1)=
`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0=
.set_rate(samp_rate)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0=
.set_antenna('RX2', 0)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0=
.set_frequency(center_freq_in, 0)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0=
.set_gain(55, 0)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0=
.set_agc(False, 0)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0=
.set_bandwidth(samp_rate, 0)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0=
.set_dc_offset(True, 0)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0=
.set_iq_balance(True, 0)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_duc_0 =3D =
ettus.rfnoc_duc(`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sel=
f.rfnoc_graph,`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd=
.device_addr(''),`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1,=
`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1)=
`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_duc_0.set_=
freq(0, 0)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_duc_0.set_=
input_rate(samp_rate, 0)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_ddc_0 =3D =
ettus.rfnoc_ddc(`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sel=
f.rfnoc_graph,`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd=
.device_addr(''),`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1,=
`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1)=
`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_ddc_0.set_=
freq(0, 0)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_ddc_0.set_=
output_rate(samp_rate, 0)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.Filter_Passtaps_Filter=
_Passtaps_0 =3D Filter_Passtaps.Filter_Passtaps(`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.rfnoc_grap=
h,`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd.device_addr=
(''),`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1,`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.Filter_Passtaps_Filter=
_Passtaps_0.set_int_property('user_reg', 0)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.Filter_Passtaps_Filter=
_Passtaps_0.set_int_property('user1_reg', 66)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.Filter_Passtaps_Filter=
_Passtaps_0.set_int_property('user2_reg', -2)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.Filter_Passtaps_Filter=
_Passtaps_0.set_int_property('user3_reg', 0)`
>
> `=C2=A0`
>
> `=C2=A0`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ###########################=
#######################`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # Connections`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ###########################=
#######################`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.rfnoc_graph.connect(se=
lf.Filter_Passtaps_Filter_Passtaps_0.get_unique_id(), 0, self.ettus_rfnoc=
_duc_0.get_unique_id(), 0, self.rfnoc_graph.skip_propagation)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.rfnoc_graph.connect(se=
lf.ettus_rfnoc_ddc_0.get_unique_id(), 0, self.Filter_Passtaps_Filter_Pass=
taps_0.get_unique_id(), 0, self.rfnoc_graph.skip_propagation)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.rfnoc_graph.connect(se=
lf.ettus_rfnoc_duc_0.get_unique_id(), 0, self.ettus_rfnoc_tx_radio_0.get_=
unique_id(), 0, self.rfnoc_graph.skip_propagation)`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.rfnoc_graph.connect(se=
lf.ettus_rfnoc_rx_radio_0.get_unique_id(), 0, self.ettus_rfnoc_ddc_0.get_=
unique_id(), 0, self.rfnoc_graph.skip_propagation)`
>
> **UHD C++ code (failing)**
>
> `uhd::rfnoc::block_id_t rx_radio_id("0/Radio#0");`
>
> `=C2=A0=C2=A0=C2=A0 uhd::rfnoc::block_id_t tx_radio_id("0/Radio#0");`
>
> `=C2=A0`
>
> `=C2=A0=C2=A0=C2=A0 const size_t rx_chan =3D 0; // RX2 normalmente`
>
> `=C2=A0=C2=A0=C2=A0 const size_t tx_chan =3D 0; // TX/RX normalmente`
>
> `=C2=A0`
>
> `=C2=A0=C2=A0=C2=A0 uhd::rfnoc::block_id_t ddc_id("0/DDC#0");`
>
> `=C2=A0=C2=A0=C2=A0 uhd::rfnoc::block_id_t duc_id("0/DUC#0");`
>
> `=C2=A0`
>
> `=C2=A0=C2=A0=C2=A0 uhd::rfnoc::block_id_t filter_id("0/FilterPasstaps#=
0");`
>
> `=C2=A0=C2=A0=C2=A0 /**************************************************=
********************`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0 * GET BLOCK HANDLES`
>
> `=C2=A0=C2=A0=C2=A0=C2=A0 *********************************************=
************************/`
>
> `=C2=A0=C2=A0=C2=A0 auto rx_radio =3D=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 graph->get_block<uhd::rfnoc::radio_control>(rx_radio_id);`
>
> `=C2=A0=C2=A0=C2=A0 auto tx_radio =3D=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 graph->get_block<uhd::rfnoc::radio_control>(tx_radio_id);`
>
> `=C2=A0=C2=A0=C2=A0 auto ddc =3D=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 graph->get_block<uhd::rfnoc::ddc_block_control>(ddc_id);`
>
> `=C2=A0=C2=A0=C2=A0 auto duc =3D=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 graph->get_block<uhd::rfnoc::duc_block_control>(duc_id);`
>
> `=C2=A0=C2=A0=C2=A0 auto filter =3D=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 graph->get_block<uhd::rfnoc::FilterPASStaps_block_ctrl>( filt_id )=
;`\
> \
> \
> `// Configurations Radio RX and TX, DUC and DDC. `\
> \
> `=C2=A0=C2=A0=C2=A0`
>
> `=C2=A0=C2=A0=C2=A0 graph->connect(rx_radio_id, rx_chan, ddc_id, 0, tru=
e);`
>
> `=C2=A0=C2=A0=C2=A0 graph->connect(ddc_id, 0, filter_id, 0, true);`
>
> `=C2=A0=C2=A0=C2=A0 graph->connect(filter_id, 0, duc_id, 0, true);`
>
> `=C2=A0=C2=A0=C2=A0 graph->connect(duc_id, 0, tx_radio_id, tx_chan, tru=
e);`
>
> `=C2=A0=C2=A0=C2=A0 std::cout << "Commit graph..." << std::endl;`
>
> `=C2=A0=C2=A0=C2=A0 graph->commit();`
>
> Has anyone encountered something similar or knows the correct initializ=
ation/configuration order for RFNoC DUC/DDC blocks in UHD 4.0 C++?
>
> Any help would be greatly appreciated.\
> \
> Thanks in advance!!

--b1_N6GoYGQDRc3L0AErbPJhTZisiKgIiL8TGhCV4cfJAs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,<br><br>Sorry, I am not an expert on the UHD Host driver, but since n=
o one else has answered I=E2=80=99ll give it a try.<br><br>Looking at your =
Issue I have 2 thoughts.<br><br>1) Is there a specific reason/requirement y=
ou are using such an old UHD version?<br>UHD 4.0 was released 5+ years ago =
and there have definitely been a lot of improvements added since that versi=
on. <br>The current latest release is UHD 4.10, so the first thing I would =
probably try to do is update the UHD version load the new bitfile to your d=
evice and then see if this issue still occurs.<br><br>2) So in general you =
are correct. The UHD host driver has a representation of the RFNoC graph on=
 the host and when you configure one of the blocks, in your case the DDC/DU=
C block, then the host driver checks if this setting might effect any of th=
e blocks that are connected to the block you are configuring.<br>For that i=
t checks the graph and goes through all of the graph edges and propagates t=
he property (change) to connected blocks. This is called property propagati=
on and it is done during the initialisation of the block during session est=
ablishment and depending on the block it can also happen every time you con=
figure something of the block.<br><br>In your case, changing the sample rat=
e does effect the adjacent blocks. If it works in Python but not in C++, th=
at sounds like a race condition to me, since a python application is compar=
ably slower to execute than the C++ application. Also the way that gnuradio=
 establishes the session might be slightly different.<br><br>Also, it seems=
 like your code between gnuradio and C++ is slightly different:<br>In Pytho=
n you are skipping the propagation  with `<code>self.rfnoc_graph.skip_propa=
gation</code>` but you are not skipping it for the C++ graph connection.<br=
>Maybe you can try the other connect <a href=3D"https://uhd.readthedocs.io/=
en/latest/namespaceuhd_1_1rfnoc.html#a8db0ee31f7409f7f4999c12b974f4c10" tit=
le=3D"">API function called `connect_through_blocks`</a> which also has the=
 option to skip propagation and see if that fixes your C++ issues.<br><br>H=
ave you tried enabling debug/trace logs to get some more information about =
what is actually happening inside of the UHD driver?<br>If not, I would rec=
ommend doing that to get a better idea when and where the issue occurs.<br>=
<br>See <a href=3D"https://kb.ettus.com/The_UHD_logging_facility" title=3D"=
">https://kb.ettus.com/The_UHD_logging_facility</a> for more information. D=
epending on whether you are building your UHD host driver from source or ge=
tting it via the package, you might only be able to set logging to debug.<b=
r><br>Sorry I could not be of more help.<br><br>Regards,<br>Niels.</p><div =
contenteditable=3D"false" class=3D""><hr></div><p><br>adri96roll@gmail.com =
wrote:</p><blockquote><p>Hi everyone,</p><p>I'm trying to replicate a GNU R=
adio flowgraph and run it directly in UHD 4.0 using C++, but I'm running in=
to an issue that I can't solve.</p><p>The Python/GNU Radio version works pe=
rfectly, but the equivalent C++ implementation fails at runtime with the fo=
llowing error:</p><p>RuntimeError: AccessError: Attempting to read property=
 `samp_rate@INPUT_EDGE:0' before it was initialized!</p><p>I already tried =
configuring the DDC and DUC after the commit, but the problem still persist=
s and I don't understand why this property is not being initialized correct=
ly.</p><p>The RFNoC graph topology is the following:</p><p>0/SEP#0:0=3D=3D&=
gt;0/DUC#0:0</p><p>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/DUC#0:0=3D=3D&gt;0/Radio=
#0:0</p><p>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0</p>=
<p>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0</p><p>|&nbsp;=
&nbsp; |&nbsp;&nbsp; * 0/SEP#1:0=3D=3D&gt;0/DUC#0:1</p><p>|&nbsp;&nbsp; |&n=
bsp;&nbsp; * 0/SEP#4:0=3D=3D&gt;0/Block#0:0</p><p>|&nbsp;&nbsp; |&nbsp;&nbs=
p; * 0/Block#0:0=3D=3D&gt;0/SEP#4:0</p><p>From what I understand, the issue=
 seems related to the propagation or initialization order of the samp_rate =
property across the graph edges, but I=E2=80=99m not sure which block is re=
sponsible or how GNU Radio handles this internally compared to UHD C++.</p>=
<p>Below are the working GNU Radio/Python implementation and the failing UH=
D C++ implementation:</p><p><strong>Python / GNU Radio code (working)</stro=
ng></p><p><code># Blocks</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; ##################################################</code></p><p=
><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_tx_radio=
_0 =3D ettus.rfnoc_tx_radio(self.rfnoc_graph,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd.device_addr(''),</code></p><p><cod=
e>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -1,</c=
ode></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; -1)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
self.ettus_rfnoc_tx_radio_0.set_rate(samp_rate)</code></p><p><code>&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_tx_radio_0.set_antenna(=
'TX/RX', 0)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; s=
elf.ettus_rfnoc_tx_radio_0.set_frequency(uhd.tune_request(center_freq_out, =
((samp_rate*0.5) + 2e6)), 0)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; self.ettus_rfnoc_tx_radio_0.set_gain(0, 0)</code></p><p><co=
de>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_tx_radio_0.s=
et_bandwidth(samp_rate, 0)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; self.ettus_rfnoc_rx_radio_0 =3D ettus.rfnoc_rx_radio(</code><=
/p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; self.rfnoc_graph,</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd.device_addr("spp=3D16"),</code></p><p>=
<code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -1=
,</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; -1)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; self.ettus_rfnoc_rx_radio_0.set_rate(samp_rate)</code></p><p><code>&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_rx_radio_0.set_ante=
nna('RX2', 0)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 self.ettus_rfnoc_rx_radio_0.set_frequency(center_freq_in, 0)</code></p><p>=
<code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_rx_radio_=
0.set_gain(55, 0)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; self.ettus_rfnoc_rx_radio_0.set_agc(False, 0)</code></p><p><code>&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_rx_radio_0.set_bandw=
idth(samp_rate, 0)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; self.ettus_rfnoc_rx_radio_0.set_dc_offset(True, 0)</code></p><p><code=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_rx_radio_0.set=
_iq_balance(True, 0)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; self.ettus_rfnoc_duc_0 =3D ettus.rfnoc_duc(</code></p><p><code>&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.rfnoc_g=
raph,</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; uhd.device_addr(''),</code></p><p><code>&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -1,</code></p><p><code>&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -1)</code><=
/p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_duc=
_0.set_freq(0, 0)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; self.ettus_rfnoc_duc_0.set_input_rate(samp_rate, 0)</code></p><p><code=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_ddc_0 =3D ettu=
s.rfnoc_ddc(</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; self.rfnoc_graph,</code></p><p><code>&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd.device_addr(''),</=
code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; -1,</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; -1)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; self.ettus_rfnoc_ddc_0.set_freq(0, 0)</code></p><p><code>&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_ddc_0.set_output_=
rate(samp_rate, 0)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; self.Filter_Passtaps_Filter_Passtaps_0 =3D Filter_Passtaps.Filter_Pas=
staps(</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; self.rfnoc_graph,</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; uhd.device_addr(''),</code></p><p><code>&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -1,</code></p><p><code>&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -1)</code></p><p><code>&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.Filter_Passtaps_Filter_Passtaps_0=
.set_int_property('user_reg', 0)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; self.Filter_Passtaps_Filter_Passtaps_0.set_int_property=
('user1_reg', 66)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; self.Filter_Passtaps_Filter_Passtaps_0.set_int_property('user2_reg', -=
2)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.Filte=
r_Passtaps_Filter_Passtaps_0.set_int_property('user3_reg', 0)</code></p><p>=
<code>&nbsp;</code></p><p><code>&nbsp;</code></p><p><code>&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; #################################################=
#</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Connectio=
ns</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ##########=
########################################</code></p><p><code>&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; self.rfnoc_graph.connect(self.Filter_Passtaps_F=
ilter_Passtaps_0.get_unique_id(), 0, self.ettus_rfnoc_duc_0.get_unique_id()=
, 0, self.rfnoc_graph.skip_propagation)</code></p><p><code>&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; self.rfnoc_graph.connect(self.ettus_rfnoc_ddc_0.=
get_unique_id(), 0, self.Filter_Passtaps_Filter_Passtaps_0.get_unique_id(),=
 0, self.rfnoc_graph.skip_propagation)</code></p><p><code>&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; self.rfnoc_graph.connect(self.ettus_rfnoc_duc_0.g=
et_unique_id(), 0, self.ettus_rfnoc_tx_radio_0.get_unique_id(), 0, self.rfn=
oc_graph.skip_propagation)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; self.rfnoc_graph.connect(self.ettus_rfnoc_rx_radio_0.get_uniq=
ue_id(), 0, self.ettus_rfnoc_ddc_0.get_unique_id(), 0, self.rfnoc_graph.ski=
p_propagation)</code></p><p><strong>UHD C++ code (failing)</strong></p><p><=
code>uhd::rfnoc::block_id_t rx_radio_id("0/Radio#0");</code></p><p><code>&n=
bsp;&nbsp;&nbsp; uhd::rfnoc::block_id_t tx_radio_id("0/Radio#0");</code></p=
><p><code>&nbsp;</code></p><p><code>&nbsp;&nbsp;&nbsp; const size_t rx_chan=
 =3D 0; // RX2 normalmente</code></p><p><code>&nbsp;&nbsp;&nbsp; const size=
_t tx_chan =3D 0; // TX/RX normalmente</code></p><p><code>&nbsp;</code></p>=
<p><code>&nbsp;&nbsp;&nbsp; uhd::rfnoc::block_id_t ddc_id("0/DDC#0");</code=
></p><p><code>&nbsp;&nbsp;&nbsp; uhd::rfnoc::block_id_t duc_id("0/DUC#0");<=
/code></p><p><code>&nbsp;</code></p><p><code>&nbsp;&nbsp;&nbsp; uhd::rfnoc:=
:block_id_t filter_id("0/FilterPasstaps#0");</code></p><p><code>&nbsp;&nbsp=
;&nbsp; /******************************************************************=
****</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp; * GET BLOCK HANDLES</code>=
</p><p><code>&nbsp;&nbsp;&nbsp;&nbsp; *************************************=
********************************/</code></p><p><code>&nbsp;&nbsp;&nbsp; aut=
o rx_radio =3D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; graph-&gt;get_bloc=
k&lt;uhd::rfnoc::radio_control&gt;(rx_radio_id);</code></p><p><code>&nbsp;&=
nbsp;&nbsp; auto tx_radio =3D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gra=
ph-&gt;get_block&lt;uhd::rfnoc::radio_control&gt;(tx_radio_id);</code></p><=
p><code>&nbsp;&nbsp;&nbsp; auto ddc =3D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; graph-&gt;get_block&lt;uhd::rfnoc::ddc_block_control&gt;(ddc_id);</c=
ode></p><p><code>&nbsp;&nbsp;&nbsp; auto duc =3D&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; graph-&gt;get_block&lt;uhd::rfnoc::duc_block_control&gt;(du=
c_id);</code></p><p><code>&nbsp;&nbsp;&nbsp; auto filter =3D&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; graph-&gt;get_block&lt;uhd::rfnoc::FilterPASSta=
ps_block_ctrl&gt;( filt_id );</code><br><br><br><code>// Configurations Rad=
io RX and TX, DUC and DDC. </code><br><br><code>&nbsp;&nbsp;&nbsp;</code></=
p><p><code>&nbsp;&nbsp;&nbsp; graph-&gt;connect(rx_radio_id, rx_chan, ddc_i=
d, 0, true);</code></p><p><code>&nbsp;&nbsp;&nbsp; graph-&gt;connect(ddc_id=
, 0, filter_id, 0, true);</code></p><p><code>&nbsp;&nbsp;&nbsp; graph-&gt;c=
onnect(filter_id, 0, duc_id, 0, true);</code></p><p><code>&nbsp;&nbsp;&nbsp=
; graph-&gt;connect(duc_id, 0, tx_radio_id, tx_chan, true);</code></p><p><c=
ode>&nbsp;&nbsp;&nbsp; std::cout &lt;&lt; "Commit graph..." &lt;&lt; std::e=
ndl;</code></p><p><code>&nbsp;&nbsp;&nbsp; graph-&gt;commit();</code></p><p=
>Has anyone encountered something similar or knows the correct initializati=
on/configuration order for RFNoC DUC/DDC blocks in UHD 4.0 C++?</p><p>Any h=
elp would be greatly appreciated.<br><br>Thanks in advance!!</p></blockquot=
e><p><br></p>

--b1_N6GoYGQDRc3L0AErbPJhTZisiKgIiL8TGhCV4cfJAs--

--===============7928815132651688335==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7928815132651688335==--
