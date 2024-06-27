Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA05491B2F0
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2024 01:48:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 82EC13857C1
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jun 2024 19:48:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719532100; bh=FlRFuM5ACdmJgpHx1TaqqhkQ4Vofgwphmoki9r3Opdg=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=pgbC5B9yrYLiIMBYfYCT0LGW7O0IvdGX3/5Xr89LaFnE2MmKp1uyW89wuacgXDBdF
	 Gw5S6BpcQJ09zStKWDu/ELuU19D9v43pnNTtCtD0I9o82lwc0/ciwdEfLZWdTYws7e
	 HXLqyEaGQxransjMb5vGUYIoOBsHV6dS4TY6IzdUmzjH6pGyAuZT5LaP2TAaNJgcRV
	 przSI/rPCeYWjCTYqsYd8k/644TAuYmqjfdJ/tH/L8Zbrm/dQE5m60cKsWGc1hKCtQ
	 NbR6sP8oJ0A63lTPoS2/mwEO6QeDs5UfjCeYz/sN1SDKMV0wGFzx5x+Pzs57tJOt/4
	 rjlboO7i8Nmmg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EAD38385370
	for <usrp-users@lists.ettus.com>; Thu, 27 Jun 2024 19:47:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719532054; bh=5dmZy6DwwobjJqbcVLXcI6VY6PQwwqUxJA1z8yE8vSI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=XewynyCfcqpdoVs4+VrZhZsUVW5RUcLQobcc4nthl5dOYemTB4BSglEZ/nJCSGumc
	 okEWM+tFaHvohpsBDKdX9HItn2nhxUU5M48TAOa6Hxw1R+wEsHwAHFCkOeEpTbtR/p
	 wyiLtyZNz5lEzrpj3GZ8FL6b466U1HHGOOHJ/lVl/N6GGUaWF1xZgZQfaphmKEkvbx
	 t/ApOMTaqFVNUSr6loUbOGFNqJyPJ/WkH8JPfj5b+7VGCRdam0cCD9ChSnOH7S/TEL
	 j4lejsRczf7HbmcPHI4dPNsYsHgtuWvpAu+1ozvWyRCwnZE7dP2URrnDbBsnIw33sY
	 DuBjWJmI6ziIA==
Date: Thu, 27 Jun 2024 23:47:33 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <XiMeTIPyS8b30RyY29feLvzn60akLei8Mlcixue7WNU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 6343a6b9-71d1-4f2f-b9cd-7832a9c99ae5@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 4WGCULTEBREZ6NKK2MJIVRD2O2TUFPH6
X-Message-ID-Hash: 4WGCULTEBREZ6NKK2MJIVRD2O2TUFPH6
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4WGCULTEBREZ6NKK2MJIVRD2O2TUFPH6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3266623495759862142=="

This is a multi-part message in MIME format.

--===============3266623495759862142==
Content-Type: multipart/alternative;
 boundary="b1_XiMeTIPyS8b30RyY29feLvzn60akLei8Mlcixue7WNU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_XiMeTIPyS8b30RyY29feLvzn60akLei8Mlcixue7WNU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Anyone else able to look at this with ability to Tx on x310?

I have looked at all the counters on the server, and it I don=E2=80=99t s=
ee anything unusual.\
Let me know if you need me to up/down the interface (to reset) and provid=
e you some counters=E2=80=A6.\
\
Here is more info:

```
~$ sudo ethtool -i eno2
driver: ixgbe
version: 5.19.0-1010-nvidia-lowlatency
firmware-version: 0x80001743, 1.3082.0
expansion-rom-version:=20
bus-info: 0000:04:00.1
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes

~$ lspci -v -s 000:04:00.1
04:00.1 Ethernet controller: Intel Corporation Ethernet Controller 10G X5=
50T (rev 01)
        DeviceName: Intel Ethernet X550 #2
        Subsystem: Super Micro Computer Inc Ethernet Controller 10G X550T
        Flags: bus master, fast devsel, latency 0, IRQ 16, NUMA node 0
        Memory at 200fff400000 (64-bit, prefetchable) [size=3D4M]
        Memory at 200fffc00000 (64-bit, prefetchable) [size=3D16K]
        Expansion ROM at 9a100000 [disabled] [size=3D512K]
        Capabilities: <access denied>
        Kernel driver in use: ixgbe
        Kernel modules: ixgbe
```

--b1_XiMeTIPyS8b30RyY29feLvzn60akLei8Mlcixue7WNU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p>Anyone else able to look at this with ability to Tx o=
n x310?</p><p>I have looked at all the counters on the server, and it I d=
on=E2=80=99t see anything unusual.<br>Let me know if you need me to up/do=
wn the interface (to reset) and provide you some counters=E2=80=A6.<br><b=
r>Here is more info:</p><pre><code>~$ sudo ethtool -i eno2
driver: ixgbe
version: 5.19.0-1010-nvidia-lowlatency
firmware-version: 0x80001743, 1.3082.0
expansion-rom-version:=20
bus-info: 0000:04:00.1
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes

~$ lspci -v -s 000:04:00.1
04:00.1 Ethernet controller: Intel Corporation Ethernet Controller 10G X5=
50T (rev 01)
        DeviceName: Intel Ethernet X550 #2
        Subsystem: Super Micro Computer Inc Ethernet Controller 10G X550T
        Flags: bus master, fast devsel, latency 0, IRQ 16, NUMA node 0
        Memory at 200fff400000 (64-bit, prefetchable) [size=3D4M]
        Memory at 200fffc00000 (64-bit, prefetchable) [size=3D16K]
        Expansion ROM at 9a100000 [disabled] [size=3D512K]
        Capabilities: &lt;access denied&gt;
        Kernel driver in use: ixgbe
        Kernel modules: ixgbe
<br></code></pre>


--b1_XiMeTIPyS8b30RyY29feLvzn60akLei8Mlcixue7WNU--

--===============3266623495759862142==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3266623495759862142==--
