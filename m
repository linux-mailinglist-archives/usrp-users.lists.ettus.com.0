Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFB4B1DA88
	for <lists+usrp-users@lfdr.de>; Thu,  7 Aug 2025 17:06:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 69E2F38639D
	for <lists+usrp-users@lfdr.de>; Thu,  7 Aug 2025 11:06:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754579176; bh=MiQoNguU6TODUKF+5sciXn9g+m9UoNn9/bdbYInjXNU=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=eY8RzwpixM2YeGALeni8ujckFszrdpq+8Fvq/6sL/LutRxmZN9KhVbXaFExzykUCQ
	 xx+DrJBjorVGKO52lLr0NjdIOtWYCzEGzGbqardjjfBrp/cO93tTYl4YfH/nLCb7vy
	 XbxoZGyd1RIpQoyaqmn4PQlJYMmwKeTJwCkr9MsEOqimbwkP8veS3/MoU1U20yKRkW
	 gh4lUmHKFZ3NomiBBJqaywtrlsTNFBd4lNuVKphFKiT20318DsL//mjGNh6LkOEBcd
	 Y3ELuzI7cdpg2h5UefgfQXA8OkrbZ488nVSpDq3oA1x7u7Uv6IKsNE/j9qEzL3B3yX
	 zn9vDKBmfDaGw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E635A385B65
	for <usrp-users@lists.ettus.com>; Thu,  7 Aug 2025 11:05:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754579144; bh=CLyZfeuMPCrFtxpysldiCvrvGU9DEt9ky9Sm3hYJVs0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=VAtwog5LgycZf6TazTrQrH4dTLvWloEuMck5nL0f8sia0639c/lJYJBZ8muz927aG
	 Aph7zG1AfYmJrbKJ/+RRuvToucQ7b+oYze1oeq0kDRQ0sGFSvsmPz7vzcVefPUX5VG
	 NfbAKd+AV81xQN0z8ieI7xorQ+wN+m5m4dUF7eON/l7mDQeMJY6DMblohvyq9gg2Ov
	 tncz3tRAeIM6c8wR962O0iOwUc9ZHvL28vAomZ+9NqKp75UKw9+ID6DV6FTbT7Yt1m
	 jlpdHJIu3KQf68+OeCri7hgjPCnd91w/Qhf7UatJpzOdjAsvXKuNlYpFos55i6NPm7
	 d0Y8H8zqCyI9g==
Date: Thu, 7 Aug 2025 15:05:44 +0000
To: usrp-users@lists.ettus.com
Message-ID: <0ptyuAlb4mxAHduLC1KShfwseszgzHsLZO90raQ7HM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 34b0dd7790ed4764941ef68db06635e8@vastech.co.za
MIME-Version: 1.0
Message-ID-Hash: P4BBN3QFG2XZQER3SYDP2HSAN5ZZFPJS
X-Message-ID-Hash: P4BBN3QFG2XZQER3SYDP2HSAN5ZZFPJS
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: "radio_tx_stb" input on radio_tx_core
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P4BBN3QFG2XZQER3SYDP2HSAN5ZZFPJS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============7439423034458485712=="

This is a multi-part message in MIME format.

--===============7439423034458485712==
Content-Type: multipart/alternative;
 boundary="b1_0ptyuAlb4mxAHduLC1KShfwseszgzHsLZO90raQ7HM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_0ptyuAlb4mxAHduLC1KShfwseszgzHsLZO90raQ7HM
Content-Type: text/plain; charset=us-ascii

Hi Kevin,\
\
As far as I know, the \`radio_\*_stb\` signals are strobe signals that are coming from outside of the image_core from the RF Analog HW on the daughterboards, signaling when the radio data can be transmitted/received.\
They can be understood as signals that are similar to tready signals of the AXI-Stream handshaking mechanism.\
\
If you trace the \`radio_tx_stb\` back to where it is assigned in x4xx.sv, it seems to be assigned based on the \`dac_data_in_tready\` signals:

* X410: https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/x4xx.sv#L2685

* X440: https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/x4xx.sv#L2664

As I understand the \`radio_tx_stb\`, it indicates, that on the same clock cycle as \`radio_tx_stb\` is asserted, the data that you pass to the radio via the \`radio_tx_data\` bus is successfully transferred to the DAC and will be transmitted OTA down the line.

If \`radio_tx_stb\` is not asserted, the radio_tx_data will not be transmitted.

I have not checked all USRP types, and some might not use the strobe signals at all, but at the meaning should be nearly the same for all variants. It looks like e.g. [X300 is not really using it and just constantly asserting it](https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x300/x300_core.v#L689), as it seems it can always accept TX data. 

Please someone with a better understanding correct me if this assumption is wrong.\
\
Hope this helps at least a little. \
\
Regards,\
Niels

--b1_0ptyuAlb4mxAHduLC1KShfwseszgzHsLZO90raQ7HM
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi Kevin,<br><br>As far as I know, the `radio_*_stb` signals are strobe =
signals that are coming from outside of the image_core from the RF Analog H=
W on the daughterboards, signaling when the radio data can be transmitted/r=
eceived.<br>They can be understood as signals that are similar to tready si=
gnals of the AXI-Stream handshaking mechanism.<br><br>If you trace the `rad=
io_tx_stb` back to where it is assigned in x4xx.sv, it seems to be assigned=
 based on the `dac_data_in_tready` signals:</p><ul><li><p>X410: https://git=
hub.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/x4xx.sv#L2685</p>=
</li><li><p>X440: https://github.com/EttusResearch/uhd/blob/master/fpga/usr=
p3/top/x400/x4xx.sv#L2664</p></li></ul><p>As I understand the `radio_tx_stb=
`, it indicates, that on the same clock cycle as `radio_tx_stb` is asserted=
, the data that you pass to the radio via the `radio_tx_data` bus is succes=
sfully transferred to the DAC and will be transmitted OTA down the line.</p=
><p>If `radio_tx_stb` is not asserted, the radio_tx_data will not be transm=
itted.</p><p>I have not checked all USRP types, and some might not use the =
strobe signals at all, but at the meaning should be nearly the same for all=
 variants. It looks like e.g. <a href=3D"https://github.com/EttusResearch/u=
hd/blob/master/fpga/usrp3/top/x300/x300_core.v#L689" title=3D"">X300 is not=
 really using it and just constantly asserting it</a>, as it seems it can a=
lways accept TX data. </p><p>Please someone with a better understanding cor=
rect me if this assumption is wrong.<br><br>Hope this helps at least a litt=
le. <br><br>Regards,<br>Niels</p><p><br><br></p>

--b1_0ptyuAlb4mxAHduLC1KShfwseszgzHsLZO90raQ7HM--

--===============7439423034458485712==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7439423034458485712==--
