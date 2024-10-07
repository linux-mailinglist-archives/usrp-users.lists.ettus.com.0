Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E4A9933A4
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 18:43:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 756EB385A56
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 12:43:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728319410; bh=2UmqQiwWivuU9XXLgxfAcxFQ8Zkd9U7bdJu3qdTw3mE=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=laPg5S98+ckIOg9f71PnnHp5UfDmJm4bipkatL9ncB4S/iP2czXieq1b4N4UOR2Xx
	 OZfTjr4SmbcC9w4n7scypudqJEOzRKN6XJ6oaHWUnZPdc13O5MwYUr7aHIiWzfcq8x
	 5MQmHvy9xkRDSDNFEQOm2uhzcV5I9OGb+vKX9UholwV3Uyy8n5SVXCt7tgnbWo3act
	 U1xwkDpZdHxXA/CNsG+nEptZTI8pHUa9oQqhU/SZsyBpP0eVwH/S7UjzcAjkP+UF06
	 XWL84qP5Hxy8tkODVTgGvM0mvgKyQrGXm7xJReKNSGHmlmjjcTA4cVYESeteMyuwis
	 EjzUCGxhxKswQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6D11D3859E1
	for <usrp-users@lists.ettus.com>; Mon,  7 Oct 2024 12:43:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728319390; bh=pDLqJpCx4AcAuJKTewM4GDMenfaDMGy1Me2f1sEXB9s=;
	h=Date:To:From:Subject:From;
	b=pvNaYS2FMOzpPtos8kvjAfJaJg4aV8j/npxyQgqjwJY/3V1FjBV0UUrvxQxndYTjO
	 vMFWpsxYawishLXVXr0fzPCQnEntgkReQihWHoX4KbOp1k6ZqlX0zcsMXQ0elr2o9H
	 SCyuDAVsKdJmH7NNItsHLI2yJXNEEMk5oyY7z2c/h2Jy7oEpOwdB6FlnfJjjlXpxw8
	 pMX2cuQmdTjTT/TVE24jh0TNDKiQ6jLnZ838w8dEF2tGaAOsm6LNT1DscBpaPLowxu
	 0UbocR7UeAGKXsVMS649UNU9NZyoke4QgQYcEgW408N8v8tJUS9EyK8YjH5diBBEdu
	 jL/v/Jag29tXQ==
Date: Mon, 7 Oct 2024 16:43:10 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <1hIYAC9aaQbrg89Shz4zifzEIEMakHdKW6A0BHXHgw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: OWR7YUDVOJTM55RKHLBCWF7N7HVFBX6Q
X-Message-ID-Hash: OWR7YUDVOJTM55RKHLBCWF7N7HVFBX6Q
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] "buffer_double_mapped :warning: allocate_buffer:" for dvbt_rx_8k.grc
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OWR7YUDVOJTM55RKHLBCWF7N7HVFBX6Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4203912505382943675=="

This is a multi-part message in MIME format.

--===============4203912505382943675==
Content-Type: multipart/alternative;
 boundary="b1_1hIYAC9aaQbrg89Shz4zifzEIEMakHdKW6A0BHXHgw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_1hIYAC9aaQbrg89Shz4zifzEIEMakHdKW6A0BHXHgw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi, I am running =E2=80=9Cdvbt_rx_8k.grc=E2=80=9D with sample ts file. Th=
e result save to the output file and also with UDP sink I can see the vid=
eo stream in the vlc. But every time it stop after a while and generated =
output ts file with fixed size of 25.2MB. here is the warning I receive g=
nu radio:=20

QSocketNotifier: Can only be used with threads started with QThread

buffer_double_mapped :warning: allocate_buffer: tried to allocate   10 it=
ems of size 6048. Due to alignment requirements   128 were allocated.  If=
 this isn't OK, consider padding   your structure to a power-of-two bytes=
.   On this platform, our allocation granularity is 4096 bytes.

buffer_double_mapped :warning: allocate_buffer: tried to allocate   43 it=
ems of size 1504. Due to alignment requirements   128 were allocated.  If=
 this isn't OK, consider padding   your structure to a power-of-two bytes=
.   On this platform, our allocation granularity is 4096 bytes.

buffer_double_mapped :warning: allocate_buffer: tried to allocate   4 ite=
ms of size 48384. Due to alignment requirements   16 were allocated.  If =
this isn't OK, consider padding   your structure to a power-of-two bytes.=
   On this platform, our allocation granularity is 4096 bytes.

buffer_double_mapped :warning: allocate_buffer: tried to allocate   10 it=
ems of size 6048. Due to alignment requirements   128 were allocated.  If=
 this isn't OK, consider padding   your structure to a power-of-two bytes=
.   On this platform, our allocation granularity is 4096 bytes.

buffer_double_mapped :warning: allocate_buffer: tried to allocate   40 it=
ems of size 1632. Due to alignment requirements   128 were allocated.  If=
 this isn't OK, consider padding   your structure to a power-of-two bytes=
.   On this platform, our allocation granularity is 4096 bytes.

buffer_double_mapped :warning: allocate_buffer: tried to allocate   10 it=
ems of size 6048. Due to alignment requirements   128 were allocated.  If=
 this isn't OK, consider padding   your structure to a power-of-two bytes=
.   On this platform, our allocation granularity is 4096 bytes.

any solution. thank you.

--b1_1hIYAC9aaQbrg89Shz4zifzEIEMakHdKW6A0BHXHgw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi, I am running =E2=80=9Cdvbt_rx_8k.grc=E2=80=9D with sample ts file. T=
he result save to the output file and also with UDP sink I can see the vide=
o stream in the vlc. But every time it stop after a while and generated out=
put ts file with fixed size of 25.2MB. here is the warning I receive gnu ra=
dio: </p><p>QSocketNotifier: Can only be used with threads started with QTh=
read</p><p>buffer_double_mapped :warning: allocate_buffer: tried to allocat=
e   10 items of size 6048. Due to alignment requirements   128 were allocat=
ed.  If this isn't OK, consider padding   your structure to a power-of-two =
bytes.   On this platform, our allocation granularity is 4096 bytes.</p><p>=
buffer_double_mapped :warning: allocate_buffer: tried to allocate   43 item=
s of size 1504. Due to alignment requirements   128 were allocated.  If thi=
s isn't OK, consider padding   your structure to a power-of-two bytes.   On=
 this platform, our allocation granularity is 4096 bytes.</p><p>buffer_doub=
le_mapped :warning: allocate_buffer: tried to allocate   4 items of size 48=
384. Due to alignment requirements   16 were allocated.  If this isn't OK, =
consider padding   your structure to a power-of-two bytes.   On this platfo=
rm, our allocation granularity is 4096 bytes.</p><p>buffer_double_mapped :w=
arning: allocate_buffer: tried to allocate   10 items of size 6048. Due to =
alignment requirements   128 were allocated.  If this isn't OK, consider pa=
dding   your structure to a power-of-two bytes.   On this platform, our all=
ocation granularity is 4096 bytes.</p><p>buffer_double_mapped :warning: all=
ocate_buffer: tried to allocate   40 items of size 1632. Due to alignment r=
equirements   128 were allocated.  If this isn't OK, consider padding   you=
r structure to a power-of-two bytes.   On this platform, our allocation gra=
nularity is 4096 bytes.</p><p>buffer_double_mapped :warning: allocate_buffe=
r: tried to allocate   10 items of size 6048. Due to alignment requirements=
   128 were allocated.  If this isn't OK, consider padding   your structure=
 to a power-of-two bytes.   On this platform, our allocation granularity is=
 4096 bytes.</p><p>any solution. thank you.</p>

--b1_1hIYAC9aaQbrg89Shz4zifzEIEMakHdKW6A0BHXHgw--

--===============4203912505382943675==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4203912505382943675==--
