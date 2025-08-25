Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 68ED2B33E9B
	for <lists+usrp-users@lfdr.de>; Mon, 25 Aug 2025 14:01:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30E6B38636F
	for <lists+usrp-users@lfdr.de>; Mon, 25 Aug 2025 08:01:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1756123312; bh=tC7S7As5YeUZMbAn5wstCDwjMnLFzLMd8HjtiZds8vs=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=sVlPFC4x4/Xt49ipPrhhtfpf/DGMJVus6i7XFOSYT/lV26kLF3v8t1V7e5805X/XM
	 Mxrt0xZRtuNtjs0/KD8up/oQeEEVIYIH/QxT/ZKpCmEBiTb4NTMYwb9vCHAXMm7I4b
	 JN9JzxK5u/Fo3nKsELDp+YwS5oCEiHeFM5mcmtVNL5l+QlND+HLuOU7DTEUMqackIc
	 wqpldJjMZ6S+/j57W8BwY3C4Cqk/jUXiSE43c3ZcoLdptPBNsmXdy3nd41rUqATa27
	 IQrdYATnZqgfIKkQU0IP6UCPcKE3QBA9cpZ9aPkhnhv2soojGSSuDVgaC4+G/K90os
	 dP9FOVEeNysow==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 53FE6386333
	for <usrp-users@lists.ettus.com>; Mon, 25 Aug 2025 08:01:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1756123307; bh=6IjQUDRG9u/ww/p3AthHFlStQiRVglhSD3jtaLyRUKs=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Ln5CX3Dk/kldM40BQvfnpC9DtQKCbo6T10bZ2x3ldLzhHV2ZKbuDLNipECxRqhmk+
	 +YGdaoqOzlvjJQf2oIgkqIImE6gDJUmhcov4dxbozEmcO2hmovPZ+UTXBpwyi7zj6W
	 GTkvz/bDbRLyaiWf+lhrLc1OAlOl13pRnmwk1YzWKHBcC+4iXbHkeIUKQCm+CS4hTa
	 Zbaiz0IVjrRgB6XNbQSBju0FhOHuycGqs+MdBwT5G5vhFLdwCDyOqipA5IELoQJsj1
	 i179nHSpVyPsKEVfA7pv7T1uY790QE8MeI0G1FhekVPWJCSdT58oHeCevocoF4vmnh
	 GIKk9grS5P+1A==
Date: Mon, 25 Aug 2025 12:01:47 +0000
To: usrp-users@lists.ettus.com
Message-ID: <H5JU1DqQyYvENmiLQEq2fnPJ6nxUJaQ4SDcDYD4ds0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB-=5jZOSTYdbpUYqcMtYzoK=f1LJHWQU5uhyXVC26KGBFg2iw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: I4ON7JGJJZINGKGE5OXQJMTJEEGE6VIK
X-Message-ID-Hash: I4ON7JGJJZINGKGE5OXQJMTJEEGE6VIK
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tlast in the CHDR packet
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I4ON7JGJJZINGKGE5OXQJMTJEEGE6VIK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============1684807752568124184=="

This is a multi-part message in MIME format.

--===============1684807752568124184==
Content-Type: multipart/alternative;
 boundary="b1_H5JU1DqQyYvENmiLQEq2fnPJ6nxUJaQ4SDcDYD4ds0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_H5JU1DqQyYvENmiLQEq2fnPJ6nxUJaQ4SDcDYD4ds0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jons,\
\
I was assuming you were using sc16 (16bit I and 16 bit Q, therefore 32bit=
s for a single sample) as that is what the large majority of users use.\
\
(See https://files.ettus.com/manual/page_stream.html#stream_datatypes) On=
 the host you can have =E2=80=9Clarger=E2=80=9D data types but the stream=
ers usually translate it to something that the FPGA can understand. I am =
suspecting that this is the conversion you found in the tx streamer host =
code.\
\
SC16 is both supported on host and FPGA so that is what almost everyone u=
ses unless you have very specific requirements.

This means samples are 32 bits each on the fpga, and with your CHDR_W of =
128,  you get 4 samples per clock cycle, therefore you will receive your =
 full 32 samples payload in 8 clock cycles(plus at least one for the prep=
ended header) of the \`chdr_clk\`.\
Of course this is the ideal scenario. In reality, this could of course be=
 more clock cycles depending on the AXI-stream tvalid and tready signals =
of your block interfaces, of course.

Regards,\
Niels

--b1_H5JU1DqQyYvENmiLQEq2fnPJ6nxUJaQ4SDcDYD4ds0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Jons,<br><br>I was assuming you were using sc16 (16bit I and 16 bit Q=
, therefore 32bits for a single sample) as that is what the large majority =
of users use.<br><br>(See https://files.ettus.com/manual/page_stream.html#s=
tream_datatypes) On the host you can have =E2=80=9Clarger=E2=80=9D data typ=
es but the streamers usually translate it to something that the FPGA can un=
derstand. I am suspecting that this is the conversion you found in the tx s=
treamer host code.<br><br>SC16 is both supported on host and FPGA so that i=
s what almost everyone uses unless you have very specific requirements.</p>=
<p>This means samples are 32 bits each on the fpga, and with your CHDR_W of=
 128,  you get 4 samples per clock cycle, therefore you will receive your  =
full 32 samples payload in 8 clock cycles(plus at least one for the prepend=
ed header) of the `chdr_clk`.<br>Of course this is the ideal scenario. In r=
eality, this could of course be more clock cycles depending on the AXI-stre=
am tvalid and tready signals of your block interfaces, of course.</p><p>Reg=
ards,<br>Niels</p>

--b1_H5JU1DqQyYvENmiLQEq2fnPJ6nxUJaQ4SDcDYD4ds0--

--===============1684807752568124184==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1684807752568124184==--
