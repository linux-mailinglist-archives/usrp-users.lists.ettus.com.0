Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F27B9B6B52
	for <lists+usrp-users@lfdr.de>; Wed, 30 Oct 2024 18:50:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5E44238694E
	for <lists+usrp-users@lfdr.de>; Wed, 30 Oct 2024 13:50:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730310606; bh=HTQVgzY7oOei6mtFpJpy55pUGN3Tt684t5gwJqGv1LM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=NPED+RxkTentnRLiABPRC/cNELeHoNQKR4utK08LosLXNC6AQcy3dTGbX3+0gOY9D
	 auIR9woUnFqW+K3m3641QOYrVg9mBZvQuLT/QnxtoEmaLdUvYVlCX8XcoZWqEAcHF4
	 +VaLLRKXa7KvAEfCuWwb0fV8jwsz98GEbw4WNibF1Nc6AjmkfpoEjFSScvdnyfDI9J
	 D63QRwtvV8S2QplrF+3vMy5hn9r62mjGgI4P4O0HAjPsMzfRHuI+F8+DT4aFSxav7E
	 BHjtFTH8tDdiA8fy2ufbsNMFGfxLMiLK2C60EtIyvxl2+zWXK0rZblfGNs0iLBX+9Y
	 ASaXvcfLNbI9Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97144385A39
	for <usrp-users@lists.ettus.com>; Wed, 30 Oct 2024 13:49:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730310590; bh=hXKykUo4qe6WcsybcYVAcA333uhQVTUoRZDeiQpx7xw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=uM3n98X4lstgmTg2kvuJE8xW2UU3HSY+cG0Gxkv8nPdlVT+9oEIIVhWw1ItznuOrN
	 Fr2MPkQl1QQaMmOR+sBi6Fh7ppH6/SXIKgcw1sg6264lHUNqn47JvAkKjEZzbNkBjb
	 9MNRjUGJxzl1FNx6afjj2dUBXKnN870L5ObOLV17Su845O06qw583y/jIaW8PmRXzV
	 gkDv1m/dxU2MoJAtINTajV1xQKEb3jZiSnK5mTGZD1Ue77wDnLNJilBK8bVWfojErH
	 L6mxW4T8oFSEkQwzXhNr843QzTDzFxsI3aHKhhv3EM5Vji1xqHizo4cUOXqR6r2q7D
	 UEVkFbiL6hdGQ==
Date: Wed, 30 Oct 2024 17:49:50 +0000
To: usrp-users@lists.ettus.com
From: dhpanchaai@gmail.com
Message-ID: <u0n3cKoUIgYOHdMdESz6gPsFlxXoH8EZ8VCnpQ228@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: TddC7jbd6VbQLsI5EBw6RnJugjuJuYPuHOxOJb9iDEU@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: TBW5RXYDPEFKA5I5PWQPJEAZTBLVBXX3
X-Message-ID-Hash: TBW5RXYDPEFKA5I5PWQPJEAZTBLVBXX3
X-MailFrom: dhpanchaai@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Drop packets and sequence errors during X410 DPDK benchmark test
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TBW5RXYDPEFKA5I5PWQPJEAZTBLVBXX3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1051742557525248897=="

This is a multi-part message in MIME format.

--===============1051742557525248897==
Content-Type: multipart/alternative;
 boundary="b1_u0n3cKoUIgYOHdMdESz6gPsFlxXoH8EZ8VCnpQ228"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_u0n3cKoUIgYOHdMdESz6gPsFlxXoH8EZ8VCnpQ228
Content-Type: text/plain; charset=us-ascii

Here is the cpuinfo from the terminal:\
\
$ sudo cpufreq-set -c 11 -g performance

$ cpufreq-info

cpufrequtils 008: cpufreq-info (C) Dominik Brodowski 2004-2009

Report errors and bugs to cpufreq@vger.kernel.org, please.

analyzing CPU 0:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 0

  CPUs which need to have their frequency coordinated by software: 0

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 5.70 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 5.70 GHz and 5.70 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 5.70 GHz.

analyzing CPU 1:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 1

  CPUs which need to have their frequency coordinated by software: 1

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 5.70 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 5.70 GHz and 5.70 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 5.70 GHz.

analyzing CPU 2:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 2

  CPUs which need to have their frequency coordinated by software: 2

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 5.70 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 5.70 GHz and 5.70 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 5.70 GHz.

analyzing CPU 3:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 3

  CPUs which need to have their frequency coordinated by software: 3

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 5.70 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 5.70 GHz and 5.70 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 5.70 GHz.

analyzing CPU 4:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 4

  CPUs which need to have their frequency coordinated by software: 4

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 5.70 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 5.70 GHz and 5.70 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 5.70 GHz.

analyzing CPU 5:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 5

  CPUs which need to have their frequency coordinated by software: 5

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 5.70 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 5.70 GHz and 5.70 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 5.70 GHz.

analyzing CPU 6:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 6

  CPUs which need to have their frequency coordinated by software: 6

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 5.70 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 5.70 GHz and 5.70 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 5.70 GHz.

analyzing CPU 7:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 7

  CPUs which need to have their frequency coordinated by software: 7

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 5.70 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 5.70 GHz and 5.70 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 5.70 GHz.

analyzing CPU 8:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 8

  CPUs which need to have their frequency coordinated by software: 8

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 6.00 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 5.70 GHz and 5.70 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 5.70 GHz.

analyzing CPU 9:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 9

  CPUs which need to have their frequency coordinated by software: 9

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 6.00 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 5.70 GHz and 5.70 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 5.70 GHz.

analyzing CPU 10:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 10

  CPUs which need to have their frequency coordinated by software: 10

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 6.00 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 5.70 GHz and 5.70 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 5.70 GHz.

analyzing CPU 11:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 11

  CPUs which need to have their frequency coordinated by software: 11

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 6.00 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 5.70 GHz and 5.70 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 5.70 GHz.

analyzing CPU 12:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 12

  CPUs which need to have their frequency coordinated by software: 12

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 5.70 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 5.70 GHz and 5.70 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 5.70 GHz.

analyzing CPU 13:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 13

  CPUs which need to have their frequency coordinated by software: 13

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 5.70 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 5.70 GHz and 5.70 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 5.70 GHz.

analyzing CPU 14:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 14

  CPUs which need to have their frequency coordinated by software: 14

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 5.70 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 5.70 GHz and 5.70 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 5.70 GHz.

analyzing CPU 15:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 15

  CPUs which need to have their frequency coordinated by software: 15

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 5.70 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 5.70 GHz and 5.70 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 5.70 GHz.

analyzing CPU 16:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 16

  CPUs which need to have their frequency coordinated by software: 16

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 4.40 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 4.40 GHz and 4.40 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 4.40 GHz.

analyzing CPU 17:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 17

  CPUs which need to have their frequency coordinated by software: 17

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 4.40 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 4.40 GHz and 4.40 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 4.40 GHz.

analyzing CPU 18:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 18

  CPUs which need to have their frequency coordinated by software: 18

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 4.40 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 4.40 GHz and 4.40 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 4.40 GHz.

analyzing CPU 19:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 19

  CPUs which need to have their frequency coordinated by software: 19

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 4.40 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 4.40 GHz and 4.40 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 4.40 GHz.

analyzing CPU 20:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 20

  CPUs which need to have their frequency coordinated by software: 20

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 4.40 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 4.40 GHz and 4.40 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 4.40 GHz.

analyzing CPU 21:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 21

  CPUs which need to have their frequency coordinated by software: 21

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 4.40 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 4.40 GHz and 4.40 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 4.40 GHz.

analyzing CPU 22:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 22

  CPUs which need to have their frequency coordinated by software: 22

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 4.40 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 4.40 GHz and 4.40 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 4.40 GHz.

analyzing CPU 23:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 23

  CPUs which need to have their frequency coordinated by software: 23

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 4.40 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 4.40 GHz and 4.40 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 4.40 GHz.

analyzing CPU 24:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 24

  CPUs which need to have their frequency coordinated by software: 24

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 4.40 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 4.40 GHz and 4.40 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 4.40 GHz.

analyzing CPU 25:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 25

  CPUs which need to have their frequency coordinated by software: 25

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 4.40 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 4.40 GHz and 4.40 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 4.40 GHz.

analyzing CPU 26:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 26

  CPUs which need to have their frequency coordinated by software: 26

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 4.40 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 4.40 GHz and 4.40 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 4.40 GHz.

analyzing CPU 27:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 27

  CPUs which need to have their frequency coordinated by software: 27

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 4.40 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 4.40 GHz and 4.40 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 4.40 GHz.

analyzing CPU 28:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 28

  CPUs which need to have their frequency coordinated by software: 28

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 4.40 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 4.40 GHz and 4.40 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 4.40 GHz.

analyzing CPU 29:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 29

  CPUs which need to have their frequency coordinated by software: 29

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 4.40 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 4.40 GHz and 4.40 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 4.40 GHz.

analyzing CPU 30:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 30

  CPUs which need to have their frequency coordinated by software: 30

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 4.40 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 4.40 GHz and 4.40 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 4.40 GHz.

analyzing CPU 31:

  driver: intel_pstate

  CPUs which run at the same hardware frequency: 31

  CPUs which need to have their frequency coordinated by software: 31

  maximum transition latency: 4294.55 ms.

  hardware limits: 800 MHz - 4.40 GHz

  available cpufreq governors: performance, powersave

  current policy: frequency should be within 4.40 GHz and 4.40 GHz.

                  The governor "performance" may decide which speed to use

                  within this range.

  current CPU frequency is 4.40 GHz.

--b1_u0n3cKoUIgYOHdMdESz6gPsFlxXoH8EZ8VCnpQ228
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Here is the cpuinfo from the terminal:<br><br>$ sudo cpufreq-set -c 11 -=
g performance</p><p>$ cpufreq-info</p><p>cpufrequtils 008: cpufreq-info (C)=
 Dominik Brodowski 2004-2009</p><p>Report errors and bugs to cpufreq@vger.k=
ernel.org, please.</p><p>analyzing CPU 0:</p><p>  driver: intel_pstate</p><=
p>  CPUs which run at the same hardware frequency: 0</p><p>  CPUs which nee=
d to have their frequency coordinated by software: 0</p><p>  maximum transi=
tion latency: 4294.55 ms.</p><p>  hardware limits: 800 MHz - 5.70 GHz</p><p=
>  available cpufreq governors: performance, powersave</p><p>  current poli=
cy: frequency should be within 5.70 GHz and 5.70 GHz.</p><p>               =
   The governor "performance" may decide which speed to use</p><p>         =
         within this range.</p><p>  current CPU frequency is 5.70 GHz.</p><=
p>analyzing CPU 1:</p><p>  driver: intel_pstate</p><p>  CPUs which run at t=
he same hardware frequency: 1</p><p>  CPUs which need to have their frequen=
cy coordinated by software: 1</p><p>  maximum transition latency: 4294.55 m=
s.</p><p>  hardware limits: 800 MHz - 5.70 GHz</p><p>  available cpufreq go=
vernors: performance, powersave</p><p>  current policy: frequency should be=
 within 5.70 GHz and 5.70 GHz.</p><p>                  The governor "perfor=
mance" may decide which speed to use</p><p>                  within this ra=
nge.</p><p>  current CPU frequency is 5.70 GHz.</p><p>analyzing CPU 2:</p><=
p>  driver: intel_pstate</p><p>  CPUs which run at the same hardware freque=
ncy: 2</p><p>  CPUs which need to have their frequency coordinated by softw=
are: 2</p><p>  maximum transition latency: 4294.55 ms.</p><p>  hardware lim=
its: 800 MHz - 5.70 GHz</p><p>  available cpufreq governors: performance, p=
owersave</p><p>  current policy: frequency should be within 5.70 GHz and 5.=
70 GHz.</p><p>                  The governor "performance" may decide which=
 speed to use</p><p>                  within this range.</p><p>  current CP=
U frequency is 5.70 GHz.</p><p>analyzing CPU 3:</p><p>  driver: intel_pstat=
e</p><p>  CPUs which run at the same hardware frequency: 3</p><p>  CPUs whi=
ch need to have their frequency coordinated by software: 3</p><p>  maximum =
transition latency: 4294.55 ms.</p><p>  hardware limits: 800 MHz - 5.70 GHz=
</p><p>  available cpufreq governors: performance, powersave</p><p>  curren=
t policy: frequency should be within 5.70 GHz and 5.70 GHz.</p><p>         =
         The governor "performance" may decide which speed to use</p><p>   =
               within this range.</p><p>  current CPU frequency is 5.70 GHz=
.</p><p>analyzing CPU 4:</p><p>  driver: intel_pstate</p><p>  CPUs which ru=
n at the same hardware frequency: 4</p><p>  CPUs which need to have their f=
requency coordinated by software: 4</p><p>  maximum transition latency: 429=
4.55 ms.</p><p>  hardware limits: 800 MHz - 5.70 GHz</p><p>  available cpuf=
req governors: performance, powersave</p><p>  current policy: frequency sho=
uld be within 5.70 GHz and 5.70 GHz.</p><p>                  The governor "=
performance" may decide which speed to use</p><p>                  within t=
his range.</p><p>  current CPU frequency is 5.70 GHz.</p><p>analyzing CPU 5=
:</p><p>  driver: intel_pstate</p><p>  CPUs which run at the same hardware =
frequency: 5</p><p>  CPUs which need to have their frequency coordinated by=
 software: 5</p><p>  maximum transition latency: 4294.55 ms.</p><p>  hardwa=
re limits: 800 MHz - 5.70 GHz</p><p>  available cpufreq governors: performa=
nce, powersave</p><p>  current policy: frequency should be within 5.70 GHz =
and 5.70 GHz.</p><p>                  The governor "performance" may decide=
 which speed to use</p><p>                  within this range.</p><p>  curr=
ent CPU frequency is 5.70 GHz.</p><p>analyzing CPU 6:</p><p>  driver: intel=
_pstate</p><p>  CPUs which run at the same hardware frequency: 6</p><p>  CP=
Us which need to have their frequency coordinated by software: 6</p><p>  ma=
ximum transition latency: 4294.55 ms.</p><p>  hardware limits: 800 MHz - 5.=
70 GHz</p><p>  available cpufreq governors: performance, powersave</p><p>  =
current policy: frequency should be within 5.70 GHz and 5.70 GHz.</p><p>   =
               The governor "performance" may decide which speed to use</p>=
<p>                  within this range.</p><p>  current CPU frequency is 5.=
70 GHz.</p><p>analyzing CPU 7:</p><p>  driver: intel_pstate</p><p>  CPUs wh=
ich run at the same hardware frequency: 7</p><p>  CPUs which need to have t=
heir frequency coordinated by software: 7</p><p>  maximum transition latenc=
y: 4294.55 ms.</p><p>  hardware limits: 800 MHz - 5.70 GHz</p><p>  availabl=
e cpufreq governors: performance, powersave</p><p>  current policy: frequen=
cy should be within 5.70 GHz and 5.70 GHz.</p><p>                  The gove=
rnor "performance" may decide which speed to use</p><p>                  wi=
thin this range.</p><p>  current CPU frequency is 5.70 GHz.</p><p>analyzing=
 CPU 8:</p><p>  driver: intel_pstate</p><p>  CPUs which run at the same har=
dware frequency: 8</p><p>  CPUs which need to have their frequency coordina=
ted by software: 8</p><p>  maximum transition latency: 4294.55 ms.</p><p>  =
hardware limits: 800 MHz - 6.00 GHz</p><p>  available cpufreq governors: pe=
rformance, powersave</p><p>  current policy: frequency should be within 5.7=
0 GHz and 5.70 GHz.</p><p>                  The governor "performance" may =
decide which speed to use</p><p>                  within this range.</p><p>=
  current CPU frequency is 5.70 GHz.</p><p>analyzing CPU 9:</p><p>  driver:=
 intel_pstate</p><p>  CPUs which run at the same hardware frequency: 9</p><=
p>  CPUs which need to have their frequency coordinated by software: 9</p><=
p>  maximum transition latency: 4294.55 ms.</p><p>  hardware limits: 800 MH=
z - 6.00 GHz</p><p>  available cpufreq governors: performance, powersave</p=
><p>  current policy: frequency should be within 5.70 GHz and 5.70 GHz.</p>=
<p>                  The governor "performance" may decide which speed to u=
se</p><p>                  within this range.</p><p>  current CPU frequency=
 is 5.70 GHz.</p><p>analyzing CPU 10:</p><p>  driver: intel_pstate</p><p>  =
CPUs which run at the same hardware frequency: 10</p><p>  CPUs which need t=
o have their frequency coordinated by software: 10</p><p>  maximum transiti=
on latency: 4294.55 ms.</p><p>  hardware limits: 800 MHz - 6.00 GHz</p><p> =
 available cpufreq governors: performance, powersave</p><p>  current policy=
: frequency should be within 5.70 GHz and 5.70 GHz.</p><p>                 =
 The governor "performance" may decide which speed to use</p><p>           =
       within this range.</p><p>  current CPU frequency is 5.70 GHz.</p><p>=
analyzing CPU 11:</p><p>  driver: intel_pstate</p><p>  CPUs which run at th=
e same hardware frequency: 11</p><p>  CPUs which need to have their frequen=
cy coordinated by software: 11</p><p>  maximum transition latency: 4294.55 =
ms.</p><p>  hardware limits: 800 MHz - 6.00 GHz</p><p>  available cpufreq g=
overnors: performance, powersave</p><p>  current policy: frequency should b=
e within 5.70 GHz and 5.70 GHz.</p><p>                  The governor "perfo=
rmance" may decide which speed to use</p><p>                  within this r=
ange.</p><p>  current CPU frequency is 5.70 GHz.</p><p>analyzing CPU 12:</p=
><p>  driver: intel_pstate</p><p>  CPUs which run at the same hardware freq=
uency: 12</p><p>  CPUs which need to have their frequency coordinated by so=
ftware: 12</p><p>  maximum transition latency: 4294.55 ms.</p><p>  hardware=
 limits: 800 MHz - 5.70 GHz</p><p>  available cpufreq governors: performanc=
e, powersave</p><p>  current policy: frequency should be within 5.70 GHz an=
d 5.70 GHz.</p><p>                  The governor "performance" may decide w=
hich speed to use</p><p>                  within this range.</p><p>  curren=
t CPU frequency is 5.70 GHz.</p><p>analyzing CPU 13:</p><p>  driver: intel_=
pstate</p><p>  CPUs which run at the same hardware frequency: 13</p><p>  CP=
Us which need to have their frequency coordinated by software: 13</p><p>  m=
aximum transition latency: 4294.55 ms.</p><p>  hardware limits: 800 MHz - 5=
.70 GHz</p><p>  available cpufreq governors: performance, powersave</p><p> =
 current policy: frequency should be within 5.70 GHz and 5.70 GHz.</p><p>  =
                The governor "performance" may decide which speed to use</p=
><p>                  within this range.</p><p>  current CPU frequency is 5=
.70 GHz.</p><p>analyzing CPU 14:</p><p>  driver: intel_pstate</p><p>  CPUs =
which run at the same hardware frequency: 14</p><p>  CPUs which need to hav=
e their frequency coordinated by software: 14</p><p>  maximum transition la=
tency: 4294.55 ms.</p><p>  hardware limits: 800 MHz - 5.70 GHz</p><p>  avai=
lable cpufreq governors: performance, powersave</p><p>  current policy: fre=
quency should be within 5.70 GHz and 5.70 GHz.</p><p>                  The =
governor "performance" may decide which speed to use</p><p>                =
  within this range.</p><p>  current CPU frequency is 5.70 GHz.</p><p>analy=
zing CPU 15:</p><p>  driver: intel_pstate</p><p>  CPUs which run at the sam=
e hardware frequency: 15</p><p>  CPUs which need to have their frequency co=
ordinated by software: 15</p><p>  maximum transition latency: 4294.55 ms.</=
p><p>  hardware limits: 800 MHz - 5.70 GHz</p><p>  available cpufreq govern=
ors: performance, powersave</p><p>  current policy: frequency should be wit=
hin 5.70 GHz and 5.70 GHz.</p><p>                  The governor "performanc=
e" may decide which speed to use</p><p>                  within this range.=
</p><p>  current CPU frequency is 5.70 GHz.</p><p>analyzing CPU 16:</p><p> =
 driver: intel_pstate</p><p>  CPUs which run at the same hardware frequency=
: 16</p><p>  CPUs which need to have their frequency coordinated by softwar=
e: 16</p><p>  maximum transition latency: 4294.55 ms.</p><p>  hardware limi=
ts: 800 MHz - 4.40 GHz</p><p>  available cpufreq governors: performance, po=
wersave</p><p>  current policy: frequency should be within 4.40 GHz and 4.4=
0 GHz.</p><p>                  The governor "performance" may decide which =
speed to use</p><p>                  within this range.</p><p>  current CPU=
 frequency is 4.40 GHz.</p><p>analyzing CPU 17:</p><p>  driver: intel_pstat=
e</p><p>  CPUs which run at the same hardware frequency: 17</p><p>  CPUs wh=
ich need to have their frequency coordinated by software: 17</p><p>  maximu=
m transition latency: 4294.55 ms.</p><p>  hardware limits: 800 MHz - 4.40 G=
Hz</p><p>  available cpufreq governors: performance, powersave</p><p>  curr=
ent policy: frequency should be within 4.40 GHz and 4.40 GHz.</p><p>       =
           The governor "performance" may decide which speed to use</p><p> =
                 within this range.</p><p>  current CPU frequency is 4.40 G=
Hz.</p><p>analyzing CPU 18:</p><p>  driver: intel_pstate</p><p>  CPUs which=
 run at the same hardware frequency: 18</p><p>  CPUs which need to have the=
ir frequency coordinated by software: 18</p><p>  maximum transition latency=
: 4294.55 ms.</p><p>  hardware limits: 800 MHz - 4.40 GHz</p><p>  available=
 cpufreq governors: performance, powersave</p><p>  current policy: frequenc=
y should be within 4.40 GHz and 4.40 GHz.</p><p>                  The gover=
nor "performance" may decide which speed to use</p><p>                  wit=
hin this range.</p><p>  current CPU frequency is 4.40 GHz.</p><p>analyzing =
CPU 19:</p><p>  driver: intel_pstate</p><p>  CPUs which run at the same har=
dware frequency: 19</p><p>  CPUs which need to have their frequency coordin=
ated by software: 19</p><p>  maximum transition latency: 4294.55 ms.</p><p>=
  hardware limits: 800 MHz - 4.40 GHz</p><p>  available cpufreq governors: =
performance, powersave</p><p>  current policy: frequency should be within 4=
.40 GHz and 4.40 GHz.</p><p>                  The governor "performance" ma=
y decide which speed to use</p><p>                  within this range.</p><=
p>  current CPU frequency is 4.40 GHz.</p><p>analyzing CPU 20:</p><p>  driv=
er: intel_pstate</p><p>  CPUs which run at the same hardware frequency: 20<=
/p><p>  CPUs which need to have their frequency coordinated by software: 20=
</p><p>  maximum transition latency: 4294.55 ms.</p><p>  hardware limits: 8=
00 MHz - 4.40 GHz</p><p>  available cpufreq governors: performance, powersa=
ve</p><p>  current policy: frequency should be within 4.40 GHz and 4.40 GHz=
.</p><p>                  The governor "performance" may decide which speed=
 to use</p><p>                  within this range.</p><p>  current CPU freq=
uency is 4.40 GHz.</p><p>analyzing CPU 21:</p><p>  driver: intel_pstate</p>=
<p>  CPUs which run at the same hardware frequency: 21</p><p>  CPUs which n=
eed to have their frequency coordinated by software: 21</p><p>  maximum tra=
nsition latency: 4294.55 ms.</p><p>  hardware limits: 800 MHz - 4.40 GHz</p=
><p>  available cpufreq governors: performance, powersave</p><p>  current p=
olicy: frequency should be within 4.40 GHz and 4.40 GHz.</p><p>            =
      The governor "performance" may decide which speed to use</p><p>      =
            within this range.</p><p>  current CPU frequency is 4.40 GHz.</=
p><p>analyzing CPU 22:</p><p>  driver: intel_pstate</p><p>  CPUs which run =
at the same hardware frequency: 22</p><p>  CPUs which need to have their fr=
equency coordinated by software: 22</p><p>  maximum transition latency: 429=
4.55 ms.</p><p>  hardware limits: 800 MHz - 4.40 GHz</p><p>  available cpuf=
req governors: performance, powersave</p><p>  current policy: frequency sho=
uld be within 4.40 GHz and 4.40 GHz.</p><p>                  The governor "=
performance" may decide which speed to use</p><p>                  within t=
his range.</p><p>  current CPU frequency is 4.40 GHz.</p><p>analyzing CPU 2=
3:</p><p>  driver: intel_pstate</p><p>  CPUs which run at the same hardware=
 frequency: 23</p><p>  CPUs which need to have their frequency coordinated =
by software: 23</p><p>  maximum transition latency: 4294.55 ms.</p><p>  har=
dware limits: 800 MHz - 4.40 GHz</p><p>  available cpufreq governors: perfo=
rmance, powersave</p><p>  current policy: frequency should be within 4.40 G=
Hz and 4.40 GHz.</p><p>                  The governor "performance" may dec=
ide which speed to use</p><p>                  within this range.</p><p>  c=
urrent CPU frequency is 4.40 GHz.</p><p>analyzing CPU 24:</p><p>  driver: i=
ntel_pstate</p><p>  CPUs which run at the same hardware frequency: 24</p><p=
>  CPUs which need to have their frequency coordinated by software: 24</p><=
p>  maximum transition latency: 4294.55 ms.</p><p>  hardware limits: 800 MH=
z - 4.40 GHz</p><p>  available cpufreq governors: performance, powersave</p=
><p>  current policy: frequency should be within 4.40 GHz and 4.40 GHz.</p>=
<p>                  The governor "performance" may decide which speed to u=
se</p><p>                  within this range.</p><p>  current CPU frequency=
 is 4.40 GHz.</p><p>analyzing CPU 25:</p><p>  driver: intel_pstate</p><p>  =
CPUs which run at the same hardware frequency: 25</p><p>  CPUs which need t=
o have their frequency coordinated by software: 25</p><p>  maximum transiti=
on latency: 4294.55 ms.</p><p>  hardware limits: 800 MHz - 4.40 GHz</p><p> =
 available cpufreq governors: performance, powersave</p><p>  current policy=
: frequency should be within 4.40 GHz and 4.40 GHz.</p><p>                 =
 The governor "performance" may decide which speed to use</p><p>           =
       within this range.</p><p>  current CPU frequency is 4.40 GHz.</p><p>=
analyzing CPU 26:</p><p>  driver: intel_pstate</p><p>  CPUs which run at th=
e same hardware frequency: 26</p><p>  CPUs which need to have their frequen=
cy coordinated by software: 26</p><p>  maximum transition latency: 4294.55 =
ms.</p><p>  hardware limits: 800 MHz - 4.40 GHz</p><p>  available cpufreq g=
overnors: performance, powersave</p><p>  current policy: frequency should b=
e within 4.40 GHz and 4.40 GHz.</p><p>                  The governor "perfo=
rmance" may decide which speed to use</p><p>                  within this r=
ange.</p><p>  current CPU frequency is 4.40 GHz.</p><p>analyzing CPU 27:</p=
><p>  driver: intel_pstate</p><p>  CPUs which run at the same hardware freq=
uency: 27</p><p>  CPUs which need to have their frequency coordinated by so=
ftware: 27</p><p>  maximum transition latency: 4294.55 ms.</p><p>  hardware=
 limits: 800 MHz - 4.40 GHz</p><p>  available cpufreq governors: performanc=
e, powersave</p><p>  current policy: frequency should be within 4.40 GHz an=
d 4.40 GHz.</p><p>                  The governor "performance" may decide w=
hich speed to use</p><p>                  within this range.</p><p>  curren=
t CPU frequency is 4.40 GHz.</p><p>analyzing CPU 28:</p><p>  driver: intel_=
pstate</p><p>  CPUs which run at the same hardware frequency: 28</p><p>  CP=
Us which need to have their frequency coordinated by software: 28</p><p>  m=
aximum transition latency: 4294.55 ms.</p><p>  hardware limits: 800 MHz - 4=
.40 GHz</p><p>  available cpufreq governors: performance, powersave</p><p> =
 current policy: frequency should be within 4.40 GHz and 4.40 GHz.</p><p>  =
                The governor "performance" may decide which speed to use</p=
><p>                  within this range.</p><p>  current CPU frequency is 4=
.40 GHz.</p><p>analyzing CPU 29:</p><p>  driver: intel_pstate</p><p>  CPUs =
which run at the same hardware frequency: 29</p><p>  CPUs which need to hav=
e their frequency coordinated by software: 29</p><p>  maximum transition la=
tency: 4294.55 ms.</p><p>  hardware limits: 800 MHz - 4.40 GHz</p><p>  avai=
lable cpufreq governors: performance, powersave</p><p>  current policy: fre=
quency should be within 4.40 GHz and 4.40 GHz.</p><p>                  The =
governor "performance" may decide which speed to use</p><p>                =
  within this range.</p><p>  current CPU frequency is 4.40 GHz.</p><p>analy=
zing CPU 30:</p><p>  driver: intel_pstate</p><p>  CPUs which run at the sam=
e hardware frequency: 30</p><p>  CPUs which need to have their frequency co=
ordinated by software: 30</p><p>  maximum transition latency: 4294.55 ms.</=
p><p>  hardware limits: 800 MHz - 4.40 GHz</p><p>  available cpufreq govern=
ors: performance, powersave</p><p>  current policy: frequency should be wit=
hin 4.40 GHz and 4.40 GHz.</p><p>                  The governor "performanc=
e" may decide which speed to use</p><p>                  within this range.=
</p><p>  current CPU frequency is 4.40 GHz.</p><p>analyzing CPU 31:</p><p> =
 driver: intel_pstate</p><p>  CPUs which run at the same hardware frequency=
: 31</p><p>  CPUs which need to have their frequency coordinated by softwar=
e: 31</p><p>  maximum transition latency: 4294.55 ms.</p><p>  hardware limi=
ts: 800 MHz - 4.40 GHz</p><p>  available cpufreq governors: performance, po=
wersave</p><p>  current policy: frequency should be within 4.40 GHz and 4.4=
0 GHz.</p><p>                  The governor "performance" may decide which =
speed to use</p><p>                  within this range.</p><p>  current CPU=
 frequency is 4.40 GHz.</p>

--b1_u0n3cKoUIgYOHdMdESz6gPsFlxXoH8EZ8VCnpQ228--

--===============1051742557525248897==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1051742557525248897==--
