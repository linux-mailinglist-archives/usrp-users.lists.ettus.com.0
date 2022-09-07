Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CA95B0812
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 17:10:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7B133384A8F
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 11:10:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662563410; bh=S+IWPlOOIvqU3v/J+w3U2ZKKhdvRWeF1XuDqUI6jgQU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=S8l+uW07qY9mwwgM4PsX8fiQ09WodkKlinHeXjwvJna2XWKdPgY3R+TZdc31bbFSR
	 d7WjKRtj3ApZjGQdz0triVnAzFI/ysCOgQiL24HEQprE15AsZgjCaWuJ7KSOTfawnj
	 VGumekt5H0Ew/OmlRGPN6XkcJpAmQx8aiOlG0IfUB0v+3AFtCF3TSi15lal7WOeekf
	 8T1N69xpqfkx4UimmLDfHOdFo0YkYxERtL1n1bZfpKjDNyeGinIWbOjhXdRpdMYGHW
	 UzRyrbFc+vVi6FtgmXGHo0G36kefnmZwOxJouUHzre3krYbbTs0gHu7zX8WACOJsng
	 v86skmNQPe7sA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 385A1384523
	for <usrp-users@lists.ettus.com>; Wed,  7 Sep 2022 11:09:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662563358; bh=Gy8Tqwksu2KrNxRyIS6meCQwiqzof2jYZ8zylOrBAn0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=jS/dqLkG7/tcg9iRaS+82n02/dBx/xbnRdeZiLQrLgK9UO+AChDiWfXmDoUv+TvFf
	 QzgE+dR5X0Qb4OqG0qtShNSWy+yYRzWMTydvwNEJuMSMLWScoreRu03I+IAeko1XB1
	 bJu0yzZkW/bIzDKvM8eK3xxyjXBxVQyfmcBYjd9QVe/uOjaAj5ZKuQi3XnqgshlmTt
	 Q2QVBAJ6cepL/wkSycinuiC/7m5NclnaVbQyqw3O3RW9gDKahbfA7hxU76weXTe8wo
	 G1030sep2zsUAnn7xoLyQmiVW22YYD1XiwcsWfJJcLLQLeszvBlwKudAsP2JIdzEE6
	 ulRkb09B/R4Bw==
Date: Wed, 7 Sep 2022 15:09:18 +0000
To: usrp-users@lists.ettus.com
From: mamuki92@gmail.com
Message-ID: <rxoU71TBLC5fX5oJOCafYwVDX7e9yxU9ftsi8gIQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 4NDzRjIZp7KswMwJnI4ZbcC1LX1c5NuFCqk0AHp94@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: TTAXWCK3OWKVFCMYTVDSMMQDQ4NC5T6G
X-Message-ID-Hash: TTAXWCK3OWKVFCMYTVDSMMQDQ4NC5T6G
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bitstream encryption
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TTAXWCK3OWKVFCMYTVDSMMQDQ4NC5T6G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3874633054004893280=="

This is a multi-part message in MIME format.

--===============3874633054004893280==
Content-Type: multipart/alternative;
 boundary="b1_rxoU71TBLC5fX5oJOCafYwVDX7e9yxU9ftsi8gIQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_rxoU71TBLC5fX5oJOCafYwVDX7e9yxU9ftsi8gIQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Piotr,

\
In this thread: https://lists.ettus.com/empathy/thread/JWF3VHGY3YUT62B6CD=
CPZ5R5PF7AUV7D?hash=3DMVUXQUQBPY7DS7PEZMWMYFVPFZN26YDF#MVUXQUQBPY7DS7PEZM=
WMYFVPFZN26YDF\
Martin said that it could be possible to encrypt a netlist with RFNoC, so=
 that=E2=80=99s why I wonder how I could do that using the rfnoc framewor=
k tools (rfnoc_image_builder, uhd_image_loader, etc)

Kind regards,

Maria

--b1_rxoU71TBLC5fX5oJOCafYwVDX7e9yxU9ftsi8gIQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Piotr,</p><p><br>In this thread: https://lists.ettus.com/empathy/th=
read/JWF3VHGY3YUT62B6CDCPZ5R5PF7AUV7D?hash=3DMVUXQUQBPY7DS7PEZMWMYFVPFZN2=
6YDF#MVUXQUQBPY7DS7PEZMWMYFVPFZN26YDF<br>Martin said that it could be pos=
sible to encrypt a netlist with RFNoC, so that=E2=80=99s why I wonder how=
 I could do that using the rfnoc framework tools (rfnoc_image_builder, uh=
d_image_loader, etc)</p><p>Kind regards,</p><p>Maria<br><br></p>


--b1_rxoU71TBLC5fX5oJOCafYwVDX7e9yxU9ftsi8gIQ--

--===============3874633054004893280==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3874633054004893280==--
