Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3A0381A9B
	for <lists+usrp-users@lfdr.de>; Sat, 15 May 2021 20:55:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B98993840E5
	for <lists+usrp-users@lfdr.de>; Sat, 15 May 2021 14:55:23 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E97E5383C9A
	for <usrp-users@lists.ettus.com>; Sat, 15 May 2021 14:54:19 -0400 (EDT)
Date: Sat, 15 May 2021 18:54:19 +0000
To: usrp-users@lists.ettus.com
From: hex98@email.de
Message-ID: <fwArTufLxZS6nG0W1eMK4NvPOqwDifSFS32CzC7tM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: LkrzwD7H2sDUp9f6bUFvB7ARmHBpfVmNd5nCDufFys@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: IPRZPGTOJ2ZT7KBKYS2V4D6KJ7E4V4ZE
X-Message-ID-Hash: IPRZPGTOJ2ZT7KBKYS2V4D6KJ7E4V4ZE
X-MailFrom: hex98@email.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed transmissions and recovery from underflow with X300
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IPRZPGTOJ2ZT7KBKYS2V4D6KJ7E4V4ZE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2640077981096996148=="

This is a multi-part message in MIME format.

--===============2640077981096996148==
Content-Type: multipart/alternative;
 boundary="b1_fwArTufLxZS6nG0W1eMK4NvPOqwDifSFS32CzC7tM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_fwArTufLxZS6nG0W1eMK4NvPOqwDifSFS32CzC7tM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I think I=E2=80=99ve solved my problem. Here are some lessons learned tha=
t may perhaps help others:

**Blocking tx_streamer::send()**

I falsely assumed a send() with time_spec would result in a blocking call=
. But send only seems to block once the TX FIFO in the USRP is full. Acco=
rdingly the call with time_spec returns after sending the samples over th=
e network, and also four more send calls return immediately in my case. O=
nly then the TX FIFO is full and a subsequent send() will block. The numb=
er of initial send calls before blocking of course depends on the FIFO si=
ze, number of samples, etc.

**end_of_burst**

Any send() call with a time_spec after the first requires a prior end_of_=
burst. Without it, the time_spec is ignored and the USRP transmits the da=
ta right away. In my case I call send with end_of_burst=3Dtrue and zero s=
amples. Afterwards the time_spec of the following transmission is conside=
red.

---

--b1_fwArTufLxZS6nG0W1eMK4NvPOqwDifSFS32CzC7tM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I think I=E2=80=99ve solved my problem. Here are some lessons learned th=
at may perhaps help others:</p><p><br></p><p><strong>Blocking tx_streamer::=
send()</strong></p><p>I falsely assumed a send() with time_spec would resul=
t in a blocking call. But send only seems to block once the TX FIFO in the =
USRP is full. Accordingly the call with time_spec returns after sending the=
 samples over the network, and also four more send calls return immediately=
 in my case. Only then the TX FIFO is full and a subsequent send() will blo=
ck. The number of initial send calls before blocking of course depends on t=
he FIFO size, number of samples, etc.</p><p><br></p><p><strong>end_of_burst=
</strong></p><p>Any send() call with a time_spec after the first requires a=
 prior end_of_burst. Without it, the time_spec is ignored and the USRP tran=
smits the data right away. In my case I call send with end_of_burst=3Dtrue =
and zero samples. Afterwards the time_spec of the following transmission is=
 considered.</p><div class=3D"" contenteditable=3D"false"><hr></div>

--b1_fwArTufLxZS6nG0W1eMK4NvPOqwDifSFS32CzC7tM--

--===============2640077981096996148==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2640077981096996148==--
