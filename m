Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIbmGSXcFmofuAcAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 27 May 2026 13:57:25 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 886B05E3BED
	for <lists+usrp-users@lfdr.de>; Wed, 27 May 2026 13:57:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 913DC38584A
	for <lists+usrp-users@lfdr.de>; Wed, 27 May 2026 07:57:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1779883042; bh=2K+YxmLz9MZZUj87MMtyaGoW0IV2TYkKidz9cZt1sLs=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=grOZqC79Wu/+qQWUIup6u5Auc3wyyyzfTzMjPQuEEQTTYgG4HIZEIo/jXjVwNBr1d
	 lblrI+QwzrSfJaDEbt/jfNFIAFAph03m/uq/ELDCCh5ahjWwtu84m1txuMH8YSqNWA
	 XrPAx1jv1AkjNQ+ctpLDMcYQMnk/UspUqM9uJ6yrVWcA+8smYxHgWTvB691BPomJEO
	 DiGyGvmGkCf3ApS1jTw9SvPl0Bj9ztogsT/iFRofcnTKzqfwLo/4CheWCrFumwHHbk
	 Ewj14y0Zjt5HY+O0CHeVAzDIGxcBtrlT65TUPr4joffjdxORnGFPVXhqkRsjlTkqkT
	 WGuYX0Zw8APmw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5397A385180
	for <usrp-users@lists.ettus.com>; Wed, 27 May 2026 07:56:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1779882975; bh=KEWI9ht5fVUliTqcIsK7zjMlJjU+1YaFW8jRxE+z07k=;
	h=Date:To:From:Subject:From;
	b=rTQFmJeW5nlH2KfvqS+Df8+n3ICCWnyFxHz3vdU2X+QKiItV0IY5zbspZlcpmDucy
	 B3aa41kog/sa+hy1k5Z1oQ2lXhpYInTwxzKjZ6ufJYFT0I8gj/D62F7p3sXPcTwzL9
	 B/UxC/AcvWKIVAxRBj8jqFGmd4umx3MjQ9wt/wYYeyB9Ze+xnZvaHqEVVOLufP+TSC
	 jW5yxxwlJS/rgooo0jHwG5o9quLCJwBmTVdR3iotLVGwfv97sslGZl15KVCoFd/bVq
	 BmR2TnB/AHgiqIYYhBwISr2cg4jsbOBQ4dI/vO2ndRVMT0I2/m27gHPb9rwwn345d8
	 mecHAUjD7Vusg==
Date: Wed, 27 May 2026 11:56:15 +0000
To: usrp-users@lists.ettus.com
From: adri96roll@gmail.com
Message-ID: <yvK2xRzqUOVDgXmULoCBr894XJUfhKE1ENTFoVqUe8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: AIJJMNFM6ZABK5WNPPVDOB5POPDLJLI2
X-Message-ID-Hash: AIJJMNFM6ZABK5WNPPVDOB5POPDLJLI2
X-MailFrom: adri96roll@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Issues configuring DDC/DUC in UHD RFNoC C++
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AIJJMNFM6ZABK5WNPPVDOB5POPDLJLI2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3687021297960834828=="
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_PHPMAILER_SIG(0.00)[];
	R_DKIM_REJECT(0.00)[emwd.com:s=harmony];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,emwd.com:-];
	R_SPF_NA(0.00)[no SPF record];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[adri96roll@gmail.com,usrp-users-bounces@lists.ettus.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: 886B05E3BED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is a multi-part message in MIME format.

--===============3687021297960834828==
Content-Type: multipart/alternative;
 boundary="b1_yvK2xRzqUOVDgXmULoCBr894XJUfhKE1ENTFoVqUe8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_yvK2xRzqUOVDgXmULoCBr894XJUfhKE1ENTFoVqUe8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I'm trying to replicate a GNU Radio flowgraph and run it directly in UHD =
4.0 using C++, but I'm running into an issue that I can't solve.

The Python/GNU Radio version works perfectly, but the equivalent C++ impl=
ementation fails at runtime with the following error:

RuntimeError: AccessError: Attempting to read property \`samp_rate@INPUT_=
EDGE:0' before it was initialized!

I already tried configuring the DDC and DUC after the commit, but the pro=
blem still persists and I don't understand why this property is not being=
 initialized correctly.

The RFNoC graph topology is the following:

0/SEP#0:0=3D=3D>0/DUC#0:0

|=C2=A0=C2=A0 |=C2=A0=C2=A0 \* 0/DUC#0:0=3D=3D>0/Radio#0:0

|=C2=A0=C2=A0 |=C2=A0=C2=A0 \* 0/Radio#0:0=3D=3D>0/DDC#0:0

|=C2=A0=C2=A0 |=C2=A0=C2=A0 \* 0/DDC#0:0=3D=3D>0/SEP#0:0

|=C2=A0=C2=A0 |=C2=A0=C2=A0 \* 0/SEP#1:0=3D=3D>0/DUC#0:1

|=C2=A0=C2=A0 |=C2=A0=C2=A0 \* 0/SEP#4:0=3D=3D>0/Block#0:0

|=C2=A0=C2=A0 |=C2=A0=C2=A0 \* 0/Block#0:0=3D=3D>0/SEP#4:0

From what I understand, the issue seems related to the propagation or ini=
tialization order of the samp_rate property across the graph edges, but I=
=E2=80=99m not sure which block is responsible or how GNU Radio handles t=
his internally compared to UHD C++.

Below are the working GNU Radio/Python implementation and the failing UHD=
 C++ implementation:

**Python / GNU Radio code (working)**

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 `# Blocks`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #############################=
#####################`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_tx_radio_0 =3D=
 ettus.rfnoc_tx_radio(self.rfnoc_graph,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd.device_addr(''),`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1,`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_tx_radio_0.s=
et_rate(samp_rate)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_tx_radio_0.s=
et_antenna('TX/RX', 0)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_tx_radio_0.s=
et_frequency(uhd.tune_request(center_freq_out, ((samp_rate*0.5) + 2e6)), =
0)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_tx_radio_0.s=
et_gain(0, 0)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_tx_radio_0.s=
et_bandwidth(samp_rate, 0)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0 =3D=
 ettus.rfnoc_rx_radio(`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.=
rfnoc_graph,`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd.d=
evice_addr("spp=3D16"),`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1,`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0.s=
et_rate(samp_rate)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0.s=
et_antenna('RX2', 0)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0.s=
et_frequency(center_freq_in, 0)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0.s=
et_gain(55, 0)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0.s=
et_agc(False, 0)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0.s=
et_bandwidth(samp_rate, 0)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0.s=
et_dc_offset(True, 0)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_rx_radio_0.s=
et_iq_balance(True, 0)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_duc_0 =3D et=
tus.rfnoc_duc(`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.=
rfnoc_graph,`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd.d=
evice_addr(''),`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1,`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_duc_0.set_fr=
eq(0, 0)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_duc_0.set_in=
put_rate(samp_rate, 0)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_ddc_0 =3D et=
tus.rfnoc_ddc(`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.=
rfnoc_graph,`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd.d=
evice_addr(''),`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1,`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_ddc_0.set_fr=
eq(0, 0)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ettus_rfnoc_ddc_0.set_ou=
tput_rate(samp_rate, 0)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.Filter_Passtaps_Filter_P=
asstaps_0 =3D Filter_Passtaps.Filter_Passtaps(`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.rfnoc_graph,=
`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd.device_addr('=
'),`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1,`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -1)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.Filter_Passtaps_Filter_P=
asstaps_0.set_int_property('user_reg', 0)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.Filter_Passtaps_Filter_P=
asstaps_0.set_int_property('user1_reg', 66)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.Filter_Passtaps_Filter_P=
asstaps_0.set_int_property('user2_reg', -2)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.Filter_Passtaps_Filter_P=
asstaps_0.set_int_property('user3_reg', 0)`

`=C2=A0`

`=C2=A0`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #############################=
#####################`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # Connections`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #############################=
#####################`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.rfnoc_graph.connect(self=
.Filter_Passtaps_Filter_Passtaps_0.get_unique_id(), 0, self.ettus_rfnoc_d=
uc_0.get_unique_id(), 0, self.rfnoc_graph.skip_propagation)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.rfnoc_graph.connect(self=
.ettus_rfnoc_ddc_0.get_unique_id(), 0, self.Filter_Passtaps_Filter_Passta=
ps_0.get_unique_id(), 0, self.rfnoc_graph.skip_propagation)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.rfnoc_graph.connect(self=
.ettus_rfnoc_duc_0.get_unique_id(), 0, self.ettus_rfnoc_tx_radio_0.get_un=
ique_id(), 0, self.rfnoc_graph.skip_propagation)`

`=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.rfnoc_graph.connect(self=
.ettus_rfnoc_rx_radio_0.get_unique_id(), 0, self.ettus_rfnoc_ddc_0.get_un=
ique_id(), 0, self.rfnoc_graph.skip_propagation)`

**UHD C++ code (failing)**

   `uhd::rfnoc::block_id_t rx_radio_id("0/Radio#0");`

`=C2=A0=C2=A0=C2=A0 uhd::rfnoc::block_id_t tx_radio_id("0/Radio#0");`

`=C2=A0`

`=C2=A0=C2=A0=C2=A0 const size_t rx_chan =3D 0; // RX2 normalmente`

`=C2=A0=C2=A0=C2=A0 const size_t tx_chan =3D 0; // TX/RX normalmente`

`=C2=A0`

`=C2=A0=C2=A0=C2=A0 uhd::rfnoc::block_id_t ddc_id("0/DDC#0");`

`=C2=A0=C2=A0=C2=A0 uhd::rfnoc::block_id_t duc_id("0/DUC#0");`

`=C2=A0`

`=C2=A0=C2=A0=C2=A0 uhd::rfnoc::block_id_t filter_id("0/FilterPasstaps#0"=
);`

`=C2=A0=C2=A0=C2=A0 /****************************************************=
******************`

`=C2=A0=C2=A0=C2=A0=C2=A0 * GET BLOCK HANDLES`

`=C2=A0=C2=A0=C2=A0=C2=A0 ***********************************************=
**********************/`

`=C2=A0=C2=A0=C2=A0 auto rx_radio =3D=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 graph->get_block<uhd::rfnoc::radio_control>(rx_radio_id);`

`=C2=A0=C2=A0=C2=A0 auto tx_radio =3D=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 graph->get_block<uhd::rfnoc::radio_control>(tx_radio_id);`

`=C2=A0=C2=A0=C2=A0 auto ddc =3D=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 graph->get_block<uhd::rfnoc::ddc_block_control>(ddc_id);`

`=C2=A0=C2=A0=C2=A0 auto duc =3D=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 graph->get_block<uhd::rfnoc::duc_block_control>(duc_id);`

`=C2=A0=C2=A0=C2=A0 auto filter =3D=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 graph->get_block<uhd::rfnoc::FilterPASStaps_block_ctrl>( filt_id );`\
\
\
`// Configurations Radio RX and TX, DUC and DDC. `\
\
`=C2=A0=C2=A0=C2=A0`

`=C2=A0=C2=A0=C2=A0 graph->connect(rx_radio_id, rx_chan, ddc_id, 0, true)=
;`

`=C2=A0=C2=A0=C2=A0 graph->connect(ddc_id, 0, filter_id, 0, true);`

`=C2=A0=C2=A0=C2=A0 graph->connect(filter_id, 0, duc_id, 0, true);`

`=C2=A0=C2=A0=C2=A0 graph->connect(duc_id, 0, tx_radio_id, tx_chan, true)=
;`

`=C2=A0=C2=A0=C2=A0 std::cout << "Commit graph..." << std::endl;`

`=C2=A0=C2=A0=C2=A0 graph->commit();`

Has anyone encountered something similar or knows the correct initializat=
ion/configuration order for RFNoC DUC/DDC blocks in UHD 4.0 C++?

Any help would be greatly appreciated.\
\
Thanks in advance!!

--b1_yvK2xRzqUOVDgXmULoCBr894XJUfhKE1ENTFoVqUe8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi everyone,</p><p>I'm trying to replicate a GNU Radio flowgraph and run=
 it directly in UHD 4.0 using C++, but I'm running into an issue that I can=
't solve.</p><p>The Python/GNU Radio version works perfectly, but the equiv=
alent C++ implementation fails at runtime with the following error:</p><p>R=
untimeError: AccessError: Attempting to read property `samp_rate@INPUT_EDGE=
:0' before it was initialized!</p><p>I already tried configuring the DDC an=
d DUC after the commit, but the problem still persists and I don't understa=
nd why this property is not being initialized correctly.</p><p>The RFNoC gr=
aph topology is the following:</p><p>0/SEP#0:0=3D=3D&gt;0/DUC#0:0</p><p>|&n=
bsp;&nbsp; |&nbsp;&nbsp; * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0</p><p>|&nbsp;&nbs=
p; |&nbsp;&nbsp; * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0</p><p>|&nbsp;&nbsp; |&nbs=
p;&nbsp; * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0</p><p>|&nbsp;&nbsp; |&nbsp;&nbsp; *=
 0/SEP#1:0=3D=3D&gt;0/DUC#0:1</p><p>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#4:0=
=3D=3D&gt;0/Block#0:0</p><p>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Block#0:0=3D=3D=
&gt;0/SEP#4:0</p><p>From what I understand, the issue seems related to the =
propagation or initialization order of the samp_rate property across the gr=
aph edges, but I=E2=80=99m not sure which block is responsible or how GNU R=
adio handles this internally compared to UHD C++.</p><p>Below are the worki=
ng GNU Radio/Python implementation and the failing UHD C++ implementation:<=
/p><p><strong>Python / GNU Radio code (working)</strong></p><p>&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <code># Blocks</code></p><p><code>&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ##########################################=
########</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self=
.ettus_rfnoc_tx_radio_0 =3D ettus.rfnoc_tx_radio(self.rfnoc_graph,&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd.device_addr('=
'),</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; -1,</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -1)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_tx_radio_0.set_rate(samp_rate)</code>=
</p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_tx=
_radio_0.set_antenna('TX/RX', 0)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_tx_radio_0.set_frequency(uhd.tune_requ=
est(center_freq_out, ((samp_rate*0.5) + 2e6)), 0)</code></p><p><code>&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_tx_radio_0.set_gain(0=
, 0)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ett=
us_rfnoc_tx_radio_0.set_bandwidth(samp_rate, 0)</code></p><p><code>&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_rx_radio_0 =3D ettus.rf=
noc_rx_radio(</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; self.rfnoc_graph,</code></p><p><code>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd.device_addr("spp=
=3D16"),</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; -1,</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -1)</code></p><p><code>&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_rx_radio_0.set_rate(samp_rate)</=
code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfn=
oc_rx_radio_0.set_antenna('RX2', 0)</code></p><p><code>&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_rx_radio_0.set_frequency(center_fre=
q_in, 0)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self=
.ettus_rfnoc_rx_radio_0.set_gain(55, 0)</code></p><p><code>&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_rx_radio_0.set_agc(False, 0)</c=
ode></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfno=
c_rx_radio_0.set_bandwidth(samp_rate, 0)</code></p><p><code>&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_rx_radio_0.set_dc_offset(True,=
 0)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettu=
s_rfnoc_rx_radio_0.set_iq_balance(True, 0)</code></p><p><code>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_duc_0 =3D ettus.rfnoc_duc(</=
code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; self.rfnoc_graph,</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd.device_addr(''),</code></p><p><c=
ode>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -1,<=
/code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; -1)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; self.ettus_rfnoc_duc_0.set_freq(0, 0)</code></p><p><code>&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_duc_0.set_input_rate(samp_rate,=
 0)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettu=
s_rfnoc_ddc_0 =3D ettus.rfnoc_ddc(</code></p><p><code>&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.rfnoc_graph,</code></p><=
p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
uhd.device_addr(''),</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -1,</code></p><p><code>&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -1)</code></p><p><code>&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_rfnoc_ddc_0.set_freq(0, 0)=
</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.ettus_r=
fnoc_ddc_0.set_output_rate(samp_rate, 0)</code></p><p><code>&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; self.Filter_Passtaps_Filter_Passtaps_0 =3D Filt=
er_Passtaps.Filter_Passtaps(</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; self.rfnoc_graph,</code></p><p><code>&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd.device_addr(''),</code></p=
><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -1,</code>=
</p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -1)</co=
de></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.Filter_Pass=
taps_Filter_Passtaps_0.set_int_property('user_reg', 0)</code></p><p><code>&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.Filter_Passtaps_Filter_Passt=
aps_0.set_int_property('user1_reg', 66)</code></p><p><code>&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; self.Filter_Passtaps_Filter_Passtaps_0.set_int_p=
roperty('user2_reg', -2)</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; self.Filter_Passtaps_Filter_Passtaps_0.set_int_property('user3_=
reg', 0)</code></p><p><code>&nbsp;</code></p><p><code>&nbsp;</code></p><p><=
code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ###########################=
#######################</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; # Connections</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; ##################################################</code></p><p=
><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.rfnoc_graph.connect(=
self.Filter_Passtaps_Filter_Passtaps_0.get_unique_id(), 0, self.ettus_rfnoc=
_duc_0.get_unique_id(), 0, self.rfnoc_graph.skip_propagation)</code></p><p>=
<code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.rfnoc_graph.connect(s=
elf.ettus_rfnoc_ddc_0.get_unique_id(), 0, self.Filter_Passtaps_Filter_Passt=
aps_0.get_unique_id(), 0, self.rfnoc_graph.skip_propagation)</code></p><p><=
code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.rfnoc_graph.connect(se=
lf.ettus_rfnoc_duc_0.get_unique_id(), 0, self.ettus_rfnoc_tx_radio_0.get_un=
ique_id(), 0, self.rfnoc_graph.skip_propagation)</code></p><p><code>&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.rfnoc_graph.connect(self.ettus_rfn=
oc_rx_radio_0.get_unique_id(), 0, self.ettus_rfnoc_ddc_0.get_unique_id(), 0=
, self.rfnoc_graph.skip_propagation)</code></p><p><strong>UHD C++ code (fai=
ling)</strong></p><p>   <code>uhd::rfnoc::block_id_t rx_radio_id("0/Radio#0=
");</code></p><p><code>&nbsp;&nbsp;&nbsp; uhd::rfnoc::block_id_t tx_radio_i=
d("0/Radio#0");</code></p><p><code>&nbsp;</code></p><p><code>&nbsp;&nbsp;&n=
bsp; const size_t rx_chan =3D 0; // RX2 normalmente</code></p><p><code>&nbs=
p;&nbsp;&nbsp; const size_t tx_chan =3D 0; // TX/RX normalmente</code></p><=
p><code>&nbsp;</code></p><p><code>&nbsp;&nbsp;&nbsp; uhd::rfnoc::block_id_t=
 ddc_id("0/DDC#0");</code></p><p><code>&nbsp;&nbsp;&nbsp; uhd::rfnoc::block=
_id_t duc_id("0/DUC#0");</code></p><p><code>&nbsp;</code></p><p><code>&nbsp=
;&nbsp;&nbsp; uhd::rfnoc::block_id_t filter_id("0/FilterPasstaps#0");</code=
></p><p><code>&nbsp;&nbsp;&nbsp; /*****************************************=
*****************************</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp; *=
 GET BLOCK HANDLES</code></p><p><code>&nbsp;&nbsp;&nbsp;&nbsp; ************=
*********************************************************/</code></p><p><co=
de>&nbsp;&nbsp;&nbsp; auto rx_radio =3D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; graph-&gt;get_block&lt;uhd::rfnoc::radio_control&gt;(rx_radio_id);</=
code></p><p><code>&nbsp;&nbsp;&nbsp; auto tx_radio =3D&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; graph-&gt;get_block&lt;uhd::rfnoc::radio_control&gt;(=
tx_radio_id);</code></p><p><code>&nbsp;&nbsp;&nbsp; auto ddc =3D&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; graph-&gt;get_block&lt;uhd::rfnoc::ddc_bloc=
k_control&gt;(ddc_id);</code></p><p><code>&nbsp;&nbsp;&nbsp; auto duc =3D&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; graph-&gt;get_block&lt;uhd::rfnoc:=
:duc_block_control&gt;(duc_id);</code></p><p><code>&nbsp;&nbsp;&nbsp; auto =
filter =3D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; graph-&gt;get_block&lt=
;uhd::rfnoc::FilterPASStaps_block_ctrl&gt;( filt_id );<br><br><br>// Config=
urations Radio RX and TX, DUC and DDC. <br><br>&nbsp;&nbsp;&nbsp;</code></p=
><p><code>&nbsp;&nbsp;&nbsp; graph-&gt;connect(rx_radio_id, rx_chan, ddc_id=
, 0, true);</code></p><p><code>&nbsp;&nbsp;&nbsp; graph-&gt;connect(ddc_id,=
 0, filter_id, 0, true);</code></p><p><code>&nbsp;&nbsp;&nbsp; graph-&gt;co=
nnect(filter_id, 0, duc_id, 0, true);</code></p><p><code>&nbsp;&nbsp;&nbsp;=
 graph-&gt;connect(duc_id, 0, tx_radio_id, tx_chan, true);</code></p><p><co=
de>&nbsp;&nbsp;&nbsp; std::cout &lt;&lt; "Commit graph..." &lt;&lt; std::en=
dl;</code></p><p><code>&nbsp;&nbsp;&nbsp; graph-&gt;commit();<br></code><br=
><br><br></p><p><br></p><p>Has anyone encountered something similar or know=
s the correct initialization/configuration order for RFNoC DUC/DDC blocks i=
n UHD 4.0 C++?</p><p>Any help would be greatly appreciated.<br><br>Thanks i=
n advance!!</p>

--b1_yvK2xRzqUOVDgXmULoCBr894XJUfhKE1ENTFoVqUe8--

--===============3687021297960834828==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3687021297960834828==--
