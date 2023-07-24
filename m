Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 897EC75FC7F
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jul 2023 18:47:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F21C384AD1
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jul 2023 12:47:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690217262; bh=CaDh5Fka5XckMt+AiZpQsGazMBP8+LtmGkqqjli2Pu4=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=g3ywhk+Y6Yv6TbInOhvMNpwh2RkXzmWcD7l4KextJALXJp5UoiFvidkwP+lHD9fJH
	 meB78OQyycyNh989fHGBinV8qvVEoYO9QS17YQ6A7DlL6awmG5hv7/4PHxoG8zDckP
	 E644jkIoMBO10gHCCdDPt/uP85Dcqh4QiddDnnePeDYfq/GN2s9F82SfAL5cAzaDWX
	 znOiqYkchvZ+7Vz8vEzntIy14t26VUOHZq6TCx2TvAf5DcFLD6yTT0N/Yg+LWRGL1W
	 fiuCcudVwOL3kEqWEYd31KoRCzkSAqsMKtLrdTfMTFYm1Go/Xm+5V/3jc4ytS9fdk/
	 fql+Cgyny6zMA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0702E384A0C
	for <usrp-users@lists.ettus.com>; Mon, 24 Jul 2023 12:47:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690217224; bh=p+kZmTaeTdDP7IUWDBG6WyXJg8jn3DZoMf9Wl1X1CiM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=vzMtrVhE0Jf9A0wrjddxlSSunt6B4u/7dd5Y08dv99nzAsImcVlxBhmDTLn7Zuh1I
	 9+CXGaTvKyNzkMZmFCdKEH3+bgxU7akNHG/wJrxeUu2y4+3tVCHTrOxEvff+zmiRSR
	 oV4v4MIuKOqBcw+AIzUQf4ZbznMkMVcnGrsWJJA+WSontWJSSbKGAY6iQcio4z0kqn
	 UmH+YCiW/Rf4QB0lzb1EBS7ccBySgrGYk5u0f3H0B0dv5c0VnGz2i+C4UpJ3uRH3z5
	 qcovr0uxmnrUtR6bh/Y8d4QoXBAG7d6KrftOU2IHiBkKmXPsqltF0fn6HS3j2vo/0J
	 nCl3cEp53gbFQ==
Date: Mon, 24 Jul 2023 16:47:04 +0000
To: usrp-users@lists.ettus.com
From: david.fernandes@viveris.fr
Message-ID: <xEnSos7R0tLw9bsXsOWJl1rgJGfoAXMe3qi8uvaR98@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 5ef92dff-226f-a4f1-2695-4ab583dad0ce@gmail.com
MIME-Version: 1.0
Message-ID-Hash: NZH4AM7DKNLLBCVSY2MXL7E2JRBJXRRA
X-Message-ID-Hash: NZH4AM7DKNLLBCVSY2MXL7E2JRBJXRRA
X-MailFrom: david.fernandes@viveris.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: num_recv_frames
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NZH4AM7DKNLLBCVSY2MXL7E2JRBJXRRA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1464340927203474917=="

This is a multi-part message in MIME format.

--===============1464340927203474917==
Content-Type: multipart/alternative;
 boundary="b1_xEnSos7R0tLw9bsXsOWJl1rgJGfoAXMe3qi8uvaR98"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_xEnSos7R0tLw9bsXsOWJl1rgJGfoAXMe3qi8uvaR98
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks for your answer Marcus. I am starting thinking that may be I am ma=
king any mistake in my testing code, so I will post below the code I use =
in the **Rx side** and don=E2=80=99t hesitate to tell me if you see anyth=
ing suspicious :

    `#define BURST_SIZE 2048 // Number of samples per Burst`

`    std::vector<std::complex<float>> mybuff(BURST_SIZE, 0.0);`

`    // Setup streaming`

`    uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CO=
NTINUOUS);`

`    // Configure receive streamer`

`    stream_cmd.num_samps =3D BURST_SIZE; // Number of samples to receive=
 when we call the recv() function`

`    stream_cmd.stream_now =3D true;`

`    rx_stream->issue_stream_cmd(stream_cmd);`

`    uhd::rx_metadata_t md;`

`    rx_stream->recv(&mybuff.front(), mybuff.size(), md);`

`   /*****  Write the received samples in a file **********/ `

`    std::this_thread::sleep_for(std::chrono::milliseconds(600000)); // W=
ait some time...   `

`    rx_stream->recv(&mybuff.front(), mybuff.size(), md); `

`   /*****  Append the received samples in the file **********/ `

`    // Stop receive streamer`

`    stream_cmd.stream_mode =3D uhd::stream_cmd_t::STREAM_MODE_STOP_CONTI=
NUOUS;`

`    rx_stream->issue_stream_cmd(stream_cmd);`

--b1_xEnSos7R0tLw9bsXsOWJl1rgJGfoAXMe3qi8uvaR98
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thanks for your answer Marcus. I am starting thinking that may be I am m=
aking any mistake in my testing code, so I will post below the code I use i=
n the <strong>Rx side</strong> and don=E2=80=99t hesitate to tell me if you=
 see anything suspicious :</p><p>    <code>#define BURST_SIZE 2048 // Numbe=
r of samples per Burst</code></p><p><code>    std::vector&lt;std::complex&l=
t;float&gt;&gt; mybuff(BURST_SIZE, 0.0);</code></p><p><code>    // Setup st=
reaming</code></p><p><code>    uhd::stream_cmd_t stream_cmd(uhd::stream_cmd=
_t::STREAM_MODE_START_CONTINUOUS);</code></p><p><code>    // Configure rece=
ive streamer</code></p><p><code>    stream_cmd.num_samps =3D BURST_SIZE; //=
 Number of samples to receive when we call the recv() function</code></p><p=
><code>    stream_cmd.stream_now =3D true;</code></p><p><code>    rx_stream=
-&gt;issue_stream_cmd(stream_cmd);</code></p><p><code>    uhd::rx_metadata_=
t md;</code></p><p><code>    rx_stream-&gt;recv(&amp;mybuff.front(), mybuff=
.size(), md);</code></p><p><code>   /*****  Write the received samples in a=
 file **********/ </code></p><p><code>    std::this_thread::sleep_for(std::=
chrono::milliseconds(600000)); // Wait some time...   </code></p><p><code> =
   rx_stream-&gt;recv(&amp;mybuff.front(), mybuff.size(), md); </code></p><=
p><code>   /*****  Append the received samples in the file **********/ </co=
de></p><p><code>    // Stop receive streamer</code></p><p><code>    stream_=
cmd.stream_mode =3D uhd::stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS;</code><=
/p><p><code>    rx_stream-&gt;issue_stream_cmd(stream_cmd);</code></p>

--b1_xEnSos7R0tLw9bsXsOWJl1rgJGfoAXMe3qi8uvaR98--

--===============1464340927203474917==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1464340927203474917==--
