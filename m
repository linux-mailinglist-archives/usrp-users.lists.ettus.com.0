Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B67706D74
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 17:58:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 68AA8384653
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 11:58:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684339098; bh=1lMdTfr/sInlls0gXhQY2VZNguoHD8Cm5OIAjWMBBtw=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=CyRB7U/9FP3q0+d4Dqzts8bkb2mnkt6SsMfxWTjLq/9Dy7OGz4YIOTUy/mqAshTkx
	 OpKFB/DlRf0O3t63rTuGQ5bi3LAxvuuOfHumeqh8GlLBw99L1cTSTfiQkl3OZCLvi4
	 c6e2xepjbzDfylaHm2J6xP60MLZqWMLE7wW0RPHyci+L8uVq+8i9aauAlWMRCBRYRC
	 mt1zEp/BBeogcm6kdVQmMRJCTg4y6nEMi2TLfWK2nHa3mhIurPsbnXJtqJ47saZex1
	 0zgPsbUt/fUPo7mdsxHj6asjSeMH8HR7lbNfLQ00npgiQGsrjsnpOgDn/SwU+GbcAp
	 oPV3Dg+72oBrw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5F75A3845C0
	for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 11:57:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684339039; bh=0mMMVrl/Qkcdr605kptD2/+XqA2EjSqzUPEpGSlfBc8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=zomyYQhOVmUNLibsdr0VZVw/4hkPrx7YT3HWA4COKQgWserlbhIA1yluig8BXWC6R
	 mrKF6g+V3eeUq+iCzGwrno9Hp2O6Um2LMPZjSqruBngMX4jdSEGVoB6bO+fKmHEM9z
	 +9DYR4HrwJc/+Y3fMqrcJ6lSwDp/2N3MdaQHJFITLXahW89+/N2ZI98eTwcA49NNzE
	 dnuCr4ZzFgO9XpiKkI/c5TSA9J/1P5hpokVJdyacFEPsEGd01HREVs8AAyawvzDlg8
	 ak5ZacCKiy9AiIH38VbyCud8cY/tYpAi3nDhJfT+P9oRrJzY3VH+vFUOF7KCZF1tpy
	 WE1DNiUZm2AsA==
Date: Wed, 17 May 2023 15:57:19 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <HNN3PyrA1XwglP4uFR0QhCewbvOFLFaBlU2GK7BaTk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 281b655d-2b6b-0898-be12-bde2290791db@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 55DKA6R26GYR5XBJORI73WPOIDMKKWLE
X-Message-ID-Hash: 55DKA6R26GYR5XBJORI73WPOIDMKKWLE
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Streaming UHD 4.4 on USRP-2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/55DKA6R26GYR5XBJORI73WPOIDMKKWLE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2408905868943212803=="

This is a multi-part message in MIME format.

--===============2408905868943212803==
Content-Type: multipart/alternative;
 boundary="b1_HNN3PyrA1XwglP4uFR0QhCewbvOFLFaBlU2GK7BaTk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_HNN3PyrA1XwglP4uFR0QhCewbvOFLFaBlU2GK7BaTk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thank you for responding.

I can confirm that the USRP (192.168.30.2) and host (192.168.30.1) are wo=
rking (streaming data), as I wanted to verify before trying the remote st=
reaming.

I have added the 192.168.30.30 as second interface on the host, and it is=
 responding to pings.  I do not have any firewall, they are all the same =
LAN / subnet.

Based on the error =E2=80=9CRequested remote UDP streaming, but transport=
 adapter sfp1 does not support it!=E2=80=9D, it doesn=E2=80=99t seem like=
 the program is getting that far.  I can also confirm that "sfp1=E2=80=9D=
 is the proper interface with the ipaddr 192.168.30.2.

When monitoring the ethernet traffic, I never see a data packet with a so=
urce of 192.168.30.2 to a destination of 192.168.30.30.

> > ```
> > Proto Recv-Q Send-Q Local Address           Foreign Address         S=
tate     =20
> > ```
> >
> > ```
> > udp        0      0 127.0.0.53:53           0.0.0.0:*                =
         =20
> > ```
> >
> > ```
> > udp        0      0 0.0.0.0:111             0.0.0.0:*                =
         =20
> > ```
> >
> > ```
> > udp        0      0 0.0.0.0:631             0.0.0.0:*                =
         =20
> > ```
> >
> > ```
> > udp        0      0 0.0.0.0:5353            0.0.0.0:*                =
         =20
> > ```
> >
> > ```
> > udp        0      0 192.168.30.1:34602      192.168.30.2:49152      E=
STABLISHED
> > ```
> >
> > ```
> > udp        0      0 0.0.0.0:50237           0.0.0.0:*                =
         =20
> > ```
> >
> > ```
> > udp        0      0 192.168.30.1:50938      192.168.30.2:49153      E=
STABLISHED
> > ```

I do not have an active listener on dest udp, but I also don=E2=80=99t se=
e any traffic trying to set up a connection with 192.168.30.30.

There are no arps (when running program):

> ```
> cjohnson@demo:~/net$ sudo tcpdump --interface=3Deno2 broadcast and arp
> tcpdump: verbose output suppressed, use -v[v]... for full protocol deco=
de
> listening on eno2, link-type EN10MB (Ethernet), snapshot length 262144 =
bytes
> 15:49:01.987722 ARP, Request who-has 192.168.30.2 tell 192.168.30.2, le=
ngth 46
> 15:49:17.073425 ARP, Request who-has 192.168.30.2 tell 192.168.30.2, le=
ngth 46
> ```

There is no IP traffic with 192.168.30.30 (when program is running):

> ```
> cjohnson@demo:~/net$ sudo tcpdump --interface=3Deno2 -n host 192.168.30=
.30
> tcpdump: verbose output suppressed, use -v[v]... for full protocol deco=
de
> listening on eno2, link-type EN10MB (Ethernet), snapshot length 262144 =
bytes
> ```

Is there a known working example with a stream listener on the remote wit=
h a dest addr and dest udp port?

Not sure if relevant, and I can=E2=80=99t find any information on what ea=
ch of the address mean for USRP-2974, but the ip-addr0 and gateway are bo=
gus values below.  I do have streaming connection from host 192.168.30.1 =
to USRP 192.168.30.2, but still can=E2=80=99t get remote streaming to wor=
k.

> ```
> |  |  gateway: 192.168.10.1
>=20
> |  |  ip-addr0: 192.168.10.2
>=20
> |  |  subnet0: 255.255.255.0
>=20
> |  |  ip-addr1: 192.168.40.2
>=20
> |  |  subnet1: 255.255.255.0
>=20
> |  |  ip-addr2: 192.168.30.2
>=20
> |  |  subnet2: 255.255.255.0
>=20
> |  |  ip-addr3: 255.255.255.255
>=20
> |  |  subnet3: 255.255.255.0
>=20
>=20
> ```

--b1_HNN3PyrA1XwglP4uFR0QhCewbvOFLFaBlU2GK7BaTk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p>Thank you for responding.</p><p>I can confirm that the =
USRP (192.168.30.2) and host (192.168.30.1) are working (streaming data), a=
s I wanted to verify before trying the remote streaming.</p><p>I have added=
 the 192.168.30.30 as second interface on the host, and it is responding to=
 pings.  I do not have any firewall, they are all the same LAN / subnet.</p=
><p>Based on the error =E2=80=9CRequested remote UDP streaming, but transpo=
rt adapter sfp1 does not support it!=E2=80=9D, it doesn=E2=80=99t seem like=
 the program is getting that far.  I can also confirm that "sfp1=E2=80=
=9D is the proper interface with the ipaddr 192.168.30.2.</p><p>When monito=
ring the ethernet traffic, I never see a data packet with a source of 192.1=
68.30.2 to a destination of 192.168.30.30.</p><blockquote><blockquote><pre>=
<code>Proto Recv-Q Send-Q Local Address           Foreign Address         S=
tate      </code></pre><pre><code>udp        0      0 127.0.0.53:53        =
   0.0.0.0:*                          </code></pre><pre><code>udp        0 =
     0 0.0.0.0:111             0.0.0.0:*                          </code></=
pre><pre><code>udp        0      0 0.0.0.0:631             0.0.0.0:*       =
                   </code></pre><pre><code>udp        0      0 0.0.0.0:5353=
            0.0.0.0:*                          </code></pre><pre><code>udp =
       0      0 192.168.30.1:34602      192.168.30.2:49152      ESTABLISHED=
</code></pre><pre><code>udp        0      0 0.0.0.0:50237           0.0.0.0=
:*                          </code></pre><pre><code>udp        0      0 192=
.168.30.1:50938      192.168.30.2:49153      ESTABLISHED</code></pre></bloc=
kquote></blockquote><p>I do not have an active listener on dest udp, but I =
also don=E2=80=99t see any traffic trying to set up a connection with 192.1=
68.30.30.</p><p>There are no arps (when running program):</p><blockquote><p=
re><code>cjohnson@demo:~/net$ sudo tcpdump --interface=3Deno2 broadcast and=
 arp
tcpdump: verbose output suppressed, use -v[v]... for full protocol decode
listening on eno2, link-type EN10MB (Ethernet), snapshot length 262144 byte=
s
15:49:01.987722 ARP, Request who-has 192.168.30.2 tell 192.168.30.2, length=
 46
15:49:17.073425 ARP, Request who-has 192.168.30.2 tell 192.168.30.2, length=
 46</code></pre></blockquote><p>There is no IP traffic with 192.168.30.30 (=
when program is running):</p><blockquote><pre><code>cjohnson@demo:~/net$ su=
do tcpdump --interface=3Deno2 -n host 192.168.30.30
tcpdump: verbose output suppressed, use -v[v]... for full protocol decode
listening on eno2, link-type EN10MB (Ethernet), snapshot length 262144 byte=
s</code></pre></blockquote><p>Is there a known working example with a strea=
m listener on the remote with a dest addr and dest udp port?</p><p>Not sure=
 if relevant, and I can=E2=80=99t find any information on what each of the =
address mean for USRP-2974, but the ip-addr0 and gateway are bogus values b=
elow.  I do have streaming connection from host 192.168.30.1 to USRP 192.16=
8.30.2, but still can=E2=80=99t get remote streaming to work.</p><blockquot=
e><pre><code>|  |  gateway: 192.168.10.1

|  |  ip-addr0: 192.168.10.2

|  |  subnet0: 255.255.255.0

|  |  ip-addr1: 192.168.40.2

|  |  subnet1: 255.255.255.0

|  |  ip-addr2: 192.168.30.2

|  |  subnet2: 255.255.255.0

|  |  ip-addr3: 255.255.255.255

|  |  subnet3: 255.255.255.0

<br></code></pre></blockquote>

--b1_HNN3PyrA1XwglP4uFR0QhCewbvOFLFaBlU2GK7BaTk--

--===============2408905868943212803==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2408905868943212803==--
