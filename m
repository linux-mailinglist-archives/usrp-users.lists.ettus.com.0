Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E33787BF58
	for <lists+usrp-users@lfdr.de>; Thu, 14 Mar 2024 15:56:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 72BA4385295
	for <lists+usrp-users@lfdr.de>; Thu, 14 Mar 2024 10:56:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710428170; bh=Cf3TnB28/NqWzOc6r10GLSk1RqK7/Ci6GepsMIWzzMQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=M+Y9jsDSGAB/rhxlMMu2WdB0QB+IxU6llxRNeLzUhp/VzSJmsOxrP0FdJxVnXSPKU
	 Qu4/sXyXLODPf+aebtFAn8x+9JgxxYaMLN57k6fzzGrD6C1CmdVBpvHBKe+rqn6/Wi
	 nFbWa1wzGH4B7PxhC1WgkrYLHpoLPl7YlQ+mw5OjvsG9GiC6NXtkKOn2IYOfv8nTn1
	 +unpj82Y+rc2pr2/zYMlt3HVp2/BkRyqqu3ukLfh1hPBhbGzqr9NUR0J2i/NXdgWjs
	 iJUktqOaVNktG8k3I4j/CpGYNOniqio1s7MQihmQVvPj6S/szzRhi9WY95U1MmqlA6
	 5nivVYKiKjyMw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2C3B938500A
	for <usrp-users@lists.ettus.com>; Thu, 14 Mar 2024 10:55:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710428121; bh=uOxuqmC4O489+2743KFZO6or1WnFoK+eCYh4XyZ7XzY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=enqXxdnS3ii9iQzTHrNbCFtIq+kWE6s5aqRyyKGpli9aGyzIxC9RyHOpN2+s07T9j
	 9TkxokxCpWDDu3y1EQEtHlPXEY2jhopDmGE1wp8cgk9SiEppOalJuwEnJm8g/fEXv7
	 1cwyUIuPqwGIXI7Ee6WRI2HFcE+lkc5rgA8CAelHUltizIDnB/hGkaklEqwgsPABn5
	 h2R3PGEXR4hPTYPyVgpI20I/wlv4m01lqHBJDIcjrVNpm3a8LTy8HrXjwSvjsxVC8p
	 0w7aEmAOYMme/TUpMhcyfqck1JrMRC7NytWX5BljL1PYuHHNLJXRRskosBWNxyWXBS
	 /FOaFQKmWQupQ==
Date: Thu, 14 Mar 2024 14:55:21 +0000
To: usrp-users@lists.ettus.com
From: zackkomo@utexas.edu
Message-ID: <yNBXUYQosdUA6cLC6Z9QFc8QuvTuuIAh8Ohorf0UoU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CABfZwcekxBdPL2O=oPbfj8ngE5Bw-nkOFnPuCK23af0vAAtwTQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: HRZYSSINJPJASOX33MQZLSOWBYS67OYT
X-Message-ID-Hash: HRZYSSINJPJASOX33MQZLSOWBYS67OYT
X-MailFrom: zackkomo@utexas.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Get DPDK working with UHD 4.6 with USRP x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HRZYSSINJPJASOX33MQZLSOWBYS67OYT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5546717649850487133=="

This is a multi-part message in MIME format.

--===============5546717649850487133==
Content-Type: multipart/alternative;
 boundary="b1_yNBXUYQosdUA6cLC6Z9QFc8QuvTuuIAh8Ohorf0UoU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_yNBXUYQosdUA6cLC6Z9QFc8QuvTuuIAh8Ohorf0UoU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Mikio,

Below are the contents of =C2=A0/etc/default/grub

```
# If you change this file, run 'update-grub' afterwards to update
```

```
# /boot/grub/grub.cfg.
```

```
# For full documentation of the options in this file, see:
```

```
#   info -f grub -n 'Simple configuration'
```

```
GRUB_DEFAULT=3D0
```

```
GRUB_TIMEOUT_STYLE=3Dhidden
```

```
GRUB_TIMEOUT=3D0
```

```
GRUB_DISTRIBUTOR=3D`lsb_release -i -s 2> /dev/null || echo Debian`
```

```
GRUB_CMDLINE_LINUX_DEFAULT=3D"quiet splash iommu=3Dpt intel_iommu=3Don hu=
gepages=3D2048 pti=3Doff spectre_v2=3Doff l1tf=3Doff nospec_store_bypass_=
disable no_stf_barrier"
```

```
GRUB_CMDLINE_LINUX=3D""
```

```
# Uncomment to enable BadRAM filtering, modify to suit your needs
```

```
# This works with Linux (no patch required) and with any kernel that obta=
ins
```

```
# the memory map information from GRUB (GNU Mach, kernel of FreeBSD ...)
```

```
#GRUB_BADRAM=3D"0x01234567,0xfefefefe,0x89abcdef,0xefefefef"
```

```
# Uncomment to disable graphical terminal (grub-pc only)
```

```
#GRUB_TERMINAL=3Dconsole
```

```
# The resolution used on graphical terminal
```

```
# note that you can use only modes which your graphic card supports via V=
BE
```

```
# you can see them in real GRUB with the command `vbeinfo'
```

```
#GRUB_GFXMODE=3D640x480
```

```
# Uncomment if you don't want GRUB to pass "root=3DUUID=3Dxxx" parameter =
to Linux
```

```
#GRUB_DISABLE_LINUX_UUID=3Dtrue
```

```
# Uncomment to disable generation of recovery mode menu entries
```

```
#GRUB_DISABLE_RECOVERY=3D"true"
```

```
# Uncomment to get a beep at grub start
```

```
#GRUB_INIT_TUNE=3D"480 440 1"
```

I=E2=80=99m assuming you want to check the GRUB_CMDLINE_LINUX_DEFAULT? Is=
 hugepages=3D2048 correct for hugepages?

Thanks!

Zack

--b1_yNBXUYQosdUA6cLC6Z9QFc8QuvTuuIAh8Ohorf0UoU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Mikio,</p><p>Below are the contents of &nbsp;/etc/default/grub</p><pr=
e><code># If you change this file, run 'update-grub' afterwards to update</=
code></pre><pre><code># /boot/grub/grub.cfg.</code></pre><pre><code># For f=
ull documentation of the options in this file, see:</code></pre><pre><code>=
#   info -f grub -n 'Simple configuration'</code></pre><pre><code>GRUB_DEFA=
ULT=3D0</code></pre><pre><code>GRUB_TIMEOUT_STYLE=3Dhidden</code></pre><pre=
><code>GRUB_TIMEOUT=3D0</code></pre><pre><code>GRUB_DISTRIBUTOR=3D`lsb_rele=
ase -i -s 2&gt; /dev/null || echo Debian`</code></pre><pre><code>GRUB_CMDLI=
NE_LINUX_DEFAULT=3D"quiet splash iommu=3Dpt intel_iommu=3Don hugepages=3D20=
48 pti=3Doff spectre_v2=3Doff l1tf=3Doff nospec_store_bypass_disable no_stf=
_barrier"</code></pre><pre><code>GRUB_CMDLINE_LINUX=3D""</code></pre><pre><=
code># Uncomment to enable BadRAM filtering, modify to suit your needs</cod=
e></pre><pre><code># This works with Linux (no patch required) and with any=
 kernel that obtains</code></pre><pre><code># the memory map information fr=
om GRUB (GNU Mach, kernel of FreeBSD ...)</code></pre><pre><code>#GRUB_BADR=
AM=3D"0x01234567,0xfefefefe,0x89abcdef,0xefefefef"</code></pre><pre><code>#=
 Uncomment to disable graphical terminal (grub-pc only)</code></pre><pre><c=
ode>#GRUB_TERMINAL=3Dconsole</code></pre><pre><code># The resolution used o=
n graphical terminal</code></pre><pre><code># note that you can use only mo=
des which your graphic card supports via VBE</code></pre><pre><code># you c=
an see them in real GRUB with the command `vbeinfo'</code></pre><pre><code>=
#GRUB_GFXMODE=3D640x480</code></pre><pre><code># Uncomment if you don't wan=
t GRUB to pass "root=3DUUID=3Dxxx" parameter to Linux</code></pre><pre><cod=
e>#GRUB_DISABLE_LINUX_UUID=3Dtrue</code></pre><pre><code># Uncomment to dis=
able generation of recovery mode menu entries</code></pre><pre><code>#GRUB_=
DISABLE_RECOVERY=3D"true"</code></pre><pre><code># Uncomment to get a beep =
at grub start</code></pre><pre><code>#GRUB_INIT_TUNE=3D"480 440 1"</code></=
pre><p>I=E2=80=99m assuming you want to check the GRUB_CMDLINE_LINUX_DEFAUL=
T? Is hugepages=3D2048 correct for hugepages?</p><p>Thanks!</p><p>Zack</p>

--b1_yNBXUYQosdUA6cLC6Z9QFc8QuvTuuIAh8Ohorf0UoU--

--===============5546717649850487133==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5546717649850487133==--
