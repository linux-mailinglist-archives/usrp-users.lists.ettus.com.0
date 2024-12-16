Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6382D9F32BA
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 15:15:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F35C338583C
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 09:15:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734358551; bh=ilBIpf5SR7bHQVrU8adjchJgtGykC5BQPhXMW4+0Dk4=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=l4h2W3vBg3V0nDP5N+l0tyOaJ2pUuL9wKCUWqaDrvZoNC9rut6e2eRUlNL6cExp7y
	 rQuKWOaAMZ7NIsJnsFYvw0BMrcwNnzZMB2M2vKYkeq+1JQYHLtC8DHtzhgW/ffX69Z
	 OtfCA/EsJMuZiRiMmkXYVhZVKsP02UZwg612CQudAWt9BiWymKzDdXz0HOkyGjgnz1
	 RAsQE2ovu7MWhUcupybdHdeRP1TWpsXbQmYbqmg2v+wJwyEV47UE2aPmtHoaN/avQa
	 PFhEApWdXJzvJXfI8K27nUYv+/iFmoJVG9mb/45C3O+a8BsrH3hQO9+V2fWTSen3bj
	 v1iv67NCudPgg==
Received: from smtp.freepro.com (smtp.freepro.com [88.212.152.147])
	by mm2.emwd.com (Postfix) with ESMTPS id DCCDD3850CC
	for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2024 09:15:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=novagrid.com header.i=@novagrid.com header.b="AR9a3PlH";
	dkim-atps=neutral
Received: from mail.novagrid.com (unknown [IPv6:2a05:6e02:104a:e10:9209:d0ff:fe1f:9359])
	by smtp.freepro.com (Postfix) with ESMTPS id 4YBhmj45bTzctlZ
	for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2024 15:15:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=novagrid.com;
	s=default; t=1734358533;
	bh=5mr3CjxmBmhhG1Cqfcop3rYLFEG1xqik5iJV74MDECE=;
	h=Date:To:From:Subject;
	b=AR9a3PlHrXudsy2VvUKsEzXvw0lU1RDUODej9ARfqwwTB+G1P8Fe0cfP5dh7lBDqe
	 F6Oiiy21yBJ6SUfLzp/ZMhbGlLj7kmaquczskpSZLIz2brGp4XZAXNdVovBmCr+kJL
	 3pxE2A6Yu1iYNLVyWD3ZCv4A9J5ciCGs/U1i5T+E=
Message-ID: <244d0fbb-2687-c74e-0b9d-e1de1122d382@novagrid.com>
Date: Mon, 16 Dec 2024 15:15:32 +0100
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
Content-Language: en-US, fr
From: Christophe Grimault <christophe.grimault@novagrid.com>
X-Synology-Spam-Status: score=-0.1, required 5, FROM_HAS_DN 0, FROM_EQ_ENVFROM 0, HTML_MISSING_CTYPE 0, TO_DN_NONE 0, TO_MATCH_ENVRCPT_ALL 0, MIME_GOOD -0.1, __PDS_HTML_LENGTH_2048 0, MID_RHS_MATCH_FROM 0, NO_RECEIVED -0.001, RCVD_COUNT_ZERO 0, HTML_MESSAGE 0.001, ARC_NA 0, RCPT_COUNT_ONE 0, MISSING_XM_UA 0, MIME_TRACE 0, __FILL_THIS_FORM_SHORT 0, T_FILL_THIS_FORM_SHORT 0, __NOT_SPOOFED 0
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
Message-ID-Hash: TR6X5J6UVATY5GM6IU5CQKEAHFLOWLRK
X-Message-ID-Hash: TR6X5J6UVATY5GM6IU5CQKEAHFLOWLRK
X-MailFrom: christophe.grimault@novagrid.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Sampling channels at different rates
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TR6X5J6UVATY5GM6IU5CQKEAHFLOWLRK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6058300258874396184=="

This is a multi-part message in MIME format.
--===============6058300258874396184==
Content-Type: multipart/alternative;
 boundary="------------8VavGy6jTLFRAZaYApazTMLU"
Content-Language: en-US, fr

This is a multi-part message in MIME format.
--------------8VavGy6jTLFRAZaYApazTMLU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Dear users,

I'm using python wrappers with UHD >=3D 4.5 and a X300 with 2 twinRx.

I would like to know if it is possible to create a streamer, for more=20
than N channels, with a sampling rate which different for each channel.

As for now, when I try this, I get all my 4 channels with the same=20
sampling rate, which is the one of the last channel added.

Is it just possible to do it ? Say, for example,=C2=A0 have a streamer wi=
th 2=20
channels :

  * chan 0 on fc =3D 140 Mhz, rx_rate=3D20 MS/s
  * chan 1 on fc =3D 140 MHz, rx_rate=3D1 MS/s

Thanks in advance

Chris


--=20
Christophe Grimault
NovaGrid SAS
Les Jardins de la Teillais
3, all=C3=A9e de la grande =C3=A9galonne
35740 Pac=C3=A9, France
Tel : (33)2 23 41 37 97
Mob: (33)6 82 22 46 93
www.novagrid.com

--------------8VavGy6jTLFRAZaYApazTMLU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Dear users,</p>
    <p>I'm using python wrappers with UHD &gt;=3D 4.5 and a X300 with 2
      twinRx.</p>
    <p>I would like to know if it is possible to create a streamer, for
      more than N channels, with a sampling rate which different for
      each channel.</p>
    <p>As for now, when I try this, I get all my 4 channels with the
      same sampling rate, which is the one of the last channel added.</p>
    <p>Is it just possible to do it ? Say, for example,=C2=A0 have a stre=
amer
      with 2 channels : <br>
    </p>
    <ul>
      <li>chan 0 on fc =3D 140 Mhz, rx_rate=3D20 MS/s</li>
      <li>chan 1 on fc =3D 140 MHz, rx_rate=3D1 MS/s</li>
    </ul>
    <p>Thanks in advance<br>
    </p>
    <p>Chris<br>
    </p>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Christophe Grimault
NovaGrid SAS
Les Jardins de la Teillais
3, all=C3=A9e de la grande =C3=A9galonne
35740 Pac=C3=A9, France
Tel : (33)2 23 41 37 97
Mob: (33)6 82 22 46 93
<a class=3D"moz-txt-link-abbreviated" href=3D"http://www.novagrid.com">ww=
w.novagrid.com</a></pre>
  </body>
</html>

--------------8VavGy6jTLFRAZaYApazTMLU--

--===============6058300258874396184==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6058300258874396184==--
