Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2E8ABF81C
	for <lists+usrp-users@lfdr.de>; Wed, 21 May 2025 16:45:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 031F2384E7A
	for <lists+usrp-users@lfdr.de>; Wed, 21 May 2025 10:45:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747838728; bh=VnvI69bT+aaqT0+whHjeLB+QWHWeDRc//40+MskEVzc=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ClmQv2OWW/2ogsa5y9EtlvksADVA5uK8Lttcrr0w/YB0pt7phHvkoBRcxBAzU5Dqs
	 t/l2CjfoW4VvkMRtlsYMlngtRhmgT9SmMdOTH3yxy2utnfloE64c6DE6pPgc1dhpu8
	 x2CSdPdHhTKq1zSGSQp0uqzxq517W8JVFZnH8XsqBGshXq+QegJYU2C8JmVISRL8+U
	 TBKBivH2jjSBsQmkdRFgak2ZQ8TYLAkyf5WZ5ppJEzUYQAEO3qBdW4oe5lmKQTh+Tm
	 q0XilddTlmGy7Rz0lRuzGnJKN/XfJ32DHabpJfbIbarvE1bUCkrD47E+8Qoes8C+Hl
	 gj+s289W5W9zA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D90EF384C3E
	for <usrp-users@lists.ettus.com>; Wed, 21 May 2025 10:44:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747838691; bh=zxU6jbh04Mw79S7hJes6n4fIDk1pZC7JHVw4xktuRbs=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=MAhkQRfp8HiVpBqlN+VTt3pXuZFotGek2/LuZ2yE7x8v6TWRiR4Vz3sPatolFIyQ6
	 LzVLp5MxA4diqz5blhAZUB0KOPX7KcmOurlQy8HMIq3hZOCLc+SpgfgAAm4MgulAoJ
	 uCEgS6Kipsfc1/X6RVm6KMIKnDlM6V19sU8QLnnMhaYg2Av8VjHiZqAQP2KXqbAKzy
	 ov1JEUOe+xj62phbbqLuNEfNnLPkUfI9P9S1KcHUcSb0FFJvPpVj2xiQFTG+wBg7LT
	 E8EvT/5r+NiT+yySI0xHafBm9P6u/UEjUikTxwK2wXKAOdFFrWMHw2tZceagFsx/PR
	 wFE2gyGMq/cMg==
Date: Wed, 21 May 2025 14:44:51 +0000
To: usrp-users@lists.ettus.com
From: carmixdev@gmail.com
Message-ID: <pWHBwjrZjDYkwBoTvUU0t8j8Fs9Tgy5BcdTMQaUXXFg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A5N+27bWMHUoUNgzdBtd2Ya8L7f=1Xo8cZwAyKrHQ1Mkg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: GVQISAYZBBCLZ5JLQHB4FTFPRLFNC3JV
X-Message-ID-Hash: GVQISAYZBBCLZ5JLQHB4FTFPRLFNC3JV
X-MailFrom: carmixdev@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Signal quality using RFNoC DUC blocks
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GVQISAYZBBCLZ5JLQHB4FTFPRLFNC3JV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5861197966436860524=="

This is a multi-part message in MIME format.

--===============5861197966436860524==
Content-Type: multipart/alternative;
 boundary="b1_pWHBwjrZjDYkwBoTvUU0t8j8Fs9Tgy5BcdTMQaUXXFg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_pWHBwjrZjDYkwBoTvUU0t8j8Fs9Tgy5BcdTMQaUXXFg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Yes Martin, for example I=E2=80=99m working on a X310+UBX160 with a multi=
channel DUC that has 4 inputs each one with a different frequency offset =
and then i sum the outputs with the addsub rfnoc block(I generated the FP=
GA firmware accordingly).

Actually I managed to have it work correctly but I had to discover by mys=
elf some oddities, the correct steps in my configuration are in order:

1-configure the graph according to my needs (radio_control, duc, streamer=
)

2-set the RF output frequency on the radio control

3-make the tune request through the streamer

4-set the desired frequency offset on the DUC (for example: -10e6, -5e6, =
5e6, 10e6)

The last step is the more critical, in order to get the exact offset I ha=
d first to get the starting frequency offset of the DUC (which is not zer=
o after the tune request, but just on the first channel of the DUC!!!) an=
d then to sum up that residual frequency offset (which actually counts fe=
w kHz) to the desired frequency offset.

If I miss this step it won=E2=80=99t have the exact offset needed.

It seems to me a bit clumsy, is there a cleaner way to do it?

--b1_pWHBwjrZjDYkwBoTvUU0t8j8Fs9Tgy5BcdTMQaUXXFg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Yes Martin, for example I=E2=80=99m working on a X310+UBX160 with a mult=
ichannel DUC that has 4 inputs each one with a different frequency offset a=
nd then i sum the outputs with the addsub rfnoc block(I generated the FPGA =
firmware accordingly).</p><p>Actually I managed to have it work correctly b=
ut I had to discover by myself some oddities, the correct steps in my confi=
guration are in order:</p><p>1-configure the graph according to my needs (r=
adio_control, duc, streamer)</p><p>2-set the RF output frequency on the rad=
io control</p><p>3-make the tune request through the streamer</p><p>4-set t=
he desired frequency offset on the DUC (for example: -10e6, -5e6, 5e6, 10e6=
)</p><p>The last step is the more critical, in order to get the exact offse=
t I had first to get the starting frequency offset of the DUC (which is not=
 zero after the tune request, but just on the first channel of the DUC!!!) =
and then to sum up that residual frequency offset (which actually counts fe=
w kHz) to the desired frequency offset.</p><p>If I miss this step it won=
=E2=80=99t have the exact offset needed.</p><p>It seems to me a bit clumsy,=
 is there a cleaner way to do it?</p>

--b1_pWHBwjrZjDYkwBoTvUU0t8j8Fs9Tgy5BcdTMQaUXXFg--

--===============5861197966436860524==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5861197966436860524==--
