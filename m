Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1FBBAFC1C
	for <lists+usrp-users@lfdr.de>; Wed, 01 Oct 2025 11:03:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 62B02386535
	for <lists+usrp-users@lfdr.de>; Wed,  1 Oct 2025 05:02:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1759309363; bh=uDyNQBdJEsrT85+92hE7VHm6CNgRNaMKUNtu5dSEXwY=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=GbS50Dsg6x9r474JIbn8n2aj1Pmg6wgEBCkl68VND3bJGmoMNeH3rET0N+ZByQUUD
	 uZO1uEmqDaCYsMYIGNpzczLUfUIhCf7wYyy9eqYn/gJ1yr2Fr+LRQjAKw21SdxZezp
	 emuVjv1Lf9Z1eEYOO3AqqWpfqI9A5vHzuV1IIvfL+pwPf0N8ivo3dcyny2+lKA+Kex
	 N8aF3w89UryAow8ojObM2xJC8vZT4+0EvW4261gXI+WrvfxQnhwy9CcFINxE7bsY7v
	 lMxxiwHuSnSI3yiZIAb7SOSNH9Ddd9TjJMqjL7XaFQA2HmsyudHDoB6N4iyJUYZrjW
	 oc4ZNn5ACqcMA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 414A738652C
	for <usrp-users@lists.ettus.com>; Wed,  1 Oct 2025 05:02:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1759309346; bh=UwgkpZLcmm9va1sSw7bxrvkv7e9rFfshgmP2k9+r2vU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=L3wYKd16Z/Lg/2//04QkWF6XZy2bsdtxf7mBqeOHOnakK7YBfAHygQ3iUeJ3QCRCP
	 sYB6W7/EjhOEQLCWT9FIcCRbvaeOKSr/pF49kEy/oZRloIvpbaIVtyt6n3a5a4lpES
	 +grfHllHk0LkI8xhEbXp0/5jd35jen/Vm+4j6hFL4khfNyNNn/e1OBQrqmcX+pr8xL
	 /LFg+Dk5HCM5kSooBGnFFfCqRjUrUBm8eLlxBnX6cnTKXWQuymh/R9GxwNnVgDZh46
	 SxX60d7GNIBE/v+0rgrKvnVeDHCMdzRVAD5gtr5/ZjNo4MNjXjTtX4FF861TmqdoMS
	 iuEJaFhIzH/EA==
Date: Wed, 1 Oct 2025 09:02:26 +0000
To: usrp-users@lists.ettus.com
From: atato@gradiant.org
Message-ID: <6Vc3UNQPPKl5xgoKOnxcK7FAwMvC8P32tMXdM3XyI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: C386CBFB-9F20-46D0-86CB-40346C03A5AF@iis.ee.ethz.ch
MIME-Version: 1.0
Message-ID-Hash: RRUHNWKPF4ADRFQ5SIB5SVQC2TB2BT2Q
X-Message-ID-Hash: RRUHNWKPF4ADRFQ5SIB5SVQC2TB2BT2Q
X-MailFrom: atato@gradiant.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X410: sampling phase alignment - phase calibration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RRUHNWKPF4ADRFQ5SIB5SVQC2TB2BT2Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8828707263966155992=="

This is a multi-part message in MIME format.

--===============8828707263966155992==
Content-Type: multipart/alternative;
 boundary="b1_6Vc3UNQPPKl5xgoKOnxcK7FAwMvC8P32tMXdM3XyI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_6Vc3UNQPPKl5xgoKOnxcK7FAwMvC8P32tMXdM3XyI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear Frederik,

I am also interested in this topic (AoA algorithms with USRPs). I have re=
ad the PDF you shared from NI engineers but I understand a different thin=
g.

If I understood the document correctly, after a reboot or if you tune a d=
ifferent frequency (due to you monitor different bands, for example) the =
phase offsets change, are not repeatable. Therefore, even if you calibrat=
e your system, next time you switch on the device your old calibration da=
ta will not be valid. That=E2=80=99s what I understand from my reading.

Is this correct?

Best regards

Anxo Tato Arias

--b1_6Vc3UNQPPKl5xgoKOnxcK7FAwMvC8P32tMXdM3XyI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Dear Frederik,</p><p>I am also interested in this topic (AoA algorithm=
s with USRPs). I have read the PDF you shared from NI engineers but I und=
erstand a different thing.</p><p>If I understood the document correctly, =
after a reboot or if you tune a different frequency (due to you monitor d=
ifferent bands, for example) the phase offsets change, are not repeatable=
. Therefore, even if you calibrate your system, next time you switch on t=
he device your old calibration data will not be valid. That=E2=80=99s wha=
t I understand from my reading.</p><p>Is this correct?</p><p>Best regards=
</p><p>Anxo Tato Arias</p>


--b1_6Vc3UNQPPKl5xgoKOnxcK7FAwMvC8P32tMXdM3XyI--

--===============8828707263966155992==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8828707263966155992==--
