Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAA86F0886
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 17:40:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CBA1A384037
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 11:40:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682610023; bh=TVFujSAkNi04l7S3RZqzg5PqBHUqQCc2f7u0B5a1Fjk=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=tOih6Wtx26BZicCRzzLokIv80Qtp2ONYNr+8IXy94nwiFyWZJEHDYROUaIo5KE+st
	 xASuHA2eNVL0gwavi9t+D1z3CAPcplugjbFmYv0CuG71W99Me6BNeQllh99Exx/nN+
	 il7fyuJS8wB5PJsWflNBKyhWxIk3pssnIwvBljy0rub5MxZJuU8CuJBARrMtPga7M8
	 ddvZhrYU5/NvU2bhB63kGy+XQvcwxNTLOlCIFQKc6OblLEmF9XVr4slSJUAt4ryKZJ
	 JgixQ0P3h24ftc0n5m/HpZsjmPbIX6mqKq2f9WL6YKavcMKtJQdUMs2/YTe2OdL6Uo
	 1235JWVaKjMkQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C4FED384037
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 11:39:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682609985; bh=4lWciHouUiMmeCm1OuxU1h/U85lPL7Cdav456jdpIC0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=fcJLM9S3fIBrt3nP74Onx01CNF2Wlk0jBLtCGBFjrDpRg3tgbiQgWj4ylsgG5wAIR
	 gTGxbY63HSKW1lgla8j02OfZ4/KZZ3XVQoQC+ohP9UqqoSKb43Vk/rM8luIY/PuG+a
	 fwmm2R9EdfNp7lFt+JgvnO3OXm5hGF1B+qs9in4Y9+K2TFH6GrMuXXWE8CzwEPtLpA
	 iFuOs709PcewCX8BbebuiaobL9QbOxPa+QfaoLBV1jcla6lfYSZ7qTt1HTCLeyq2n/
	 1h+MggB/e6MzjTgfLZBE/zdk+NFupRBrJMs5okZPrewVWHnCim6QSktOx8fLVhKUhS
	 l+YTd2pviId5A==
Date: Thu, 27 Apr 2023 15:39:45 +0000
To: usrp-users@lists.ettus.com
From: david.fernandes@viveris.fr
Message-ID: <fUUKTLboBVD6NSdVJqlpdPQrwCA6D8BQcwqkXAcwxmk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 78f73563-cbdf-a6a6-05b4-3e41c5b93254@gmail.com
MIME-Version: 1.0
Message-ID-Hash: Q4XW6YNHTZTNL5MERXVWFLVPFMN4PMFT
X-Message-ID-Hash: Q4XW6YNHTZTNL5MERXVWFLVPFMN4PMFT
X-MailFrom: david.fernandes@viveris.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full duplex issues with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q4XW6YNHTZTNL5MERXVWFLVPFMN4PMFT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6703086932274408634=="

This is a multi-part message in MIME format.

--===============6703086932274408634==
Content-Type: multipart/alternative;
 boundary="b1_fUUKTLboBVD6NSdVJqlpdPQrwCA6D8BQcwqkXAcwxmk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_fUUKTLboBVD6NSdVJqlpdPQrwCA6D8BQcwqkXAcwxmk
Content-Type: text/plain; charset=us-ascii

Hi Marcus,

I tried to wait 1 minute before starting a new test and it has no impact. Here are the logs displayed by GNU Radio of 2 successive tests, the first was successfull and the second launched 1 minute later failed.

1st TEST (successful) :

> Generating: '/home/davidfernandes/tests_gnuradio/tutoriel_usrp_gnu.py'
>
> Executing: /usr/bin/python3 -u /home/davidfernandes/tests_gnuradio/tutoriel_usrp_gnu.py
>
> Warning: Ignoring XDG_SESSION_TYPE=wayland on Gnome. Use QT_QPA_PLATFORM=wayland to run on Wayland anyway.
>
> \[INFO\] \[UHD\] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.1.0.6-0-g1a5b4fd2
>
> \[INFO\] \[X300\] X300 initialization sequence...
>
> \[INFO\] \[X300\] Maximum frame size: 1472 bytes.
>
> \[INFO\] \[X300\] Radio 1x clock: 200 MHz
>
> \[WARNING\] \[MULTI_USRP\] Could not set RX rate to 0.280 MHz. Actual rate is 0.279 MHz
>
> \[WARNING\] \[MULTI_USRP\] Could not set RX rate to 0.280 MHz. Actual rate is 0.279 MHz
>
> \[WARNING\] \[MULTI_USRP\] Could not set TX rate to 0.280 MHz. Actual rate is 0.279 MHz
>
> \[WARNING\] \[MULTI_USRP\] Could not set TX rate to 0.280 MHz. Actual rate is 0.279 MHz
>
> \[WARNING\] \[0/Radio#0\] Attempting to set tick rate to 0. Skipping.
>
> \[WARNING\] \[0/Radio#1\] Attempting to set tick rate to 0. Skipping.
>
> \[WARNING\] \[0/Radio#1\] Attempting to set tick rate to 0. Skipping.
>
> \[WARNING\] \[0/Radio#0\] Attempting to set tick rate to 0. Skipping.
>
> >>> Done

2nd TEST started 1 minute later (Failed) :

> Generating: '/home/davidfernandes/tests_gnuradio/tutoriel_usrp_gnu.py'
>
> Executing: /usr/bin/python3 -u /home/davidfernandes/tests_gnuradio/tutoriel_usrp_gnu.py
>
> Warning: Ignoring XDG_SESSION_TYPE=wayland on Gnome. Use QT_QPA_PLATFORM=wayland to run on Wayland anyway.
>
> \[INFO\] \[UHD\] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.1.0.6-0-g1a5b4fd2
>
> \[INFO\] \[X300\] X300 initialization sequence...
>
> \[INFO\] \[X300\] Maximum frame size: 1472 bytes.
>
> \[INFO\] \[X300\] Radio 1x clock: 200 MHz
>
> \[WARNING\] \[MULTI_USRP\] Could not set RX rate to 0.280 MHz. Actual rate is 0.279 MHz
>
> \[WARNING\] \[MULTI_USRP\] Could not set RX rate to 0.280 MHz. Actual rate is 0.279 MHz
>
> \[WARNING\] \[MULTI_USRP\] Could not set TX rate to 0.280 MHz. Actual rate is 0.279 MHz
>
> \[WARNING\] \[MULTI_USRP\] Could not set TX rate to 0.280 MHz. Actual rate is 0.279 MHz
>
> \[WARNING\] \[0/Radio#1\] Attempting to set tick rate to 0. Skipping.
>
> \[WARNING\] \[0/Radio#0\] Attempting to set tick rate to 0. Skipping.
>
> \[WARNING\] \[0/Radio#0\] Attempting to set tick rate to 0. Skipping.
>
> \[WARNING\] \[0/Radio#1\] Attempting to set tick rate to 0. Skipping.
>
> >>> Done

I see no difference betwen the logs of a successful test and the logs of a failed test.

The version of UHD is UHD_4.1.0.6-0. 

Thanks again for your support.

--b1_fUUKTLboBVD6NSdVJqlpdPQrwCA6D8BQcwqkXAcwxmk
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p>I tried to wait 1 minute before starting a new test and=
 it has no impact. Here are the logs displayed by GNU Radio of 2 successive=
 tests, the first was successfull and the second launched 1 minute later fa=
iled.</p><p>1st TEST (successful) :</p><blockquote><p>Generating: '/home/da=
vidfernandes/tests_gnuradio/tutoriel_usrp_gnu.py'</p><p>Executing: /usr/bin=
/python3 -u /home/davidfernandes/tests_gnuradio/tutoriel_usrp_gnu.py</p><p>=
Warning: Ignoring XDG_SESSION_TYPE=3Dwayland on Gnome. Use QT_QPA_PLATFORM=
=3Dwayland to run on Wayland anyway.</p><p>[INFO] [UHD] linux; GNU C++ vers=
ion 11.3.0; Boost_107400; UHD_4.1.0.6-0-g1a5b4fd2</p><p>[INFO] [X300] X300 =
initialization sequence...</p><p>[INFO] [X300] Maximum frame size: 1472 byt=
es.</p><p>[INFO] [X300] Radio 1x clock: 200 MHz</p><p>[WARNING] [MULTI_USRP=
] Could not set RX rate to 0.280 MHz. Actual rate is 0.279 MHz</p><p>[WARNI=
NG] [MULTI_USRP] Could not set RX rate to 0.280 MHz. Actual rate is 0.279 M=
Hz</p><p>[WARNING] [MULTI_USRP] Could not set TX rate to 0.280 MHz. Actual =
rate is 0.279 MHz</p><p>[WARNING] [MULTI_USRP] Could not set TX rate to 0.2=
80 MHz. Actual rate is 0.279 MHz</p><p>[WARNING] [0/Radio#0] Attempting to =
set tick rate to 0. Skipping.</p><p>[WARNING] [0/Radio#1] Attempting to set=
 tick rate to 0. Skipping.</p><p>[WARNING] [0/Radio#1] Attempting to set ti=
ck rate to 0. Skipping.</p><p>[WARNING] [0/Radio#0] Attempting to set tick =
rate to 0. Skipping.</p><p>&gt;&gt;&gt; Done</p></blockquote><p>2nd TEST st=
arted 1 minute later (Failed) :</p><blockquote><p>Generating: '/home/davidf=
ernandes/tests_gnuradio/tutoriel_usrp_gnu.py'</p><p>Executing: /usr/bin/pyt=
hon3 -u /home/davidfernandes/tests_gnuradio/tutoriel_usrp_gnu.py</p><p>Warn=
ing: Ignoring XDG_SESSION_TYPE=3Dwayland on Gnome. Use QT_QPA_PLATFORM=3Dwa=
yland to run on Wayland anyway.</p><p>[INFO] [UHD] linux; GNU C++ version 1=
1.3.0; Boost_107400; UHD_4.1.0.6-0-g1a5b4fd2</p><p>[INFO] [X300] X300 initi=
alization sequence...</p><p>[INFO] [X300] Maximum frame size: 1472 bytes.</=
p><p>[INFO] [X300] Radio 1x clock: 200 MHz</p><p>[WARNING] [MULTI_USRP] Cou=
ld not set RX rate to 0.280 MHz. Actual rate is 0.279 MHz</p><p>[WARNING] [=
MULTI_USRP] Could not set RX rate to 0.280 MHz. Actual rate is 0.279 MHz</p=
><p>[WARNING] [MULTI_USRP] Could not set TX rate to 0.280 MHz. Actual rate =
is 0.279 MHz</p><p>[WARNING] [MULTI_USRP] Could not set TX rate to 0.280 MH=
z. Actual rate is 0.279 MHz</p><p>[WARNING] [0/Radio#1] Attempting to set t=
ick rate to 0. Skipping.</p><p>[WARNING] [0/Radio#0] Attempting to set tick=
 rate to 0. Skipping.</p><p>[WARNING] [0/Radio#0] Attempting to set tick ra=
te to 0. Skipping.</p><p>[WARNING] [0/Radio#1] Attempting to set tick rate =
to 0. Skipping.</p><p>&gt;&gt;&gt; Done</p></blockquote><p><br></p><p>I see=
 no difference betwen the logs of a successful test and the logs of a faile=
d test.</p><p>The version of UHD is UHD_4.1.0.6-0. </p><p>Thanks again for =
your support.</p><p><br></p>

--b1_fUUKTLboBVD6NSdVJqlpdPQrwCA6D8BQcwqkXAcwxmk--

--===============6703086932274408634==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6703086932274408634==--
