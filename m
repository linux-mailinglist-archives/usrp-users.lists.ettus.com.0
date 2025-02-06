Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1736DA2AFA3
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2025 19:02:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA177385E15
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2025 13:02:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738864934; bh=VziXHT2hn2ii2zzO0nUUG10SySyXRESmSVeDugi26WU=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=ut9W1hIUJewSzly8DKkKtXfGclObXOD+H6bJkpy6QIlU+tIVUYoPAeGzEM+l4rqzX
	 DO6EYgisGVGrkxRUD5vDqZFvK2wW8UuoBzIzGDV4HG7SqYxKOuhGmwx9pJwbJwSRk0
	 VaYe6njl/zHrVs+HhptPrqAGkyHCyjxzRN+j0ajFVrUUO37gvAMxeg36wIjjXq3Nt2
	 JrIuEfl+U8dVVg8I5qHAzSTzbID6dPFvm4NIKa6QecEzZR3Ks0qxyDI9Eb/J8yr1Mz
	 Y0Z+BrVaqjOm7V+VJ5e31/KA8KV7pj3R3D9bnnukZ42PtdctG54DWwSTBp5Tjx6fMG
	 XNU9VyQ83f9Rw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E10E6383B31
	for <usrp-users@lists.ettus.com>; Thu,  6 Feb 2025 13:02:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738864920; bh=BprUu4w2tR0urGBgppRmpR+uTUPUY2sNYPhibP83v6k=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=EdL36O47Kjm+cTNOYaRinCUKp9WUqBYxZDSTXXMRhnlRkOnyUMICMhFMVVt+sNrry
	 1TM8CyI09mpk9cigygL76AQdHV+AQs4z7LnmQKDQqe5n5XNg3+vcDvdnt7mYxJm2Im
	 bNhKS70kbG9Lx5zlsXhQIuYqqEn8RgoCR7DypSSfsWbYWz7K5AqrbgdKCv0SJtx8ZV
	 mdFVk/NufMoZU5iqEp4fOgFJBXsJYwIETAbxAp1IZBQYuhO1S7OGMfLbsE4r5az5SY
	 lx1wLLpGNg+smrkChJDdie7ouoMBA14tu88eLjEUbVeSiHz+NsaQm09MfmDOuDWuFv
	 SzcZHoE78nrSQ==
Date: Thu, 6 Feb 2025 18:02:00 +0000
To: usrp-users@lists.ettus.com
Message-ID: <nB2NM1pnMJtpMWF7QeSNOzqxO9ATE0c8BGiGdr5VM1E@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 43b36a57-2b85-455f-b1c7-4d51d7936607@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 6OMSL3P5KTFFURTWM6AJHDDXPLCWMREG
X-Message-ID-Hash: 6OMSL3P5KTFFURTWM6AJHDDXPLCWMREG
X-MailFrom: rilbert.silva@embedded.ufcg.edu.br
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error when running Benchmark on USRP X440: RfnocError - OpTimeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6OMSL3P5KTFFURTWM6AJHDDXPLCWMREG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rilbert Lima via USRP-users <usrp-users@lists.ettus.com>
Reply-To: rilbert.silva@embedded.ufcg.edu.br
Content-Type: multipart/mixed; boundary="===============1163834051739945508=="

This is a multi-part message in MIME format.

--===============1163834051739945508==
Content-Type: multipart/alternative;
 boundary="b1_nB2NM1pnMJtpMWF7QeSNOzqxO9ATE0c8BGiGdr5VM1E"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_nB2NM1pnMJtpMWF7QeSNOzqxO9ATE0c8BGiGdr5VM1E
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I ran the test using 5e6, however, the same error occurred.

root@ni-x4xx-342597F:/usr/lib/uhd/examples# ./benchmark_rate --rx_rate 5e=
6 --tx_rate 5e6

=E2=80=A6

\[00:00:04.955692172\] Setting device timestamp to 0...

\[WARNING\] \[0/Radio#0\] Requesting invalid sampling rate from device: 5=
 MHz. Actual rate is: 368.64 MHz.

\[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual rat=
e is 368.640 MHz

\[WARNING\] \[0/Radio#0\] Requesting invalid sampling rate from device: 5=
 MHz. Actual rate is: 368.64 MHz.

\[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual rat=
e is 368.640 MHz

\[WARNING\] \[0/Radio#0\] Requesting invalid sampling rate from device: 5=
 MHz. Actual rate is: 368.64 MHz.

\[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual rat=
e is 368.640 MHz

\[WARNING\] \[0/Radio#0\] Requesting invalid sampling rate from device: 5=
 MHz. Actual rate is: 368.64 MHz.

\[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual rat=
e is 368.640 MHz

\[WARNING\] \[0/Radio#1\] Requesting invalid sampling rate from device: 5=
 MHz. Actual rate is: 368.64 MHz.

\[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual rat=
e is 368.640 MHz

\[WARNING\] \[0/Radio#1\] Requesting invalid sampling rate from device: 5=
 MHz. Actual rate is: 368.64 MHz.

\[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual rat=
e is 368.640 MHz

\[WARNING\] \[0/Radio#1\] Requesting invalid sampling rate from device: 5=
 MHz. Actual rate is: 368.64 MHz.

\[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual rat=
e is 368.640 MHz

\[WARNING\] \[0/Radio#1\] Requesting invalid sampling rate from device: 5=
 MHz. Actual rate is: 368.64 MHz.

\[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual rat=
e is 368.640 MHz

\[00:00:04.967447052\] Testing receive rate 368.640000 Msps on 1 channels

\[WARNING\] \[0/Radio#0\] Requesting invalid sampling rate from device: 5=
 MHz. Actual rate is: 368.64 MHz.

\[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual rat=
e is 368.640 MHz

\[WARNING\] \[0/Radio#0\] Requesting invalid sampling rate from device: 5=
 MHz. Actual rate is: 368.64 MHz.

\[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual rat=
e is 368.640 MHz

\[WARNING\] \[0/Radio#0\] Requesting invalid sampling rate from device: 5=
 MHz. Actual rate is: 368.64 MHz.

\[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual rat=
e is 368.640 MHz

\[WARNING\] \[0/Radio#0\] Requesting invalid sampling rate from device: 5=
 MHz. Actual rate is: 368.64 MHz.

\[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual rat=
e is 368.640 MHz

\[WARNING\] \[0/Radio#1\] Requesting invalid sampling rate from device: 5=
 MHz. Actual rate is: 368.64 MHz.

\[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual rat=
e is 368.640 MHz

\[WARNING\] \[0/Radio#1\] Requesting invalid sampling rate from device: 5=
 MHz. Actual rate is: 368.64 MHz.

\[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual rat=
e is 368.640 MHz

Setting TX spp to 352

\[WARNING\] \[0/Radio#1\] Requesting invalid sampling rate from device: 5=
 MHz. Actual rate is: 368.64 MHz.

OO\[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual r=
ate is 368.640 MHz

\[WARNING\] \[0/Radio#1\] Requesting invalid sampling rate from device: 5=
 MHz. Actual rate is: 368.64 MHz.

\[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual rat=
e is 368.640 MHz

\[00:00:05.301642718\] Receiver error: ERROR_CODE_TIMEOUT, continuing...

\[00:00:05.301663748\] Testing transmit rate 368.640000 Msps on 1 channel=
s

UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUOUUUUUUterminate called after throwing an inst'

\[14450.111391\] audit: type=3D1701 audit(1738864692.914:16): auid=3D4294=
967295 uid=3D0 gid=3D0 ses=3D4294967295 subj=3Dkernel pid=3D1132 comm=3D"=
bmark_rx_stream" exe=3D"/usr/lib/uhd/examples/benchmark_rate" sig=3D6 res=
=3D1

  what():  RfnocError: OpTimeout: Control operation timed out waiting for=
 ACK

Aborted

--b1_nB2NM1pnMJtpMWF7QeSNOzqxO9ATE0c8BGiGdr5VM1E
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I ran the test using 5e6, however, the same error occurred.</p><p><br></=
p><p>root@ni-x4xx-342597F:/usr/lib/uhd/examples# ./benchmark_rate --rx_rate=
 5e6 --tx_rate 5e6</p><p>=E2=80=A6</p><p>[00:00:04.955692172] Setting devic=
e timestamp to 0...</p><p>[WARNING] [0/Radio#0] Requesting invalid sampling=
 rate from device: 5 MHz. Actual rate is: 368.64 MHz.</p><p>[WARNING] [MULT=
I_USRP] Could not set RX rate to 5.000 MHz. Actual rate is 368.640 MHz</p><=
p>[WARNING] [0/Radio#0] Requesting invalid sampling rate from device: 5 MHz=
. Actual rate is: 368.64 MHz.</p><p>[WARNING] [MULTI_USRP] Could not set RX=
 rate to 5.000 MHz. Actual rate is 368.640 MHz</p><p>[WARNING] [0/Radio#0] =
Requesting invalid sampling rate from device: 5 MHz. Actual rate is: 368.64=
 MHz.</p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actu=
al rate is 368.640 MHz</p><p>[WARNING] [0/Radio#0] Requesting invalid sampl=
ing rate from device: 5 MHz. Actual rate is: 368.64 MHz.</p><p>[WARNING] [M=
ULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate is 368.640 MHz</=
p><p>[WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 5 =
MHz. Actual rate is: 368.64 MHz.</p><p>[WARNING] [MULTI_USRP] Could not set=
 RX rate to 5.000 MHz. Actual rate is 368.640 MHz</p><p>[WARNING] [0/Radio#=
1] Requesting invalid sampling rate from device: 5 MHz. Actual rate is: 368=
.64 MHz.</p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. A=
ctual rate is 368.640 MHz</p><p>[WARNING] [0/Radio#1] Requesting invalid sa=
mpling rate from device: 5 MHz. Actual rate is: 368.64 MHz.</p><p>[WARNING]=
 [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate is 368.640 MH=
z</p><p>[WARNING] [0/Radio#1] Requesting invalid sampling rate from device:=
 5 MHz. Actual rate is: 368.64 MHz.</p><p>[WARNING] [MULTI_USRP] Could not =
set RX rate to 5.000 MHz. Actual rate is 368.640 MHz</p><p>[00:00:04.967447=
052] Testing receive rate 368.640000 Msps on 1 channels</p><p>[WARNING] [0/=
Radio#0] Requesting invalid sampling rate from device: 5 MHz. Actual rate i=
s: 368.64 MHz.</p><p>[WARNING] [MULTI_USRP] Could not set TX rate to 5.000 =
MHz. Actual rate is 368.640 MHz</p><p>[WARNING] [0/Radio#0] Requesting inva=
lid sampling rate from device: 5 MHz. Actual rate is: 368.64 MHz.</p><p>[WA=
RNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate is 368.=
640 MHz</p><p>[WARNING] [0/Radio#0] Requesting invalid sampling rate from d=
evice: 5 MHz. Actual rate is: 368.64 MHz.</p><p>[WARNING] [MULTI_USRP] Coul=
d not set TX rate to 5.000 MHz. Actual rate is 368.640 MHz</p><p>[WARNING] =
[0/Radio#0] Requesting invalid sampling rate from device: 5 MHz. Actual rat=
e is: 368.64 MHz.</p><p>[WARNING] [MULTI_USRP] Could not set TX rate to 5.0=
00 MHz. Actual rate is 368.640 MHz</p><p>[WARNING] [0/Radio#1] Requesting i=
nvalid sampling rate from device: 5 MHz. Actual rate is: 368.64 MHz.</p><p>=
[WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate is 3=
68.640 MHz</p><p>[WARNING] [0/Radio#1] Requesting invalid sampling rate fro=
m device: 5 MHz. Actual rate is: 368.64 MHz.</p><p>[WARNING] [MULTI_USRP] C=
ould not set TX rate to 5.000 MHz. Actual rate is 368.640 MHz</p><p>Setting=
 TX spp to 352</p><p>[WARNING] [0/Radio#1] Requesting invalid sampling rate=
 from device: 5 MHz. Actual rate is: 368.64 MHz.</p><p>OO[WARNING] [MULTI_U=
SRP] Could not set TX rate to 5.000 MHz. Actual rate is 368.640 MHz</p><p>[=
WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 5 MHz. A=
ctual rate is: 368.64 MHz.</p><p>[WARNING] [MULTI_USRP] Could not set TX ra=
te to 5.000 MHz. Actual rate is 368.640 MHz</p><p>[00:00:05.301642718] Rece=
iver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:05.301663748] Te=
sting transmit rate 368.640000 Msps on 1 channels</p><p>UUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUOUUUUUUt=
erminate called after throwing an inst'</p><p>[14450.111391] audit: type=3D=
1701 audit(1738864692.914:16): auid=3D4294967295 uid=3D0 gid=3D0 ses=3D4294=
967295 subj=3Dkernel pid=3D1132 comm=3D"bmark_rx_stream" exe=3D"/usr/lib/uh=
d/examples/benchmark_rate" sig=3D6 res=3D1</p><p>  what():  RfnocError: OpT=
imeout: Control operation timed out waiting for ACK</p><p>Aborted</p>

--b1_nB2NM1pnMJtpMWF7QeSNOzqxO9ATE0c8BGiGdr5VM1E--

--===============1163834051739945508==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1163834051739945508==--
