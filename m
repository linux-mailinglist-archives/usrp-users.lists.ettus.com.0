Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF2370711C
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 20:49:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6A3D83848D9
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 14:49:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684349381; bh=l6QWV27ngb54beRrq++AIRspB17aDgcFPxJ/a+p+C0o=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Rew4m1R47sZ8TQIEo5LwYKDR1vC1oZKEwHIOqDvRfKdpa2fs0wR92CQVf6K8IuM3/
	 Ou0p3aMAEySH1XjyNJbX05O03BBXpV0sEdxDJgKGI6iwdIpzFuc/dN2DLORbOoPVcl
	 GDL/ri0cmwdeQHmrP4W8uzmx0teGyHoJCIzzc2ZGeaUlZ4LnQebLitLE0wwhbyeijd
	 /G/id7Ob5+7WYLu4BMTedt4rHvAceVhYlSlbpG02Kx9O2zHLem/VgUR3jz4SIF1FrK
	 zvHLNLfQlHI6LYGZ6B1vHSES8Hl/wUx+6YSdHn8L0iUta7kCuE2STuxagtYEcsZpa1
	 kk59ZEaHVJ6lg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 43B84384883
	for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 14:49:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684349355; bh=p42j98I0EY6NqyvxagWpozqA6ALgiqFf3zVcl25O8T0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=v/bjSKejQzMowKnufaHsIDEqUqQFazWuWqtMF3DXP/Z52T9ka9twHmUjpNfwq8GQn
	 MQrv5JueWgIFe5n05oUUqc36Pv/zj0depFHIhk2LJWBCNgHSN4rjpB+S+Gyh1vEYdM
	 PyQC6hJSSJabjLRNbowbUatpt6p1m4mO8Xw5pf9zeujxkInIEmonemHETx8u+vLvJQ
	 xRF0uxUQnl6r8Kw8l6ADf3bRBVQPxPQTM0241i0enb/hJ0MRzmxg5OWI+fDjQjk7KC
	 Icru3cl3CrmLmj7JkgkxgyfrTflWUXOeXiHN7BDcIzakALVT+xbLLbW5nM8JH75SyO
	 gbxX/icqwKmWw==
Date: Wed, 17 May 2023 18:49:15 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <6yx612buSyar5SNsVgbvrACyBOu0J47fS0BT75pU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 377218986.2890001.1684347847046@mail.yahoo.com
MIME-Version: 1.0
Message-ID-Hash: M4GMVN3G3SU7JJ5TOP3KXDRMSZWCGREL
X-Message-ID-Hash: M4GMVN3G3SU7JJ5TOP3KXDRMSZWCGREL
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Streaming UHD 4.4 on USRP-2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M4GMVN3G3SU7JJ5TOP3KXDRMSZWCGREL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3821484614746747738=="

This is a multi-part message in MIME format.

--===============3821484614746747738==
Content-Type: multipart/alternative;
 boundary="b1_6yx612buSyar5SNsVgbvrACyBOu0J47fS0BT75pU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_6yx612buSyar5SNsVgbvrACyBOu0J47fS0BT75pU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

I am still interested to know how your team tests to verify the FPGA is s=
ending the data=E2=80=A6.meanwhile I did two quick experiments based on y=
our suggestions.

1) Same setup using the second interface I setup on the network card for =
the remote port @192.168.30.30, =E2=80=9C./remote_rx.py --rate=3D200e6 --=
freq=3D1223e6 --gain=3D20 --dest-addr=3D192.168.30.30 --dest-port=3D54321=
 --adapter=3Dsfp1 --dest-mac-addr=3D3c:ec:ef:c2:43:47=E2=80=9D.

Setup netcat -ul 54321  to listen to this port, and can be verified as li=
stening (bottom line):

> ```
> Proto Recv-Q Send-Q Local Address           Foreign Address         Sta=
te     =20
> udp        0      0 127.0.0.53:53           0.0.0.0:*                  =
       =20
> udp        0      0 0.0.0.0:111             0.0.0.0:*                  =
       =20
> udp        0      0 0.0.0.0:631             0.0.0.0:*                  =
       =20
> udp        0      0 0.0.0.0:5353            0.0.0.0:*                  =
       =20
> udp        0      0 0.0.0.0:50237           0.0.0.0:*                  =
       =20
> udp        0      0 0.0.0.0:54321           0.0.0.0:*=20
> ```

Still no traffic to 192.168.30.30 (remote streaming dest), only control d=
ata between USRP (192.168.30.2) and host (192.168.30.1) when sniffing.

=20

2) Set the dest-addr to be the host (192.168.30.2), which I would think w=
ould be equivalent to =E2=80=9Cnormal streaming=E2=80=9D.  =E2=80=9C./rem=
ote_rx.py --rate=3D200e6 --freq=3D1223e6 --gain=3D20 --dest-addr=3D192.16=
8.30.2 --dest-port=3D54321 --adapter=3Dsfp1 --dest-mac-addr=3D3c:ec:ef:c2=
:43:47=E2=80=9D=20

Setup netcat -ul 54321  to listen to this port, and can be verified as li=
stening (bottom line):

> ```
> Proto Recv-Q Send-Q Local Address           Foreign Address         Sta=
te     =20
> udp        0      0 127.0.0.53:53           0.0.0.0:*                  =
       =20
> udp        0      0 0.0.0.0:111             0.0.0.0:*                  =
       =20
> udp        0      0 0.0.0.0:631             0.0.0.0:*                  =
       =20
> udp        0      0 0.0.0.0:5353            0.0.0.0:*                  =
       =20
> udp        0      0 0.0.0.0:50237           0.0.0.0:*                  =
       =20
> udp        0      0 0.0.0.0:54321           0.0.0.0:*=20
> ```

I don=E2=80=99t see any high speed IQ data going between 192.168.30.1 (ho=
st) and 192.168.30.2 (USRP), only the normal control trickle.

Thanks,

=E2=80=94Cy

--b1_6yx612buSyar5SNsVgbvrACyBOu0J47fS0BT75pU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p>I am still interested to know how your team tests to =
verify the FPGA is sending the data=E2=80=A6.meanwhile I did two quick ex=
periments based on your suggestions.</p><p>1) Same setup using the second=
 interface I setup on the network card for the remote port @192.168.30.30=
, =E2=80=9C./remote_rx.py --rate=3D200e6 --freq=3D1223e6 --gain=3D20 --de=
st-addr=3D192.168.30.30 --dest-port=3D54321 --adapter=3Dsfp1 --dest-mac-a=
ddr=3D3c:ec:ef:c2:43:47=E2=80=9D.</p><p>Setup netcat -ul 54321  to listen=
 to this port, and can be verified as listening (bottom line):</p><blockq=
uote><pre><code>Proto Recv-Q Send-Q Local Address           Foreign Addre=
ss         State     =20
udp        0      0 127.0.0.53:53           0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:111             0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:631             0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:5353            0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:50237           0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:54321           0.0.0.0:* </code></pre></bloc=
kquote><p>Still no traffic to 192.168.30.30 (remote streaming dest), only=
 control data between USRP (192.168.30.2) and host (192.168.30.1) when sn=
iffing.</p><p> </p><p>2) Set the dest-addr to be the host (192.168.30.2),=
 which I would think would be equivalent to =E2=80=9Cnormal streaming=E2=80=
=9D.  =E2=80=9C./remote_rx.py --rate=3D200e6 --freq=3D1223e6 --gain=3D20 =
--dest-addr=3D192.168.30.2 --dest-port=3D54321 --adapter=3Dsfp1 --dest-ma=
c-addr=3D3c:ec:ef:c2:43:47=E2=80=9D </p><p>Setup netcat -ul 54321  to lis=
ten to this port, and can be verified as listening (bottom line):</p><blo=
ckquote><pre><code>Proto Recv-Q Send-Q Local Address           Foreign Ad=
dress         State     =20
udp        0      0 127.0.0.53:53           0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:111             0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:631             0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:5353            0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:50237           0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:54321           0.0.0.0:* </code></pre></bloc=
kquote><p>I don=E2=80=99t see any high speed IQ data going between 192.16=
8.30.1 (host) and 192.168.30.2 (USRP), only the normal control trickle.</=
p><p><br></p><p>Thanks,</p><p>=E2=80=94Cy</p>


--b1_6yx612buSyar5SNsVgbvrACyBOu0J47fS0BT75pU--

--===============3821484614746747738==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3821484614746747738==--
