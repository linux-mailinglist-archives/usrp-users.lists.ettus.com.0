Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6D58275D3
	for <lists+usrp-users@lfdr.de>; Mon,  8 Jan 2024 17:55:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 64AA6385112
	for <lists+usrp-users@lfdr.de>; Mon,  8 Jan 2024 11:55:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1704732905; bh=AH5iHf32theDPVwvnngarZE9uywUACtM/fyGOY97b3g=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=muobOV8JU1vKlWpUYNuXdGAVUO+lgml+ARd2gYoZEjxcpzK/HwGlM3yXafGHbdwLm
	 r4Qf7qMnS0f25rvIMKfJYgEjVgEwmIBXFU17RUYrF78QePB28Z1l8yppaWy6Emflws
	 aXjMTOMuHgdWeUS9HXuI0LAsgFKn85xfcUgeFIeDq5DNockGMR9VMu56MQ0eiiNzXh
	 99BYuhAvcXqSFgTTLH9dKsOaZ7Sw9YQ+boMunRZYXN8Mvq86Wgb+UyJyTs93nIUdxr
	 RE57k81luMlCtQeulrzJIs0tNJzoJMlkm6ZBYi/N6D84DCYM5ydJ5z5gkPFi6MJvCo
	 mKLXDkZIwfx3g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 41DF33838E9
	for <usrp-users@lists.ettus.com>; Mon,  8 Jan 2024 11:55:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1704732902; bh=FF5gUXPdSK675isMfuEY5lr+LcUCgLplO/XCx6SW05Q=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=oYvfhh5d0xiiHk1JM+a6oeJQ5KduLWC3/Iy3kXxMNOLLV6RiXRKW/2Z0Z/T7VMWU7
	 +WhYpUgdrGxtm7qa44Tsv7D2dt3ji7fWEUO8UfCY0eyrW0ZSqvCbfh3CqO7Jmt7sdN
	 D7Ra1kxXFq1n3nQVzRNVYJWQXVQSsZdSfkxC63KZuGzV8cYXi8ag8UXrr1EW+SGmOT
	 xIlS4c1/Glv3RK2UdAgF3vTnozwxGlPioLBFM2OS6s1kyrCMLR1ZRq9yXLNqJeAcKm
	 Mf+nLWuJHi/do13gs3EXZbpa4c6IbweY60z3CGZto4tYkU4JBzEiYmQDtZoiAAXFPF
	 WdZKEIcpKIo3A==
Date: Mon, 8 Jan 2024 16:55:02 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <9KOjCmwUHbMAfT0J0L1LfR26A5WC08yoWPGg0aBc58@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAGNhwTM6jobd1Ts+DmbGsXGxxD9FrKXUagxSdq=YV7jq45xXZw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: BOGIBEZ6RJS5BX3GPVXRF62G4AA7NSAU
X-Message-ID-Hash: BOGIBEZ6RJS5BX3GPVXRF62G4AA7NSAU
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Benchmarking x410 with Mellanox with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BOGIBEZ6RJS5BX3GPVXRF62G4AA7NSAU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2557009672421618943=="

This is a multi-part message in MIME format.

--===============2557009672421618943==
Content-Type: multipart/alternative;
 boundary="b1_9KOjCmwUHbMAfT0J0L1LfR26A5WC08yoWPGg0aBc58"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_9KOjCmwUHbMAfT0J0L1LfR26A5WC08yoWPGg0aBc58
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I should have updated this chain a bit ago. But I managed to solve the is=
sue a few days ago.

I managed to get it to work and there is a few things that went wrong tha=
t when I fixed the problem was solved=E2=80=A6

It is mentioned in the tutorials that the =E2=80=9Cuhd.conf=E2=80=9D file=
 needs to specify exactly the amount of ports being used to stream data. =
Well additionally, you need to specify no =E2=80=9Cextra=E2=80=9D cores. =
For example, if you are using 1 QSFP port for data streaming, you may use=
 =E2=80=9Cdpdk_corelist=3D2,3=E2=80=9D, then use =E2=80=9Cdpdk_lcore=3D3=E2=
=80=9D for the first address.

Secondly, and I am not immediately at my desk to test this, but I have a =
suspicion that the order of the arguments matter. =E2=80=9Cmgmt_addr=E2=80=
=9D must be specified prior to =E2=80=9Caddr=E2=80=9D. Also, it helps to =
define the RF-45 port statically.

Hope this helps. Here is an example of a command that worked.

./benchmark_rate --rx_rate 245.76e6 --rx_channels 0 --tx_rate 245.76e6 --=
tx_channels 0 --args "mgmt_addr=3D192.168.1.184,addr=3D192.168.10.2,use_d=
pdk=3D1"

--b1_9KOjCmwUHbMAfT0J0L1LfR26A5WC08yoWPGg0aBc58
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I should have updated this chain a bit ago. But I managed to solve the i=
ssue a few days ago.</p><p>I managed to get it to work and there is a few t=
hings that went wrong that when I fixed the problem was solved=E2=80=A6</p>=
<p>It is mentioned in the tutorials that the =E2=80=9Cuhd.conf=E2=80=9D fil=
e needs to specify exactly the amount of ports being used to stream data. W=
ell additionally, you need to specify no =E2=80=9Cextra=E2=80=9D cores. For=
 example, if you are using 1 QSFP port for data streaming, you may use =
=E2=80=9Cdpdk_corelist=3D2,3=E2=80=9D, then use =E2=80=9Cdpdk_lcore=3D3=
=E2=80=9D for the first address.</p><p>Secondly, and I am not immediately a=
t my desk to test this, but I have a suspicion that the order of the argume=
nts matter. =E2=80=9Cmgmt_addr=E2=80=9D must be specified prior to =
=E2=80=9Caddr=E2=80=9D. Also, it helps to define the RF-45 port statically.=
</p><p>Hope this helps. Here is an example of a command that worked.</p><p>=
./benchmark_rate --rx_rate 245.76e6 --rx_channels 0 --tx_rate 245.76e6 --tx=
_channels 0 --args "mgmt_addr=3D192.168.1.184,addr=3D192.168.10.2,use_dpdk=
=3D1"</p>

--b1_9KOjCmwUHbMAfT0J0L1LfR26A5WC08yoWPGg0aBc58--

--===============2557009672421618943==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2557009672421618943==--
